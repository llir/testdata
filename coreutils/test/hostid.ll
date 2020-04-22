; ModuleID = 'coreutils-8.32/src/hostid.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !0
@.str.27 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.36, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.37, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.36 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.37 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.75 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.83 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.84 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.89 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.90 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.91 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.92 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.93 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.114 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1091 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1094, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %0, metadata !1093, metadata !DIExpression()), !dbg !1115
  %3 = icmp eq i32 %0, 0, !dbg !1116
  br i1 %3, label %9, label %4, !dbg !1117

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1118, !tbaa !1120
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1118
  %7 = load i8*, i8** @program_name, align 8, !dbg !1118, !tbaa !1120
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1118
  br label %55, !dbg !1118

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1124
  %11 = load i8*, i8** @program_name, align 8, !dbg !1124, !tbaa !1120
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !1124
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1125
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1125, !tbaa !1120
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1125
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1126
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1126, !tbaa !1120
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1126
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), metadata !1098, metadata !DIExpression()) #12, !dbg !1127
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #12, !dbg !1128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %19, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1111
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), metadata !1099, metadata !DIExpression()) #12, !dbg !1127
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1129
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  br label %21, !dbg !1130

21:                                               ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  %24 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #21, !dbg !1131
  %25 = icmp eq i32 %24, 0, !dbg !1131
  br i1 %25, label %31, label %26, !dbg !1130

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !1133
  %29 = load i8*, i8** %28, align 8, !dbg !1133, !tbaa !1134
  %30 = icmp eq i8* %29, null, !dbg !1136
  br i1 %30, label %31, label %21, !dbg !1137, !llvm.loop !1138

31:                                               ; preds = %26, %21
  %32 = phi %struct.infomap* [ %27, %26 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1100, metadata !DIExpression()) #12, !dbg !1127
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !1139
  %34 = load i8*, i8** %33, align 8, !dbg !1139, !tbaa !1141
  %35 = icmp eq i8* %34, null, !dbg !1142
  %36 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !1143
  call void @llvm.dbg.value(metadata i8* %36, metadata !1099, metadata !DIExpression()) #12, !dbg !1127
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #12, !dbg !1144
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !1144
  %39 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %39, metadata !1107, metadata !DIExpression()) #12, !dbg !1127
  %40 = icmp eq i8* %39, null, !dbg !1146
  br i1 %40, label %48, label %41, !dbg !1148

41:                                               ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #21, !dbg !1149
  %43 = icmp eq i32 %42, 0, !dbg !1149
  br i1 %43, label %48, label %44, !dbg !1150

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !1151
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1151, !tbaa !1120
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12, !dbg !1151
  br label %48, !dbg !1153

48:                                               ; preds = %31, %41, %44
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !1154
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #12, !dbg !1154
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1155
  %52 = icmp eq i8* %36, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), !dbg !1155
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !1155
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* %36, i8* %53) #12, !dbg !1155
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #12, !dbg !1156
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 %0) #22, !dbg !1157
  unreachable, !dbg !1157
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1162, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8** %1, metadata !1163, metadata !DIExpression()), !dbg !1165
  %3 = load i8*, i8** %1, align 8, !dbg !1166, !tbaa !1120
  tail call void @set_program_name(i8* %3) #12, !dbg !1167
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1168
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1169
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1170
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1171
  %8 = load i8*, i8** @Version, align 8, !dbg !1172, !tbaa !1120
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #12, !dbg !1173
  %9 = load i32, i32* @optind, align 4, !dbg !1174, !tbaa !1176
  %10 = icmp slt i32 %9, %0, !dbg !1178
  br i1 %10, label %11, label %18, !dbg !1179

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !1180
  %13 = load i32, i32* @optind, align 4, !dbg !1182, !tbaa !1176
  %14 = sext i32 %13 to i64, !dbg !1183
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1183
  %16 = load i8*, i8** %15, align 8, !dbg !1183, !tbaa !1120
  %17 = tail call i8* @quote(i8* %16) #12, !dbg !1184
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #12, !dbg !1185
  tail call void @usage(i32 1) #23, !dbg !1186
  unreachable, !dbg !1186

18:                                               ; preds = %2
  %19 = tail call i64 @gethostid() #12, !dbg !1187
  %20 = trunc i64 %19 to i32, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %20, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 %20, metadata !1164, metadata !DIExpression()), !dbg !1165
  %21 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %20) #12, !dbg !1188
  ret i32 0, !dbg !1189
}

; Function Attrs: nounwind
declare !dbg !406 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !409 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare !dbg !426 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i8* %0, i8** @file_name, align 8, !dbg !1194, !tbaa !1120
  ret void, !dbg !1195
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1196 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1200, metadata !DIExpression()), !dbg !1201
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1202, !tbaa !1203
  ret void, !dbg !1205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1206 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1211, !tbaa !1120
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1212
  %3 = icmp eq i32 %2, 0, !dbg !1213
  br i1 %3, label %22, label %4, !dbg !1214

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1215, !tbaa !1203, !range !1216
  %6 = icmp eq i8 %5, 0, !dbg !1215
  br i1 %6, label %11, label %7, !dbg !1217

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1218
  %9 = load i32, i32* %8, align 4, !dbg !1218, !tbaa !1176
  %10 = icmp eq i32 %9, 32, !dbg !1219
  br i1 %10, label %22, label %11, !dbg !1220

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %12, metadata !1208, metadata !DIExpression()), !dbg !1222
  %13 = load i8*, i8** @file_name, align 8, !dbg !1223, !tbaa !1120
  %14 = icmp eq i8* %13, null, !dbg !1223
  %15 = tail call i32* @__errno_location() #24, !dbg !1225
  %16 = load i32, i32* %15, align 4, !dbg !1225, !tbaa !1176
  br i1 %14, label %19, label %17, !dbg !1226

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1227
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1228
  br label %20, !dbg !1228

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #12, !dbg !1229
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1230, !tbaa !1176
  tail call void @_exit(i32 %21) #22, !dbg !1231
  unreachable, !dbg !1231

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1232, !tbaa !1120
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1234
  %25 = icmp eq i32 %24, 0, !dbg !1235
  br i1 %25, label %28, label %26, !dbg !1236

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1237, !tbaa !1176
  tail call void @_exit(i32 %27) #22, !dbg !1238
  unreachable, !dbg !1238

28:                                               ; preds = %22
  ret void, !dbg !1239
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1240 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1244, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8** %1, metadata !1245, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %2, metadata !1246, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %3, metadata !1247, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %4, metadata !1248, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1249, metadata !DIExpression()), !dbg !1262
  %8 = load i32, i32* @opterr, align 4, !dbg !1263, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %8, metadata !1251, metadata !DIExpression()), !dbg !1262
  store i32 0, i32* @opterr, align 4, !dbg !1264, !tbaa !1176
  %9 = icmp eq i32 %0, 2, !dbg !1265
  br i1 %9, label %10, label %17, !dbg !1266

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1267
  call void @llvm.dbg.value(metadata i32 %11, metadata !1250, metadata !DIExpression()), !dbg !1262
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1268

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1269
  br label %17, !dbg !1270

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1271
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1271
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1252, metadata !DIExpression()), !dbg !1272
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1273
  call void @llvm.va_start(i8* nonnull %14), !dbg !1273
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1274, !tbaa !1120
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1275
  call void @exit(i32 0) #22, !dbg !1276
  unreachable, !dbg !1276

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1277, !tbaa !1176
  store i32 0, i32* @optind, align 4, !dbg !1278, !tbaa !1176
  ret void, !dbg !1279
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1280 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8** %1, metadata !1283, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %2, metadata !1284, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %3, metadata !1285, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i8* %4, metadata !1286, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata i1 %5, metadata !1287, metadata !DIExpression()), !dbg !1297
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1288, metadata !DIExpression()), !dbg !1297
  %9 = load i32, i32* @opterr, align 4, !dbg !1298, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %9, metadata !1290, metadata !DIExpression()), !dbg !1297
  store i32 1, i32* @opterr, align 4, !dbg !1299, !tbaa !1176
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %10, metadata !1291, metadata !DIExpression()), !dbg !1297
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1301
  call void @llvm.dbg.value(metadata i32 %11, metadata !1289, metadata !DIExpression()), !dbg !1297
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1302

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1303
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1292, metadata !DIExpression()), !dbg !1304
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1305
  call void @llvm.va_start(i8* nonnull %13), !dbg !1305
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1306, !tbaa !1120
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1307
  call void @exit(i32 0) #22, !dbg !1308
  unreachable, !dbg !1308

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1309, !tbaa !1176
  br label %18, !dbg !1310

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1311
  br label %20, !dbg !1312

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1312, !tbaa !1176
  ret void, !dbg !1313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1316, metadata !DIExpression()), !dbg !1319
  %2 = icmp eq i8* %0, null, !dbg !1320
  br i1 %2, label %3, label %6, !dbg !1322

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1323, !tbaa !1120
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1325
  tail call void @abort() #22, !dbg !1326
  unreachable, !dbg !1326

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %7, metadata !1317, metadata !DIExpression()), !dbg !1319
  %8 = icmp eq i8* %7, null, !dbg !1328
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1329
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1329
  call void @llvm.dbg.value(metadata i8* %10, metadata !1318, metadata !DIExpression()), !dbg !1319
  %11 = ptrtoint i8* %10 to i64, !dbg !1330
  %12 = ptrtoint i8* %0 to i64, !dbg !1330
  %13 = sub i64 %11, %12, !dbg !1330
  %14 = icmp sgt i64 %13, 6, !dbg !1332
  br i1 %14, label %15, label %24, !dbg !1333

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1334
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #21, !dbg !1335
  %18 = icmp eq i32 %17, 0, !dbg !1336
  br i1 %18, label %19, label %24, !dbg !1337

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1316, metadata !DIExpression()), !dbg !1319
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #21, !dbg !1338
  %21 = icmp eq i32 %20, 0, !dbg !1341
  br i1 %21, label %22, label %24, !dbg !1342

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1343
  call void @llvm.dbg.value(metadata i8* %23, metadata !1316, metadata !DIExpression()), !dbg !1319
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1345, !tbaa !1120
  br label %24, !dbg !1346

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1316, metadata !DIExpression()), !dbg !1319
  store i8* %25, i8** @program_name, align 8, !dbg !1347, !tbaa !1120
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1348, !tbaa !1120
  ret void, !dbg !1349
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1350 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1355, metadata !DIExpression()), !dbg !1358
  %2 = tail call i32* @__errno_location() #24, !dbg !1359
  %3 = load i32, i32* %2, align 4, !dbg !1359, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %3, metadata !1356, metadata !DIExpression()), !dbg !1358
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1360
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1360
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1360
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1361
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1361
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i32 %3, i32* %2, align 4, !dbg !1362, !tbaa !1176
  ret %struct.quoting_options* %8, !dbg !1363
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1364 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1368, metadata !DIExpression()), !dbg !1369
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1370
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1370
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1371
  %5 = load i32, i32* %4, align 8, !dbg !1371, !tbaa !1372
  ret i32 %5, !dbg !1374
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1375 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1379, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.value(metadata i32 %1, metadata !1380, metadata !DIExpression()), !dbg !1381
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1382
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1382
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1383
  store i32 %1, i32* %5, align 8, !dbg !1384, !tbaa !1372
  ret void, !dbg !1385
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1386 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1390, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %1, metadata !1391, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i32 %2, metadata !1392, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i8 %1, metadata !1393, metadata !DIExpression()), !dbg !1399
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1400
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1400
  %6 = lshr i8 %1, 5, !dbg !1401
  %7 = zext i8 %6 to i64, !dbg !1401
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1402
  call void @llvm.dbg.value(metadata i32* %8, metadata !1395, metadata !DIExpression()), !dbg !1399
  %9 = and i8 %1, 31, !dbg !1403
  %10 = zext i8 %9 to i32, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %10, metadata !1397, metadata !DIExpression()), !dbg !1399
  %11 = load i32, i32* %8, align 4, !dbg !1404, !tbaa !1176
  %12 = lshr i32 %11, %10, !dbg !1405
  %13 = and i32 %12, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %13, metadata !1398, metadata !DIExpression()), !dbg !1399
  %14 = and i32 %2, 1, !dbg !1407
  %15 = xor i32 %13, %14, !dbg !1408
  %16 = shl i32 %15, %10, !dbg !1409
  %17 = xor i32 %16, %11, !dbg !1410
  store i32 %17, i32* %8, align 4, !dbg !1410, !tbaa !1176
  ret i32 %13, !dbg !1411
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1412 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %1, metadata !1417, metadata !DIExpression()), !dbg !1419
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1420
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1422
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1416, metadata !DIExpression()), !dbg !1419
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1423
  %6 = load i32, i32* %5, align 4, !dbg !1423, !tbaa !1424
  call void @llvm.dbg.value(metadata i32 %6, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i32 %1, i32* %5, align 4, !dbg !1425, !tbaa !1424
  ret i32 %6, !dbg !1426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1427 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1431, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %1, metadata !1432, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %2, metadata !1433, metadata !DIExpression()), !dbg !1434
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1435
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1431, metadata !DIExpression()), !dbg !1434
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1438
  store i32 10, i32* %6, align 8, !dbg !1439, !tbaa !1372
  %7 = icmp ne i8* %1, null, !dbg !1440
  %8 = icmp ne i8* %2, null, !dbg !1442
  %9 = and i1 %7, %8, !dbg !1443
  br i1 %9, label %11, label %10, !dbg !1443

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1444
  unreachable, !dbg !1444

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1445
  store i8* %1, i8** %12, align 8, !dbg !1446, !tbaa !1447
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1448
  store i8* %2, i8** %13, align 8, !dbg !1449, !tbaa !1450
  ret void, !dbg !1451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1452 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1456, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %1, metadata !1457, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %2, metadata !1458, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i64 %3, metadata !1459, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1460, metadata !DIExpression()), !dbg !1464
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1465
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1461, metadata !DIExpression()), !dbg !1464
  %8 = tail call i32* @__errno_location() #24, !dbg !1466
  %9 = load i32, i32* %8, align 4, !dbg !1466, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %9, metadata !1462, metadata !DIExpression()), !dbg !1464
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1467
  %11 = load i32, i32* %10, align 8, !dbg !1467, !tbaa !1372
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1468
  %13 = load i32, i32* %12, align 4, !dbg !1468, !tbaa !1424
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1469
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1470
  %16 = load i8*, i8** %15, align 8, !dbg !1470, !tbaa !1447
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1471
  %18 = load i8*, i8** %17, align 8, !dbg !1471, !tbaa !1450
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %19, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32 %9, i32* %8, align 4, !dbg !1473, !tbaa !1176
  ret i64 %19, !dbg !1474
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1475 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %1, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %3, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %4, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %5, metadata !1486, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32* %6, metadata !1487, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %7, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %8, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* null, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1494, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1495, metadata !DIExpression()), !dbg !1539
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1540
  %14 = icmp eq i64 %13, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i1 %14, metadata !1496, metadata !DIExpression()), !dbg !1539
  %15 = lshr i32 %5, 1, !dbg !1542
  %16 = trunc i32 %15 to i8, !dbg !1542
  %17 = and i8 %16, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i8 %17, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1500, metadata !DIExpression()), !dbg !1539
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1543
  %19 = and i32 %5, 4, !dbg !1545
  %20 = icmp eq i32 %19, 0, !dbg !1545
  %21 = and i32 %5, 1, !dbg !1548
  %22 = icmp eq i32 %21, 0, !dbg !1548
  %23 = bitcast i64* %10 to i8*, !dbg !1551
  %24 = bitcast i32* %12 to i8*, !dbg !1552
  %25 = icmp eq i32* %6, null, !dbg !1553
  br label %26, !dbg !1555

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1556
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1557
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1558
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1559
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1539
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1560
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1561
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1562
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %38, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %37, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %36, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %35, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %34, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %33, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %32, metadata !1494, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %31, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %30, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %29, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %28, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %27, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1533), !dbg !1563
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
  ], !dbg !1564

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %35, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 5, metadata !1485, metadata !DIExpression()), !dbg !1539
  br label %92, !dbg !1565

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 5, metadata !1485, metadata !DIExpression()), !dbg !1539
  %42 = and i8 %35, 1, !dbg !1567
  %43 = icmp eq i8 %42, 0, !dbg !1567
  br i1 %43, label %44, label %92, !dbg !1565

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1569
  br i1 %45, label %92, label %46, !dbg !1572

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1569, !tbaa !1573
  br label %92, !dbg !1569

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %27), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %48, metadata !1488, metadata !DIExpression()), !dbg !1539
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %27), !dbg !1578
  call void @llvm.dbg.value(metadata i8* %49, metadata !1489, metadata !DIExpression()), !dbg !1539
  br label %50, !dbg !1579

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %51, metadata !1488, metadata !DIExpression()), !dbg !1539
  %53 = and i8 %35, 1, !dbg !1580
  %54 = icmp eq i8 %53, 0, !dbg !1580
  br i1 %54, label %55, label %70, !dbg !1582

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1491, metadata !DIExpression()), !dbg !1539
  %56 = load i8, i8* %51, align 1, !dbg !1583, !tbaa !1573
  %57 = icmp eq i8 %56, 0, !dbg !1586
  br i1 %57, label %70, label %58, !dbg !1586

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %61, metadata !1491, metadata !DIExpression()), !dbg !1539
  %62 = icmp ult i64 %61, %39, !dbg !1587
  br i1 %62, label %63, label %65, !dbg !1590

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1587
  store i8 %59, i8* %64, align 1, !dbg !1587, !tbaa !1573
  br label %65, !dbg !1587

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %66, metadata !1491, metadata !DIExpression()), !dbg !1539
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1591
  call void @llvm.dbg.value(metadata i8* %67, metadata !1493, metadata !DIExpression()), !dbg !1539
  %68 = load i8, i8* %67, align 1, !dbg !1583, !tbaa !1573
  %69 = icmp eq i8 %68, 0, !dbg !1586
  br i1 %69, label %70, label %58, !dbg !1586, !llvm.loop !1592

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1594
  call void @llvm.dbg.value(metadata i64 %71, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %52, metadata !1493, metadata !DIExpression()), !dbg !1539
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %72, metadata !1494, metadata !DIExpression()), !dbg !1539
  br label %92, !dbg !1596

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1495, metadata !DIExpression()), !dbg !1539
  br label %74, !dbg !1597

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %75, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1539
  br label %76, !dbg !1598

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1559
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %78, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %77, metadata !1495, metadata !DIExpression()), !dbg !1539
  %79 = and i8 %78, 1, !dbg !1599
  %80 = icmp eq i8 %79, 0, !dbg !1599
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1601
  br label %82, !dbg !1601

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1539
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1542
  call void @llvm.dbg.value(metadata i8 %84, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %83, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  %85 = and i8 %84, 1, !dbg !1602
  %86 = icmp eq i8 %85, 0, !dbg !1602
  br i1 %86, label %87, label %92, !dbg !1604

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1605
  br i1 %88, label %92, label %89, !dbg !1608

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1605, !tbaa !1573
  br label %92, !dbg !1605

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1539
  br label %92, !dbg !1609

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1610
  unreachable, !dbg !1610

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1594
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %40 ], !dbg !1539
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1539
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1539
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %100, metadata !1497, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %98, metadata !1494, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %96, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %93, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1490, metadata !DIExpression()), !dbg !1539
  %101 = and i8 %99, 1, !dbg !1611
  %102 = icmp ne i8 %101, 0, !dbg !1611
  %103 = icmp ne i32 %93, 2, !dbg !1611
  %104 = and i1 %103, %102, !dbg !1611
  %105 = icmp ne i64 %98, 0, !dbg !1611
  %106 = and i1 %105, %104, !dbg !1611
  %107 = icmp ugt i64 %98, 1, !dbg !1611
  %108 = and i8 %100, 1, !dbg !1613
  %109 = icmp eq i8 %108, 0, !dbg !1613
  %110 = icmp eq i32 %93, 2, !dbg !1616
  %111 = or i1 %103, %109, !dbg !1618
  %112 = icmp ne i8 %108, 0, !dbg !1620
  %113 = and i1 %110, %112, !dbg !1620
  %114 = xor i1 %102, true, !dbg !1621
  %115 = xor i1 %104, true, !dbg !1553
  %116 = and i1 %109, %115, !dbg !1553
  %117 = or i1 %25, %116, !dbg !1553
  %118 = and i8 %99, %100, !dbg !1622
  %119 = and i8 %118, 1, !dbg !1622
  %120 = icmp ne i8 %119, 0, !dbg !1622
  %121 = and i1 %120, %105, !dbg !1622
  br label %122, !dbg !1624

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1625
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1594
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1556
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1560
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1561
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1562
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %126, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %123, metadata !1490, metadata !DIExpression()), !dbg !1539
  %131 = icmp eq i64 %126, -1, !dbg !1626
  br i1 %131, label %132, label %136, !dbg !1627

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1628
  %134 = load i8, i8* %133, align 1, !dbg !1628, !tbaa !1573
  %135 = icmp eq i8 %134, 0, !dbg !1629
  br i1 %135, label %581, label %138, !dbg !1630

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1631
  br i1 %137, label %581, label %138, !dbg !1630

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, metadata !1508, metadata !DIExpression()), !dbg !1632
  br i1 %106, label %139, label %154, !dbg !1633

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1634
  %141 = and i1 %107, %131, !dbg !1635
  br i1 %141, label %142, label %144, !dbg !1635

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %143, metadata !1484, metadata !DIExpression()), !dbg !1539
  br label %144, !dbg !1637

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1484, metadata !DIExpression()), !dbg !1539
  %146 = icmp ugt i64 %140, %145, !dbg !1638
  br i1 %146, label %154, label %147, !dbg !1639

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1640
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1641
  %150 = icmp ne i32 %149, 0, !dbg !1642
  %151 = or i1 %150, %109, !dbg !1643
  %152 = xor i1 %150, true, !dbg !1643
  %153 = zext i1 %152 to i8, !dbg !1643
  br i1 %151, label %154, label %639, !dbg !1643

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8 %156, metadata !1506, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %155, metadata !1484, metadata !DIExpression()), !dbg !1539
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1644
  %158 = load i8, i8* %157, align 1, !dbg !1644, !tbaa !1573
  call void @llvm.dbg.value(metadata i8 %158, metadata !1501, metadata !DIExpression()), !dbg !1632
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
  ], !dbg !1645

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1646

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1647

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1632
  %162 = and i8 %127, 1, !dbg !1650
  %163 = icmp eq i8 %162, 0, !dbg !1650
  %164 = and i1 %110, %163, !dbg !1650
  br i1 %164, label %165, label %181, !dbg !1650

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1652
  br i1 %166, label %167, label %169, !dbg !1656

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1652
  store i8 39, i8* %168, align 1, !dbg !1652, !tbaa !1573
  br label %169, !dbg !1652

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %170, metadata !1491, metadata !DIExpression()), !dbg !1539
  %171 = icmp ult i64 %170, %130, !dbg !1657
  br i1 %171, label %172, label %174, !dbg !1660

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1657
  store i8 36, i8* %173, align 1, !dbg !1657, !tbaa !1573
  br label %174, !dbg !1657

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %175, metadata !1491, metadata !DIExpression()), !dbg !1539
  %176 = icmp ult i64 %175, %130, !dbg !1661
  br i1 %176, label %177, label %179, !dbg !1664

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1661
  store i8 39, i8* %178, align 1, !dbg !1661, !tbaa !1573
  br label %179, !dbg !1661

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %180, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %181, !dbg !1665

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1539
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %183, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %182, metadata !1491, metadata !DIExpression()), !dbg !1539
  %184 = icmp ult i64 %182, %130, !dbg !1666
  br i1 %184, label %185, label %187, !dbg !1669

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1666
  store i8 92, i8* %186, align 1, !dbg !1666, !tbaa !1573
  br label %187, !dbg !1666

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %188, metadata !1491, metadata !DIExpression()), !dbg !1539
  br i1 %103, label %189, label %463, !dbg !1670

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1672
  %191 = icmp ult i64 %190, %155, !dbg !1673
  br i1 %191, label %192, label %463, !dbg !1674

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1675
  %194 = load i8, i8* %193, align 1, !dbg !1675, !tbaa !1573
  %195 = add i8 %194, -48, !dbg !1676
  %196 = icmp ult i8 %195, 10, !dbg !1676
  br i1 %196, label %197, label %463, !dbg !1676

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1677
  br i1 %198, label %199, label %201, !dbg !1681

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1677
  store i8 48, i8* %200, align 1, !dbg !1677, !tbaa !1573
  br label %201, !dbg !1677

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %202, metadata !1491, metadata !DIExpression()), !dbg !1539
  %203 = icmp ult i64 %202, %130, !dbg !1682
  br i1 %203, label %204, label %206, !dbg !1685

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1682
  store i8 48, i8* %205, align 1, !dbg !1682, !tbaa !1573
  br label %206, !dbg !1682

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %207, metadata !1491, metadata !DIExpression()), !dbg !1539
  br label %463, !dbg !1686

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1687

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1688

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1689

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1690

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1691
  %214 = icmp ult i64 %213, %155, !dbg !1692
  br i1 %214, label %215, label %463, !dbg !1693

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1694
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1695
  %218 = load i8, i8* %217, align 1, !dbg !1695, !tbaa !1573
  %219 = icmp eq i8 %218, 63, !dbg !1696
  br i1 %219, label %220, label %463, !dbg !1697

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1698
  %222 = load i8, i8* %221, align 1, !dbg !1698, !tbaa !1573
  %223 = sext i8 %222 to i32, !dbg !1698
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
  ], !dbg !1699

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1700

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i64 %213, metadata !1490, metadata !DIExpression()), !dbg !1539
  %226 = icmp ult i64 %124, %130, !dbg !1702
  br i1 %226, label %227, label %229, !dbg !1705

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1702
  store i8 63, i8* %228, align 1, !dbg !1702, !tbaa !1573
  br label %229, !dbg !1702

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %230, metadata !1491, metadata !DIExpression()), !dbg !1539
  %231 = icmp ult i64 %230, %130, !dbg !1706
  br i1 %231, label %232, label %234, !dbg !1709

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1706
  store i8 34, i8* %233, align 1, !dbg !1706, !tbaa !1573
  br label %234, !dbg !1706

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %235, metadata !1491, metadata !DIExpression()), !dbg !1539
  %236 = icmp ult i64 %235, %130, !dbg !1710
  br i1 %236, label %237, label %239, !dbg !1713

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1710
  store i8 34, i8* %238, align 1, !dbg !1710, !tbaa !1573
  br label %239, !dbg !1710

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %240, metadata !1491, metadata !DIExpression()), !dbg !1539
  %241 = icmp ult i64 %240, %130, !dbg !1714
  br i1 %241, label %242, label %244, !dbg !1717

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1714
  store i8 63, i8* %243, align 1, !dbg !1714, !tbaa !1573
  br label %244, !dbg !1714

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %245, metadata !1491, metadata !DIExpression()), !dbg !1539
  br label %463, !dbg !1718

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1505, metadata !DIExpression()), !dbg !1632
  br label %256, !dbg !1719

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1505, metadata !DIExpression()), !dbg !1632
  br label %256, !dbg !1720

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1505, metadata !DIExpression()), !dbg !1632
  br label %254, !dbg !1721

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1505, metadata !DIExpression()), !dbg !1632
  br label %254, !dbg !1722

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1505, metadata !DIExpression()), !dbg !1632
  br label %256, !dbg !1723

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1505, metadata !DIExpression()), !dbg !1632
  br i1 %110, label %252, label %253, !dbg !1724

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1725

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1728

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1729
  call void @llvm.dbg.value(metadata i8 %255, metadata !1505, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.label(metadata !1534), !dbg !1730
  br i1 %111, label %256, label %625, !dbg !1731

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1729
  call void @llvm.dbg.value(metadata i8 %257, metadata !1505, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.label(metadata !1535), !dbg !1733
  br i1 %102, label %488, label %463, !dbg !1734

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1735

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1736, !tbaa !1573
  %261 = icmp eq i8 %260, 0, !dbg !1737
  br i1 %261, label %262, label %463, !dbg !1738

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1739
  br i1 %263, label %264, label %463, !dbg !1741

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1632
  br label %265, !dbg !1742

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8 %266, metadata !1508, metadata !DIExpression()), !dbg !1632
  br i1 %111, label %463, label %625, !dbg !1743

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1632
  br i1 %110, label %268, label %463, !dbg !1744

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1745

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1747
  %271 = icmp ne i64 %125, 0, !dbg !1749
  %272 = or i1 %271, %270, !dbg !1750
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1750
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %274, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %273, metadata !1492, metadata !DIExpression()), !dbg !1539
  %275 = icmp ult i64 %124, %274, !dbg !1751
  br i1 %275, label %276, label %278, !dbg !1754

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1751
  store i8 39, i8* %277, align 1, !dbg !1751, !tbaa !1573
  br label %278, !dbg !1751

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %279, metadata !1491, metadata !DIExpression()), !dbg !1539
  %280 = icmp ult i64 %279, %274, !dbg !1755
  br i1 %280, label %281, label %283, !dbg !1758

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1755
  store i8 92, i8* %282, align 1, !dbg !1755, !tbaa !1573
  br label %283, !dbg !1755

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %284, metadata !1491, metadata !DIExpression()), !dbg !1539
  %285 = icmp ult i64 %284, %274, !dbg !1759
  br i1 %285, label %286, label %288, !dbg !1762

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1759
  store i8 39, i8* %287, align 1, !dbg !1759, !tbaa !1573
  br label %288, !dbg !1759

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %289, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %463, !dbg !1763

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1764

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1509, metadata !DIExpression()), !dbg !1765
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1766
  %293 = load i16*, i16** %292, align 8, !dbg !1766, !tbaa !1120
  %294 = zext i8 %158 to i64, !dbg !1766
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1766
  %296 = load i16, i16* %295, align 2, !dbg !1766, !tbaa !1768
  %297 = lshr i16 %296, 14, !dbg !1770
  %298 = trunc i16 %297 to i8, !dbg !1770
  %299 = and i8 %298, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i8 %299, metadata !1512, metadata !DIExpression()), !dbg !1765
  br label %355, !dbg !1771

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1772
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1513, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* %23, metadata !1774, metadata !DIExpression()) #12, !dbg !1782
  call void @llvm.dbg.value(metadata i32 0, metadata !1780, metadata !DIExpression()) #12, !dbg !1782
  call void @llvm.dbg.value(metadata i64 8, metadata !1781, metadata !DIExpression()) #12, !dbg !1782
  store i64 0, i64* %10, align 8, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 1, metadata !1512, metadata !DIExpression()), !dbg !1765
  %301 = icmp eq i64 %155, -1, !dbg !1785
  br i1 %301, label %302, label %304, !dbg !1787

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %303, metadata !1484, metadata !DIExpression()), !dbg !1539
  br label %304, !dbg !1789

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1632
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  br label %306, !dbg !1790

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1791
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1792
  call void @llvm.dbg.value(metadata i8 %308, metadata !1512, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1793
  %309 = add i64 %307, %123, !dbg !1794
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1795
  %311 = sub i64 %305, %309, !dbg !1796
  call void @llvm.dbg.value(metadata i32* %12, metadata !1519, metadata !DIExpression(DW_OP_deref)), !dbg !1552
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %312, metadata !1522, metadata !DIExpression()), !dbg !1552
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1798

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  %314 = icmp ugt i64 %305, %309, !dbg !1799
  br i1 %314, label %315, label %340, !dbg !1801

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1802
  br label %317, !dbg !1802

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1509, metadata !DIExpression()), !dbg !1765
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1803
  %321 = load i8, i8* %320, align 1, !dbg !1803, !tbaa !1573
  %322 = icmp eq i8 %321, 0, !dbg !1801
  br i1 %322, label %340, label %323, !dbg !1802

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %324, metadata !1509, metadata !DIExpression()), !dbg !1765
  %325 = add i64 %324, %123, !dbg !1805
  %326 = icmp ult i64 %325, %305, !dbg !1799
  br i1 %326, label %317, label %340, !dbg !1801, !llvm.loop !1806

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1807
  %329 = and i1 %113, %328, !dbg !1810
  call void @llvm.dbg.value(metadata i64 1, metadata !1523, metadata !DIExpression()), !dbg !1811
  br i1 %329, label %330, label %343, !dbg !1810

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1523, metadata !DIExpression()), !dbg !1811
  %332 = add i64 %331, %309, !dbg !1812
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1813
  %334 = load i8, i8* %333, align 1, !dbg !1813, !tbaa !1573
  %335 = sext i8 %334 to i32, !dbg !1813
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1814

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %337, metadata !1523, metadata !DIExpression()), !dbg !1811
  %338 = icmp eq i64 %337, %312, !dbg !1807
  br i1 %338, label %343, label %330, !dbg !1816, !llvm.loop !1817

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %308, metadata !1512, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %307, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %308, metadata !1512, metadata !DIExpression()), !dbg !1765
  br label %340, !dbg !1819

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1819
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1820, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %344, metadata !1519, metadata !DIExpression()), !dbg !1552
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !1822
  %346 = icmp eq i32 %345, 0, !dbg !1822
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1823
  call void @llvm.dbg.value(metadata i8 %347, metadata !1512, metadata !DIExpression()), !dbg !1765
  %348 = add i64 %312, %307, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %348, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %347, metadata !1512, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %348, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1819
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1825
  %350 = icmp eq i32 %349, 0, !dbg !1826
  br i1 %350, label %306, label %351, !dbg !1827, !llvm.loop !1828

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1830
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1485, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %99, metadata !1495, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %305, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1819
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1830
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1632
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1831
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1831
  call void @llvm.dbg.value(metadata i8 %358, metadata !1512, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %357, metadata !1509, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %356, metadata !1484, metadata !DIExpression()), !dbg !1539
  %359 = and i8 %358, 1, !dbg !1832
  %360 = icmp ne i8 %359, 0, !dbg !1832
  call void @llvm.dbg.value(metadata i8 %359, metadata !1508, metadata !DIExpression()), !dbg !1632
  %361 = icmp ult i64 %357, 2, !dbg !1833
  %362 = or i1 %360, %114, !dbg !1834
  %363 = and i1 %361, %362, !dbg !1835
  br i1 %363, label %463, label %364, !dbg !1835

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %365, metadata !1530, metadata !DIExpression()), !dbg !1837
  br label %366, !dbg !1838

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1625
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1539
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1560
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1632
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1632
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %372, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %371, metadata !1506, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %370, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %369, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %368, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %367, metadata !1490, metadata !DIExpression()), !dbg !1539
  br i1 %362, label %419, label %373, !dbg !1840

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1845

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1632
  %375 = and i8 %369, 1, !dbg !1848
  %376 = icmp eq i8 %375, 0, !dbg !1848
  %377 = and i1 %110, %376, !dbg !1848
  br i1 %377, label %378, label %394, !dbg !1848

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1850
  br i1 %379, label %380, label %382, !dbg !1854

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1850
  store i8 39, i8* %381, align 1, !dbg !1850, !tbaa !1573
  br label %382, !dbg !1850

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %383, metadata !1491, metadata !DIExpression()), !dbg !1539
  %384 = icmp ult i64 %383, %130, !dbg !1855
  br i1 %384, label %385, label %387, !dbg !1858

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1855
  store i8 36, i8* %386, align 1, !dbg !1855, !tbaa !1573
  br label %387, !dbg !1855

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %388, metadata !1491, metadata !DIExpression()), !dbg !1539
  %389 = icmp ult i64 %388, %130, !dbg !1859
  br i1 %389, label %390, label %392, !dbg !1862

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1859
  store i8 39, i8* %391, align 1, !dbg !1859, !tbaa !1573
  br label %392, !dbg !1859

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %393, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %394, !dbg !1863

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1539
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %396, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %395, metadata !1491, metadata !DIExpression()), !dbg !1539
  %397 = icmp ult i64 %395, %130, !dbg !1864
  br i1 %397, label %398, label %400, !dbg !1867

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1864
  store i8 92, i8* %399, align 1, !dbg !1864, !tbaa !1573
  br label %400, !dbg !1864

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %401, metadata !1491, metadata !DIExpression()), !dbg !1539
  %402 = icmp ult i64 %401, %130, !dbg !1868
  br i1 %402, label %403, label %407, !dbg !1871

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1868
  %405 = or i8 %404, 48, !dbg !1868
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1868
  store i8 %405, i8* %406, align 1, !dbg !1868, !tbaa !1573
  br label %407, !dbg !1868

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %408, metadata !1491, metadata !DIExpression()), !dbg !1539
  %409 = icmp ult i64 %408, %130, !dbg !1872
  br i1 %409, label %410, label %415, !dbg !1875

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1872
  %412 = and i8 %411, 7, !dbg !1872
  %413 = or i8 %412, 48, !dbg !1872
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1872
  store i8 %413, i8* %414, align 1, !dbg !1872, !tbaa !1573
  br label %415, !dbg !1872

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %416, metadata !1491, metadata !DIExpression()), !dbg !1539
  %417 = and i8 %370, 7, !dbg !1876
  %418 = or i8 %417, 48, !dbg !1877
  call void @llvm.dbg.value(metadata i8 %418, metadata !1501, metadata !DIExpression()), !dbg !1632
  br label %428, !dbg !1878

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1879
  %421 = icmp eq i8 %420, 0, !dbg !1879
  br i1 %421, label %428, label %422, !dbg !1881

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1882
  br i1 %423, label %424, label %426, !dbg !1886

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1882
  store i8 92, i8* %425, align 1, !dbg !1882, !tbaa !1573
  br label %426, !dbg !1882

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %427, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1632
  br label %428, !dbg !1887

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1539
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1560
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1632
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1632
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8 %433, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %432, metadata !1506, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %431, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %430, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %429, metadata !1491, metadata !DIExpression()), !dbg !1539
  %434 = add i64 %367, 1, !dbg !1888
  %435 = icmp ugt i64 %365, %434, !dbg !1890
  br i1 %435, label %436, label %526, !dbg !1891

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1892
  %438 = icmp ne i8 %437, 0, !dbg !1892
  %439 = and i8 %433, 1, !dbg !1892
  %440 = icmp eq i8 %439, 0, !dbg !1892
  %441 = and i1 %438, %440, !dbg !1892
  br i1 %441, label %442, label %453, !dbg !1892

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1895
  br i1 %443, label %444, label %446, !dbg !1899

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1895
  store i8 39, i8* %445, align 1, !dbg !1895, !tbaa !1573
  br label %446, !dbg !1895

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %447, metadata !1491, metadata !DIExpression()), !dbg !1539
  %448 = icmp ult i64 %447, %130, !dbg !1900
  br i1 %448, label %449, label %451, !dbg !1903

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1900
  store i8 39, i8* %450, align 1, !dbg !1900, !tbaa !1573
  br label %451, !dbg !1900

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %452, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %453, !dbg !1904

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1905
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %455, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %454, metadata !1491, metadata !DIExpression()), !dbg !1539
  %456 = icmp ult i64 %454, %130, !dbg !1906
  br i1 %456, label %457, label %459, !dbg !1909

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1906
  store i8 %431, i8* %458, align 1, !dbg !1906, !tbaa !1573
  br label %459, !dbg !1906

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %460, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %434, metadata !1490, metadata !DIExpression()), !dbg !1539
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1910
  %462 = load i8, i8* %461, align 1, !dbg !1910, !tbaa !1573
  call void @llvm.dbg.value(metadata i8 %462, metadata !1501, metadata !DIExpression()), !dbg !1632
  br label %366, !dbg !1911, !llvm.loop !1912

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1625
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1539
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1556
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1915
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1539
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1539
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1632
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1632
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1632
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %472, metadata !1508, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %471, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %156, metadata !1506, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %470, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %469, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %468, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %467, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %466, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %465, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %464, metadata !1490, metadata !DIExpression()), !dbg !1539
  br i1 %117, label %486, label %474, !dbg !1916

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1917
  %476 = zext i8 %475 to i64, !dbg !1917
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1918
  %478 = load i32, i32* %477, align 4, !dbg !1918, !tbaa !1176
  %479 = and i8 %470, 31, !dbg !1919
  %480 = zext i8 %479 to i32, !dbg !1919
  %481 = shl nuw i32 1, %480, !dbg !1920
  %482 = and i32 %478, %481, !dbg !1920
  %483 = icmp eq i32 %482, 0, !dbg !1920
  %484 = icmp eq i8 %156, 0, !dbg !1921
  %485 = and i1 %484, %483, !dbg !1922
  br i1 %485, label %526, label %488, !dbg !1922

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1921
  br i1 %487, label %526, label %488, !dbg !1923

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1924
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1539
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1556
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1915
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1560
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1561
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1632
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1632
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %496, metadata !1508, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %495, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %494, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %493, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %492, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %491, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %490, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %489, metadata !1490, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1536), !dbg !1925
  br i1 %109, label %498, label %629, !dbg !1926

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1632
  %499 = and i8 %493, 1, !dbg !1928
  %500 = icmp eq i8 %499, 0, !dbg !1928
  %501 = and i1 %110, %500, !dbg !1928
  br i1 %501, label %502, label %518, !dbg !1928

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1930
  br i1 %503, label %504, label %506, !dbg !1934

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1930
  store i8 39, i8* %505, align 1, !dbg !1930, !tbaa !1573
  br label %506, !dbg !1930

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %507, metadata !1491, metadata !DIExpression()), !dbg !1539
  %508 = icmp ult i64 %507, %497, !dbg !1935
  br i1 %508, label %509, label %511, !dbg !1938

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1935
  store i8 36, i8* %510, align 1, !dbg !1935, !tbaa !1573
  br label %511, !dbg !1935

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %512, metadata !1491, metadata !DIExpression()), !dbg !1539
  %513 = icmp ult i64 %512, %497, !dbg !1939
  br i1 %513, label %514, label %516, !dbg !1942

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1939
  store i8 39, i8* %515, align 1, !dbg !1939, !tbaa !1573
  br label %516, !dbg !1939

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %517, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %518, !dbg !1943

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1632
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %520, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %519, metadata !1491, metadata !DIExpression()), !dbg !1539
  %521 = icmp ult i64 %519, %497, !dbg !1944
  br i1 %521, label %522, label %524, !dbg !1947

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1944
  store i8 92, i8* %523, align 1, !dbg !1944, !tbaa !1573
  br label %524, !dbg !1944

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %525, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %536, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %535, metadata !1508, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %534, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %533, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %532, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %531, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %530, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %529, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %528, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %527, metadata !1490, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1537), !dbg !1948
  br label %553, !dbg !1949

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1924
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1539
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1556
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1915
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1560
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1561
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1952
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1632
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1632
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %535, metadata !1508, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %534, metadata !1507, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %533, metadata !1501, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 %532, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %531, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %530, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %529, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %528, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %527, metadata !1490, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1537), !dbg !1948
  %537 = and i8 %531, 1, !dbg !1949
  %538 = icmp ne i8 %537, 0, !dbg !1949
  %539 = and i8 %534, 1, !dbg !1949
  %540 = icmp eq i8 %539, 0, !dbg !1949
  %541 = and i1 %538, %540, !dbg !1949
  br i1 %541, label %542, label %553, !dbg !1949

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1953
  br i1 %543, label %544, label %546, !dbg !1957

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1953
  store i8 39, i8* %545, align 1, !dbg !1953, !tbaa !1573
  br label %546, !dbg !1953

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %547, metadata !1491, metadata !DIExpression()), !dbg !1539
  %548 = icmp ult i64 %547, %536, !dbg !1958
  br i1 %548, label %549, label %551, !dbg !1961

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1958
  store i8 39, i8* %550, align 1, !dbg !1958, !tbaa !1573
  br label %551, !dbg !1958

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %552, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1539
  br label %553, !dbg !1962

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1632
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8 %562, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %561, metadata !1491, metadata !DIExpression()), !dbg !1539
  %563 = icmp ult i64 %561, %554, !dbg !1963
  br i1 %563, label %564, label %566, !dbg !1966

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1963
  store i8 %556, i8* %565, align 1, !dbg !1963, !tbaa !1573
  br label %566, !dbg !1963

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %567, metadata !1491, metadata !DIExpression()), !dbg !1539
  %568 = and i8 %555, 1, !dbg !1967
  %569 = icmp eq i8 %568, 0, !dbg !1967
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1969
  call void @llvm.dbg.value(metadata i8 %570, metadata !1500, metadata !DIExpression()), !dbg !1539
  br label %571, !dbg !1970

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1924
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1539
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1556
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1915
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1560
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1539
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1562
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %578, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %577, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %576, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %575, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %574, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %573, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %572, metadata !1490, metadata !DIExpression()), !dbg !1539
  %580 = add i64 %572, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %580, metadata !1490, metadata !DIExpression()), !dbg !1539
  br label %122, !dbg !1972, !llvm.loop !1973

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %127, metadata !1498, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %128, metadata !1499, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %129, metadata !1500, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  %583 = icmp eq i64 %124, 0, !dbg !1975
  %584 = and i1 %110, %583, !dbg !1977
  %585 = xor i1 %584, true, !dbg !1977
  %586 = or i1 %109, %585, !dbg !1977
  br i1 %586, label %587, label %629, !dbg !1977

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1978
  %589 = xor i1 %588, true, !dbg !1978
  %590 = and i8 %128, 1, !dbg !1980
  %591 = icmp eq i8 %590, 0, !dbg !1980
  %592 = or i1 %591, %589, !dbg !1978
  br i1 %592, label %602, label %593, !dbg !1978

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1981
  %595 = icmp eq i8 %594, 0, !dbg !1981
  br i1 %595, label %598, label %596, !dbg !1984

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %94, metadata !1488, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1489, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %125, metadata !1492, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %582, metadata !1484, metadata !DIExpression()), !dbg !1539
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1985
  br label %645, !dbg !1986

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1987
  %600 = icmp ne i64 %125, 0, !dbg !1989
  %601 = and i1 %600, %599, !dbg !1990
  br i1 %601, label %26, label %602, !dbg !1990

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %130, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  %603 = icmp ne i8* %97, null, !dbg !1991
  %604 = and i1 %603, %109, !dbg !1993
  br i1 %604, label %605, label %620, !dbg !1993

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %124, metadata !1491, metadata !DIExpression()), !dbg !1539
  %606 = load i8, i8* %97, align 1, !dbg !1994, !tbaa !1573
  %607 = icmp eq i8 %606, 0, !dbg !1997
  br i1 %607, label %620, label %608, !dbg !1997

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1493, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %611, metadata !1491, metadata !DIExpression()), !dbg !1539
  %612 = icmp ult i64 %611, %130, !dbg !1998
  br i1 %612, label %613, label %615, !dbg !2001

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !1998
  store i8 %609, i8* %614, align 1, !dbg !1998, !tbaa !1573
  br label %615, !dbg !1998

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %616, metadata !1491, metadata !DIExpression()), !dbg !1539
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %617, metadata !1493, metadata !DIExpression()), !dbg !1539
  %618 = load i8, i8* %617, align 1, !dbg !1994, !tbaa !1573
  %619 = icmp eq i8 %618, 0, !dbg !1997
  br i1 %619, label %620, label %608, !dbg !1997, !llvm.loop !2003

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1594
  call void @llvm.dbg.value(metadata i64 %621, metadata !1491, metadata !DIExpression()), !dbg !1539
  %622 = icmp ult i64 %621, %130, !dbg !2005
  br i1 %622, label %623, label %645, !dbg !2007

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2008
  store i8 0, i8* %624, align 1, !dbg !2009, !tbaa !1573
  br label %645, !dbg !2008

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %630, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1538), !dbg !2010
  %627 = icmp eq i8 %101, 0, !dbg !2011
  %628 = select i1 %627, i32 2, i32 4, !dbg !2011
  br label %635, !dbg !2011

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1482, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %630, metadata !1484, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.label(metadata !1538), !dbg !2010
  %632 = icmp eq i32 %93, 2, !dbg !2013
  %633 = icmp eq i8 %101, 0, !dbg !2011
  %634 = select i1 %633, i32 2, i32 4, !dbg !2011
  br i1 %632, label %635, label %639, !dbg !2011

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2011

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1485, metadata !DIExpression()), !dbg !1539
  %643 = and i32 %5, -3, !dbg !2014
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2015
  br label %645, !dbg !2016

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2017
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %1, metadata !2023, metadata !DIExpression()), !dbg !2026
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %3, metadata !2024, metadata !DIExpression()), !dbg !2026
  %4 = icmp eq i8* %3, %0, !dbg !2028
  br i1 %4, label %5, label %71, !dbg !2030

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2031
  call void @llvm.dbg.value(metadata i8* %6, metadata !2025, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* %6, metadata !2032, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* undef, metadata !2038, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 85, metadata !2039, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 84, metadata !2040, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 70, metadata !2041, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 45, metadata !2042, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 56, metadata !2043, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2048
  %7 = load i8, i8* %6, align 1, !dbg !2051, !tbaa !1573
  %8 = and i8 %7, -33, !dbg !2051
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2051

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2053, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* undef, metadata !2058, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 84, metadata !2059, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 70, metadata !2060, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 45, metadata !2061, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 56, metadata !2062, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2064, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2067
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2071
  %11 = load i8, i8* %10, align 1, !dbg !2071, !tbaa !1573
  %12 = and i8 %11, -33, !dbg !2071
  %13 = icmp eq i8 %12, 84, !dbg !2071
  br i1 %13, label %14, label %68, !dbg !2071

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2073, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* undef, metadata !2078, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 70, metadata !2079, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 45, metadata !2080, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 56, metadata !2081, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2086
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2090
  %16 = load i8, i8* %15, align 1, !dbg !2090, !tbaa !1573
  %17 = and i8 %16, -33, !dbg !2090
  %18 = icmp eq i8 %17, 70, !dbg !2090
  br i1 %18, label %19, label %68, !dbg !2090

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2092, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8* undef, metadata !2097, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 45, metadata !2098, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 56, metadata !2099, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2100, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2104
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2108
  %21 = load i8, i8* %20, align 1, !dbg !2108, !tbaa !1573
  %22 = icmp eq i8 %21, 45, !dbg !2108
  br i1 %22, label %23, label %68, !dbg !2110

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* undef, metadata !2116, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 56, metadata !2117, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2122
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2126
  %25 = load i8, i8* %24, align 1, !dbg !2126, !tbaa !1573
  %26 = icmp eq i8 %25, 56, !dbg !2126
  br i1 %26, label %27, label %68, !dbg !2128

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2129, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* undef, metadata !2134, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2138, metadata !DIExpression()), !dbg !2139
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2143
  %29 = load i8, i8* %28, align 1, !dbg !2143, !tbaa !1573
  %30 = icmp eq i8 %29, 0, !dbg !2143
  br i1 %30, label %31, label %68, !dbg !2145

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2146, !tbaa !1573
  %33 = icmp eq i8 %32, 96, !dbg !2147
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !2146
  br label %71, !dbg !2148

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2053, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8* undef, metadata !2058, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 66, metadata !2059, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 49, metadata !2060, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 56, metadata !2061, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 48, metadata !2062, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 51, metadata !2063, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 48, metadata !2064, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2065, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8 0, metadata !2066, metadata !DIExpression()), !dbg !2149
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2153
  %37 = load i8, i8* %36, align 1, !dbg !2153, !tbaa !1573
  %38 = and i8 %37, -33, !dbg !2153
  %39 = icmp eq i8 %38, 66, !dbg !2153
  br i1 %39, label %40, label %68, !dbg !2153

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2073, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* undef, metadata !2078, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 49, metadata !2079, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 56, metadata !2080, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 48, metadata !2081, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 51, metadata !2082, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 48, metadata !2083, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2084, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2154
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2156
  %42 = load i8, i8* %41, align 1, !dbg !2156, !tbaa !1573
  %43 = icmp eq i8 %42, 49, !dbg !2156
  br i1 %43, label %44, label %68, !dbg !2157

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2092, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8* undef, metadata !2097, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 56, metadata !2098, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 48, metadata !2099, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 51, metadata !2100, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 48, metadata !2101, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2158
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2160
  %46 = load i8, i8* %45, align 1, !dbg !2160, !tbaa !1573
  %47 = icmp eq i8 %46, 56, !dbg !2160
  br i1 %47, label %48, label %68, !dbg !2161

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* undef, metadata !2116, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 48, metadata !2117, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 51, metadata !2118, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 48, metadata !2119, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2162
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2164
  %50 = load i8, i8* %49, align 1, !dbg !2164, !tbaa !1573
  %51 = icmp eq i8 %50, 48, !dbg !2164
  br i1 %51, label %52, label %68, !dbg !2165

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2129, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8* undef, metadata !2134, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 51, metadata !2135, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2136, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2137, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2138, metadata !DIExpression()), !dbg !2166
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2168
  %54 = load i8, i8* %53, align 1, !dbg !2168, !tbaa !1573
  %55 = icmp eq i8 %54, 51, !dbg !2168
  br i1 %55, label %56, label %68, !dbg !2169

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2170, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* undef, metadata !2175, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 48, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2179
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2183
  %58 = load i8, i8* %57, align 1, !dbg !2183, !tbaa !1573
  %59 = icmp eq i8 %58, 48, !dbg !2183
  br i1 %59, label %60, label %68, !dbg !2185

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2186, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* undef, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 0, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8 0, metadata !2193, metadata !DIExpression()), !dbg !2194
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2198
  %62 = load i8, i8* %61, align 1, !dbg !2198, !tbaa !1573
  %63 = icmp eq i8 %62, 0, !dbg !2198
  br i1 %63, label %64, label %68, !dbg !2200

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2201, !tbaa !1573
  %66 = icmp eq i8 %65, 96, !dbg !2202
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !2201
  br label %71, !dbg !2203

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2204
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !2205
  br label %71, !dbg !2206

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2026
  ret i8* %72, !dbg !2207
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2208 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i64 %1, metadata !2213, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %0, metadata !2216, metadata !DIExpression()) #12, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %1, metadata !2221, metadata !DIExpression()) #12, !dbg !2229
  call void @llvm.dbg.value(metadata i64* null, metadata !2222, metadata !DIExpression()) #12, !dbg !2229
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2223, metadata !DIExpression()) #12, !dbg !2229
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2231
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2224, metadata !DIExpression()) #12, !dbg !2229
  %6 = tail call i32* @__errno_location() #24, !dbg !2232
  %7 = load i32, i32* %6, align 4, !dbg !2232, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %7, metadata !2225, metadata !DIExpression()) #12, !dbg !2229
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2233
  %9 = load i32, i32* %8, align 4, !dbg !2233, !tbaa !1424
  %10 = or i32 %9, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %10, metadata !2226, metadata !DIExpression()) #12, !dbg !2229
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2235
  %12 = load i32, i32* %11, align 8, !dbg !2235, !tbaa !1372
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2236
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2237
  %15 = load i8*, i8** %14, align 8, !dbg !2237, !tbaa !1447
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2238
  %17 = load i8*, i8** %16, align 8, !dbg !2238, !tbaa !1450
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2239
  %19 = add i64 %18, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %19, metadata !2227, metadata !DIExpression()) #12, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %19, metadata !2241, metadata !DIExpression()) #12, !dbg !2246
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2248
  call void @llvm.dbg.value(metadata i8* %20, metadata !2228, metadata !DIExpression()) #12, !dbg !2229
  %21 = load i32, i32* %11, align 8, !dbg !2249, !tbaa !1372
  %22 = load i8*, i8** %14, align 8, !dbg !2250, !tbaa !1447
  %23 = load i8*, i8** %16, align 8, !dbg !2251, !tbaa !1450
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2252
  store i32 %7, i32* %6, align 4, !dbg !2253, !tbaa !1176
  ret i8* %20, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2216, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %1, metadata !2221, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64* %2, metadata !2222, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2223, metadata !DIExpression()), !dbg !2255
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2256
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2224, metadata !DIExpression()), !dbg !2255
  %7 = tail call i32* @__errno_location() #24, !dbg !2257
  %8 = load i32, i32* %7, align 4, !dbg !2257, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %8, metadata !2225, metadata !DIExpression()), !dbg !2255
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2258
  %10 = load i32, i32* %9, align 4, !dbg !2258, !tbaa !1424
  %11 = icmp ne i64* %2, null, !dbg !2259
  %12 = xor i1 %11, true, !dbg !2259
  %13 = zext i1 %12 to i32, !dbg !2259
  %14 = or i32 %10, %13, !dbg !2260
  call void @llvm.dbg.value(metadata i32 %14, metadata !2226, metadata !DIExpression()), !dbg !2255
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2261
  %16 = load i32, i32* %15, align 8, !dbg !2261, !tbaa !1372
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2262
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2263
  %19 = load i8*, i8** %18, align 8, !dbg !2263, !tbaa !1447
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2264
  %21 = load i8*, i8** %20, align 8, !dbg !2264, !tbaa !1450
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2265
  %23 = add i64 %22, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %23, metadata !2227, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %23, metadata !2241, metadata !DIExpression()) #12, !dbg !2267
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %24, metadata !2228, metadata !DIExpression()), !dbg !2255
  %25 = load i32, i32* %15, align 8, !dbg !2270, !tbaa !1372
  %26 = load i8*, i8** %18, align 8, !dbg !2271, !tbaa !1447
  %27 = load i8*, i8** %20, align 8, !dbg !2272, !tbaa !1450
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2273
  store i32 %8, i32* %7, align 4, !dbg !2274, !tbaa !1176
  br i1 %11, label %29, label %30, !dbg !2275

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2276, !tbaa !2278
  br label %30, !dbg !2280

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2282 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2286, !tbaa !1120
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2284, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 1, metadata !2285, metadata !DIExpression()), !dbg !2287
  %2 = load i32, i32* @nslots, align 4, !dbg !2288, !tbaa !1176
  %3 = icmp sgt i32 %2, 1, !dbg !2291
  br i1 %3, label %4, label %12, !dbg !2292

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2285, metadata !DIExpression()), !dbg !2287
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2293
  %7 = load i8*, i8** %6, align 8, !dbg !2293, !tbaa !2294
  tail call void @free(i8* %7) #12, !dbg !2296
  %8 = add nuw nsw i64 %5, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i64 %8, metadata !2285, metadata !DIExpression()), !dbg !2287
  %9 = load i32, i32* @nslots, align 4, !dbg !2288, !tbaa !1176
  %10 = sext i32 %9 to i64, !dbg !2291
  %11 = icmp slt i64 %8, %10, !dbg !2291
  br i1 %11, label %4, label %12, !dbg !2292, !llvm.loop !2298

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2300
  %14 = load i8*, i8** %13, align 8, !dbg !2300, !tbaa !2294
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2302
  br i1 %15, label %17, label %16, !dbg !2303

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2304
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2306, !tbaa !2307
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2308, !tbaa !2294
  br label %17, !dbg !2309

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2310
  br i1 %18, label %21, label %19, !dbg !2312

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2313
  tail call void @free(i8* %20) #12, !dbg !2315
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2316, !tbaa !1120
  br label %21, !dbg !2317

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2318, !tbaa !1176
  ret void, !dbg !2319
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* %1, metadata !2323, metadata !DIExpression()), !dbg !2324
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2325
  ret i8* %3, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8* %1, metadata !2332, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %2, metadata !2333, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2334, metadata !DIExpression()), !dbg !2346
  %5 = tail call i32* @__errno_location() #24, !dbg !2347
  %6 = load i32, i32* %5, align 4, !dbg !2347, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %6, metadata !2335, metadata !DIExpression()), !dbg !2346
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2348, !tbaa !1120
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2336, metadata !DIExpression()), !dbg !2346
  %8 = icmp slt i32 %0, 0, !dbg !2349
  br i1 %8, label %9, label %10, !dbg !2351

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2352
  unreachable, !dbg !2352

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2353, !tbaa !1176
  %12 = icmp sgt i32 %11, %0, !dbg !2354
  br i1 %12, label %34, label %13, !dbg !2355

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2356
  call void @llvm.dbg.value(metadata i1 %14, metadata !2337, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2340, metadata !DIExpression()), !dbg !2357
  %15 = icmp eq i32 %0, 2147483647, !dbg !2358
  br i1 %15, label %16, label %17, !dbg !2360

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2361
  unreachable, !dbg !2361

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2362
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2362
  %20 = add nuw nsw i32 %0, 1, !dbg !2363
  %21 = sext i32 %20 to i64, !dbg !2364
  %22 = shl nuw nsw i64 %21, 4, !dbg !2365
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2366
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2336, metadata !DIExpression()), !dbg !2346
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2367, !tbaa !1120
  br i1 %14, label %25, label %26, !dbg !2368

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2369, !tbaa.struct !2371
  br label %26, !dbg !2372

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2373, !tbaa !1176
  %28 = sext i32 %27 to i64, !dbg !2374
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2374
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2375
  %31 = sub nsw i32 %20, %27, !dbg !2376
  %32 = sext i32 %31 to i64, !dbg !2377
  %33 = shl nsw i64 %32, 4, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %30, metadata !1774, metadata !DIExpression()) #12, !dbg !2379
  call void @llvm.dbg.value(metadata i32 0, metadata !1780, metadata !DIExpression()) #12, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %33, metadata !1781, metadata !DIExpression()) #12, !dbg !2379
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2381
  store i32 %20, i32* @nslots, align 4, !dbg !2382, !tbaa !1176
  br label %34, !dbg !2383

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2346
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2336, metadata !DIExpression()), !dbg !2346
  %36 = zext i32 %0 to i64, !dbg !2384
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2385
  %38 = load i64, i64* %37, align 8, !dbg !2385, !tbaa !2307
  call void @llvm.dbg.value(metadata i64 %38, metadata !2341, metadata !DIExpression()), !dbg !2386
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2387
  %40 = load i8*, i8** %39, align 8, !dbg !2387, !tbaa !2294
  call void @llvm.dbg.value(metadata i8* %40, metadata !2343, metadata !DIExpression()), !dbg !2386
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2388
  %42 = load i32, i32* %41, align 4, !dbg !2388, !tbaa !1424
  %43 = or i32 %42, 1, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %43, metadata !2344, metadata !DIExpression()), !dbg !2386
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2390
  %45 = load i32, i32* %44, align 8, !dbg !2390, !tbaa !1372
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2391
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2392
  %48 = load i8*, i8** %47, align 8, !dbg !2392, !tbaa !1447
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2393
  %50 = load i8*, i8** %49, align 8, !dbg !2393, !tbaa !1450
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %51, metadata !2345, metadata !DIExpression()), !dbg !2386
  %52 = icmp ugt i64 %38, %51, !dbg !2395
  br i1 %52, label %63, label %53, !dbg !2397

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2398
  call void @llvm.dbg.value(metadata i64 %54, metadata !2341, metadata !DIExpression()), !dbg !2386
  store i64 %54, i64* %37, align 8, !dbg !2400, !tbaa !2307
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2401
  br i1 %55, label %57, label %56, !dbg !2403

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2404
  br label %57, !dbg !2404

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2241, metadata !DIExpression()) #12, !dbg !2405
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %58, metadata !2343, metadata !DIExpression()), !dbg !2386
  store i8* %58, i8** %39, align 8, !dbg !2408, !tbaa !2294
  %59 = load i32, i32* %44, align 8, !dbg !2409, !tbaa !1372
  %60 = load i8*, i8** %47, align 8, !dbg !2410, !tbaa !1447
  %61 = load i8*, i8** %49, align 8, !dbg !2411, !tbaa !1450
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2412
  br label %63, !dbg !2413

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2386
  call void @llvm.dbg.value(metadata i8* %64, metadata !2343, metadata !DIExpression()), !dbg !2386
  store i32 %6, i32* %5, align 4, !dbg !2414, !tbaa !1176
  ret i8* %64, !dbg !2415
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8* %1, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %2, metadata !2422, metadata !DIExpression()), !dbg !2423
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2424
  ret i8* %4, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 0, metadata !2322, metadata !DIExpression()) #12, !dbg !2430
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #12, !dbg !2430
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2432
  ret i8* %2, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %1, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()) #12, !dbg !2441
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()) #12, !dbg !2441
  call void @llvm.dbg.value(metadata i64 %1, metadata !2422, metadata !DIExpression()) #12, !dbg !2441
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2443
  ret i8* %3, !dbg !2444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2445 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()), !dbg !2453
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2452, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %1, metadata !2456, metadata !DIExpression()) #12, !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2461, metadata !DIExpression()) #12, !dbg !2464
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2464, !alias.scope !2465
  %6 = icmp eq i32 %1, 10, !dbg !2468
  br i1 %6, label %7, label %8, !dbg !2470

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2471, !noalias !2465
  unreachable, !dbg !2471

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2472
  store i32 %1, i32* %9, align 8, !dbg !2473, !tbaa !1372, !alias.scope !2465
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2475
  ret i8* %10, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2477 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %2, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %3, metadata !2484, metadata !DIExpression()), !dbg !2486
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2485, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %1, metadata !2456, metadata !DIExpression()) #12, !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2461, metadata !DIExpression()) #12, !dbg !2491
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2491, !alias.scope !2492
  %7 = icmp eq i32 %1, 10, !dbg !2495
  br i1 %7, label %8, label %9, !dbg !2496

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2497, !noalias !2492
  unreachable, !dbg !2497

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2498
  store i32 %1, i32* %10, align 8, !dbg !2499, !tbaa !1372, !alias.scope !2492
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2501
  ret i8* %11, !dbg !2502
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2503 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2461, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2452, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !2508, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()) #12, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()) #12, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2451, metadata !DIExpression()) #12, !dbg !2514
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2515
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %0, metadata !2456, metadata !DIExpression()) #12, !dbg !2516
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2509, !alias.scope !2517
  %5 = icmp eq i32 %0, 10, !dbg !2520
  br i1 %5, label %6, label %7, !dbg !2521

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2522, !noalias !2517
  unreachable, !dbg !2522

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2523
  store i32 %0, i32* %8, align 8, !dbg !2524, !tbaa !1372, !alias.scope !2517
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2526
  ret i8* %9, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2528 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2461, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2485, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2532, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i64 %2, metadata !2534, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2481, metadata !DIExpression()) #12, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()) #12, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %1, metadata !2483, metadata !DIExpression()) #12, !dbg !2540
  call void @llvm.dbg.value(metadata i64 %2, metadata !2484, metadata !DIExpression()) #12, !dbg !2540
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %0, metadata !2456, metadata !DIExpression()) #12, !dbg !2542
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2535, !alias.scope !2543
  %6 = icmp eq i32 %0, 10, !dbg !2546
  br i1 %6, label %7, label %8, !dbg !2547

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2548, !noalias !2543
  unreachable, !dbg !2548

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2549
  store i32 %0, i32* %9, align 8, !dbg !2550, !tbaa !1372, !alias.scope !2543
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2552
  ret i8* %10, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2554 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 %2, metadata !2560, metadata !DIExpression()), !dbg !2562
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2563
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2565, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1390, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 %2, metadata !1391, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 %2, metadata !1393, metadata !DIExpression()), !dbg !2567
  %6 = lshr i8 %2, 5, !dbg !2569
  %7 = zext i8 %6 to i64, !dbg !2569
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2570
  call void @llvm.dbg.value(metadata i32* %8, metadata !1395, metadata !DIExpression()), !dbg !2567
  %9 = and i8 %2, 31, !dbg !2571
  %10 = zext i8 %9 to i32, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %10, metadata !1397, metadata !DIExpression()), !dbg !2567
  %11 = load i32, i32* %8, align 4, !dbg !2572, !tbaa !1176
  %12 = lshr i32 %11, %10, !dbg !2573
  %13 = and i32 %12, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %13, metadata !1398, metadata !DIExpression()), !dbg !2567
  %14 = xor i32 %13, 1, !dbg !2575
  %15 = shl i32 %14, %10, !dbg !2576
  %16 = xor i32 %15, %11, !dbg !2577
  store i32 %16, i32* %8, align 4, !dbg !2577, !tbaa !1176
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2578
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2579
  ret i8* %17, !dbg !2580
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2581 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2561, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %0, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %1, metadata !2586, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()) #12, !dbg !2590
  call void @llvm.dbg.value(metadata i64 -1, metadata !2559, metadata !DIExpression()) #12, !dbg !2590
  call void @llvm.dbg.value(metadata i8 %1, metadata !2560, metadata !DIExpression()) #12, !dbg !2590
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2591
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2592, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1390, metadata !DIExpression()) #12, !dbg !2593
  call void @llvm.dbg.value(metadata i8 %1, metadata !1391, metadata !DIExpression()) #12, !dbg !2593
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()) #12, !dbg !2593
  call void @llvm.dbg.value(metadata i8 %1, metadata !1393, metadata !DIExpression()) #12, !dbg !2593
  %5 = lshr i8 %1, 5, !dbg !2595
  %6 = zext i8 %5 to i64, !dbg !2595
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2596
  call void @llvm.dbg.value(metadata i32* %7, metadata !1395, metadata !DIExpression()) #12, !dbg !2593
  %8 = and i8 %1, 31, !dbg !2597
  %9 = zext i8 %8 to i32, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %9, metadata !1397, metadata !DIExpression()) #12, !dbg !2593
  %10 = load i32, i32* %7, align 4, !dbg !2598, !tbaa !1176
  %11 = lshr i32 %10, %9, !dbg !2599
  %12 = and i32 %11, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %12, metadata !1398, metadata !DIExpression()) #12, !dbg !2593
  %13 = xor i32 %12, 1, !dbg !2601
  %14 = shl i32 %13, %9, !dbg !2602
  %15 = xor i32 %14, %10, !dbg !2603
  store i32 %15, i32* %7, align 4, !dbg !2603, !tbaa !1176
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2604
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2605
  ret i8* %16, !dbg !2606
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2607 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2561, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %0, metadata !2585, metadata !DIExpression()) #12, !dbg !2614
  call void @llvm.dbg.value(metadata i8 58, metadata !2586, metadata !DIExpression()) #12, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i64 -1, metadata !2559, metadata !DIExpression()) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i8 58, metadata !2560, metadata !DIExpression()) #12, !dbg !2615
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2616
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2617, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1390, metadata !DIExpression()) #12, !dbg !2618
  call void @llvm.dbg.value(metadata i8 58, metadata !1391, metadata !DIExpression()) #12, !dbg !2618
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()) #12, !dbg !2618
  call void @llvm.dbg.value(metadata i8 58, metadata !1393, metadata !DIExpression()) #12, !dbg !2618
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32* %4, metadata !1395, metadata !DIExpression()) #12, !dbg !2618
  call void @llvm.dbg.value(metadata i32 26, metadata !1397, metadata !DIExpression()) #12, !dbg !2618
  %5 = load i32, i32* %4, align 4, !dbg !2621, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %5, metadata !1398, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2618
  %6 = or i32 %5, 67108864, !dbg !2622
  store i32 %6, i32* %4, align 4, !dbg !2622, !tbaa !1176
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2623
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2624
  ret i8* %7, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2626 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2561, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %0, metadata !2628, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %1, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1, metadata !2559, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !2560, metadata !DIExpression()) #12, !dbg !2633
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2634
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2634
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2635, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1390, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i8 58, metadata !1391, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i8 58, metadata !1393, metadata !DIExpression()) #12, !dbg !2636
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2638
  call void @llvm.dbg.value(metadata i32* %5, metadata !1395, metadata !DIExpression()) #12, !dbg !2636
  call void @llvm.dbg.value(metadata i32 26, metadata !1397, metadata !DIExpression()) #12, !dbg !2636
  %6 = load i32, i32* %5, align 4, !dbg !2639, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %6, metadata !1398, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2636
  %7 = or i32 %6, 67108864, !dbg !2640
  store i32 %7, i32* %5, align 4, !dbg !2640, !tbaa !1176
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2642
  ret i8* %8, !dbg !2643
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2644 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2461, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2650
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 %1, metadata !2647, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()), !dbg !2652
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2653
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2649, metadata !DIExpression()), !dbg !2654
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1, metadata !2456, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2656
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2650, !alias.scope !2657
  %8 = icmp eq i32 %1, 10, !dbg !2660
  br i1 %8, label %9, label %10, !dbg !2661

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2662, !noalias !2657
  unreachable, !dbg !2662

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2461, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2656
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2655
  store i32 %1, i32* %11, align 8, !dbg !2655, !tbaa.struct !2566
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2655
  %13 = bitcast i32* %12 to i8*, !dbg !2655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2655, !tbaa.struct !2566
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1390, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 58, metadata !1391, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 1, metadata !1392, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 58, metadata !1393, metadata !DIExpression()), !dbg !2663
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2665
  call void @llvm.dbg.value(metadata i32* %14, metadata !1395, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 26, metadata !1397, metadata !DIExpression()), !dbg !2663
  %15 = load i32, i32* %14, align 4, !dbg !2666, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %15, metadata !1398, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2663
  %16 = or i32 %15, 67108864, !dbg !2667
  store i32 %16, i32* %14, align 4, !dbg !2667, !tbaa !1176
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2669
  ret i8* %17, !dbg !2670
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2671 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2679, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i32 %0, metadata !2675, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2676, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2677, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %3, metadata !2678, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()) #12, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()) #12, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()) #12, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %3, metadata !2687, metadata !DIExpression()) #12, !dbg !2692
  call void @llvm.dbg.value(metadata i64 -1, metadata !2688, metadata !DIExpression()) #12, !dbg !2692
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2694, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1431, metadata !DIExpression()) #12, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !1432, metadata !DIExpression()) #12, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %2, metadata !1433, metadata !DIExpression()) #12, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1431, metadata !DIExpression()) #12, !dbg !2695
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2697
  store i32 10, i32* %7, align 8, !dbg !2698, !tbaa !1372
  %8 = icmp ne i8* %1, null, !dbg !2699
  %9 = icmp ne i8* %2, null, !dbg !2700
  %10 = and i1 %8, %9, !dbg !2701
  br i1 %10, label %12, label %11, !dbg !2701

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2702
  unreachable, !dbg !2702

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2703
  store i8* %1, i8** %13, align 8, !dbg !2704, !tbaa !1447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2705
  store i8* %2, i8** %14, align 8, !dbg !2706, !tbaa !1450
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2708
  ret i8* %15, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2680 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %3, metadata !2687, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %4, metadata !2688, metadata !DIExpression()), !dbg !2710
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2711
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2711
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2679, metadata !DIExpression()), !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2713, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1431, metadata !DIExpression()) #12, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %1, metadata !1432, metadata !DIExpression()) #12, !dbg !2714
  call void @llvm.dbg.value(metadata i8* %2, metadata !1433, metadata !DIExpression()) #12, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1431, metadata !DIExpression()) #12, !dbg !2714
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2716
  store i32 10, i32* %8, align 8, !dbg !2717, !tbaa !1372
  %9 = icmp ne i8* %1, null, !dbg !2718
  %10 = icmp ne i8* %2, null, !dbg !2719
  %11 = and i1 %9, %10, !dbg !2720
  br i1 %11, label %13, label %12, !dbg !2720

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2721
  unreachable, !dbg !2721

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2722
  store i8* %1, i8** %14, align 8, !dbg !2723, !tbaa !1447
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2724
  store i8* %2, i8** %15, align 8, !dbg !2725, !tbaa !1450
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2726
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2727
  ret i8* %16, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2729 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2679, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8* %1, metadata !2734, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8* %2, metadata !2735, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 0, metadata !2675, metadata !DIExpression()) #12, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()) #12, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !2677, metadata !DIExpression()) #12, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %2, metadata !2678, metadata !DIExpression()) #12, !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2684, metadata !DIExpression()) #12, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()) #12, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()) #12, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %2, metadata !2687, metadata !DIExpression()) #12, !dbg !2741
  call void @llvm.dbg.value(metadata i64 -1, metadata !2688, metadata !DIExpression()) #12, !dbg !2741
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2743, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1431, metadata !DIExpression()) #12, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !1432, metadata !DIExpression()) #12, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %1, metadata !1433, metadata !DIExpression()) #12, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1431, metadata !DIExpression()) #12, !dbg !2744
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2746
  store i32 10, i32* %6, align 8, !dbg !2747, !tbaa !1372
  %7 = icmp ne i8* %0, null, !dbg !2748
  %8 = icmp ne i8* %1, null, !dbg !2749
  %9 = and i1 %7, %8, !dbg !2750
  br i1 %9, label %11, label %10, !dbg !2750

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2751
  unreachable, !dbg !2751

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2752
  store i8* %0, i8** %12, align 8, !dbg !2753, !tbaa !1447
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2754
  store i8* %1, i8** %13, align 8, !dbg !2755, !tbaa !1450
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2757
  ret i8* %14, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2759 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2679, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !2763, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2764, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %2, metadata !2765, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %3, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 0, metadata !2684, metadata !DIExpression()) #12, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %0, metadata !2685, metadata !DIExpression()) #12, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %1, metadata !2686, metadata !DIExpression()) #12, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %2, metadata !2687, metadata !DIExpression()) #12, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %3, metadata !2688, metadata !DIExpression()) #12, !dbg !2770
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2772, !tbaa.struct !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1431, metadata !DIExpression()) #12, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %0, metadata !1432, metadata !DIExpression()) #12, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !1433, metadata !DIExpression()) #12, !dbg !2773
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1431, metadata !DIExpression()) #12, !dbg !2773
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2775
  store i32 10, i32* %7, align 8, !dbg !2776, !tbaa !1372
  %8 = icmp ne i8* %0, null, !dbg !2777
  %9 = icmp ne i8* %1, null, !dbg !2778
  %10 = and i1 %8, %9, !dbg !2779
  br i1 %10, label %12, label %11, !dbg !2779

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2780
  unreachable, !dbg !2780

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2781
  store i8* %0, i8** %13, align 8, !dbg !2782, !tbaa !1447
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2783
  store i8* %1, i8** %14, align 8, !dbg !2784, !tbaa !1450
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2786
  ret i8* %15, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %2, metadata !2794, metadata !DIExpression()), !dbg !2795
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2796
  ret i8* %4, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2798 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2802, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %1, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()) #12, !dbg !2805
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #12, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()) #12, !dbg !2805
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2807
  ret i8* %3, !dbg !2808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()) #12, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()) #12, !dbg !2816
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()) #12, !dbg !2816
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2818
  ret i8* %3, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 0, metadata !2813, metadata !DIExpression()) #12, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !2814, metadata !DIExpression()) #12, !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()) #12, !dbg !2826
  call void @llvm.dbg.value(metadata i8* %0, metadata !2793, metadata !DIExpression()) #12, !dbg !2826
  call void @llvm.dbg.value(metadata i64 -1, metadata !2794, metadata !DIExpression()) #12, !dbg !2826
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2828
  ret i8* %2, !dbg !2829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2830 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !2839, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %3, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8** %4, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %5, metadata !2843, metadata !DIExpression()), !dbg !2844
  %7 = icmp eq i8* %1, null, !dbg !2845
  br i1 %7, label %10, label %8, !dbg !2847

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2848
  br label %12, !dbg !2848

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2849
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #12, !dbg !2850
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !2850
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2851
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #12, !dbg !2852
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.74, i64 0, i64 0)) #12, !dbg !2852
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2853
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
  ], !dbg !2854

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #12, !dbg !2855
  %21 = load i8*, i8** %4, align 8, !dbg !2855, !tbaa !1120
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !2855
  br label %147, !dbg !2857

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #12, !dbg !2858
  %25 = load i8*, i8** %4, align 8, !dbg !2858, !tbaa !1120
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2858
  %27 = load i8*, i8** %26, align 8, !dbg !2858, !tbaa !1120
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !2858
  br label %147, !dbg !2859

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #12, !dbg !2860
  %31 = load i8*, i8** %4, align 8, !dbg !2860, !tbaa !1120
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2860
  %33 = load i8*, i8** %32, align 8, !dbg !2860, !tbaa !1120
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2860
  %35 = load i8*, i8** %34, align 8, !dbg !2860, !tbaa !1120
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !2860
  br label %147, !dbg !2861

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #12, !dbg !2862
  %39 = load i8*, i8** %4, align 8, !dbg !2862, !tbaa !1120
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2862
  %41 = load i8*, i8** %40, align 8, !dbg !2862, !tbaa !1120
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2862
  %43 = load i8*, i8** %42, align 8, !dbg !2862, !tbaa !1120
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2862
  %45 = load i8*, i8** %44, align 8, !dbg !2862, !tbaa !1120
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !2862
  br label %147, !dbg !2863

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #12, !dbg !2864
  %49 = load i8*, i8** %4, align 8, !dbg !2864, !tbaa !1120
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2864
  %51 = load i8*, i8** %50, align 8, !dbg !2864, !tbaa !1120
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2864
  %53 = load i8*, i8** %52, align 8, !dbg !2864, !tbaa !1120
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2864
  %55 = load i8*, i8** %54, align 8, !dbg !2864, !tbaa !1120
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2864
  %57 = load i8*, i8** %56, align 8, !dbg !2864, !tbaa !1120
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !2864
  br label %147, !dbg !2865

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #12, !dbg !2866
  %61 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !1120
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %63 = load i8*, i8** %62, align 8, !dbg !2866, !tbaa !1120
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2866
  %65 = load i8*, i8** %64, align 8, !dbg !2866, !tbaa !1120
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2866
  %67 = load i8*, i8** %66, align 8, !dbg !2866, !tbaa !1120
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2866
  %69 = load i8*, i8** %68, align 8, !dbg !2866, !tbaa !1120
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2866
  %71 = load i8*, i8** %70, align 8, !dbg !2866, !tbaa !1120
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !2866
  br label %147, !dbg !2867

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #12, !dbg !2868
  %75 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !1120
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %77 = load i8*, i8** %76, align 8, !dbg !2868, !tbaa !1120
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2868
  %79 = load i8*, i8** %78, align 8, !dbg !2868, !tbaa !1120
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2868
  %81 = load i8*, i8** %80, align 8, !dbg !2868, !tbaa !1120
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2868
  %83 = load i8*, i8** %82, align 8, !dbg !2868, !tbaa !1120
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2868
  %85 = load i8*, i8** %84, align 8, !dbg !2868, !tbaa !1120
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2868
  %87 = load i8*, i8** %86, align 8, !dbg !2868, !tbaa !1120
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !2868
  br label %147, !dbg !2869

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #12, !dbg !2870
  %91 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !1120
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %93 = load i8*, i8** %92, align 8, !dbg !2870, !tbaa !1120
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %95 = load i8*, i8** %94, align 8, !dbg !2870, !tbaa !1120
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2870
  %97 = load i8*, i8** %96, align 8, !dbg !2870, !tbaa !1120
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2870
  %99 = load i8*, i8** %98, align 8, !dbg !2870, !tbaa !1120
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2870
  %101 = load i8*, i8** %100, align 8, !dbg !2870, !tbaa !1120
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2870
  %103 = load i8*, i8** %102, align 8, !dbg !2870, !tbaa !1120
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2870
  %105 = load i8*, i8** %104, align 8, !dbg !2870, !tbaa !1120
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !2870
  br label %147, !dbg !2871

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.83, i64 0, i64 0), i32 5) #12, !dbg !2872
  %109 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !1120
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %111 = load i8*, i8** %110, align 8, !dbg !2872, !tbaa !1120
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %113 = load i8*, i8** %112, align 8, !dbg !2872, !tbaa !1120
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %115 = load i8*, i8** %114, align 8, !dbg !2872, !tbaa !1120
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2872
  %117 = load i8*, i8** %116, align 8, !dbg !2872, !tbaa !1120
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2872
  %119 = load i8*, i8** %118, align 8, !dbg !2872, !tbaa !1120
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2872
  %121 = load i8*, i8** %120, align 8, !dbg !2872, !tbaa !1120
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2872
  %123 = load i8*, i8** %122, align 8, !dbg !2872, !tbaa !1120
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2872
  %125 = load i8*, i8** %124, align 8, !dbg !2872, !tbaa !1120
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !2872
  br label %147, !dbg !2873

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.84, i64 0, i64 0), i32 5) #12, !dbg !2874
  %129 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !1120
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2874
  %131 = load i8*, i8** %130, align 8, !dbg !2874, !tbaa !1120
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2874
  %133 = load i8*, i8** %132, align 8, !dbg !2874, !tbaa !1120
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2874
  %135 = load i8*, i8** %134, align 8, !dbg !2874, !tbaa !1120
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2874
  %137 = load i8*, i8** %136, align 8, !dbg !2874, !tbaa !1120
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2874
  %139 = load i8*, i8** %138, align 8, !dbg !2874, !tbaa !1120
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2874
  %141 = load i8*, i8** %140, align 8, !dbg !2874, !tbaa !1120
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2874
  %143 = load i8*, i8** %142, align 8, !dbg !2874, !tbaa !1120
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2874
  %145 = load i8*, i8** %144, align 8, !dbg !2874, !tbaa !1120
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !2874
  br label %147, !dbg !2875

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2876
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2877 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2881, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %2, metadata !2883, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %3, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8** %4, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2886, metadata !DIExpression()), !dbg !2887
  br label %6, !dbg !2888

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2890
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2891
  %9 = load i8*, i8** %8, align 8, !dbg !2891, !tbaa !1120
  %10 = icmp eq i8* %9, null, !dbg !2893
  %11 = add i64 %7, 1, !dbg !2894
  call void @llvm.dbg.value(metadata i64 %11, metadata !2886, metadata !DIExpression()), !dbg !2887
  br i1 %10, label %12, label %6, !dbg !2893, !llvm.loop !2895

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 %7, metadata !2886, metadata !DIExpression()), !dbg !2887
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2897
  ret void, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2899 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2910, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2913, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2914, metadata !DIExpression()), !dbg !2918
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2919
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2916, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 0, metadata !2915, metadata !DIExpression()), !dbg !2918
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2921
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2921
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2921
  %11 = load i32, i32* %8, align 8, !dbg !2924
  %12 = icmp ult i32 %11, 41, !dbg !2924
  br i1 %12, label %13, label %18, !dbg !2924

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2924
  %15 = zext i32 %11 to i64, !dbg !2924
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2924
  %17 = add nuw nsw i32 %11, 8, !dbg !2924
  store i32 %17, i32* %8, align 8, !dbg !2924
  br label %21, !dbg !2924

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2924
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2924
  store i8* %20, i8** %9, align 8, !dbg !2924
  br label %21, !dbg !2924

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2924
  %25 = load i8*, i8** %24, align 8, !dbg !2924
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2925
  store i8* %25, i8** %26, align 16, !dbg !2926, !tbaa !1120
  %27 = icmp eq i8* %25, null, !dbg !2927
  br i1 %27, label %30, label %28, !dbg !2928

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2915, metadata !DIExpression()), !dbg !2918
  %29 = icmp ult i32 %22, 41, !dbg !2924
  br i1 %29, label %35, label %32, !dbg !2924

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2929
  call void @llvm.dbg.value(metadata i64 %31, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %31, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2931
  ret void, !dbg !2931

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2924
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2924
  store i8* %34, i8** %9, align 8, !dbg !2924
  br label %40, !dbg !2924

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2924
  %37 = zext i32 %22 to i64, !dbg !2924
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2924
  %39 = add nuw nsw i32 %22, 8, !dbg !2924
  store i32 %39, i32* %8, align 8, !dbg !2924
  br label %40, !dbg !2924

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2924
  %44 = load i8*, i8** %43, align 8, !dbg !2924
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2925
  store i8* %44, i8** %45, align 8, !dbg !2926, !tbaa !1120
  %46 = icmp eq i8* %44, null, !dbg !2927
  br i1 %46, label %30, label %47, !dbg !2928

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2915, metadata !DIExpression()), !dbg !2918
  %48 = icmp ult i32 %41, 41, !dbg !2924
  br i1 %48, label %52, label %49, !dbg !2924

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2924
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2924
  store i8* %51, i8** %9, align 8, !dbg !2924
  br label %57, !dbg !2924

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2924
  %54 = zext i32 %41 to i64, !dbg !2924
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2924
  %56 = add nuw nsw i32 %41, 8, !dbg !2924
  store i32 %56, i32* %8, align 8, !dbg !2924
  br label %57, !dbg !2924

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2924
  %61 = load i8*, i8** %60, align 8, !dbg !2924
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2925
  store i8* %61, i8** %62, align 16, !dbg !2926, !tbaa !1120
  %63 = icmp eq i8* %61, null, !dbg !2927
  br i1 %63, label %30, label %64, !dbg !2928

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2915, metadata !DIExpression()), !dbg !2918
  %65 = icmp ult i32 %58, 41, !dbg !2924
  br i1 %65, label %69, label %66, !dbg !2924

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2924
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2924
  store i8* %68, i8** %9, align 8, !dbg !2924
  br label %74, !dbg !2924

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2924
  %71 = zext i32 %58 to i64, !dbg !2924
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2924
  %73 = add nuw nsw i32 %58, 8, !dbg !2924
  store i32 %73, i32* %8, align 8, !dbg !2924
  br label %74, !dbg !2924

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2924
  %78 = load i8*, i8** %77, align 8, !dbg !2924
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2925
  store i8* %78, i8** %79, align 8, !dbg !2926, !tbaa !1120
  %80 = icmp eq i8* %78, null, !dbg !2927
  br i1 %80, label %30, label %81, !dbg !2928

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2915, metadata !DIExpression()), !dbg !2918
  %82 = icmp ult i32 %75, 41, !dbg !2924
  br i1 %82, label %86, label %83, !dbg !2924

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2924
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2924
  store i8* %85, i8** %9, align 8, !dbg !2924
  br label %91, !dbg !2924

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2924
  %88 = zext i32 %75 to i64, !dbg !2924
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2924
  %90 = add nuw nsw i32 %75, 8, !dbg !2924
  store i32 %90, i32* %8, align 8, !dbg !2924
  br label %91, !dbg !2924

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2924
  %95 = load i8*, i8** %94, align 8, !dbg !2924
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2925
  store i8* %95, i8** %96, align 16, !dbg !2926, !tbaa !1120
  %97 = icmp eq i8* %95, null, !dbg !2927
  br i1 %97, label %30, label %98, !dbg !2928

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2915, metadata !DIExpression()), !dbg !2918
  %99 = icmp ult i32 %92, 41, !dbg !2924
  br i1 %99, label %103, label %100, !dbg !2924

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2924
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2924
  store i8* %102, i8** %9, align 8, !dbg !2924
  br label %108, !dbg !2924

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2924
  %105 = zext i32 %92 to i64, !dbg !2924
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2924
  %107 = add nuw nsw i32 %92, 8, !dbg !2924
  store i32 %107, i32* %8, align 8, !dbg !2924
  br label %108, !dbg !2924

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2924
  %111 = load i8*, i8** %110, align 8, !dbg !2924
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2925
  store i8* %111, i8** %112, align 8, !dbg !2926, !tbaa !1120
  %113 = icmp eq i8* %111, null, !dbg !2927
  br i1 %113, label %30, label %114, !dbg !2928

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2915, metadata !DIExpression()), !dbg !2918
  %115 = load i8*, i8** %9, align 8, !dbg !2924
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2924
  store i8* %116, i8** %9, align 8, !dbg !2924
  %117 = bitcast i8* %115 to i8**, !dbg !2924
  %118 = load i8*, i8** %117, align 8, !dbg !2924
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2925
  store i8* %118, i8** %119, align 16, !dbg !2926, !tbaa !1120
  %120 = icmp eq i8* %118, null, !dbg !2927
  br i1 %120, label %30, label %121, !dbg !2928

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2915, metadata !DIExpression()), !dbg !2918
  %122 = load i8*, i8** %9, align 8, !dbg !2924
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2924
  store i8* %123, i8** %9, align 8, !dbg !2924
  %124 = bitcast i8* %122 to i8**, !dbg !2924
  %125 = load i8*, i8** %124, align 8, !dbg !2924
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2925
  store i8* %125, i8** %126, align 8, !dbg !2926, !tbaa !1120
  %127 = icmp eq i8* %125, null, !dbg !2927
  br i1 %127, label %30, label %128, !dbg !2928

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2915, metadata !DIExpression()), !dbg !2918
  %129 = load i8*, i8** %9, align 8, !dbg !2924
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2924
  store i8* %130, i8** %9, align 8, !dbg !2924
  %131 = bitcast i8* %129 to i8**, !dbg !2924
  %132 = load i8*, i8** %131, align 8, !dbg !2924
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2925
  store i8* %132, i8** %133, align 16, !dbg !2926, !tbaa !1120
  %134 = icmp eq i8* %132, null, !dbg !2927
  br i1 %134, label %30, label %135, !dbg !2928

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2915, metadata !DIExpression()), !dbg !2918
  %136 = load i8*, i8** %9, align 8, !dbg !2924
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2924
  store i8* %137, i8** %9, align 8, !dbg !2924
  %138 = bitcast i8* %136 to i8**, !dbg !2924
  %139 = load i8*, i8** %138, align 8, !dbg !2924
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2925
  store i8* %139, i8** %140, align 8, !dbg !2926, !tbaa !1120
  %141 = icmp eq i8* %139, null, !dbg !2927
  %142 = select i1 %141, i64 9, i64 10, !dbg !2928
  br label %30, !dbg !2928
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2932 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2936, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2937, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %2, metadata !2938, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %3, metadata !2939, metadata !DIExpression()), !dbg !2945
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2946
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2940, metadata !DIExpression()), !dbg !2947
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2948
  call void @llvm.va_start(i8* nonnull %6), !dbg !2948
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2949
  call void @llvm.va_end(i8* nonnull %6), !dbg !2950
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2951
  ret void, !dbg !2951
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2952 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2953, !tbaa !1120
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.72, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2953
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #12, !dbg !2954
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.88, i64 0, i64 0)) #12, !dbg !2954
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.89, i64 0, i64 0), i32 5) #12, !dbg !2955
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.90, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.91, i64 0, i64 0)) #12, !dbg !2955
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.92, i64 0, i64 0), i32 5) #12, !dbg !2956
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.93, i64 0, i64 0)) #12, !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2958 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2964
  %3 = udiv i64 9223372036854775807, %1, !dbg !2965
  %4 = icmp ult i64 %3, %0, !dbg !2965
  br i1 %4, label %5, label %6, !dbg !2967

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2968
  unreachable, !dbg !2968

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %7, metadata !2970, metadata !DIExpression()) #12, !dbg !2976
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %8, metadata !2975, metadata !DIExpression()) #12, !dbg !2976
  %9 = icmp eq i8* %8, null, !dbg !2979
  %10 = icmp ne i64 %7, 0, !dbg !2981
  %11 = and i1 %10, %9, !dbg !2982
  br i1 %11, label %12, label %13, !dbg !2982

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2983
  unreachable, !dbg !2983

13:                                               ; preds = %6
  ret i8* %8, !dbg !2984
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2985
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %2, metadata !2975, metadata !DIExpression()), !dbg !2985
  %3 = icmp eq i8* %2, null, !dbg !2987
  %4 = icmp ne i64 %0, 0, !dbg !2988
  %5 = and i1 %4, %3, !dbg !2989
  br i1 %5, label %6, label %7, !dbg !2989

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !2990
  unreachable, !dbg !2990

7:                                                ; preds = %1
  ret i8* %2, !dbg !2991
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !2992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !2999
  %4 = udiv i64 9223372036854775807, %2, !dbg !3000
  %5 = icmp ult i64 %4, %1, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3002

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3003
  unreachable, !dbg !3003

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %8, metadata !3010, metadata !DIExpression()) #12, !dbg !3011
  %9 = icmp eq i64 %8, 0, !dbg !3013
  %10 = icmp ne i8* %0, null, !dbg !3015
  %11 = and i1 %10, %9, !dbg !3016
  br i1 %11, label %12, label %13, !dbg !3016

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3017
  br label %19, !dbg !3019

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %14, metadata !3005, metadata !DIExpression()) #12, !dbg !3011
  %15 = icmp eq i8* %14, null, !dbg !3021
  %16 = icmp ne i64 %8, 0, !dbg !3023
  %17 = and i1 %16, %15, !dbg !3024
  br i1 %17, label %18, label %19, !dbg !3024

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3025
  unreachable, !dbg !3025

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3011
  ret i8* %20, !dbg !3026
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3006 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3027
  %3 = icmp eq i64 %1, 0, !dbg !3028
  %4 = icmp ne i8* %0, null, !dbg !3029
  %5 = and i1 %4, %3, !dbg !3030
  br i1 %5, label %6, label %7, !dbg !3030

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3031
  br label %13, !dbg !3032

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %8, metadata !3005, metadata !DIExpression()), !dbg !3027
  %9 = icmp eq i8* %8, null, !dbg !3034
  %10 = icmp ne i64 %1, 0, !dbg !3035
  %11 = and i1 %10, %9, !dbg !3036
  br i1 %11, label %12, label %13, !dbg !3036

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3037
  unreachable, !dbg !3037

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3027
  ret i8* %14, !dbg !3038
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !481, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64* %1, metadata !482, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !483, metadata !DIExpression()), !dbg !3039
  %4 = load i64, i64* %1, align 8, !dbg !3040, !tbaa !2278
  call void @llvm.dbg.value(metadata i64 %4, metadata !484, metadata !DIExpression()), !dbg !3039
  %5 = icmp eq i8* %0, null, !dbg !3041
  br i1 %5, label %6, label %20, !dbg !3043

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3044
  br i1 %7, label %8, label %13, !dbg !3047

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %9, metadata !484, metadata !DIExpression()), !dbg !3039
  %10 = icmp ugt i64 %2, 128, !dbg !3050
  %11 = zext i1 %10 to i64, !dbg !3050
  %12 = add nuw nsw i64 %9, %11, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %12, metadata !484, metadata !DIExpression()), !dbg !3039
  br label %13, !dbg !3052

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3039
  call void @llvm.dbg.value(metadata i64 %14, metadata !484, metadata !DIExpression()), !dbg !3039
  %15 = udiv i64 9223372036854775807, %2, !dbg !3053
  %16 = icmp ult i64 %15, %14, !dbg !3053
  br i1 %16, label %19, label %17, !dbg !3055

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !484, metadata !DIExpression()), !dbg !3039
  store i64 %14, i64* %1, align 8, !dbg !3056, !tbaa !2278
  %18 = mul i64 %14, %2, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %28, metadata !3010, metadata !DIExpression()) #12, !dbg !3058
  br label %31, !dbg !3060

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3061
  unreachable, !dbg !3061

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3062
  %22 = icmp ugt i64 %21, %4, !dbg !3065
  br i1 %22, label %24, label %23, !dbg !3066

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3067
  unreachable, !dbg !3067

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3068
  %26 = add nuw i64 %4, 1, !dbg !3069
  %27 = add i64 %26, %25, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %27, metadata !484, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %27, metadata !484, metadata !DIExpression()), !dbg !3039
  store i64 %27, i64* %1, align 8, !dbg !3056, !tbaa !2278
  %28 = mul i64 %27, %2, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %28, metadata !3010, metadata !DIExpression()) #12, !dbg !3058
  %29 = icmp eq i64 %28, 0, !dbg !3071
  br i1 %29, label %30, label %31, !dbg !3060

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3072
  br label %38, !dbg !3073

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %33, metadata !3005, metadata !DIExpression()) #12, !dbg !3058
  %34 = icmp eq i8* %33, null, !dbg !3075
  %35 = icmp ne i64 %32, 0, !dbg !3076
  %36 = and i1 %35, %34, !dbg !3077
  br i1 %36, label %37, label %38, !dbg !3077

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3078
  unreachable, !dbg !3078

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3058
  ret i8* %39, !dbg !3079
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3080 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()) #12, !dbg !3084
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %2, metadata !2975, metadata !DIExpression()) #12, !dbg !3084
  %3 = icmp eq i8* %2, null, !dbg !3087
  %4 = icmp ne i64 %0, 0, !dbg !3088
  %5 = and i1 %4, %3, !dbg !3089
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3090
  unreachable, !dbg !3090

7:                                                ; preds = %1
  ret i8* %2, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3092 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64* %1, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !481, metadata !DIExpression()) #12, !dbg !3099
  call void @llvm.dbg.value(metadata i64* %1, metadata !482, metadata !DIExpression()) #12, !dbg !3099
  call void @llvm.dbg.value(metadata i64 1, metadata !483, metadata !DIExpression()) #12, !dbg !3099
  %3 = load i64, i64* %1, align 8, !dbg !3101, !tbaa !2278
  call void @llvm.dbg.value(metadata i64 %3, metadata !484, metadata !DIExpression()) #12, !dbg !3099
  %4 = icmp eq i8* %0, null, !dbg !3102
  br i1 %4, label %5, label %12, !dbg !3103

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3104
  br i1 %6, label %9, label %7, !dbg !3105

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !484, metadata !DIExpression()) #12, !dbg !3099
  %8 = icmp slt i64 %3, 0, !dbg !3106
  br i1 %8, label %11, label %9, !dbg !3107

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !484, metadata !DIExpression()) #12, !dbg !3099
  store i64 %10, i64* %1, align 8, !dbg !3108, !tbaa !2278
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %18, metadata !3010, metadata !DIExpression()) #12, !dbg !3109
  br label %21, !dbg !3111

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3112
  unreachable, !dbg !3112

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3113
  br i1 %13, label %15, label %14, !dbg !3114

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3115
  unreachable, !dbg !3115

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3116
  %17 = add nuw nsw i64 %3, 1, !dbg !3117
  %18 = add nuw nsw i64 %17, %16, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %18, metadata !484, metadata !DIExpression()) #12, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %18, metadata !484, metadata !DIExpression()) #12, !dbg !3099
  store i64 %18, i64* %1, align 8, !dbg !3108, !tbaa !2278
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %18, metadata !3010, metadata !DIExpression()) #12, !dbg !3109
  %19 = icmp eq i64 %18, 0, !dbg !3119
  br i1 %19, label %20, label %21, !dbg !3111

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3120
  br label %28, !dbg !3121

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %23, metadata !3005, metadata !DIExpression()) #12, !dbg !3109
  %24 = icmp eq i8* %23, null, !dbg !3123
  %25 = icmp ne i64 %22, 0, !dbg !3124
  %26 = and i1 %25, %24, !dbg !3125
  br i1 %26, label %27, label %28, !dbg !3125

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3126
  unreachable, !dbg !3126

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3109
  ret i8* %29, !dbg !3127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3128 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3130, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()) #12, !dbg !3137
  call void @llvm.dbg.value(metadata i64 1, metadata !3135, metadata !DIExpression()) #12, !dbg !3137
  %2 = icmp slt i64 %0, 0, !dbg !3139
  br i1 %2, label %6, label %3, !dbg !3141

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3142
  call void @llvm.dbg.value(metadata i8* %4, metadata !3136, metadata !DIExpression()) #12, !dbg !3137
  %5 = icmp eq i8* %4, null, !dbg !3143
  br i1 %5, label %6, label %7, !dbg !3144

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3145
  unreachable, !dbg !3145

7:                                                ; preds = %3
  ret i8* %4, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3147
  %3 = udiv i64 9223372036854775807, %1, !dbg !3148
  %4 = icmp ult i64 %3, %0, !dbg !3148
  br i1 %4, label %8, label %5, !dbg !3149

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %6, metadata !3136, metadata !DIExpression()), !dbg !3147
  %7 = icmp eq i8* %6, null, !dbg !3151
  br i1 %7, label %8, label %9, !dbg !3152

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3153
  unreachable, !dbg !3153

9:                                                ; preds = %5
  ret i8* %6, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3155 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()) #12, !dbg !3162
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %3, metadata !2975, metadata !DIExpression()) #12, !dbg !3162
  %4 = icmp eq i8* %3, null, !dbg !3165
  %5 = icmp ne i64 %1, 0, !dbg !3166
  %6 = and i1 %5, %4, !dbg !3167
  br i1 %6, label %7, label %8, !dbg !3167

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3168
  unreachable, !dbg !3168

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()) #12, !dbg !3178
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #12, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %1, metadata !3177, metadata !DIExpression()) #12, !dbg !3178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3180
  ret i8* %3, !dbg !3181
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()), !dbg !3185
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3186
  %3 = add i64 %2, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %3, metadata !2970, metadata !DIExpression()) #12, !dbg !3190
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %4, metadata !2975, metadata !DIExpression()) #12, !dbg !3190
  %5 = icmp eq i8* %4, null, !dbg !3193
  %6 = icmp ne i64 %3, 0, !dbg !3194
  %7 = and i1 %6, %5, !dbg !3195
  br i1 %7, label %8, label %9, !dbg !3195

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3196
  unreachable, !dbg !3196

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3169, metadata !DIExpression()) #12, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #12, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %3, metadata !3177, metadata !DIExpression()) #12, !dbg !3197
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3199
  ret i8* %4, !dbg !3200
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3201 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3202, !tbaa !1176
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #12, !dbg !3203
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #12, !dbg !3204
  tail call void @abort() #22, !dbg !3205
  unreachable, !dbg !3205
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3206 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %1, metadata !3209, metadata !DIExpression()), !dbg !3214
  %3 = icmp eq i64 %0, 0, !dbg !3215
  %4 = icmp eq i64 %1, 0, !dbg !3216
  %5 = or i1 %3, %4, !dbg !3217
  br i1 %5, label %11, label %6, !dbg !3217

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3211, metadata !DIExpression()), !dbg !3218
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3219
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3219
  br i1 %8, label %9, label %11, !dbg !3221

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3222
  store i32 12, i32* %10, align 4, !dbg !3224, !tbaa !1176
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3208, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %12, metadata !3209, metadata !DIExpression()), !dbg !3214
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %14, metadata !3210, metadata !DIExpression()), !dbg !3214
  br label %15, !dbg !3226

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3214
  ret i8* %16, !dbg !3227
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3228 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3236, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8* %1, metadata !3237, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %2, metadata !3238, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3239, metadata !DIExpression()), !dbg !3245
  %6 = bitcast i32* %5 to i8*, !dbg !3246
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3246
  %7 = icmp eq i32* %0, null, !dbg !3247
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3249
  call void @llvm.dbg.value(metadata i32* %8, metadata !3236, metadata !DIExpression()), !dbg !3245
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %9, metadata !3240, metadata !DIExpression()), !dbg !3245
  %10 = icmp ugt i64 %9, -3, !dbg !3251
  %11 = icmp ne i64 %2, 0, !dbg !3252
  %12 = and i1 %11, %10, !dbg !3253
  br i1 %12, label %13, label %18, !dbg !3253

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3254
  br i1 %14, label %18, label %15, !dbg !3255

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3256, !tbaa !1573
  call void @llvm.dbg.value(metadata i8 %16, metadata !3242, metadata !DIExpression()), !dbg !3257
  %17 = zext i8 %16 to i32, !dbg !3258
  store i32 %17, i32* %8, align 4, !dbg !3259, !tbaa !1176
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3260
  ret i64 %19, !dbg !3260
}

; Function Attrs: nounwind
declare !dbg !502 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3261 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3267, metadata !DIExpression()), !dbg !3272
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3273
  call void @llvm.dbg.value(metadata i1 undef, metadata !3268, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3274, metadata !DIExpression()), !dbg !3278
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3280
  %4 = load i32, i32* %3, align 8, !dbg !3280, !tbaa !3281
  %5 = and i32 %4, 32, !dbg !3280
  %6 = icmp eq i32 %5, 0, !dbg !3283
  call void @llvm.dbg.value(metadata i1 %6, metadata !3270, metadata !DIExpression()), !dbg !3272
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3284
  %8 = icmp ne i32 %7, 0, !dbg !3285
  call void @llvm.dbg.value(metadata i1 %8, metadata !3271, metadata !DIExpression()), !dbg !3272
  br i1 %6, label %9, label %19, !dbg !3286

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3288
  call void @llvm.dbg.value(metadata i1 %10, metadata !3268, metadata !DIExpression()), !dbg !3272
  %11 = xor i1 %8, true, !dbg !3289
  %12 = or i1 %10, %11, !dbg !3289
  %13 = sext i1 %8 to i32, !dbg !3289
  br i1 %12, label %22, label %14, !dbg !3289

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3290
  %16 = load i32, i32* %15, align 4, !dbg !3290, !tbaa !1176
  %17 = icmp ne i32 %16, 9, !dbg !3291
  %18 = sext i1 %17 to i32, !dbg !3292
  br label %22, !dbg !3292

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3293

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3295
  store i32 0, i32* %21, align 4, !dbg !3297, !tbaa !1176
  br label %22, !dbg !3295

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3272
  ret i32 %23, !dbg !3298
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3299 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3301, metadata !DIExpression()), !dbg !3306
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3307
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3307
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3302, metadata !DIExpression()), !dbg !3308
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3309
  %5 = icmp eq i32 %4, 0, !dbg !3309
  br i1 %5, label %6, label %13, !dbg !3311

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3312
  %8 = load i16, i16* %7, align 16, !dbg !3312
  %9 = icmp eq i16 %8, 67, !dbg !3312
  br i1 %9, label %13, label %10, !dbg !3313

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.114, i64 0, i64 0), i64 6), !dbg !3314
  %12 = icmp ne i32 %11, 0, !dbg !3315
  br label %13, !dbg !3313

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3306
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3316
  ret i1 %14, !dbg !3316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3317 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3320
  call void @llvm.dbg.value(metadata i8* %1, metadata !3319, metadata !DIExpression()), !dbg !3321
  %2 = icmp eq i8* %1, null, !dbg !3322
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.117, i64 0, i64 0), i8* %1, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %3, metadata !3319, metadata !DIExpression()), !dbg !3321
  %4 = load i8, i8* %3, align 1, !dbg !3325, !tbaa !1573
  %5 = icmp eq i8 %4, 0, !dbg !3329
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i8* %3, !dbg !3330
  call void @llvm.dbg.value(metadata i8* %6, metadata !3319, metadata !DIExpression()), !dbg !3321
  ret i8* %6, !dbg !3331
}

; Function Attrs: nounwind
declare !dbg !954 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8* %1, metadata !3337, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %2, metadata !3338, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %0, metadata !3340, metadata !DIExpression()) #12, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3343, metadata !DIExpression()) #12, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %2, metadata !3344, metadata !DIExpression()) #12, !dbg !3349
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()) #12, !dbg !3357
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3359
  call void @llvm.dbg.value(metadata i8* %4, metadata !3356, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %4, metadata !3345, metadata !DIExpression()) #12, !dbg !3349
  %5 = icmp eq i8* %4, null, !dbg !3360
  br i1 %5, label %6, label %9, !dbg !3361

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3362
  br i1 %7, label %19, label %8, !dbg !3365

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3366, !tbaa !1573
  br label %19, !dbg !3367

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %10, metadata !3346, metadata !DIExpression()) #12, !dbg !3369
  %11 = icmp ult i64 %10, %2, !dbg !3370
  br i1 %11, label %12, label %14, !dbg !3372

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3373
  call void @llvm.dbg.value(metadata i8* %1, metadata !3375, metadata !DIExpression()) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %4, metadata !3378, metadata !DIExpression()) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %13, metadata !3379, metadata !DIExpression()) #12, !dbg !3380
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3382
  br label %19, !dbg !3383

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3384
  br i1 %15, label %19, label %16, !dbg !3387

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %1, metadata !3375, metadata !DIExpression()) #12, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %4, metadata !3378, metadata !DIExpression()) #12, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %17, metadata !3379, metadata !DIExpression()) #12, !dbg !3390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3392
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3393
  store i8 0, i8* %18, align 1, !dbg !3394, !tbaa !1573
  br label %19, !dbg !3395

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3396
  ret i32 %20, !dbg !3397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()) #12, !dbg !3402
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %2, metadata !3356, metadata !DIExpression()) #12, !dbg !3402
  ret i8* %2, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3406 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3412, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()), !dbg !3416
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %2, metadata !3414, metadata !DIExpression()), !dbg !3416
  %3 = icmp slt i32 %2, 0, !dbg !3418
  br i1 %3, label %4, label %6, !dbg !3420

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3421
  br label %24, !dbg !3422

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3423
  %8 = icmp eq i32 %7, 0, !dbg !3423
  br i1 %8, label %13, label %9, !dbg !3425

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3426
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3427
  %12 = icmp eq i64 %11, -1, !dbg !3428
  br i1 %12, label %16, label %13, !dbg !3429

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3430
  %15 = icmp eq i32 %14, 0, !dbg !3430
  br i1 %15, label %16, label %18, !dbg !3431

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3413, metadata !DIExpression()), !dbg !3416
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3432
  call void @llvm.dbg.value(metadata i32 %21, metadata !3415, metadata !DIExpression()), !dbg !3416
  br label %24, !dbg !3433

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3434
  %20 = load i32, i32* %19, align 4, !dbg !3434, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 %20, metadata !3413, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %20, metadata !3413, metadata !DIExpression()), !dbg !3416
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3432
  call void @llvm.dbg.value(metadata i32 %21, metadata !3415, metadata !DIExpression()), !dbg !3416
  %22 = icmp eq i32 %20, 0, !dbg !3435
  br i1 %22, label %24, label %23, !dbg !3433

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3437, !tbaa !1176
  call void @llvm.dbg.value(metadata i32 -1, metadata !3415, metadata !DIExpression()), !dbg !3416
  br label %24, !dbg !3439

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3416
  ret i32 %25, !dbg !3440
}

; Function Attrs: nofree nounwind
declare !dbg !963 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !998 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !999 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3441 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3447, metadata !DIExpression()), !dbg !3448
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3449
  br i1 %2, label %6, label %3, !dbg !3451

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3452
  %5 = icmp eq i32 %4, 0, !dbg !3452
  br i1 %5, label %6, label %8, !dbg !3453

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3454
  br label %17, !dbg !3455

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3456, metadata !DIExpression()) #12, !dbg !3461
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3463
  %10 = load i32, i32* %9, align 8, !dbg !3463, !tbaa !3281
  %11 = and i32 %10, 256, !dbg !3465
  %12 = icmp eq i32 %11, 0, !dbg !3465
  br i1 %12, label %15, label %13, !dbg !3466

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3467
  br label %15, !dbg !3467

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3468
  br label %17, !dbg !3469

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3448
  ret i32 %18, !dbg !3470
}

; Function Attrs: nofree nounwind
declare !dbg !1006 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3471 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3478, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %2, metadata !3480, metadata !DIExpression()), !dbg !3484
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3485
  %5 = load i8*, i8** %4, align 8, !dbg !3485, !tbaa !3486
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3487
  %7 = load i8*, i8** %6, align 8, !dbg !3487, !tbaa !3488
  %8 = icmp eq i8* %5, %7, !dbg !3489
  br i1 %8, label %9, label %28, !dbg !3490

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3491
  %11 = load i8*, i8** %10, align 8, !dbg !3491, !tbaa !3492
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3493
  %13 = load i8*, i8** %12, align 8, !dbg !3493, !tbaa !3494
  %14 = icmp eq i8* %11, %13, !dbg !3495
  br i1 %14, label %15, label %28, !dbg !3496

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3497
  %17 = load i8*, i8** %16, align 8, !dbg !3497, !tbaa !3498
  %18 = icmp eq i8* %17, null, !dbg !3499
  br i1 %18, label %19, label %28, !dbg !3500

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3501
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %21, metadata !3481, metadata !DIExpression()), !dbg !3503
  %22 = icmp eq i64 %21, -1, !dbg !3504
  br i1 %22, label %30, label %23, !dbg !3506

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3507
  %25 = load i32, i32* %24, align 8, !dbg !3508, !tbaa !3281
  %26 = and i32 %25, -17, !dbg !3508
  store i32 %26, i32* %24, align 8, !dbg !3508, !tbaa !3281
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3509
  store i64 %21, i64* %27, align 8, !dbg !3510, !tbaa !3511
  br label %30, !dbg !3512

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3513
  br label %30, !dbg !3514

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3484
  ret i32 %31, !dbg !3515
}

; Function Attrs: nofree nounwind
declare !dbg !1082 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !430, !354, !472, !493, !496, !499, !518, !557, !564, !957, !960, !1003, !1044}
!llvm.ident = !{!1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085}
!llvm.module.flags = !{!1086, !1087, !1088, !1089, !1090}

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
!361 = !DIFile(filename: "src/hostid.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!77, !363, !398, !402, !406, !409, !410, !6, !67, !414, !422, !85, !426}
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
!426 = !DISubprogram(name: "gethostid", scope: !427, file: !427, line: 967, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!427 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!45}
!430 = distinct !DICompileUnit(language: DW_LANG_C99, file: !431, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !432, retainedTypes: !436, splitDebugInlining: false, nameTableKind: None)
!431 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!432 = !{!433}
!433 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !431, line: 40, baseType: !159, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!436 = !{!77, !437, !67}
!437 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!438 = !DISubroutineType(types: !439)
!439 = !{!18, !6, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !441, file: !21, line: 51, baseType: !18, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !441, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !441, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !441, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !441, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !441, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !441, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !441, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !441, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !441, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !441, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !441, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !441, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !441, file: !21, line: 70, baseType: !440, size: 64, offset: 832)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !441, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !441, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !441, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !441, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !441, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !441, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !441, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !441, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !441, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !441, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !441, file: !21, line: 93, baseType: !440, size: 64, offset: 1344)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !441, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !441, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !441, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !441, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !474, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!474 = !{!475}
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !476, file: !249, line: 186, baseType: !159, size: 32, elements: !485)
!476 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !477, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !480)
!477 = !DISubroutineType(types: !478)
!478 = !{!67, !67, !479, !69}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!480 = !{!481, !482, !483, !484}
!481 = !DILocalVariable(name: "p", arg: 1, scope: !476, file: !249, line: 174, type: !67)
!482 = !DILocalVariable(name: "pn", arg: 2, scope: !476, file: !249, line: 174, type: !479)
!483 = !DILocalVariable(name: "s", arg: 3, scope: !476, file: !249, line: 174, type: !69)
!484 = !DILocalVariable(name: "n", scope: !476, file: !249, line: 176, type: !69)
!485 = !{!486}
!486 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!487 = !{!69, !315, !312, !318, !25, !270, !67, !488, !491}
!488 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{!67, !71, !71}
!491 = !DISubprogram(name: "rpl_calloc", scope: !492, file: !492, line: 688, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!492 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!493 = distinct !DICompileUnit(language: DW_LANG_C99, file: !494, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !495, splitDebugInlining: false, nameTableKind: None)
!494 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = !{!77, !85}
!496 = distinct !DICompileUnit(language: DW_LANG_C99, file: !497, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !498, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!498 = !{!67}
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !501, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!501 = !{!502, !69, !514}
!502 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{!71, !117, !6, !71, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !506, file: !283, line: 15, baseType: !18, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !506, file: !283, line: 20, baseType: !510, size: 32, offset: 32)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !283, line: 16, size: 32, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !510, file: !283, line: 18, baseType: !159, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !510, file: !283, line: 19, baseType: !291, size: 32)
!514 = !DISubprogram(name: "hard_locale", scope: !515, file: !515, line: 26, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!515 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!516 = !DISubroutineType(types: !517)
!517 = !{!92, !18}
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !520, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!520 = !{!521}
!521 = !DISubprogram(name: "rpl_fclose", scope: !522, file: !522, line: 672, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!522 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!523 = !DISubroutineType(types: !524)
!524 = !{!18, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !526, file: !21, line: 51, baseType: !18, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !526, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !526, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !526, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !526, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !526, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !526, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !526, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !526, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !526, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !526, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !526, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !526, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !526, file: !21, line: 70, baseType: !525, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !526, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !526, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !526, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !526, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !526, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !526, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !526, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !526, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !526, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !526, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !526, file: !21, line: 93, baseType: !525, size: 64, offset: 1344)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !526, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !526, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !526, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !526, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!557 = distinct !DICompileUnit(language: DW_LANG_C99, file: !558, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !559, splitDebugInlining: false, nameTableKind: None)
!558 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!559 = !{!560}
!560 = !DISubprogram(name: "setlocale_null_r", scope: !561, file: !561, line: 64, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!561 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !DISubroutineType(types: !563)
!563 = !{!18, !18, !25, !71}
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !566, retainedTypes: !953, splitDebugInlining: false, nameTableKind: None)
!565 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !{!567}
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !568, line: 41, baseType: !159, size: 32, elements: !569)
!568 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!570 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!571 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!572 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!573 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!574 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!575 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!576 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!577 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!578 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!579 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!580 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!581 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!582 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!583 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!584 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!585 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!586 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!587 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!588 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!589 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!590 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!596 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!597 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!598 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!599 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!600 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!601 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!602 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!608 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!609 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!610 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!611 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!612 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!613 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!614 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!615 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!616 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!617 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!618 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!619 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!678 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!681 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!682 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!683 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!684 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!685 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!686 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!687 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!765 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!838 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!839 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!840 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!841 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!842 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!843 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!844 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!845 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!846 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!847 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!848 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!849 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!850 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!851 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!852 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!854 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!855 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!856 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!857 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!859 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!885 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!886 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!887 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!888 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!889 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!894 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!895 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!896 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!897 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!953 = !{!954, !67}
!954 = !DISubprogram(name: "nl_langinfo", scope: !568, file: !568, line: 661, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!955 = !DISubroutineType(types: !956)
!956 = !{!25, !18}
!957 = distinct !DICompileUnit(language: DW_LANG_C99, file: !958, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!958 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!959 = !{!67, !402}
!960 = distinct !DICompileUnit(language: DW_LANG_C99, file: !961, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !962, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!962 = !{!963, !998, !999, !1002}
!963 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!964 = !DISubroutineType(types: !965)
!965 = !{!18, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !967, file: !21, line: 51, baseType: !18, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !967, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !967, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !967, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !967, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !967, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !967, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !967, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !967, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !967, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !967, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !967, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !967, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !967, file: !21, line: 70, baseType: !966, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !967, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !967, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !967, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !967, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !967, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !967, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !967, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !967, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !967, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !967, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !967, file: !21, line: 93, baseType: !966, size: 64, offset: 1344)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !967, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !967, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !967, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !967, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!998 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!999 = !DISubprogram(name: "lseek", scope: !427, file: !427, line: 334, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!45, !18, !45, !18}
!1002 = !DISubprogram(name: "rpl_fflush", scope: !522, file: !522, line: 718, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1003 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1004, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1005, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1005 = !{!67, !1006, !1041}
!1006 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!18, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1010, file: !21, line: 51, baseType: !18, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1010, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1010, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1010, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1010, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1010, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1010, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1010, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1010, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1010, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1010, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1010, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1010, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1010, file: !21, line: 70, baseType: !1009, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1010, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1010, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1010, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1010, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1010, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1010, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1010, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1010, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1010, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1010, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1010, file: !21, line: 93, baseType: !1009, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1010, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1010, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1010, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1010, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1041 = !DISubprogram(name: "rpl_fseeko", scope: !522, file: !522, line: 1034, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!18, !1009, !45, !18}
!1044 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1045, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1046, splitDebugInlining: false, nameTableKind: None)
!1045 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1046 = !{!67, !1047, !999, !1082}
!1047 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!18, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1051, file: !21, line: 51, baseType: !18, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1051, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1051, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1051, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1051, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1051, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1051, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1051, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1051, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1051, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1051, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1051, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1051, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1051, file: !21, line: 70, baseType: !1050, size: 64, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1051, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1051, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1051, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1051, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1051, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1051, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1051, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1051, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1051, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1051, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1051, file: !21, line: 93, baseType: !1050, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1051, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1051, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1051, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1051, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1082 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!18, !1050, !45, !18}
!1085 = !{!"clang version 10.0.0 "}
!1086 = !{i32 7, !"Dwarf Version", i32 4}
!1087 = !{i32 2, !"Debug Info Version", i32 3}
!1088 = !{i32 1, !"wchar_size", i32 4}
!1089 = !{i32 7, !"PIC Level", i32 2}
!1090 = !{i32 7, !"PIE Level", i32 2}
!1091 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 35, type: !420, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1092)
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "status", arg: 1, scope: !1091, file: !361, line: 35, type: !18)
!1094 = !DILocalVariable(name: "infomap", scope: !1095, file: !1096, line: 636, type: !1108)
!1095 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1096, file: !1096, line: 634, type: !400, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1097)
!1096 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1097 = !{!1098, !1094, !1099, !1100, !1107}
!1098 = !DILocalVariable(name: "program", arg: 1, scope: !1095, file: !1096, line: 634, type: !6)
!1099 = !DILocalVariable(name: "node", scope: !1095, file: !1096, line: 646, type: !6)
!1100 = !DILocalVariable(name: "map_prog", scope: !1095, file: !1096, line: 647, type: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1095, file: !1096, line: 636, size: 128, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1103, file: !1096, line: 636, baseType: !6, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1103, file: !1096, line: 636, baseType: !6, size: 64, offset: 64)
!1107 = !DILocalVariable(name: "lc_messages", scope: !1095, file: !1096, line: 659, type: !6)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 896, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 7)
!1111 = !DILocation(line: 636, column: 67, scope: !1095, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 48, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !361, line: 40, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1091, file: !361, line: 37, column: 7)
!1115 = !DILocation(line: 0, scope: !1091)
!1116 = !DILocation(line: 37, column: 14, scope: !1114)
!1117 = !DILocation(line: 37, column: 7, scope: !1091)
!1118 = !DILocation(line: 38, column: 5, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !361, line: 38, column: 5)
!1120 = !{!1121, !1121, i64 0}
!1121 = !{!"any pointer", !1122, i64 0}
!1122 = !{!"omnipotent char", !1123, i64 0}
!1123 = !{!"Simple C/C++ TBAA"}
!1124 = !DILocation(line: 41, column: 7, scope: !1113)
!1125 = !DILocation(line: 46, column: 7, scope: !1113)
!1126 = !DILocation(line: 47, column: 7, scope: !1113)
!1127 = !DILocation(line: 0, scope: !1095, inlinedAt: !1112)
!1128 = !DILocation(line: 636, column: 3, scope: !1095, inlinedAt: !1112)
!1129 = !DILocation(line: 647, column: 36, scope: !1095, inlinedAt: !1112)
!1130 = !DILocation(line: 649, column: 3, scope: !1095, inlinedAt: !1112)
!1131 = !DILocation(line: 649, column: 33, scope: !1095, inlinedAt: !1112)
!1132 = !DILocation(line: 650, column: 13, scope: !1095, inlinedAt: !1112)
!1133 = !DILocation(line: 649, column: 20, scope: !1095, inlinedAt: !1112)
!1134 = !{!1135, !1121, i64 0}
!1135 = !{!"infomap", !1121, i64 0, !1121, i64 8}
!1136 = !DILocation(line: 649, column: 10, scope: !1095, inlinedAt: !1112)
!1137 = !DILocation(line: 649, column: 28, scope: !1095, inlinedAt: !1112)
!1138 = distinct !{!1138, !1130, !1132}
!1139 = !DILocation(line: 652, column: 17, scope: !1140, inlinedAt: !1112)
!1140 = distinct !DILexicalBlock(scope: !1095, file: !1096, line: 652, column: 7)
!1141 = !{!1135, !1121, i64 8}
!1142 = !DILocation(line: 652, column: 7, scope: !1140, inlinedAt: !1112)
!1143 = !DILocation(line: 652, column: 7, scope: !1095, inlinedAt: !1112)
!1144 = !DILocation(line: 655, column: 3, scope: !1095, inlinedAt: !1112)
!1145 = !DILocation(line: 659, column: 29, scope: !1095, inlinedAt: !1112)
!1146 = !DILocation(line: 660, column: 7, scope: !1147, inlinedAt: !1112)
!1147 = distinct !DILexicalBlock(scope: !1095, file: !1096, line: 660, column: 7)
!1148 = !DILocation(line: 660, column: 19, scope: !1147, inlinedAt: !1112)
!1149 = !DILocation(line: 660, column: 22, scope: !1147, inlinedAt: !1112)
!1150 = !DILocation(line: 660, column: 7, scope: !1095, inlinedAt: !1112)
!1151 = !DILocation(line: 666, column: 7, scope: !1152, inlinedAt: !1112)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !1096, line: 661, column: 5)
!1153 = !DILocation(line: 668, column: 5, scope: !1152, inlinedAt: !1112)
!1154 = !DILocation(line: 669, column: 3, scope: !1095, inlinedAt: !1112)
!1155 = !DILocation(line: 671, column: 3, scope: !1095, inlinedAt: !1112)
!1156 = !DILocation(line: 673, column: 1, scope: !1095, inlinedAt: !1112)
!1157 = !DILocation(line: 50, column: 3, scope: !1091)
!1158 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 54, type: !1159, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!18, !18, !418}
!1161 = !{!1162, !1163, !1164}
!1162 = !DILocalVariable(name: "argc", arg: 1, scope: !1158, file: !361, line: 54, type: !18)
!1163 = !DILocalVariable(name: "argv", arg: 2, scope: !1158, file: !361, line: 54, type: !418)
!1164 = !DILocalVariable(name: "id", scope: !1158, file: !361, line: 56, type: !159)
!1165 = !DILocation(line: 0, scope: !1158)
!1166 = !DILocation(line: 59, column: 21, scope: !1158)
!1167 = !DILocation(line: 59, column: 3, scope: !1158)
!1168 = !DILocation(line: 60, column: 3, scope: !1158)
!1169 = !DILocation(line: 61, column: 3, scope: !1158)
!1170 = !DILocation(line: 62, column: 3, scope: !1158)
!1171 = !DILocation(line: 64, column: 3, scope: !1158)
!1172 = !DILocation(line: 67, column: 36, scope: !1158)
!1173 = !DILocation(line: 66, column: 3, scope: !1158)
!1174 = !DILocation(line: 70, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1158, file: !361, line: 70, column: 7)
!1176 = !{!1177, !1177, i64 0}
!1177 = !{!"int", !1122, i64 0}
!1178 = !DILocation(line: 70, column: 14, scope: !1175)
!1179 = !DILocation(line: 70, column: 7, scope: !1158)
!1180 = !DILocation(line: 72, column: 20, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1175, file: !361, line: 71, column: 5)
!1182 = !DILocation(line: 72, column: 55, scope: !1181)
!1183 = !DILocation(line: 72, column: 50, scope: !1181)
!1184 = !DILocation(line: 72, column: 43, scope: !1181)
!1185 = !DILocation(line: 72, column: 7, scope: !1181)
!1186 = !DILocation(line: 73, column: 7, scope: !1181)
!1187 = !DILocation(line: 76, column: 8, scope: !1158)
!1188 = !DILocation(line: 83, column: 3, scope: !1158)
!1189 = !DILocation(line: 85, column: 3, scope: !1158)
!1190 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !400, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1191)
!1191 = !{!1192}
!1192 = !DILocalVariable(name: "file", arg: 1, scope: !1190, file: !12, line: 51, type: !6)
!1193 = !DILocation(line: 0, scope: !1190)
!1194 = !DILocation(line: 53, column: 13, scope: !1190)
!1195 = !DILocation(line: 54, column: 1, scope: !1190)
!1196 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1197, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !92}
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "ignore", arg: 1, scope: !1196, file: !12, line: 88, type: !92)
!1201 = !DILocation(line: 0, scope: !1196)
!1202 = !DILocation(line: 90, column: 16, scope: !1196)
!1203 = !{!1204, !1204, i64 0}
!1204 = !{!"_Bool", !1122, i64 0}
!1205 = !DILocation(line: 91, column: 1, scope: !1196)
!1206 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1207)
!1207 = !{!1208}
!1208 = !DILocalVariable(name: "write_error", scope: !1209, file: !12, line: 122, type: !6)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !12, line: 121, column: 5)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !12, line: 119, column: 7)
!1211 = !DILocation(line: 119, column: 21, scope: !1210)
!1212 = !DILocation(line: 119, column: 7, scope: !1210)
!1213 = !DILocation(line: 119, column: 29, scope: !1210)
!1214 = !DILocation(line: 120, column: 7, scope: !1210)
!1215 = !DILocation(line: 120, column: 12, scope: !1210)
!1216 = !{i8 0, i8 2}
!1217 = !DILocation(line: 120, column: 25, scope: !1210)
!1218 = !DILocation(line: 120, column: 28, scope: !1210)
!1219 = !DILocation(line: 120, column: 34, scope: !1210)
!1220 = !DILocation(line: 119, column: 7, scope: !1206)
!1221 = !DILocation(line: 122, column: 33, scope: !1209)
!1222 = !DILocation(line: 0, scope: !1209)
!1223 = !DILocation(line: 123, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1209, file: !12, line: 123, column: 11)
!1225 = !DILocation(line: 0, scope: !1224)
!1226 = !DILocation(line: 123, column: 11, scope: !1209)
!1227 = !DILocation(line: 124, column: 36, scope: !1224)
!1228 = !DILocation(line: 124, column: 9, scope: !1224)
!1229 = !DILocation(line: 127, column: 9, scope: !1224)
!1230 = !DILocation(line: 129, column: 14, scope: !1209)
!1231 = !DILocation(line: 129, column: 7, scope: !1209)
!1232 = !DILocation(line: 134, column: 42, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1206, file: !12, line: 134, column: 7)
!1234 = !DILocation(line: 134, column: 28, scope: !1233)
!1235 = !DILocation(line: 134, column: 50, scope: !1233)
!1236 = !DILocation(line: 134, column: 7, scope: !1206)
!1237 = !DILocation(line: 135, column: 12, scope: !1233)
!1238 = !DILocation(line: 135, column: 5, scope: !1233)
!1239 = !DILocation(line: 136, column: 1, scope: !1206)
!1240 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1241, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !18, !418, !6, !6, !6, !419, null}
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252}
!1244 = !DILocalVariable(name: "argc", arg: 1, scope: !1240, file: !102, line: 45, type: !18)
!1245 = !DILocalVariable(name: "argv", arg: 2, scope: !1240, file: !102, line: 46, type: !418)
!1246 = !DILocalVariable(name: "command_name", arg: 3, scope: !1240, file: !102, line: 47, type: !6)
!1247 = !DILocalVariable(name: "package", arg: 4, scope: !1240, file: !102, line: 48, type: !6)
!1248 = !DILocalVariable(name: "version", arg: 5, scope: !1240, file: !102, line: 49, type: !6)
!1249 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1240, file: !102, line: 50, type: !419)
!1250 = !DILocalVariable(name: "c", scope: !1240, file: !102, line: 53, type: !18)
!1251 = !DILocalVariable(name: "saved_opterr", scope: !1240, file: !102, line: 54, type: !18)
!1252 = !DILocalVariable(name: "authors", scope: !1253, file: !102, line: 72, type: !1257)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !102, line: 71, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !102, line: 65, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !102, line: 63, column: 5)
!1256 = distinct !DILexicalBlock(scope: !1240, file: !102, line: 61, column: 7)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1259, line: 32, baseType: !1260)
!1259 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1261)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1262 = !DILocation(line: 0, scope: !1240)
!1263 = !DILocation(line: 56, column: 18, scope: !1240)
!1264 = !DILocation(line: 59, column: 10, scope: !1240)
!1265 = !DILocation(line: 61, column: 12, scope: !1256)
!1266 = !DILocation(line: 62, column: 7, scope: !1256)
!1267 = !DILocation(line: 62, column: 15, scope: !1256)
!1268 = !DILocation(line: 61, column: 7, scope: !1240)
!1269 = !DILocation(line: 67, column: 11, scope: !1254)
!1270 = !DILocation(line: 68, column: 11, scope: !1254)
!1271 = !DILocation(line: 72, column: 13, scope: !1253)
!1272 = !DILocation(line: 72, column: 21, scope: !1253)
!1273 = !DILocation(line: 73, column: 13, scope: !1253)
!1274 = !DILocation(line: 74, column: 29, scope: !1253)
!1275 = !DILocation(line: 74, column: 13, scope: !1253)
!1276 = !DILocation(line: 75, column: 13, scope: !1253)
!1277 = !DILocation(line: 85, column: 10, scope: !1240)
!1278 = !DILocation(line: 89, column: 10, scope: !1240)
!1279 = !DILocation(line: 90, column: 1, scope: !1240)
!1280 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !416, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292}
!1282 = !DILocalVariable(name: "argc", arg: 1, scope: !1280, file: !102, line: 98, type: !18)
!1283 = !DILocalVariable(name: "argv", arg: 2, scope: !1280, file: !102, line: 99, type: !418)
!1284 = !DILocalVariable(name: "command_name", arg: 3, scope: !1280, file: !102, line: 100, type: !6)
!1285 = !DILocalVariable(name: "package", arg: 4, scope: !1280, file: !102, line: 101, type: !6)
!1286 = !DILocalVariable(name: "version", arg: 5, scope: !1280, file: !102, line: 102, type: !6)
!1287 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1280, file: !102, line: 103, type: !92)
!1288 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1280, file: !102, line: 104, type: !419)
!1289 = !DILocalVariable(name: "c", scope: !1280, file: !102, line: 107, type: !18)
!1290 = !DILocalVariable(name: "saved_opterr", scope: !1280, file: !102, line: 108, type: !18)
!1291 = !DILocalVariable(name: "optstring", scope: !1280, file: !102, line: 113, type: !6)
!1292 = !DILocalVariable(name: "authors", scope: !1293, file: !102, line: 125, type: !1257)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !102, line: 124, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !102, line: 118, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !102, line: 116, column: 5)
!1296 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 115, column: 7)
!1297 = !DILocation(line: 0, scope: !1280)
!1298 = !DILocation(line: 108, column: 22, scope: !1280)
!1299 = !DILocation(line: 111, column: 10, scope: !1280)
!1300 = !DILocation(line: 113, column: 27, scope: !1280)
!1301 = !DILocation(line: 115, column: 12, scope: !1296)
!1302 = !DILocation(line: 115, column: 7, scope: !1280)
!1303 = !DILocation(line: 125, column: 13, scope: !1293)
!1304 = !DILocation(line: 125, column: 21, scope: !1293)
!1305 = !DILocation(line: 126, column: 13, scope: !1293)
!1306 = !DILocation(line: 127, column: 29, scope: !1293)
!1307 = !DILocation(line: 127, column: 13, scope: !1293)
!1308 = !DILocation(line: 128, column: 13, scope: !1293)
!1309 = !DILocation(line: 132, column: 26, scope: !1294)
!1310 = !DILocation(line: 133, column: 11, scope: !1294)
!1311 = !DILocation(line: 0, scope: !1294)
!1312 = !DILocation(line: 138, column: 10, scope: !1280)
!1313 = !DILocation(line: 139, column: 1, scope: !1280)
!1314 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !400, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DILocalVariable(name: "argv0", arg: 1, scope: !1314, file: !170, line: 39, type: !6)
!1317 = !DILocalVariable(name: "slash", scope: !1314, file: !170, line: 46, type: !6)
!1318 = !DILocalVariable(name: "base", scope: !1314, file: !170, line: 47, type: !6)
!1319 = !DILocation(line: 0, scope: !1314)
!1320 = !DILocation(line: 51, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !170, line: 51, column: 7)
!1322 = !DILocation(line: 51, column: 7, scope: !1314)
!1323 = !DILocation(line: 55, column: 14, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !170, line: 52, column: 5)
!1325 = !DILocation(line: 54, column: 7, scope: !1324)
!1326 = !DILocation(line: 56, column: 7, scope: !1324)
!1327 = !DILocation(line: 59, column: 11, scope: !1314)
!1328 = !DILocation(line: 60, column: 17, scope: !1314)
!1329 = !DILocation(line: 60, column: 11, scope: !1314)
!1330 = !DILocation(line: 61, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1314, file: !170, line: 61, column: 7)
!1332 = !DILocation(line: 61, column: 20, scope: !1331)
!1333 = !DILocation(line: 61, column: 25, scope: !1331)
!1334 = !DILocation(line: 61, column: 42, scope: !1331)
!1335 = !DILocation(line: 61, column: 28, scope: !1331)
!1336 = !DILocation(line: 61, column: 61, scope: !1331)
!1337 = !DILocation(line: 61, column: 7, scope: !1314)
!1338 = !DILocation(line: 64, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !170, line: 64, column: 11)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !170, line: 62, column: 5)
!1341 = !DILocation(line: 64, column: 36, scope: !1339)
!1342 = !DILocation(line: 64, column: 11, scope: !1340)
!1343 = !DILocation(line: 66, column: 24, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !170, line: 65, column: 9)
!1345 = !DILocation(line: 70, column: 41, scope: !1344)
!1346 = !DILocation(line: 72, column: 9, scope: !1344)
!1347 = !DILocation(line: 84, column: 16, scope: !1314)
!1348 = !DILocation(line: 90, column: 27, scope: !1314)
!1349 = !DILocation(line: 92, column: 1, scope: !1314)
!1350 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1351, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1354)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1353, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1354 = !{!1355, !1356, !1357}
!1355 = !DILocalVariable(name: "o", arg: 1, scope: !1350, file: !212, line: 122, type: !1353)
!1356 = !DILocalVariable(name: "e", scope: !1350, file: !212, line: 124, type: !18)
!1357 = !DILocalVariable(name: "p", scope: !1350, file: !212, line: 125, type: !1353)
!1358 = !DILocation(line: 0, scope: !1350)
!1359 = !DILocation(line: 124, column: 11, scope: !1350)
!1360 = !DILocation(line: 125, column: 40, scope: !1350)
!1361 = !DILocation(line: 125, column: 31, scope: !1350)
!1362 = !DILocation(line: 127, column: 9, scope: !1350)
!1363 = !DILocation(line: 128, column: 3, scope: !1350)
!1364 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1365, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!214, !258}
!1367 = !{!1368}
!1368 = !DILocalVariable(name: "o", arg: 1, scope: !1364, file: !212, line: 133, type: !258)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocation(line: 135, column: 11, scope: !1364)
!1371 = !DILocation(line: 135, column: 46, scope: !1364)
!1372 = !{!1373, !1122, i64 0}
!1373 = !{!"quoting_options", !1122, i64 0, !1177, i64 4, !1122, i64 8, !1121, i64 40, !1121, i64 48}
!1374 = !DILocation(line: 135, column: 3, scope: !1364)
!1375 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1376, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1353, !214}
!1378 = !{!1379, !1380}
!1379 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !212, line: 141, type: !1353)
!1380 = !DILocalVariable(name: "s", arg: 2, scope: !1375, file: !212, line: 141, type: !214)
!1381 = !DILocation(line: 0, scope: !1375)
!1382 = !DILocation(line: 143, column: 4, scope: !1375)
!1383 = !DILocation(line: 143, column: 39, scope: !1375)
!1384 = !DILocation(line: 143, column: 45, scope: !1375)
!1385 = !DILocation(line: 144, column: 1, scope: !1375)
!1386 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1387, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!18, !1353, !8, !18}
!1389 = !{!1390, !1391, !1392, !1393, !1395, !1397, !1398}
!1390 = !DILocalVariable(name: "o", arg: 1, scope: !1386, file: !212, line: 152, type: !1353)
!1391 = !DILocalVariable(name: "c", arg: 2, scope: !1386, file: !212, line: 152, type: !8)
!1392 = !DILocalVariable(name: "i", arg: 3, scope: !1386, file: !212, line: 152, type: !18)
!1393 = !DILocalVariable(name: "uc", scope: !1386, file: !212, line: 154, type: !1394)
!1394 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1395 = !DILocalVariable(name: "p", scope: !1386, file: !212, line: 155, type: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1397 = !DILocalVariable(name: "shift", scope: !1386, file: !212, line: 157, type: !18)
!1398 = !DILocalVariable(name: "r", scope: !1386, file: !212, line: 158, type: !18)
!1399 = !DILocation(line: 0, scope: !1386)
!1400 = !DILocation(line: 156, column: 6, scope: !1386)
!1401 = !DILocation(line: 156, column: 62, scope: !1386)
!1402 = !DILocation(line: 156, column: 57, scope: !1386)
!1403 = !DILocation(line: 157, column: 15, scope: !1386)
!1404 = !DILocation(line: 158, column: 12, scope: !1386)
!1405 = !DILocation(line: 158, column: 15, scope: !1386)
!1406 = !DILocation(line: 158, column: 25, scope: !1386)
!1407 = !DILocation(line: 159, column: 13, scope: !1386)
!1408 = !DILocation(line: 159, column: 18, scope: !1386)
!1409 = !DILocation(line: 159, column: 23, scope: !1386)
!1410 = !DILocation(line: 159, column: 6, scope: !1386)
!1411 = !DILocation(line: 160, column: 3, scope: !1386)
!1412 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1413, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!18, !1353, !18}
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "o", arg: 1, scope: !1412, file: !212, line: 168, type: !1353)
!1417 = !DILocalVariable(name: "i", arg: 2, scope: !1412, file: !212, line: 168, type: !18)
!1418 = !DILocalVariable(name: "r", scope: !1412, file: !212, line: 170, type: !18)
!1419 = !DILocation(line: 0, scope: !1412)
!1420 = !DILocation(line: 171, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1412, file: !212, line: 171, column: 7)
!1422 = !DILocation(line: 171, column: 7, scope: !1412)
!1423 = !DILocation(line: 173, column: 10, scope: !1412)
!1424 = !{!1373, !1177, i64 4}
!1425 = !DILocation(line: 174, column: 12, scope: !1412)
!1426 = !DILocation(line: 175, column: 3, scope: !1412)
!1427 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1428, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1353, !6, !6}
!1430 = !{!1431, !1432, !1433}
!1431 = !DILocalVariable(name: "o", arg: 1, scope: !1427, file: !212, line: 179, type: !1353)
!1432 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1427, file: !212, line: 180, type: !6)
!1433 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1427, file: !212, line: 180, type: !6)
!1434 = !DILocation(line: 0, scope: !1427)
!1435 = !DILocation(line: 182, column: 8, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !212, line: 182, column: 7)
!1437 = !DILocation(line: 182, column: 7, scope: !1427)
!1438 = !DILocation(line: 184, column: 6, scope: !1427)
!1439 = !DILocation(line: 184, column: 12, scope: !1427)
!1440 = !DILocation(line: 185, column: 8, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1427, file: !212, line: 185, column: 7)
!1442 = !DILocation(line: 185, column: 23, scope: !1441)
!1443 = !DILocation(line: 185, column: 19, scope: !1441)
!1444 = !DILocation(line: 186, column: 5, scope: !1441)
!1445 = !DILocation(line: 187, column: 6, scope: !1427)
!1446 = !DILocation(line: 187, column: 17, scope: !1427)
!1447 = !{!1373, !1121, i64 40}
!1448 = !DILocation(line: 188, column: 6, scope: !1427)
!1449 = !DILocation(line: 188, column: 18, scope: !1427)
!1450 = !{!1373, !1121, i64 48}
!1451 = !DILocation(line: 189, column: 1, scope: !1427)
!1452 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1453, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!69, !25, !69, !6, !69, !258}
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1456 = !DILocalVariable(name: "buffer", arg: 1, scope: !1452, file: !212, line: 784, type: !25)
!1457 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1452, file: !212, line: 784, type: !69)
!1458 = !DILocalVariable(name: "arg", arg: 3, scope: !1452, file: !212, line: 785, type: !6)
!1459 = !DILocalVariable(name: "argsize", arg: 4, scope: !1452, file: !212, line: 785, type: !69)
!1460 = !DILocalVariable(name: "o", arg: 5, scope: !1452, file: !212, line: 786, type: !258)
!1461 = !DILocalVariable(name: "p", scope: !1452, file: !212, line: 788, type: !258)
!1462 = !DILocalVariable(name: "e", scope: !1452, file: !212, line: 789, type: !18)
!1463 = !DILocalVariable(name: "r", scope: !1452, file: !212, line: 790, type: !69)
!1464 = !DILocation(line: 0, scope: !1452)
!1465 = !DILocation(line: 788, column: 37, scope: !1452)
!1466 = !DILocation(line: 789, column: 11, scope: !1452)
!1467 = !DILocation(line: 791, column: 43, scope: !1452)
!1468 = !DILocation(line: 791, column: 53, scope: !1452)
!1469 = !DILocation(line: 791, column: 60, scope: !1452)
!1470 = !DILocation(line: 792, column: 43, scope: !1452)
!1471 = !DILocation(line: 792, column: 58, scope: !1452)
!1472 = !DILocation(line: 790, column: 14, scope: !1452)
!1473 = !DILocation(line: 793, column: 9, scope: !1452)
!1474 = !DILocation(line: 794, column: 3, scope: !1452)
!1475 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1476, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1480)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!69, !25, !69, !6, !69, !214, !18, !1478, !6, !6}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1505, !1506, !1507, !1508, !1509, !1512, !1513, !1519, !1522, !1523, !1530, !1533, !1534, !1535, !1536, !1537, !1538}
!1481 = !DILocalVariable(name: "buffer", arg: 1, scope: !1475, file: !212, line: 256, type: !25)
!1482 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1475, file: !212, line: 256, type: !69)
!1483 = !DILocalVariable(name: "arg", arg: 3, scope: !1475, file: !212, line: 257, type: !6)
!1484 = !DILocalVariable(name: "argsize", arg: 4, scope: !1475, file: !212, line: 257, type: !69)
!1485 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1475, file: !212, line: 258, type: !214)
!1486 = !DILocalVariable(name: "flags", arg: 6, scope: !1475, file: !212, line: 258, type: !18)
!1487 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1475, file: !212, line: 259, type: !1478)
!1488 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1475, file: !212, line: 260, type: !6)
!1489 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1475, file: !212, line: 261, type: !6)
!1490 = !DILocalVariable(name: "i", scope: !1475, file: !212, line: 263, type: !69)
!1491 = !DILocalVariable(name: "len", scope: !1475, file: !212, line: 264, type: !69)
!1492 = !DILocalVariable(name: "orig_buffersize", scope: !1475, file: !212, line: 265, type: !69)
!1493 = !DILocalVariable(name: "quote_string", scope: !1475, file: !212, line: 266, type: !6)
!1494 = !DILocalVariable(name: "quote_string_len", scope: !1475, file: !212, line: 267, type: !69)
!1495 = !DILocalVariable(name: "backslash_escapes", scope: !1475, file: !212, line: 268, type: !92)
!1496 = !DILocalVariable(name: "unibyte_locale", scope: !1475, file: !212, line: 269, type: !92)
!1497 = !DILocalVariable(name: "elide_outer_quotes", scope: !1475, file: !212, line: 270, type: !92)
!1498 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1475, file: !212, line: 271, type: !92)
!1499 = !DILocalVariable(name: "encountered_single_quote", scope: !1475, file: !212, line: 272, type: !92)
!1500 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1475, file: !212, line: 273, type: !92)
!1501 = !DILocalVariable(name: "c", scope: !1502, file: !212, line: 402, type: !1394)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !212, line: 401, column: 5)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !212, line: 400, column: 3)
!1504 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 400, column: 3)
!1505 = !DILocalVariable(name: "esc", scope: !1502, file: !212, line: 403, type: !1394)
!1506 = !DILocalVariable(name: "is_right_quote", scope: !1502, file: !212, line: 404, type: !92)
!1507 = !DILocalVariable(name: "escaping", scope: !1502, file: !212, line: 405, type: !92)
!1508 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1502, file: !212, line: 406, type: !92)
!1509 = !DILocalVariable(name: "m", scope: !1510, file: !212, line: 610, type: !69)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 608, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 426, column: 9)
!1512 = !DILocalVariable(name: "printable", scope: !1510, file: !212, line: 612, type: !92)
!1513 = !DILocalVariable(name: "mbstate", scope: !1514, file: !212, line: 621, type: !1516)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !212, line: 620, column: 15)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 614, column: 17)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1517, line: 6, baseType: !1518)
!1517 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1519 = !DILocalVariable(name: "w", scope: !1520, file: !212, line: 631, type: !1521)
!1520 = distinct !DILexicalBlock(scope: !1514, file: !212, line: 630, column: 19)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1522 = !DILocalVariable(name: "bytes", scope: !1520, file: !212, line: 632, type: !69)
!1523 = !DILocalVariable(name: "j", scope: !1524, file: !212, line: 657, type: !69)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !212, line: 656, column: 27)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !212, line: 654, column: 29)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 649, column: 23)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 641, column: 30)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !212, line: 636, column: 30)
!1529 = distinct !DILexicalBlock(scope: !1520, file: !212, line: 634, column: 25)
!1530 = !DILocalVariable(name: "ilim", scope: !1531, file: !212, line: 684, type: !69)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !212, line: 681, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 680, column: 17)
!1533 = !DILabel(scope: !1475, name: "process_input", file: !212, line: 314)
!1534 = !DILabel(scope: !1511, name: "c_and_shell_escape", file: !212, line: 512)
!1535 = !DILabel(scope: !1511, name: "c_escape", file: !212, line: 517)
!1536 = !DILabel(scope: !1502, name: "store_escape", file: !212, line: 719)
!1537 = !DILabel(scope: !1502, name: "store_c", file: !212, line: 722)
!1538 = !DILabel(scope: !1475, name: "force_outer_quoting_style", file: !212, line: 763)
!1539 = !DILocation(line: 0, scope: !1475)
!1540 = !DILocation(line: 269, column: 25, scope: !1475)
!1541 = !DILocation(line: 269, column: 36, scope: !1475)
!1542 = !DILocation(line: 270, column: 8, scope: !1475)
!1543 = !DILocation(line: 0, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 526, column: 15)
!1545 = !DILocation(line: 0, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !212, line: 462, column: 19)
!1547 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 455, column: 13)
!1548 = !DILocation(line: 0, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !212, line: 449, column: 20)
!1550 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 428, column: 15)
!1551 = !DILocation(line: 0, scope: !1514)
!1552 = !DILocation(line: 0, scope: !1520)
!1553 = !DILocation(line: 0, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 712, column: 11)
!1555 = !DILocation(line: 273, column: 3, scope: !1475)
!1556 = !DILocation(line: 265, column: 10, scope: !1475)
!1557 = !DILocation(line: 266, column: 15, scope: !1475)
!1558 = !DILocation(line: 267, column: 10, scope: !1475)
!1559 = !DILocation(line: 268, column: 8, scope: !1475)
!1560 = !DILocation(line: 271, column: 8, scope: !1475)
!1561 = !DILocation(line: 272, column: 8, scope: !1475)
!1562 = !DILocation(line: 273, column: 8, scope: !1475)
!1563 = !DILocation(line: 314, column: 2, scope: !1475)
!1564 = !DILocation(line: 316, column: 3, scope: !1475)
!1565 = !DILocation(line: 323, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 317, column: 5)
!1567 = !DILocation(line: 323, column: 12, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1566, file: !212, line: 323, column: 11)
!1569 = !DILocation(line: 324, column: 9, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !212, line: 324, column: 9)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !212, line: 324, column: 9)
!1572 = !DILocation(line: 324, column: 9, scope: !1571)
!1573 = !{!1122, !1122, i64 0}
!1574 = !DILocation(line: 362, column: 26, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !212, line: 340, column: 11)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !212, line: 339, column: 13)
!1577 = distinct !DILexicalBlock(scope: !1566, file: !212, line: 338, column: 7)
!1578 = !DILocation(line: 363, column: 27, scope: !1575)
!1579 = !DILocation(line: 364, column: 11, scope: !1575)
!1580 = !DILocation(line: 365, column: 14, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !212, line: 365, column: 13)
!1582 = !DILocation(line: 365, column: 13, scope: !1577)
!1583 = !DILocation(line: 366, column: 43, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !212, line: 366, column: 11)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !212, line: 366, column: 11)
!1586 = !DILocation(line: 366, column: 11, scope: !1585)
!1587 = !DILocation(line: 367, column: 13, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !212, line: 367, column: 13)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !212, line: 367, column: 13)
!1590 = !DILocation(line: 367, column: 13, scope: !1589)
!1591 = !DILocation(line: 366, column: 70, scope: !1584)
!1592 = distinct !{!1592, !1586, !1593}
!1593 = !DILocation(line: 367, column: 13, scope: !1585)
!1594 = !DILocation(line: 264, column: 10, scope: !1475)
!1595 = !DILocation(line: 370, column: 28, scope: !1577)
!1596 = !DILocation(line: 372, column: 7, scope: !1566)
!1597 = !DILocation(line: 376, column: 7, scope: !1566)
!1598 = !DILocation(line: 379, column: 7, scope: !1566)
!1599 = !DILocation(line: 381, column: 12, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1566, file: !212, line: 381, column: 11)
!1601 = !DILocation(line: 381, column: 11, scope: !1566)
!1602 = !DILocation(line: 386, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1566, file: !212, line: 386, column: 11)
!1604 = !DILocation(line: 386, column: 11, scope: !1566)
!1605 = !DILocation(line: 387, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !212, line: 387, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !212, line: 387, column: 9)
!1608 = !DILocation(line: 387, column: 9, scope: !1607)
!1609 = !DILocation(line: 394, column: 7, scope: !1566)
!1610 = !DILocation(line: 397, column: 7, scope: !1566)
!1611 = !DILocation(line: 0, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 408, column: 11)
!1613 = !DILocation(line: 0, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !212, line: 419, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !212, line: 418, column: 9)
!1616 = !DILocation(line: 0, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 556, column: 15)
!1618 = !DILocation(line: 0, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 548, column: 15)
!1620 = !DILocation(line: 0, scope: !1525)
!1621 = !DILocation(line: 0, scope: !1532)
!1622 = !DILocation(line: 0, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 509, column: 15)
!1624 = !DILocation(line: 400, column: 8, scope: !1504)
!1625 = !DILocation(line: 0, scope: !1504)
!1626 = !DILocation(line: 400, column: 27, scope: !1503)
!1627 = !DILocation(line: 400, column: 19, scope: !1503)
!1628 = !DILocation(line: 400, column: 41, scope: !1503)
!1629 = !DILocation(line: 400, column: 48, scope: !1503)
!1630 = !DILocation(line: 400, column: 3, scope: !1504)
!1631 = !DILocation(line: 400, column: 60, scope: !1503)
!1632 = !DILocation(line: 0, scope: !1502)
!1633 = !DILocation(line: 409, column: 11, scope: !1612)
!1634 = !DILocation(line: 411, column: 17, scope: !1612)
!1635 = !DILocation(line: 412, column: 39, scope: !1612)
!1636 = !DILocation(line: 416, column: 32, scope: !1612)
!1637 = !DILocation(line: 412, column: 19, scope: !1612)
!1638 = !DILocation(line: 412, column: 15, scope: !1612)
!1639 = !DILocation(line: 417, column: 11, scope: !1612)
!1640 = !DILocation(line: 417, column: 26, scope: !1612)
!1641 = !DILocation(line: 417, column: 14, scope: !1612)
!1642 = !DILocation(line: 417, column: 63, scope: !1612)
!1643 = !DILocation(line: 408, column: 11, scope: !1502)
!1644 = !DILocation(line: 424, column: 11, scope: !1502)
!1645 = !DILocation(line: 425, column: 7, scope: !1502)
!1646 = !DILocation(line: 428, column: 15, scope: !1511)
!1647 = !DILocation(line: 430, column: 15, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !212, line: 430, column: 15)
!1649 = distinct !DILexicalBlock(scope: !1550, file: !212, line: 429, column: 13)
!1650 = !DILocation(line: 430, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !212, line: 430, column: 15)
!1652 = !DILocation(line: 430, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !212, line: 430, column: 15)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !212, line: 430, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !212, line: 430, column: 15)
!1656 = !DILocation(line: 430, column: 15, scope: !1654)
!1657 = !DILocation(line: 430, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !212, line: 430, column: 15)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !212, line: 430, column: 15)
!1660 = !DILocation(line: 430, column: 15, scope: !1659)
!1661 = !DILocation(line: 430, column: 15, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !212, line: 430, column: 15)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !212, line: 430, column: 15)
!1664 = !DILocation(line: 430, column: 15, scope: !1663)
!1665 = !DILocation(line: 430, column: 15, scope: !1655)
!1666 = !DILocation(line: 430, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !212, line: 430, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1648, file: !212, line: 430, column: 15)
!1669 = !DILocation(line: 430, column: 15, scope: !1668)
!1670 = !DILocation(line: 438, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1649, file: !212, line: 437, column: 19)
!1672 = !DILocation(line: 438, column: 24, scope: !1671)
!1673 = !DILocation(line: 438, column: 28, scope: !1671)
!1674 = !DILocation(line: 438, column: 38, scope: !1671)
!1675 = !DILocation(line: 438, column: 48, scope: !1671)
!1676 = !DILocation(line: 438, column: 59, scope: !1671)
!1677 = !DILocation(line: 440, column: 19, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !212, line: 440, column: 19)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 440, column: 19)
!1680 = distinct !DILexicalBlock(scope: !1671, file: !212, line: 439, column: 17)
!1681 = !DILocation(line: 440, column: 19, scope: !1679)
!1682 = !DILocation(line: 441, column: 19, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !212, line: 441, column: 19)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 441, column: 19)
!1685 = !DILocation(line: 441, column: 19, scope: !1684)
!1686 = !DILocation(line: 442, column: 17, scope: !1680)
!1687 = !DILocation(line: 449, column: 20, scope: !1550)
!1688 = !DILocation(line: 454, column: 11, scope: !1511)
!1689 = !DILocation(line: 457, column: 19, scope: !1547)
!1690 = !DILocation(line: 463, column: 19, scope: !1546)
!1691 = !DILocation(line: 463, column: 24, scope: !1546)
!1692 = !DILocation(line: 463, column: 28, scope: !1546)
!1693 = !DILocation(line: 463, column: 38, scope: !1546)
!1694 = !DILocation(line: 463, column: 47, scope: !1546)
!1695 = !DILocation(line: 463, column: 41, scope: !1546)
!1696 = !DILocation(line: 463, column: 52, scope: !1546)
!1697 = !DILocation(line: 462, column: 19, scope: !1547)
!1698 = !DILocation(line: 464, column: 25, scope: !1546)
!1699 = !DILocation(line: 464, column: 17, scope: !1546)
!1700 = !DILocation(line: 471, column: 25, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1546, file: !212, line: 465, column: 19)
!1702 = !DILocation(line: 475, column: 21, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !212, line: 475, column: 21)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 475, column: 21)
!1705 = !DILocation(line: 475, column: 21, scope: !1704)
!1706 = !DILocation(line: 476, column: 21, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !212, line: 476, column: 21)
!1708 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 476, column: 21)
!1709 = !DILocation(line: 476, column: 21, scope: !1708)
!1710 = !DILocation(line: 477, column: 21, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !212, line: 477, column: 21)
!1712 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 477, column: 21)
!1713 = !DILocation(line: 477, column: 21, scope: !1712)
!1714 = !DILocation(line: 478, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !212, line: 478, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 478, column: 21)
!1717 = !DILocation(line: 478, column: 21, scope: !1716)
!1718 = !DILocation(line: 479, column: 21, scope: !1701)
!1719 = !DILocation(line: 492, column: 31, scope: !1511)
!1720 = !DILocation(line: 493, column: 31, scope: !1511)
!1721 = !DILocation(line: 495, column: 31, scope: !1511)
!1722 = !DILocation(line: 496, column: 31, scope: !1511)
!1723 = !DILocation(line: 497, column: 31, scope: !1511)
!1724 = !DILocation(line: 500, column: 15, scope: !1511)
!1725 = !DILocation(line: 502, column: 19, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !212, line: 501, column: 13)
!1727 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 500, column: 15)
!1728 = !DILocation(line: 509, column: 33, scope: !1623)
!1729 = !DILocation(line: 0, scope: !1511)
!1730 = !DILocation(line: 512, column: 9, scope: !1511)
!1731 = !DILocation(line: 514, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 513, column: 15)
!1733 = !DILocation(line: 517, column: 9, scope: !1511)
!1734 = !DILocation(line: 518, column: 15, scope: !1511)
!1735 = !DILocation(line: 526, column: 15, scope: !1511)
!1736 = !DILocation(line: 526, column: 40, scope: !1544)
!1737 = !DILocation(line: 526, column: 47, scope: !1544)
!1738 = !DILocation(line: 526, column: 18, scope: !1544)
!1739 = !DILocation(line: 530, column: 17, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 530, column: 15)
!1741 = !DILocation(line: 530, column: 15, scope: !1511)
!1742 = !DILocation(line: 535, column: 11, scope: !1511)
!1743 = !DILocation(line: 549, column: 15, scope: !1619)
!1744 = !DILocation(line: 556, column: 15, scope: !1511)
!1745 = !DILocation(line: 558, column: 19, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1617, file: !212, line: 557, column: 13)
!1747 = !DILocation(line: 561, column: 19, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !212, line: 561, column: 19)
!1749 = !DILocation(line: 561, column: 35, scope: !1748)
!1750 = !DILocation(line: 561, column: 30, scope: !1748)
!1751 = !DILocation(line: 570, column: 15, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !212, line: 570, column: 15)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !212, line: 570, column: 15)
!1754 = !DILocation(line: 570, column: 15, scope: !1753)
!1755 = !DILocation(line: 571, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !212, line: 571, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1746, file: !212, line: 571, column: 15)
!1758 = !DILocation(line: 571, column: 15, scope: !1757)
!1759 = !DILocation(line: 572, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !212, line: 572, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1746, file: !212, line: 572, column: 15)
!1762 = !DILocation(line: 572, column: 15, scope: !1761)
!1763 = !DILocation(line: 574, column: 13, scope: !1746)
!1764 = !DILocation(line: 614, column: 17, scope: !1510)
!1765 = !DILocation(line: 0, scope: !1510)
!1766 = !DILocation(line: 617, column: 29, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1515, file: !212, line: 615, column: 15)
!1768 = !{!1769, !1769, i64 0}
!1769 = !{!"short", !1122, i64 0}
!1770 = !DILocation(line: 617, column: 27, scope: !1767)
!1771 = !DILocation(line: 618, column: 15, scope: !1767)
!1772 = !DILocation(line: 621, column: 17, scope: !1514)
!1773 = !DILocation(line: 621, column: 27, scope: !1514)
!1774 = !DILocalVariable(name: "__dest", arg: 1, scope: !1775, file: !1776, line: 59, type: !67)
!1775 = distinct !DISubprogram(name: "memset", scope: !1776, file: !1776, line: 59, type: !1777, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1779)
!1776 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!67, !67, !18, !69}
!1779 = !{!1774, !1780, !1781}
!1780 = !DILocalVariable(name: "__ch", arg: 2, scope: !1775, file: !1776, line: 59, type: !18)
!1781 = !DILocalVariable(name: "__len", arg: 3, scope: !1775, file: !1776, line: 59, type: !69)
!1782 = !DILocation(line: 0, scope: !1775, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 622, column: 17, scope: !1514)
!1784 = !DILocation(line: 71, column: 10, scope: !1775, inlinedAt: !1783)
!1785 = !DILocation(line: 626, column: 29, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1514, file: !212, line: 626, column: 21)
!1787 = !DILocation(line: 626, column: 21, scope: !1514)
!1788 = !DILocation(line: 627, column: 29, scope: !1786)
!1789 = !DILocation(line: 627, column: 19, scope: !1786)
!1790 = !DILocation(line: 629, column: 17, scope: !1514)
!1791 = !DILocation(line: 624, column: 19, scope: !1514)
!1792 = !DILocation(line: 625, column: 27, scope: !1514)
!1793 = !DILocation(line: 631, column: 21, scope: !1520)
!1794 = !DILocation(line: 632, column: 56, scope: !1520)
!1795 = !DILocation(line: 632, column: 50, scope: !1520)
!1796 = !DILocation(line: 633, column: 53, scope: !1520)
!1797 = !DILocation(line: 632, column: 36, scope: !1520)
!1798 = !DILocation(line: 634, column: 25, scope: !1520)
!1799 = !DILocation(line: 644, column: 38, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 642, column: 23)
!1801 = !DILocation(line: 644, column: 48, scope: !1800)
!1802 = !DILocation(line: 644, column: 25, scope: !1800)
!1803 = !DILocation(line: 644, column: 51, scope: !1800)
!1804 = !DILocation(line: 645, column: 28, scope: !1800)
!1805 = !DILocation(line: 644, column: 34, scope: !1800)
!1806 = distinct !{!1806, !1802, !1804}
!1807 = !DILocation(line: 658, column: 43, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !212, line: 658, column: 29)
!1809 = distinct !DILexicalBlock(scope: !1524, file: !212, line: 658, column: 29)
!1810 = !DILocation(line: 655, column: 29, scope: !1525)
!1811 = !DILocation(line: 0, scope: !1524)
!1812 = !DILocation(line: 659, column: 49, scope: !1808)
!1813 = !DILocation(line: 659, column: 39, scope: !1808)
!1814 = !DILocation(line: 659, column: 31, scope: !1808)
!1815 = !DILocation(line: 658, column: 53, scope: !1808)
!1816 = !DILocation(line: 658, column: 29, scope: !1809)
!1817 = distinct !{!1817, !1816, !1818}
!1818 = !DILocation(line: 667, column: 33, scope: !1809)
!1819 = !DILocation(line: 674, column: 19, scope: !1514)
!1820 = !DILocation(line: 670, column: 41, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1526, file: !212, line: 670, column: 29)
!1822 = !DILocation(line: 670, column: 31, scope: !1821)
!1823 = !DILocation(line: 670, column: 29, scope: !1526)
!1824 = !DILocation(line: 672, column: 27, scope: !1526)
!1825 = !DILocation(line: 675, column: 26, scope: !1514)
!1826 = !DILocation(line: 675, column: 24, scope: !1514)
!1827 = !DILocation(line: 674, column: 19, scope: !1520)
!1828 = distinct !{!1828, !1790, !1829}
!1829 = !DILocation(line: 675, column: 44, scope: !1514)
!1830 = !DILocation(line: 676, column: 15, scope: !1515)
!1831 = !DILocation(line: 0, scope: !1515)
!1832 = !DILocation(line: 678, column: 40, scope: !1510)
!1833 = !DILocation(line: 680, column: 19, scope: !1532)
!1834 = !DILocation(line: 680, column: 45, scope: !1532)
!1835 = !DILocation(line: 680, column: 23, scope: !1532)
!1836 = !DILocation(line: 684, column: 33, scope: !1531)
!1837 = !DILocation(line: 0, scope: !1531)
!1838 = !DILocation(line: 686, column: 17, scope: !1531)
!1839 = !DILocation(line: 405, column: 12, scope: !1502)
!1840 = !DILocation(line: 688, column: 43, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !212, line: 688, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !212, line: 687, column: 19)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !212, line: 686, column: 17)
!1844 = distinct !DILexicalBlock(scope: !1531, file: !212, line: 686, column: 17)
!1845 = !DILocation(line: 690, column: 25, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !212, line: 690, column: 25)
!1847 = distinct !DILexicalBlock(scope: !1841, file: !212, line: 689, column: 23)
!1848 = !DILocation(line: 690, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !212, line: 690, column: 25)
!1850 = !DILocation(line: 690, column: 25, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !212, line: 690, column: 25)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !212, line: 690, column: 25)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !212, line: 690, column: 25)
!1854 = !DILocation(line: 690, column: 25, scope: !1852)
!1855 = !DILocation(line: 690, column: 25, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !212, line: 690, column: 25)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !212, line: 690, column: 25)
!1858 = !DILocation(line: 690, column: 25, scope: !1857)
!1859 = !DILocation(line: 690, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 690, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1853, file: !212, line: 690, column: 25)
!1862 = !DILocation(line: 690, column: 25, scope: !1861)
!1863 = !DILocation(line: 690, column: 25, scope: !1853)
!1864 = !DILocation(line: 690, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !212, line: 690, column: 25)
!1866 = distinct !DILexicalBlock(scope: !1846, file: !212, line: 690, column: 25)
!1867 = !DILocation(line: 690, column: 25, scope: !1866)
!1868 = !DILocation(line: 691, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 691, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1847, file: !212, line: 691, column: 25)
!1871 = !DILocation(line: 691, column: 25, scope: !1870)
!1872 = !DILocation(line: 692, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 692, column: 25)
!1874 = distinct !DILexicalBlock(scope: !1847, file: !212, line: 692, column: 25)
!1875 = !DILocation(line: 692, column: 25, scope: !1874)
!1876 = !DILocation(line: 693, column: 38, scope: !1847)
!1877 = !DILocation(line: 693, column: 33, scope: !1847)
!1878 = !DILocation(line: 694, column: 23, scope: !1847)
!1879 = !DILocation(line: 695, column: 30, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1841, file: !212, line: 695, column: 30)
!1881 = !DILocation(line: 695, column: 30, scope: !1841)
!1882 = !DILocation(line: 697, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !212, line: 697, column: 25)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !212, line: 697, column: 25)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 696, column: 23)
!1886 = !DILocation(line: 697, column: 25, scope: !1884)
!1887 = !DILocation(line: 699, column: 23, scope: !1885)
!1888 = !DILocation(line: 700, column: 35, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1842, file: !212, line: 700, column: 25)
!1890 = !DILocation(line: 700, column: 30, scope: !1889)
!1891 = !DILocation(line: 700, column: 25, scope: !1842)
!1892 = !DILocation(line: 702, column: 21, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !212, line: 702, column: 21)
!1894 = distinct !DILexicalBlock(scope: !1842, file: !212, line: 702, column: 21)
!1895 = !DILocation(line: 702, column: 21, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !212, line: 702, column: 21)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !212, line: 702, column: 21)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !212, line: 702, column: 21)
!1899 = !DILocation(line: 702, column: 21, scope: !1897)
!1900 = !DILocation(line: 702, column: 21, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !212, line: 702, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !212, line: 702, column: 21)
!1903 = !DILocation(line: 702, column: 21, scope: !1902)
!1904 = !DILocation(line: 702, column: 21, scope: !1898)
!1905 = !DILocation(line: 0, scope: !1842)
!1906 = !DILocation(line: 703, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 703, column: 21)
!1908 = distinct !DILexicalBlock(scope: !1842, file: !212, line: 703, column: 21)
!1909 = !DILocation(line: 703, column: 21, scope: !1908)
!1910 = !DILocation(line: 704, column: 25, scope: !1842)
!1911 = !DILocation(line: 686, column: 17, scope: !1843)
!1912 = distinct !{!1912, !1913, !1914}
!1913 = !DILocation(line: 686, column: 17, scope: !1844)
!1914 = !DILocation(line: 705, column: 19, scope: !1844)
!1915 = !DILocation(line: 416, column: 30, scope: !1612)
!1916 = !DILocation(line: 712, column: 34, scope: !1554)
!1917 = !DILocation(line: 715, column: 35, scope: !1554)
!1918 = !DILocation(line: 715, column: 17, scope: !1554)
!1919 = !DILocation(line: 715, column: 47, scope: !1554)
!1920 = !DILocation(line: 715, column: 65, scope: !1554)
!1921 = !DILocation(line: 716, column: 15, scope: !1554)
!1922 = !DILocation(line: 716, column: 11, scope: !1554)
!1923 = !DILocation(line: 712, column: 11, scope: !1502)
!1924 = !DILocation(line: 400, column: 10, scope: !1504)
!1925 = !DILocation(line: 719, column: 5, scope: !1502)
!1926 = !DILocation(line: 720, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 720, column: 7)
!1928 = !DILocation(line: 720, column: 7, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 720, column: 7)
!1930 = !DILocation(line: 720, column: 7, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !212, line: 720, column: 7)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !212, line: 720, column: 7)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !212, line: 720, column: 7)
!1934 = !DILocation(line: 720, column: 7, scope: !1932)
!1935 = !DILocation(line: 720, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !212, line: 720, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !212, line: 720, column: 7)
!1938 = !DILocation(line: 720, column: 7, scope: !1937)
!1939 = !DILocation(line: 720, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !212, line: 720, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !212, line: 720, column: 7)
!1942 = !DILocation(line: 720, column: 7, scope: !1941)
!1943 = !DILocation(line: 720, column: 7, scope: !1933)
!1944 = !DILocation(line: 720, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !212, line: 720, column: 7)
!1946 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 720, column: 7)
!1947 = !DILocation(line: 720, column: 7, scope: !1946)
!1948 = !DILocation(line: 722, column: 5, scope: !1502)
!1949 = !DILocation(line: 723, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !212, line: 723, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 723, column: 7)
!1952 = !DILocation(line: 424, column: 9, scope: !1502)
!1953 = !DILocation(line: 723, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !212, line: 723, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !212, line: 723, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !212, line: 723, column: 7)
!1957 = !DILocation(line: 723, column: 7, scope: !1955)
!1958 = !DILocation(line: 723, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !212, line: 723, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !212, line: 723, column: 7)
!1961 = !DILocation(line: 723, column: 7, scope: !1960)
!1962 = !DILocation(line: 723, column: 7, scope: !1956)
!1963 = !DILocation(line: 724, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !212, line: 724, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 724, column: 7)
!1966 = !DILocation(line: 724, column: 7, scope: !1965)
!1967 = !DILocation(line: 726, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1502, file: !212, line: 726, column: 11)
!1969 = !DILocation(line: 726, column: 11, scope: !1502)
!1970 = !DILocation(line: 728, column: 5, scope: !1503)
!1971 = !DILocation(line: 400, column: 75, scope: !1503)
!1972 = !DILocation(line: 400, column: 3, scope: !1503)
!1973 = distinct !{!1973, !1630, !1974}
!1974 = !DILocation(line: 728, column: 5, scope: !1504)
!1975 = !DILocation(line: 730, column: 11, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 730, column: 7)
!1977 = !DILocation(line: 730, column: 16, scope: !1976)
!1978 = !DILocation(line: 738, column: 51, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 738, column: 7)
!1980 = !DILocation(line: 739, column: 10, scope: !1979)
!1981 = !DILocation(line: 741, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !212, line: 741, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !212, line: 740, column: 5)
!1984 = !DILocation(line: 741, column: 11, scope: !1983)
!1985 = !DILocation(line: 742, column: 16, scope: !1982)
!1986 = !DILocation(line: 742, column: 9, scope: !1982)
!1987 = !DILocation(line: 746, column: 18, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !212, line: 746, column: 16)
!1989 = !DILocation(line: 746, column: 32, scope: !1988)
!1990 = !DILocation(line: 746, column: 29, scope: !1988)
!1991 = !DILocation(line: 755, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 755, column: 7)
!1993 = !DILocation(line: 755, column: 20, scope: !1992)
!1994 = !DILocation(line: 756, column: 12, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !212, line: 756, column: 5)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !212, line: 756, column: 5)
!1997 = !DILocation(line: 756, column: 5, scope: !1996)
!1998 = !DILocation(line: 757, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !212, line: 757, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !212, line: 757, column: 7)
!2001 = !DILocation(line: 757, column: 7, scope: !2000)
!2002 = !DILocation(line: 756, column: 39, scope: !1995)
!2003 = distinct !{!2003, !1997, !2004}
!2004 = !DILocation(line: 757, column: 7, scope: !1996)
!2005 = !DILocation(line: 759, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 759, column: 7)
!2007 = !DILocation(line: 759, column: 7, scope: !1475)
!2008 = !DILocation(line: 760, column: 5, scope: !2006)
!2009 = !DILocation(line: 760, column: 17, scope: !2006)
!2010 = !DILocation(line: 763, column: 2, scope: !1475)
!2011 = !DILocation(line: 766, column: 51, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1475, file: !212, line: 766, column: 7)
!2013 = !DILocation(line: 766, column: 21, scope: !2012)
!2014 = !DILocation(line: 770, column: 42, scope: !1475)
!2015 = !DILocation(line: 768, column: 10, scope: !1475)
!2016 = !DILocation(line: 768, column: 3, scope: !1475)
!2017 = !DILocation(line: 772, column: 1, scope: !1475)
!2018 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2019, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!6, !6, !214}
!2021 = !{!2022, !2023, !2024, !2025}
!2022 = !DILocalVariable(name: "msgid", arg: 1, scope: !2018, file: !212, line: 207, type: !6)
!2023 = !DILocalVariable(name: "s", arg: 2, scope: !2018, file: !212, line: 207, type: !214)
!2024 = !DILocalVariable(name: "translation", scope: !2018, file: !212, line: 209, type: !6)
!2025 = !DILocalVariable(name: "locale_code", scope: !2018, file: !212, line: 210, type: !6)
!2026 = !DILocation(line: 0, scope: !2018)
!2027 = !DILocation(line: 209, column: 29, scope: !2018)
!2028 = !DILocation(line: 212, column: 19, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2018, file: !212, line: 212, column: 7)
!2030 = !DILocation(line: 212, column: 7, scope: !2018)
!2031 = !DILocation(line: 233, column: 17, scope: !2018)
!2032 = !DILocalVariable(name: "s1", arg: 1, scope: !2033, file: !2034, line: 160, type: !6)
!2033 = distinct !DISubprogram(name: "strcaseeq0", scope: !2034, file: !2034, line: 160, type: !2035, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2037)
!2034 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2037 = !{!2032, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2038 = !DILocalVariable(name: "s2", arg: 2, scope: !2033, file: !2034, line: 160, type: !6)
!2039 = !DILocalVariable(name: "s20", arg: 3, scope: !2033, file: !2034, line: 160, type: !8)
!2040 = !DILocalVariable(name: "s21", arg: 4, scope: !2033, file: !2034, line: 160, type: !8)
!2041 = !DILocalVariable(name: "s22", arg: 5, scope: !2033, file: !2034, line: 160, type: !8)
!2042 = !DILocalVariable(name: "s23", arg: 6, scope: !2033, file: !2034, line: 160, type: !8)
!2043 = !DILocalVariable(name: "s24", arg: 7, scope: !2033, file: !2034, line: 160, type: !8)
!2044 = !DILocalVariable(name: "s25", arg: 8, scope: !2033, file: !2034, line: 160, type: !8)
!2045 = !DILocalVariable(name: "s26", arg: 9, scope: !2033, file: !2034, line: 160, type: !8)
!2046 = !DILocalVariable(name: "s27", arg: 10, scope: !2033, file: !2034, line: 160, type: !8)
!2047 = !DILocalVariable(name: "s28", arg: 11, scope: !2033, file: !2034, line: 160, type: !8)
!2048 = !DILocation(line: 0, scope: !2033, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 234, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2018, file: !212, line: 234, column: 7)
!2051 = !DILocation(line: 162, column: 7, scope: !2052, inlinedAt: !2049)
!2052 = distinct !DILexicalBlock(scope: !2033, file: !2034, line: 162, column: 7)
!2053 = !DILocalVariable(name: "s1", arg: 1, scope: !2054, file: !2034, line: 146, type: !6)
!2054 = distinct !DISubprogram(name: "strcaseeq1", scope: !2034, file: !2034, line: 146, type: !2055, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2057)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2057 = !{!2053, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2058 = !DILocalVariable(name: "s2", arg: 2, scope: !2054, file: !2034, line: 146, type: !6)
!2059 = !DILocalVariable(name: "s21", arg: 3, scope: !2054, file: !2034, line: 146, type: !8)
!2060 = !DILocalVariable(name: "s22", arg: 4, scope: !2054, file: !2034, line: 146, type: !8)
!2061 = !DILocalVariable(name: "s23", arg: 5, scope: !2054, file: !2034, line: 146, type: !8)
!2062 = !DILocalVariable(name: "s24", arg: 6, scope: !2054, file: !2034, line: 146, type: !8)
!2063 = !DILocalVariable(name: "s25", arg: 7, scope: !2054, file: !2034, line: 146, type: !8)
!2064 = !DILocalVariable(name: "s26", arg: 8, scope: !2054, file: !2034, line: 146, type: !8)
!2065 = !DILocalVariable(name: "s27", arg: 9, scope: !2054, file: !2034, line: 146, type: !8)
!2066 = !DILocalVariable(name: "s28", arg: 10, scope: !2054, file: !2034, line: 146, type: !8)
!2067 = !DILocation(line: 0, scope: !2054, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 167, column: 16, scope: !2069, inlinedAt: !2049)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !2034, line: 164, column: 11)
!2070 = distinct !DILexicalBlock(scope: !2052, file: !2034, line: 163, column: 5)
!2071 = !DILocation(line: 148, column: 7, scope: !2072, inlinedAt: !2068)
!2072 = distinct !DILexicalBlock(scope: !2054, file: !2034, line: 148, column: 7)
!2073 = !DILocalVariable(name: "s1", arg: 1, scope: !2074, file: !2034, line: 132, type: !6)
!2074 = distinct !DISubprogram(name: "strcaseeq2", scope: !2034, file: !2034, line: 132, type: !2075, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2077 = !{!2073, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2078 = !DILocalVariable(name: "s2", arg: 2, scope: !2074, file: !2034, line: 132, type: !6)
!2079 = !DILocalVariable(name: "s22", arg: 3, scope: !2074, file: !2034, line: 132, type: !8)
!2080 = !DILocalVariable(name: "s23", arg: 4, scope: !2074, file: !2034, line: 132, type: !8)
!2081 = !DILocalVariable(name: "s24", arg: 5, scope: !2074, file: !2034, line: 132, type: !8)
!2082 = !DILocalVariable(name: "s25", arg: 6, scope: !2074, file: !2034, line: 132, type: !8)
!2083 = !DILocalVariable(name: "s26", arg: 7, scope: !2074, file: !2034, line: 132, type: !8)
!2084 = !DILocalVariable(name: "s27", arg: 8, scope: !2074, file: !2034, line: 132, type: !8)
!2085 = !DILocalVariable(name: "s28", arg: 9, scope: !2074, file: !2034, line: 132, type: !8)
!2086 = !DILocation(line: 0, scope: !2074, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 153, column: 16, scope: !2088, inlinedAt: !2068)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !2034, line: 150, column: 11)
!2089 = distinct !DILexicalBlock(scope: !2072, file: !2034, line: 149, column: 5)
!2090 = !DILocation(line: 134, column: 7, scope: !2091, inlinedAt: !2087)
!2091 = distinct !DILexicalBlock(scope: !2074, file: !2034, line: 134, column: 7)
!2092 = !DILocalVariable(name: "s1", arg: 1, scope: !2093, file: !2034, line: 118, type: !6)
!2093 = distinct !DISubprogram(name: "strcaseeq3", scope: !2034, file: !2034, line: 118, type: !2094, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2096 = !{!2092, !2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2097 = !DILocalVariable(name: "s2", arg: 2, scope: !2093, file: !2034, line: 118, type: !6)
!2098 = !DILocalVariable(name: "s23", arg: 3, scope: !2093, file: !2034, line: 118, type: !8)
!2099 = !DILocalVariable(name: "s24", arg: 4, scope: !2093, file: !2034, line: 118, type: !8)
!2100 = !DILocalVariable(name: "s25", arg: 5, scope: !2093, file: !2034, line: 118, type: !8)
!2101 = !DILocalVariable(name: "s26", arg: 6, scope: !2093, file: !2034, line: 118, type: !8)
!2102 = !DILocalVariable(name: "s27", arg: 7, scope: !2093, file: !2034, line: 118, type: !8)
!2103 = !DILocalVariable(name: "s28", arg: 8, scope: !2093, file: !2034, line: 118, type: !8)
!2104 = !DILocation(line: 0, scope: !2093, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 139, column: 16, scope: !2106, inlinedAt: !2087)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !2034, line: 136, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2091, file: !2034, line: 135, column: 5)
!2108 = !DILocation(line: 120, column: 7, scope: !2109, inlinedAt: !2105)
!2109 = distinct !DILexicalBlock(scope: !2093, file: !2034, line: 120, column: 7)
!2110 = !DILocation(line: 120, column: 7, scope: !2093, inlinedAt: !2105)
!2111 = !DILocalVariable(name: "s1", arg: 1, scope: !2112, file: !2034, line: 104, type: !6)
!2112 = distinct !DISubprogram(name: "strcaseeq4", scope: !2034, file: !2034, line: 104, type: !2113, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2115 = !{!2111, !2116, !2117, !2118, !2119, !2120, !2121}
!2116 = !DILocalVariable(name: "s2", arg: 2, scope: !2112, file: !2034, line: 104, type: !6)
!2117 = !DILocalVariable(name: "s24", arg: 3, scope: !2112, file: !2034, line: 104, type: !8)
!2118 = !DILocalVariable(name: "s25", arg: 4, scope: !2112, file: !2034, line: 104, type: !8)
!2119 = !DILocalVariable(name: "s26", arg: 5, scope: !2112, file: !2034, line: 104, type: !8)
!2120 = !DILocalVariable(name: "s27", arg: 6, scope: !2112, file: !2034, line: 104, type: !8)
!2121 = !DILocalVariable(name: "s28", arg: 7, scope: !2112, file: !2034, line: 104, type: !8)
!2122 = !DILocation(line: 0, scope: !2112, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 125, column: 16, scope: !2124, inlinedAt: !2105)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !2034, line: 122, column: 11)
!2125 = distinct !DILexicalBlock(scope: !2109, file: !2034, line: 121, column: 5)
!2126 = !DILocation(line: 106, column: 7, scope: !2127, inlinedAt: !2123)
!2127 = distinct !DILexicalBlock(scope: !2112, file: !2034, line: 106, column: 7)
!2128 = !DILocation(line: 106, column: 7, scope: !2112, inlinedAt: !2123)
!2129 = !DILocalVariable(name: "s1", arg: 1, scope: !2130, file: !2034, line: 90, type: !6)
!2130 = distinct !DISubprogram(name: "strcaseeq5", scope: !2034, file: !2034, line: 90, type: !2131, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!18, !6, !6, !8, !8, !8, !8}
!2133 = !{!2129, !2134, !2135, !2136, !2137, !2138}
!2134 = !DILocalVariable(name: "s2", arg: 2, scope: !2130, file: !2034, line: 90, type: !6)
!2135 = !DILocalVariable(name: "s25", arg: 3, scope: !2130, file: !2034, line: 90, type: !8)
!2136 = !DILocalVariable(name: "s26", arg: 4, scope: !2130, file: !2034, line: 90, type: !8)
!2137 = !DILocalVariable(name: "s27", arg: 5, scope: !2130, file: !2034, line: 90, type: !8)
!2138 = !DILocalVariable(name: "s28", arg: 6, scope: !2130, file: !2034, line: 90, type: !8)
!2139 = !DILocation(line: 0, scope: !2130, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 111, column: 16, scope: !2141, inlinedAt: !2123)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !2034, line: 108, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2127, file: !2034, line: 107, column: 5)
!2143 = !DILocation(line: 92, column: 7, scope: !2144, inlinedAt: !2140)
!2144 = distinct !DILexicalBlock(scope: !2130, file: !2034, line: 92, column: 7)
!2145 = !DILocation(line: 92, column: 7, scope: !2130, inlinedAt: !2140)
!2146 = !DILocation(line: 235, column: 12, scope: !2050)
!2147 = !DILocation(line: 235, column: 21, scope: !2050)
!2148 = !DILocation(line: 235, column: 5, scope: !2050)
!2149 = !DILocation(line: 0, scope: !2054, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 167, column: 16, scope: !2069, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 236, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2018, file: !212, line: 236, column: 7)
!2153 = !DILocation(line: 148, column: 7, scope: !2072, inlinedAt: !2150)
!2154 = !DILocation(line: 0, scope: !2074, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 153, column: 16, scope: !2088, inlinedAt: !2150)
!2156 = !DILocation(line: 134, column: 7, scope: !2091, inlinedAt: !2155)
!2157 = !DILocation(line: 134, column: 7, scope: !2074, inlinedAt: !2155)
!2158 = !DILocation(line: 0, scope: !2093, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 139, column: 16, scope: !2106, inlinedAt: !2155)
!2160 = !DILocation(line: 120, column: 7, scope: !2109, inlinedAt: !2159)
!2161 = !DILocation(line: 120, column: 7, scope: !2093, inlinedAt: !2159)
!2162 = !DILocation(line: 0, scope: !2112, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 125, column: 16, scope: !2124, inlinedAt: !2159)
!2164 = !DILocation(line: 106, column: 7, scope: !2127, inlinedAt: !2163)
!2165 = !DILocation(line: 106, column: 7, scope: !2112, inlinedAt: !2163)
!2166 = !DILocation(line: 0, scope: !2130, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 111, column: 16, scope: !2141, inlinedAt: !2163)
!2168 = !DILocation(line: 92, column: 7, scope: !2144, inlinedAt: !2167)
!2169 = !DILocation(line: 92, column: 7, scope: !2130, inlinedAt: !2167)
!2170 = !DILocalVariable(name: "s1", arg: 1, scope: !2171, file: !2034, line: 76, type: !6)
!2171 = distinct !DISubprogram(name: "strcaseeq6", scope: !2034, file: !2034, line: 76, type: !2172, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!18, !6, !6, !8, !8, !8}
!2174 = !{!2170, !2175, !2176, !2177, !2178}
!2175 = !DILocalVariable(name: "s2", arg: 2, scope: !2171, file: !2034, line: 76, type: !6)
!2176 = !DILocalVariable(name: "s26", arg: 3, scope: !2171, file: !2034, line: 76, type: !8)
!2177 = !DILocalVariable(name: "s27", arg: 4, scope: !2171, file: !2034, line: 76, type: !8)
!2178 = !DILocalVariable(name: "s28", arg: 5, scope: !2171, file: !2034, line: 76, type: !8)
!2179 = !DILocation(line: 0, scope: !2171, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 97, column: 16, scope: !2181, inlinedAt: !2167)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2034, line: 94, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2144, file: !2034, line: 93, column: 5)
!2183 = !DILocation(line: 78, column: 7, scope: !2184, inlinedAt: !2180)
!2184 = distinct !DILexicalBlock(scope: !2171, file: !2034, line: 78, column: 7)
!2185 = !DILocation(line: 78, column: 7, scope: !2171, inlinedAt: !2180)
!2186 = !DILocalVariable(name: "s1", arg: 1, scope: !2187, file: !2034, line: 62, type: !6)
!2187 = distinct !DISubprogram(name: "strcaseeq7", scope: !2034, file: !2034, line: 62, type: !2188, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!18, !6, !6, !8, !8}
!2190 = !{!2186, !2191, !2192, !2193}
!2191 = !DILocalVariable(name: "s2", arg: 2, scope: !2187, file: !2034, line: 62, type: !6)
!2192 = !DILocalVariable(name: "s27", arg: 3, scope: !2187, file: !2034, line: 62, type: !8)
!2193 = !DILocalVariable(name: "s28", arg: 4, scope: !2187, file: !2034, line: 62, type: !8)
!2194 = !DILocation(line: 0, scope: !2187, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 83, column: 16, scope: !2196, inlinedAt: !2180)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !2034, line: 80, column: 11)
!2197 = distinct !DILexicalBlock(scope: !2184, file: !2034, line: 79, column: 5)
!2198 = !DILocation(line: 64, column: 7, scope: !2199, inlinedAt: !2195)
!2199 = distinct !DILexicalBlock(scope: !2187, file: !2034, line: 64, column: 7)
!2200 = !DILocation(line: 236, column: 7, scope: !2018)
!2201 = !DILocation(line: 237, column: 12, scope: !2152)
!2202 = !DILocation(line: 237, column: 21, scope: !2152)
!2203 = !DILocation(line: 237, column: 5, scope: !2152)
!2204 = !DILocation(line: 239, column: 13, scope: !2018)
!2205 = !DILocation(line: 239, column: 11, scope: !2018)
!2206 = !DILocation(line: 239, column: 3, scope: !2018)
!2207 = !DILocation(line: 240, column: 1, scope: !2018)
!2208 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2209, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2211)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!25, !6, !69, !258}
!2211 = !{!2212, !2213, !2214}
!2212 = !DILocalVariable(name: "arg", arg: 1, scope: !2208, file: !212, line: 799, type: !6)
!2213 = !DILocalVariable(name: "argsize", arg: 2, scope: !2208, file: !212, line: 799, type: !69)
!2214 = !DILocalVariable(name: "o", arg: 3, scope: !2208, file: !212, line: 800, type: !258)
!2215 = !DILocation(line: 0, scope: !2208)
!2216 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !212, line: 812, type: !6)
!2217 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2218, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!25, !6, !69, !479, !258}
!2220 = !{!2216, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2221 = !DILocalVariable(name: "argsize", arg: 2, scope: !2217, file: !212, line: 812, type: !69)
!2222 = !DILocalVariable(name: "size", arg: 3, scope: !2217, file: !212, line: 812, type: !479)
!2223 = !DILocalVariable(name: "o", arg: 4, scope: !2217, file: !212, line: 813, type: !258)
!2224 = !DILocalVariable(name: "p", scope: !2217, file: !212, line: 815, type: !258)
!2225 = !DILocalVariable(name: "e", scope: !2217, file: !212, line: 816, type: !18)
!2226 = !DILocalVariable(name: "flags", scope: !2217, file: !212, line: 818, type: !18)
!2227 = !DILocalVariable(name: "bufsize", scope: !2217, file: !212, line: 819, type: !69)
!2228 = !DILocalVariable(name: "buf", scope: !2217, file: !212, line: 823, type: !25)
!2229 = !DILocation(line: 0, scope: !2217, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 802, column: 10, scope: !2208)
!2231 = !DILocation(line: 815, column: 37, scope: !2217, inlinedAt: !2230)
!2232 = !DILocation(line: 816, column: 11, scope: !2217, inlinedAt: !2230)
!2233 = !DILocation(line: 818, column: 18, scope: !2217, inlinedAt: !2230)
!2234 = !DILocation(line: 818, column: 24, scope: !2217, inlinedAt: !2230)
!2235 = !DILocation(line: 819, column: 69, scope: !2217, inlinedAt: !2230)
!2236 = !DILocation(line: 820, column: 53, scope: !2217, inlinedAt: !2230)
!2237 = !DILocation(line: 821, column: 49, scope: !2217, inlinedAt: !2230)
!2238 = !DILocation(line: 822, column: 49, scope: !2217, inlinedAt: !2230)
!2239 = !DILocation(line: 819, column: 20, scope: !2217, inlinedAt: !2230)
!2240 = !DILocation(line: 822, column: 62, scope: !2217, inlinedAt: !2230)
!2241 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !249, line: 216, type: !69)
!2242 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2243, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!25, !69}
!2245 = !{!2241}
!2246 = !DILocation(line: 0, scope: !2242, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 823, column: 15, scope: !2217, inlinedAt: !2230)
!2248 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2247)
!2249 = !DILocation(line: 824, column: 60, scope: !2217, inlinedAt: !2230)
!2250 = !DILocation(line: 826, column: 32, scope: !2217, inlinedAt: !2230)
!2251 = !DILocation(line: 826, column: 47, scope: !2217, inlinedAt: !2230)
!2252 = !DILocation(line: 824, column: 3, scope: !2217, inlinedAt: !2230)
!2253 = !DILocation(line: 827, column: 9, scope: !2217, inlinedAt: !2230)
!2254 = !DILocation(line: 802, column: 3, scope: !2208)
!2255 = !DILocation(line: 0, scope: !2217)
!2256 = !DILocation(line: 815, column: 37, scope: !2217)
!2257 = !DILocation(line: 816, column: 11, scope: !2217)
!2258 = !DILocation(line: 818, column: 18, scope: !2217)
!2259 = !DILocation(line: 818, column: 27, scope: !2217)
!2260 = !DILocation(line: 818, column: 24, scope: !2217)
!2261 = !DILocation(line: 819, column: 69, scope: !2217)
!2262 = !DILocation(line: 820, column: 53, scope: !2217)
!2263 = !DILocation(line: 821, column: 49, scope: !2217)
!2264 = !DILocation(line: 822, column: 49, scope: !2217)
!2265 = !DILocation(line: 819, column: 20, scope: !2217)
!2266 = !DILocation(line: 822, column: 62, scope: !2217)
!2267 = !DILocation(line: 0, scope: !2242, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 823, column: 15, scope: !2217)
!2269 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2268)
!2270 = !DILocation(line: 824, column: 60, scope: !2217)
!2271 = !DILocation(line: 826, column: 32, scope: !2217)
!2272 = !DILocation(line: 826, column: 47, scope: !2217)
!2273 = !DILocation(line: 824, column: 3, scope: !2217)
!2274 = !DILocation(line: 827, column: 9, scope: !2217)
!2275 = !DILocation(line: 828, column: 7, scope: !2217)
!2276 = !DILocation(line: 829, column: 11, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2217, file: !212, line: 828, column: 7)
!2278 = !{!2279, !2279, i64 0}
!2279 = !{!"long", !1122, i64 0}
!2280 = !DILocation(line: 829, column: 5, scope: !2277)
!2281 = !DILocation(line: 830, column: 3, scope: !2217)
!2282 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2283)
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "sv", scope: !2282, file: !212, line: 850, type: !339)
!2285 = !DILocalVariable(name: "i", scope: !2282, file: !212, line: 851, type: !18)
!2286 = !DILocation(line: 850, column: 24, scope: !2282)
!2287 = !DILocation(line: 0, scope: !2282)
!2288 = !DILocation(line: 852, column: 19, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !212, line: 852, column: 3)
!2290 = distinct !DILexicalBlock(scope: !2282, file: !212, line: 852, column: 3)
!2291 = !DILocation(line: 852, column: 17, scope: !2289)
!2292 = !DILocation(line: 852, column: 3, scope: !2290)
!2293 = !DILocation(line: 853, column: 17, scope: !2289)
!2294 = !{!2295, !1121, i64 8}
!2295 = !{!"slotvec", !2279, i64 0, !1121, i64 8}
!2296 = !DILocation(line: 853, column: 5, scope: !2289)
!2297 = !DILocation(line: 852, column: 28, scope: !2289)
!2298 = distinct !{!2298, !2292, !2299}
!2299 = !DILocation(line: 853, column: 20, scope: !2290)
!2300 = !DILocation(line: 854, column: 13, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2282, file: !212, line: 854, column: 7)
!2302 = !DILocation(line: 854, column: 17, scope: !2301)
!2303 = !DILocation(line: 854, column: 7, scope: !2282)
!2304 = !DILocation(line: 856, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !212, line: 855, column: 5)
!2306 = !DILocation(line: 857, column: 21, scope: !2305)
!2307 = !{!2295, !2279, i64 0}
!2308 = !DILocation(line: 858, column: 20, scope: !2305)
!2309 = !DILocation(line: 859, column: 5, scope: !2305)
!2310 = !DILocation(line: 860, column: 10, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2282, file: !212, line: 860, column: 7)
!2312 = !DILocation(line: 860, column: 7, scope: !2282)
!2313 = !DILocation(line: 862, column: 13, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !212, line: 861, column: 5)
!2315 = !DILocation(line: 862, column: 7, scope: !2314)
!2316 = !DILocation(line: 863, column: 15, scope: !2314)
!2317 = !DILocation(line: 864, column: 5, scope: !2314)
!2318 = !DILocation(line: 865, column: 10, scope: !2282)
!2319 = !DILocation(line: 866, column: 1, scope: !2282)
!2320 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !404, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2321)
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "n", arg: 1, scope: !2320, file: !212, line: 931, type: !18)
!2323 = !DILocalVariable(name: "arg", arg: 2, scope: !2320, file: !212, line: 931, type: !6)
!2324 = !DILocation(line: 0, scope: !2320)
!2325 = !DILocation(line: 933, column: 10, scope: !2320)
!2326 = !DILocation(line: 933, column: 3, scope: !2320)
!2327 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2328, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!25, !18, !6, !69, !258}
!2330 = !{!2331, !2332, !2333, !2334, !2335, !2336, !2337, !2340, !2341, !2343, !2344, !2345}
!2331 = !DILocalVariable(name: "n", arg: 1, scope: !2327, file: !212, line: 877, type: !18)
!2332 = !DILocalVariable(name: "arg", arg: 2, scope: !2327, file: !212, line: 877, type: !6)
!2333 = !DILocalVariable(name: "argsize", arg: 3, scope: !2327, file: !212, line: 877, type: !69)
!2334 = !DILocalVariable(name: "options", arg: 4, scope: !2327, file: !212, line: 878, type: !258)
!2335 = !DILocalVariable(name: "e", scope: !2327, file: !212, line: 880, type: !18)
!2336 = !DILocalVariable(name: "sv", scope: !2327, file: !212, line: 882, type: !339)
!2337 = !DILocalVariable(name: "preallocated", scope: !2338, file: !212, line: 889, type: !92)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !212, line: 888, column: 5)
!2339 = distinct !DILexicalBlock(scope: !2327, file: !212, line: 887, column: 7)
!2340 = !DILocalVariable(name: "nmax", scope: !2338, file: !212, line: 890, type: !18)
!2341 = !DILocalVariable(name: "size", scope: !2342, file: !212, line: 903, type: !69)
!2342 = distinct !DILexicalBlock(scope: !2327, file: !212, line: 902, column: 3)
!2343 = !DILocalVariable(name: "val", scope: !2342, file: !212, line: 904, type: !25)
!2344 = !DILocalVariable(name: "flags", scope: !2342, file: !212, line: 906, type: !18)
!2345 = !DILocalVariable(name: "qsize", scope: !2342, file: !212, line: 907, type: !69)
!2346 = !DILocation(line: 0, scope: !2327)
!2347 = !DILocation(line: 880, column: 11, scope: !2327)
!2348 = !DILocation(line: 882, column: 24, scope: !2327)
!2349 = !DILocation(line: 884, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2327, file: !212, line: 884, column: 7)
!2351 = !DILocation(line: 884, column: 7, scope: !2327)
!2352 = !DILocation(line: 885, column: 5, scope: !2350)
!2353 = !DILocation(line: 887, column: 7, scope: !2339)
!2354 = !DILocation(line: 887, column: 14, scope: !2339)
!2355 = !DILocation(line: 887, column: 7, scope: !2327)
!2356 = !DILocation(line: 889, column: 31, scope: !2338)
!2357 = !DILocation(line: 0, scope: !2338)
!2358 = !DILocation(line: 892, column: 16, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2338, file: !212, line: 892, column: 11)
!2360 = !DILocation(line: 892, column: 11, scope: !2338)
!2361 = !DILocation(line: 893, column: 9, scope: !2359)
!2362 = !DILocation(line: 895, column: 32, scope: !2338)
!2363 = !DILocation(line: 895, column: 61, scope: !2338)
!2364 = !DILocation(line: 895, column: 58, scope: !2338)
!2365 = !DILocation(line: 895, column: 66, scope: !2338)
!2366 = !DILocation(line: 895, column: 22, scope: !2338)
!2367 = !DILocation(line: 895, column: 15, scope: !2338)
!2368 = !DILocation(line: 896, column: 11, scope: !2338)
!2369 = !DILocation(line: 897, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2338, file: !212, line: 896, column: 11)
!2371 = !{i64 0, i64 8, !2278, i64 8, i64 8, !1120}
!2372 = !DILocation(line: 897, column: 9, scope: !2370)
!2373 = !DILocation(line: 898, column: 20, scope: !2338)
!2374 = !DILocation(line: 898, column: 18, scope: !2338)
!2375 = !DILocation(line: 898, column: 15, scope: !2338)
!2376 = !DILocation(line: 898, column: 38, scope: !2338)
!2377 = !DILocation(line: 898, column: 31, scope: !2338)
!2378 = !DILocation(line: 898, column: 48, scope: !2338)
!2379 = !DILocation(line: 0, scope: !1775, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 898, column: 7, scope: !2338)
!2381 = !DILocation(line: 71, column: 10, scope: !1775, inlinedAt: !2380)
!2382 = !DILocation(line: 899, column: 14, scope: !2338)
!2383 = !DILocation(line: 900, column: 5, scope: !2338)
!2384 = !DILocation(line: 903, column: 19, scope: !2342)
!2385 = !DILocation(line: 903, column: 25, scope: !2342)
!2386 = !DILocation(line: 0, scope: !2342)
!2387 = !DILocation(line: 904, column: 23, scope: !2342)
!2388 = !DILocation(line: 906, column: 26, scope: !2342)
!2389 = !DILocation(line: 906, column: 32, scope: !2342)
!2390 = !DILocation(line: 908, column: 55, scope: !2342)
!2391 = !DILocation(line: 909, column: 46, scope: !2342)
!2392 = !DILocation(line: 910, column: 55, scope: !2342)
!2393 = !DILocation(line: 911, column: 55, scope: !2342)
!2394 = !DILocation(line: 907, column: 20, scope: !2342)
!2395 = !DILocation(line: 913, column: 14, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2342, file: !212, line: 913, column: 9)
!2397 = !DILocation(line: 913, column: 9, scope: !2342)
!2398 = !DILocation(line: 915, column: 35, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !212, line: 914, column: 7)
!2400 = !DILocation(line: 915, column: 20, scope: !2399)
!2401 = !DILocation(line: 916, column: 17, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !212, line: 916, column: 13)
!2403 = !DILocation(line: 916, column: 13, scope: !2399)
!2404 = !DILocation(line: 917, column: 11, scope: !2402)
!2405 = !DILocation(line: 0, scope: !2242, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 918, column: 27, scope: !2399)
!2407 = !DILocation(line: 218, column: 10, scope: !2242, inlinedAt: !2406)
!2408 = !DILocation(line: 918, column: 19, scope: !2399)
!2409 = !DILocation(line: 919, column: 69, scope: !2399)
!2410 = !DILocation(line: 921, column: 44, scope: !2399)
!2411 = !DILocation(line: 922, column: 44, scope: !2399)
!2412 = !DILocation(line: 919, column: 9, scope: !2399)
!2413 = !DILocation(line: 923, column: 7, scope: !2399)
!2414 = !DILocation(line: 925, column: 11, scope: !2342)
!2415 = !DILocation(line: 926, column: 5, scope: !2342)
!2416 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2417, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!25, !18, !6, !69}
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "n", arg: 1, scope: !2416, file: !212, line: 937, type: !18)
!2421 = !DILocalVariable(name: "arg", arg: 2, scope: !2416, file: !212, line: 937, type: !6)
!2422 = !DILocalVariable(name: "argsize", arg: 3, scope: !2416, file: !212, line: 937, type: !69)
!2423 = !DILocation(line: 0, scope: !2416)
!2424 = !DILocation(line: 939, column: 10, scope: !2416)
!2425 = !DILocation(line: 939, column: 3, scope: !2416)
!2426 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "arg", arg: 1, scope: !2426, file: !212, line: 943, type: !6)
!2429 = !DILocation(line: 0, scope: !2426)
!2430 = !DILocation(line: 0, scope: !2320, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 945, column: 10, scope: !2426)
!2432 = !DILocation(line: 933, column: 10, scope: !2320, inlinedAt: !2431)
!2433 = !DILocation(line: 945, column: 3, scope: !2426)
!2434 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2435, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!25, !6, !69}
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "arg", arg: 1, scope: !2434, file: !212, line: 949, type: !6)
!2439 = !DILocalVariable(name: "argsize", arg: 2, scope: !2434, file: !212, line: 949, type: !69)
!2440 = !DILocation(line: 0, scope: !2434)
!2441 = !DILocation(line: 0, scope: !2416, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 951, column: 10, scope: !2434)
!2443 = !DILocation(line: 939, column: 10, scope: !2416, inlinedAt: !2442)
!2444 = !DILocation(line: 951, column: 3, scope: !2434)
!2445 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2446, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!25, !18, !214, !6}
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "n", arg: 1, scope: !2445, file: !212, line: 955, type: !18)
!2450 = !DILocalVariable(name: "s", arg: 2, scope: !2445, file: !212, line: 955, type: !214)
!2451 = !DILocalVariable(name: "arg", arg: 3, scope: !2445, file: !212, line: 955, type: !6)
!2452 = !DILocalVariable(name: "o", scope: !2445, file: !212, line: 957, type: !259)
!2453 = !DILocation(line: 0, scope: !2445)
!2454 = !DILocation(line: 957, column: 3, scope: !2445)
!2455 = !DILocation(line: 957, column: 32, scope: !2445)
!2456 = !DILocalVariable(name: "style", arg: 1, scope: !2457, file: !212, line: 193, type: !214)
!2457 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2458, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!260, !214}
!2460 = !{!2456, !2461}
!2461 = !DILocalVariable(name: "o", scope: !2457, file: !212, line: 195, type: !260)
!2462 = !DILocation(line: 0, scope: !2457, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 957, column: 36, scope: !2445)
!2464 = !DILocation(line: 195, column: 26, scope: !2457, inlinedAt: !2463)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 196, column: 13, scope: !2469, inlinedAt: !2463)
!2469 = distinct !DILexicalBlock(scope: !2457, file: !212, line: 196, column: 7)
!2470 = !DILocation(line: 196, column: 7, scope: !2457, inlinedAt: !2463)
!2471 = !DILocation(line: 197, column: 5, scope: !2469, inlinedAt: !2463)
!2472 = !DILocation(line: 198, column: 5, scope: !2457, inlinedAt: !2463)
!2473 = !DILocation(line: 198, column: 11, scope: !2457, inlinedAt: !2463)
!2474 = !DILocation(line: 958, column: 10, scope: !2445)
!2475 = !DILocation(line: 959, column: 1, scope: !2445)
!2476 = !DILocation(line: 958, column: 3, scope: !2445)
!2477 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2478, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!25, !18, !214, !6, !69}
!2480 = !{!2481, !2482, !2483, !2484, !2485}
!2481 = !DILocalVariable(name: "n", arg: 1, scope: !2477, file: !212, line: 962, type: !18)
!2482 = !DILocalVariable(name: "s", arg: 2, scope: !2477, file: !212, line: 962, type: !214)
!2483 = !DILocalVariable(name: "arg", arg: 3, scope: !2477, file: !212, line: 963, type: !6)
!2484 = !DILocalVariable(name: "argsize", arg: 4, scope: !2477, file: !212, line: 963, type: !69)
!2485 = !DILocalVariable(name: "o", scope: !2477, file: !212, line: 965, type: !259)
!2486 = !DILocation(line: 0, scope: !2477)
!2487 = !DILocation(line: 965, column: 3, scope: !2477)
!2488 = !DILocation(line: 965, column: 32, scope: !2477)
!2489 = !DILocation(line: 0, scope: !2457, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 965, column: 36, scope: !2477)
!2491 = !DILocation(line: 195, column: 26, scope: !2457, inlinedAt: !2490)
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"quoting_options_from_style: argument 0"}
!2494 = distinct !{!2494, !"quoting_options_from_style"}
!2495 = !DILocation(line: 196, column: 13, scope: !2469, inlinedAt: !2490)
!2496 = !DILocation(line: 196, column: 7, scope: !2457, inlinedAt: !2490)
!2497 = !DILocation(line: 197, column: 5, scope: !2469, inlinedAt: !2490)
!2498 = !DILocation(line: 198, column: 5, scope: !2457, inlinedAt: !2490)
!2499 = !DILocation(line: 198, column: 11, scope: !2457, inlinedAt: !2490)
!2500 = !DILocation(line: 966, column: 10, scope: !2477)
!2501 = !DILocation(line: 967, column: 1, scope: !2477)
!2502 = !DILocation(line: 966, column: 3, scope: !2477)
!2503 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2504, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!25, !214, !6}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "s", arg: 1, scope: !2503, file: !212, line: 970, type: !214)
!2508 = !DILocalVariable(name: "arg", arg: 2, scope: !2503, file: !212, line: 970, type: !6)
!2509 = !DILocation(line: 195, column: 26, scope: !2457, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 957, column: 36, scope: !2445, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 972, column: 10, scope: !2503)
!2512 = !DILocation(line: 957, column: 32, scope: !2445, inlinedAt: !2511)
!2513 = !DILocation(line: 0, scope: !2503)
!2514 = !DILocation(line: 0, scope: !2445, inlinedAt: !2511)
!2515 = !DILocation(line: 957, column: 3, scope: !2445, inlinedAt: !2511)
!2516 = !DILocation(line: 0, scope: !2457, inlinedAt: !2510)
!2517 = !{!2518}
!2518 = distinct !{!2518, !2519, !"quoting_options_from_style: argument 0"}
!2519 = distinct !{!2519, !"quoting_options_from_style"}
!2520 = !DILocation(line: 196, column: 13, scope: !2469, inlinedAt: !2510)
!2521 = !DILocation(line: 196, column: 7, scope: !2457, inlinedAt: !2510)
!2522 = !DILocation(line: 197, column: 5, scope: !2469, inlinedAt: !2510)
!2523 = !DILocation(line: 198, column: 5, scope: !2457, inlinedAt: !2510)
!2524 = !DILocation(line: 198, column: 11, scope: !2457, inlinedAt: !2510)
!2525 = !DILocation(line: 958, column: 10, scope: !2445, inlinedAt: !2511)
!2526 = !DILocation(line: 959, column: 1, scope: !2445, inlinedAt: !2511)
!2527 = !DILocation(line: 972, column: 3, scope: !2503)
!2528 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2529, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!25, !214, !6, !69}
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "s", arg: 1, scope: !2528, file: !212, line: 976, type: !214)
!2533 = !DILocalVariable(name: "arg", arg: 2, scope: !2528, file: !212, line: 976, type: !6)
!2534 = !DILocalVariable(name: "argsize", arg: 3, scope: !2528, file: !212, line: 976, type: !69)
!2535 = !DILocation(line: 195, column: 26, scope: !2457, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 965, column: 36, scope: !2477, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 978, column: 10, scope: !2528)
!2538 = !DILocation(line: 965, column: 32, scope: !2477, inlinedAt: !2537)
!2539 = !DILocation(line: 0, scope: !2528)
!2540 = !DILocation(line: 0, scope: !2477, inlinedAt: !2537)
!2541 = !DILocation(line: 965, column: 3, scope: !2477, inlinedAt: !2537)
!2542 = !DILocation(line: 0, scope: !2457, inlinedAt: !2536)
!2543 = !{!2544}
!2544 = distinct !{!2544, !2545, !"quoting_options_from_style: argument 0"}
!2545 = distinct !{!2545, !"quoting_options_from_style"}
!2546 = !DILocation(line: 196, column: 13, scope: !2469, inlinedAt: !2536)
!2547 = !DILocation(line: 196, column: 7, scope: !2457, inlinedAt: !2536)
!2548 = !DILocation(line: 197, column: 5, scope: !2469, inlinedAt: !2536)
!2549 = !DILocation(line: 198, column: 5, scope: !2457, inlinedAt: !2536)
!2550 = !DILocation(line: 198, column: 11, scope: !2457, inlinedAt: !2536)
!2551 = !DILocation(line: 966, column: 10, scope: !2477, inlinedAt: !2537)
!2552 = !DILocation(line: 967, column: 1, scope: !2477, inlinedAt: !2537)
!2553 = !DILocation(line: 978, column: 3, scope: !2528)
!2554 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2555, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!25, !6, !69, !8}
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !212, line: 982, type: !6)
!2559 = !DILocalVariable(name: "argsize", arg: 2, scope: !2554, file: !212, line: 982, type: !69)
!2560 = !DILocalVariable(name: "ch", arg: 3, scope: !2554, file: !212, line: 982, type: !8)
!2561 = !DILocalVariable(name: "options", scope: !2554, file: !212, line: 984, type: !260)
!2562 = !DILocation(line: 0, scope: !2554)
!2563 = !DILocation(line: 984, column: 3, scope: !2554)
!2564 = !DILocation(line: 984, column: 26, scope: !2554)
!2565 = !DILocation(line: 985, column: 13, scope: !2554)
!2566 = !{i64 0, i64 4, !1573, i64 4, i64 4, !1176, i64 8, i64 32, !1573, i64 40, i64 8, !1120, i64 48, i64 8, !1120}
!2567 = !DILocation(line: 0, scope: !1386, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 986, column: 3, scope: !2554)
!2569 = !DILocation(line: 156, column: 62, scope: !1386, inlinedAt: !2568)
!2570 = !DILocation(line: 156, column: 57, scope: !1386, inlinedAt: !2568)
!2571 = !DILocation(line: 157, column: 15, scope: !1386, inlinedAt: !2568)
!2572 = !DILocation(line: 158, column: 12, scope: !1386, inlinedAt: !2568)
!2573 = !DILocation(line: 158, column: 15, scope: !1386, inlinedAt: !2568)
!2574 = !DILocation(line: 158, column: 25, scope: !1386, inlinedAt: !2568)
!2575 = !DILocation(line: 159, column: 18, scope: !1386, inlinedAt: !2568)
!2576 = !DILocation(line: 159, column: 23, scope: !1386, inlinedAt: !2568)
!2577 = !DILocation(line: 159, column: 6, scope: !1386, inlinedAt: !2568)
!2578 = !DILocation(line: 987, column: 10, scope: !2554)
!2579 = !DILocation(line: 988, column: 1, scope: !2554)
!2580 = !DILocation(line: 987, column: 3, scope: !2554)
!2581 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2582, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!25, !6, !8}
!2584 = !{!2585, !2586}
!2585 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !212, line: 991, type: !6)
!2586 = !DILocalVariable(name: "ch", arg: 2, scope: !2581, file: !212, line: 991, type: !8)
!2587 = !DILocation(line: 984, column: 26, scope: !2554, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 993, column: 10, scope: !2581)
!2589 = !DILocation(line: 0, scope: !2581)
!2590 = !DILocation(line: 0, scope: !2554, inlinedAt: !2588)
!2591 = !DILocation(line: 984, column: 3, scope: !2554, inlinedAt: !2588)
!2592 = !DILocation(line: 985, column: 13, scope: !2554, inlinedAt: !2588)
!2593 = !DILocation(line: 0, scope: !1386, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 986, column: 3, scope: !2554, inlinedAt: !2588)
!2595 = !DILocation(line: 156, column: 62, scope: !1386, inlinedAt: !2594)
!2596 = !DILocation(line: 156, column: 57, scope: !1386, inlinedAt: !2594)
!2597 = !DILocation(line: 157, column: 15, scope: !1386, inlinedAt: !2594)
!2598 = !DILocation(line: 158, column: 12, scope: !1386, inlinedAt: !2594)
!2599 = !DILocation(line: 158, column: 15, scope: !1386, inlinedAt: !2594)
!2600 = !DILocation(line: 158, column: 25, scope: !1386, inlinedAt: !2594)
!2601 = !DILocation(line: 159, column: 18, scope: !1386, inlinedAt: !2594)
!2602 = !DILocation(line: 159, column: 23, scope: !1386, inlinedAt: !2594)
!2603 = !DILocation(line: 159, column: 6, scope: !1386, inlinedAt: !2594)
!2604 = !DILocation(line: 987, column: 10, scope: !2554, inlinedAt: !2588)
!2605 = !DILocation(line: 988, column: 1, scope: !2554, inlinedAt: !2588)
!2606 = !DILocation(line: 993, column: 3, scope: !2581)
!2607 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2608)
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "arg", arg: 1, scope: !2607, file: !212, line: 997, type: !6)
!2610 = !DILocation(line: 984, column: 26, scope: !2554, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 993, column: 10, scope: !2581, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 999, column: 10, scope: !2607)
!2613 = !DILocation(line: 0, scope: !2607)
!2614 = !DILocation(line: 0, scope: !2581, inlinedAt: !2612)
!2615 = !DILocation(line: 0, scope: !2554, inlinedAt: !2611)
!2616 = !DILocation(line: 984, column: 3, scope: !2554, inlinedAt: !2611)
!2617 = !DILocation(line: 985, column: 13, scope: !2554, inlinedAt: !2611)
!2618 = !DILocation(line: 0, scope: !1386, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 986, column: 3, scope: !2554, inlinedAt: !2611)
!2620 = !DILocation(line: 156, column: 57, scope: !1386, inlinedAt: !2619)
!2621 = !DILocation(line: 158, column: 12, scope: !1386, inlinedAt: !2619)
!2622 = !DILocation(line: 159, column: 6, scope: !1386, inlinedAt: !2619)
!2623 = !DILocation(line: 987, column: 10, scope: !2554, inlinedAt: !2611)
!2624 = !DILocation(line: 988, column: 1, scope: !2554, inlinedAt: !2611)
!2625 = !DILocation(line: 999, column: 3, scope: !2607)
!2626 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2435, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2627)
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !212, line: 1003, type: !6)
!2629 = !DILocalVariable(name: "argsize", arg: 2, scope: !2626, file: !212, line: 1003, type: !69)
!2630 = !DILocation(line: 984, column: 26, scope: !2554, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 1005, column: 10, scope: !2626)
!2632 = !DILocation(line: 0, scope: !2626)
!2633 = !DILocation(line: 0, scope: !2554, inlinedAt: !2631)
!2634 = !DILocation(line: 984, column: 3, scope: !2554, inlinedAt: !2631)
!2635 = !DILocation(line: 985, column: 13, scope: !2554, inlinedAt: !2631)
!2636 = !DILocation(line: 0, scope: !1386, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 986, column: 3, scope: !2554, inlinedAt: !2631)
!2638 = !DILocation(line: 156, column: 57, scope: !1386, inlinedAt: !2637)
!2639 = !DILocation(line: 158, column: 12, scope: !1386, inlinedAt: !2637)
!2640 = !DILocation(line: 159, column: 6, scope: !1386, inlinedAt: !2637)
!2641 = !DILocation(line: 987, column: 10, scope: !2554, inlinedAt: !2631)
!2642 = !DILocation(line: 988, column: 1, scope: !2554, inlinedAt: !2631)
!2643 = !DILocation(line: 1005, column: 3, scope: !2626)
!2644 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2446, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2645)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !212, line: 1009, type: !18)
!2647 = !DILocalVariable(name: "s", arg: 2, scope: !2644, file: !212, line: 1009, type: !214)
!2648 = !DILocalVariable(name: "arg", arg: 3, scope: !2644, file: !212, line: 1009, type: !6)
!2649 = !DILocalVariable(name: "options", scope: !2644, file: !212, line: 1011, type: !260)
!2650 = !DILocation(line: 195, column: 26, scope: !2457, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1012, column: 13, scope: !2644)
!2652 = !DILocation(line: 0, scope: !2644)
!2653 = !DILocation(line: 1011, column: 3, scope: !2644)
!2654 = !DILocation(line: 1011, column: 26, scope: !2644)
!2655 = !DILocation(line: 1012, column: 13, scope: !2644)
!2656 = !DILocation(line: 0, scope: !2457, inlinedAt: !2651)
!2657 = !{!2658}
!2658 = distinct !{!2658, !2659, !"quoting_options_from_style: argument 0"}
!2659 = distinct !{!2659, !"quoting_options_from_style"}
!2660 = !DILocation(line: 196, column: 13, scope: !2469, inlinedAt: !2651)
!2661 = !DILocation(line: 196, column: 7, scope: !2457, inlinedAt: !2651)
!2662 = !DILocation(line: 197, column: 5, scope: !2469, inlinedAt: !2651)
!2663 = !DILocation(line: 0, scope: !1386, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1013, column: 3, scope: !2644)
!2665 = !DILocation(line: 156, column: 57, scope: !1386, inlinedAt: !2664)
!2666 = !DILocation(line: 158, column: 12, scope: !1386, inlinedAt: !2664)
!2667 = !DILocation(line: 159, column: 6, scope: !1386, inlinedAt: !2664)
!2668 = !DILocation(line: 1014, column: 10, scope: !2644)
!2669 = !DILocation(line: 1015, column: 1, scope: !2644)
!2670 = !DILocation(line: 1014, column: 3, scope: !2644)
!2671 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2672, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!25, !18, !6, !6, !6}
!2674 = !{!2675, !2676, !2677, !2678}
!2675 = !DILocalVariable(name: "n", arg: 1, scope: !2671, file: !212, line: 1018, type: !18)
!2676 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2671, file: !212, line: 1018, type: !6)
!2677 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2671, file: !212, line: 1019, type: !6)
!2678 = !DILocalVariable(name: "arg", arg: 4, scope: !2671, file: !212, line: 1019, type: !6)
!2679 = !DILocalVariable(name: "o", scope: !2680, file: !212, line: 1030, type: !260)
!2680 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2681, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!25, !18, !6, !6, !6, !69}
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2679}
!2684 = !DILocalVariable(name: "n", arg: 1, scope: !2680, file: !212, line: 1026, type: !18)
!2685 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2680, file: !212, line: 1026, type: !6)
!2686 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2680, file: !212, line: 1027, type: !6)
!2687 = !DILocalVariable(name: "arg", arg: 4, scope: !2680, file: !212, line: 1028, type: !6)
!2688 = !DILocalVariable(name: "argsize", arg: 5, scope: !2680, file: !212, line: 1028, type: !69)
!2689 = !DILocation(line: 1030, column: 26, scope: !2680, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1021, column: 10, scope: !2671)
!2691 = !DILocation(line: 0, scope: !2671)
!2692 = !DILocation(line: 0, scope: !2680, inlinedAt: !2690)
!2693 = !DILocation(line: 1030, column: 3, scope: !2680, inlinedAt: !2690)
!2694 = !DILocation(line: 1030, column: 30, scope: !2680, inlinedAt: !2690)
!2695 = !DILocation(line: 0, scope: !1427, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1031, column: 3, scope: !2680, inlinedAt: !2690)
!2697 = !DILocation(line: 184, column: 6, scope: !1427, inlinedAt: !2696)
!2698 = !DILocation(line: 184, column: 12, scope: !1427, inlinedAt: !2696)
!2699 = !DILocation(line: 185, column: 8, scope: !1441, inlinedAt: !2696)
!2700 = !DILocation(line: 185, column: 23, scope: !1441, inlinedAt: !2696)
!2701 = !DILocation(line: 185, column: 19, scope: !1441, inlinedAt: !2696)
!2702 = !DILocation(line: 186, column: 5, scope: !1441, inlinedAt: !2696)
!2703 = !DILocation(line: 187, column: 6, scope: !1427, inlinedAt: !2696)
!2704 = !DILocation(line: 187, column: 17, scope: !1427, inlinedAt: !2696)
!2705 = !DILocation(line: 188, column: 6, scope: !1427, inlinedAt: !2696)
!2706 = !DILocation(line: 188, column: 18, scope: !1427, inlinedAt: !2696)
!2707 = !DILocation(line: 1032, column: 10, scope: !2680, inlinedAt: !2690)
!2708 = !DILocation(line: 1033, column: 1, scope: !2680, inlinedAt: !2690)
!2709 = !DILocation(line: 1021, column: 3, scope: !2671)
!2710 = !DILocation(line: 0, scope: !2680)
!2711 = !DILocation(line: 1030, column: 3, scope: !2680)
!2712 = !DILocation(line: 1030, column: 26, scope: !2680)
!2713 = !DILocation(line: 1030, column: 30, scope: !2680)
!2714 = !DILocation(line: 0, scope: !1427, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1031, column: 3, scope: !2680)
!2716 = !DILocation(line: 184, column: 6, scope: !1427, inlinedAt: !2715)
!2717 = !DILocation(line: 184, column: 12, scope: !1427, inlinedAt: !2715)
!2718 = !DILocation(line: 185, column: 8, scope: !1441, inlinedAt: !2715)
!2719 = !DILocation(line: 185, column: 23, scope: !1441, inlinedAt: !2715)
!2720 = !DILocation(line: 185, column: 19, scope: !1441, inlinedAt: !2715)
!2721 = !DILocation(line: 186, column: 5, scope: !1441, inlinedAt: !2715)
!2722 = !DILocation(line: 187, column: 6, scope: !1427, inlinedAt: !2715)
!2723 = !DILocation(line: 187, column: 17, scope: !1427, inlinedAt: !2715)
!2724 = !DILocation(line: 188, column: 6, scope: !1427, inlinedAt: !2715)
!2725 = !DILocation(line: 188, column: 18, scope: !1427, inlinedAt: !2715)
!2726 = !DILocation(line: 1032, column: 10, scope: !2680)
!2727 = !DILocation(line: 1033, column: 1, scope: !2680)
!2728 = !DILocation(line: 1032, column: 3, scope: !2680)
!2729 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2730, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!25, !6, !6, !6}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2729, file: !212, line: 1036, type: !6)
!2734 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2729, file: !212, line: 1036, type: !6)
!2735 = !DILocalVariable(name: "arg", arg: 3, scope: !2729, file: !212, line: 1037, type: !6)
!2736 = !DILocation(line: 1030, column: 26, scope: !2680, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1021, column: 10, scope: !2671, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1039, column: 10, scope: !2729)
!2739 = !DILocation(line: 0, scope: !2729)
!2740 = !DILocation(line: 0, scope: !2671, inlinedAt: !2738)
!2741 = !DILocation(line: 0, scope: !2680, inlinedAt: !2737)
!2742 = !DILocation(line: 1030, column: 3, scope: !2680, inlinedAt: !2737)
!2743 = !DILocation(line: 1030, column: 30, scope: !2680, inlinedAt: !2737)
!2744 = !DILocation(line: 0, scope: !1427, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1031, column: 3, scope: !2680, inlinedAt: !2737)
!2746 = !DILocation(line: 184, column: 6, scope: !1427, inlinedAt: !2745)
!2747 = !DILocation(line: 184, column: 12, scope: !1427, inlinedAt: !2745)
!2748 = !DILocation(line: 185, column: 8, scope: !1441, inlinedAt: !2745)
!2749 = !DILocation(line: 185, column: 23, scope: !1441, inlinedAt: !2745)
!2750 = !DILocation(line: 185, column: 19, scope: !1441, inlinedAt: !2745)
!2751 = !DILocation(line: 186, column: 5, scope: !1441, inlinedAt: !2745)
!2752 = !DILocation(line: 187, column: 6, scope: !1427, inlinedAt: !2745)
!2753 = !DILocation(line: 187, column: 17, scope: !1427, inlinedAt: !2745)
!2754 = !DILocation(line: 188, column: 6, scope: !1427, inlinedAt: !2745)
!2755 = !DILocation(line: 188, column: 18, scope: !1427, inlinedAt: !2745)
!2756 = !DILocation(line: 1032, column: 10, scope: !2680, inlinedAt: !2737)
!2757 = !DILocation(line: 1033, column: 1, scope: !2680, inlinedAt: !2737)
!2758 = !DILocation(line: 1039, column: 3, scope: !2729)
!2759 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2760, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!25, !6, !6, !6, !69}
!2762 = !{!2763, !2764, !2765, !2766}
!2763 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2759, file: !212, line: 1043, type: !6)
!2764 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2759, file: !212, line: 1043, type: !6)
!2765 = !DILocalVariable(name: "arg", arg: 3, scope: !2759, file: !212, line: 1044, type: !6)
!2766 = !DILocalVariable(name: "argsize", arg: 4, scope: !2759, file: !212, line: 1044, type: !69)
!2767 = !DILocation(line: 1030, column: 26, scope: !2680, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1046, column: 10, scope: !2759)
!2769 = !DILocation(line: 0, scope: !2759)
!2770 = !DILocation(line: 0, scope: !2680, inlinedAt: !2768)
!2771 = !DILocation(line: 1030, column: 3, scope: !2680, inlinedAt: !2768)
!2772 = !DILocation(line: 1030, column: 30, scope: !2680, inlinedAt: !2768)
!2773 = !DILocation(line: 0, scope: !1427, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1031, column: 3, scope: !2680, inlinedAt: !2768)
!2775 = !DILocation(line: 184, column: 6, scope: !1427, inlinedAt: !2774)
!2776 = !DILocation(line: 184, column: 12, scope: !1427, inlinedAt: !2774)
!2777 = !DILocation(line: 185, column: 8, scope: !1441, inlinedAt: !2774)
!2778 = !DILocation(line: 185, column: 23, scope: !1441, inlinedAt: !2774)
!2779 = !DILocation(line: 185, column: 19, scope: !1441, inlinedAt: !2774)
!2780 = !DILocation(line: 186, column: 5, scope: !1441, inlinedAt: !2774)
!2781 = !DILocation(line: 187, column: 6, scope: !1427, inlinedAt: !2774)
!2782 = !DILocation(line: 187, column: 17, scope: !1427, inlinedAt: !2774)
!2783 = !DILocation(line: 188, column: 6, scope: !1427, inlinedAt: !2774)
!2784 = !DILocation(line: 188, column: 18, scope: !1427, inlinedAt: !2774)
!2785 = !DILocation(line: 1032, column: 10, scope: !2680, inlinedAt: !2768)
!2786 = !DILocation(line: 1033, column: 1, scope: !2680, inlinedAt: !2768)
!2787 = !DILocation(line: 1046, column: 3, scope: !2759)
!2788 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2789, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!6, !18, !6, !69}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !212, line: 1061, type: !18)
!2793 = !DILocalVariable(name: "arg", arg: 2, scope: !2788, file: !212, line: 1061, type: !6)
!2794 = !DILocalVariable(name: "argsize", arg: 3, scope: !2788, file: !212, line: 1061, type: !69)
!2795 = !DILocation(line: 0, scope: !2788)
!2796 = !DILocation(line: 1063, column: 10, scope: !2788)
!2797 = !DILocation(line: 1063, column: 3, scope: !2788)
!2798 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2799, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!6, !6, !69}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "arg", arg: 1, scope: !2798, file: !212, line: 1067, type: !6)
!2803 = !DILocalVariable(name: "argsize", arg: 2, scope: !2798, file: !212, line: 1067, type: !69)
!2804 = !DILocation(line: 0, scope: !2798)
!2805 = !DILocation(line: 0, scope: !2788, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1069, column: 10, scope: !2798)
!2807 = !DILocation(line: 1063, column: 10, scope: !2788, inlinedAt: !2806)
!2808 = !DILocation(line: 1069, column: 3, scope: !2798)
!2809 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2810, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!6, !18, !6}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !212, line: 1073, type: !18)
!2814 = !DILocalVariable(name: "arg", arg: 2, scope: !2809, file: !212, line: 1073, type: !6)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 0, scope: !2788, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1075, column: 10, scope: !2809)
!2818 = !DILocation(line: 1063, column: 10, scope: !2788, inlinedAt: !2817)
!2819 = !DILocation(line: 1075, column: 3, scope: !2809)
!2820 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !424, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2821)
!2821 = !{!2822}
!2822 = !DILocalVariable(name: "arg", arg: 1, scope: !2820, file: !212, line: 1079, type: !6)
!2823 = !DILocation(line: 0, scope: !2820)
!2824 = !DILocation(line: 0, scope: !2809, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1081, column: 10, scope: !2820)
!2826 = !DILocation(line: 0, scope: !2788, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 1075, column: 10, scope: !2809, inlinedAt: !2825)
!2828 = !DILocation(line: 1063, column: 10, scope: !2788, inlinedAt: !2827)
!2829 = !DILocation(line: 1081, column: 3, scope: !2820)
!2830 = distinct !DISubprogram(name: "version_etc_arn", scope: !431, file: !431, line: 61, type: !2831, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2837)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2833, !6, !6, !6, !2836, !69}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2835, line: 7, baseType: !441)
!2835 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843}
!2838 = !DILocalVariable(name: "stream", arg: 1, scope: !2830, file: !431, line: 61, type: !2833)
!2839 = !DILocalVariable(name: "command_name", arg: 2, scope: !2830, file: !431, line: 62, type: !6)
!2840 = !DILocalVariable(name: "package", arg: 3, scope: !2830, file: !431, line: 62, type: !6)
!2841 = !DILocalVariable(name: "version", arg: 4, scope: !2830, file: !431, line: 63, type: !6)
!2842 = !DILocalVariable(name: "authors", arg: 5, scope: !2830, file: !431, line: 64, type: !2836)
!2843 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2830, file: !431, line: 64, type: !69)
!2844 = !DILocation(line: 0, scope: !2830)
!2845 = !DILocation(line: 66, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2830, file: !431, line: 66, column: 7)
!2847 = !DILocation(line: 66, column: 7, scope: !2830)
!2848 = !DILocation(line: 67, column: 5, scope: !2846)
!2849 = !DILocation(line: 69, column: 5, scope: !2846)
!2850 = !DILocation(line: 83, column: 3, scope: !2830)
!2851 = !DILocation(line: 85, column: 3, scope: !2830)
!2852 = !DILocation(line: 88, column: 3, scope: !2830)
!2853 = !DILocation(line: 95, column: 3, scope: !2830)
!2854 = !DILocation(line: 97, column: 3, scope: !2830)
!2855 = !DILocation(line: 105, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2830, file: !431, line: 98, column: 5)
!2857 = !DILocation(line: 106, column: 7, scope: !2856)
!2858 = !DILocation(line: 109, column: 7, scope: !2856)
!2859 = !DILocation(line: 110, column: 7, scope: !2856)
!2860 = !DILocation(line: 113, column: 7, scope: !2856)
!2861 = !DILocation(line: 115, column: 7, scope: !2856)
!2862 = !DILocation(line: 120, column: 7, scope: !2856)
!2863 = !DILocation(line: 122, column: 7, scope: !2856)
!2864 = !DILocation(line: 127, column: 7, scope: !2856)
!2865 = !DILocation(line: 129, column: 7, scope: !2856)
!2866 = !DILocation(line: 134, column: 7, scope: !2856)
!2867 = !DILocation(line: 137, column: 7, scope: !2856)
!2868 = !DILocation(line: 142, column: 7, scope: !2856)
!2869 = !DILocation(line: 145, column: 7, scope: !2856)
!2870 = !DILocation(line: 150, column: 7, scope: !2856)
!2871 = !DILocation(line: 154, column: 7, scope: !2856)
!2872 = !DILocation(line: 159, column: 7, scope: !2856)
!2873 = !DILocation(line: 163, column: 7, scope: !2856)
!2874 = !DILocation(line: 170, column: 7, scope: !2856)
!2875 = !DILocation(line: 174, column: 7, scope: !2856)
!2876 = !DILocation(line: 176, column: 1, scope: !2830)
!2877 = distinct !DISubprogram(name: "version_etc_ar", scope: !431, file: !431, line: 183, type: !2878, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2833, !6, !6, !6, !2836}
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886}
!2881 = !DILocalVariable(name: "stream", arg: 1, scope: !2877, file: !431, line: 183, type: !2833)
!2882 = !DILocalVariable(name: "command_name", arg: 2, scope: !2877, file: !431, line: 184, type: !6)
!2883 = !DILocalVariable(name: "package", arg: 3, scope: !2877, file: !431, line: 184, type: !6)
!2884 = !DILocalVariable(name: "version", arg: 4, scope: !2877, file: !431, line: 185, type: !6)
!2885 = !DILocalVariable(name: "authors", arg: 5, scope: !2877, file: !431, line: 185, type: !2836)
!2886 = !DILocalVariable(name: "n_authors", scope: !2877, file: !431, line: 187, type: !69)
!2887 = !DILocation(line: 0, scope: !2877)
!2888 = !DILocation(line: 189, column: 8, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2877, file: !431, line: 189, column: 3)
!2890 = !DILocation(line: 0, scope: !2889)
!2891 = !DILocation(line: 189, column: 23, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !431, line: 189, column: 3)
!2893 = !DILocation(line: 189, column: 3, scope: !2889)
!2894 = !DILocation(line: 189, column: 52, scope: !2892)
!2895 = distinct !{!2895, !2893, !2896}
!2896 = !DILocation(line: 190, column: 5, scope: !2889)
!2897 = !DILocation(line: 191, column: 3, scope: !2877)
!2898 = !DILocation(line: 192, column: 1, scope: !2877)
!2899 = distinct !DISubprogram(name: "version_etc_va", scope: !431, file: !431, line: 199, type: !2900, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2909)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !2833, !6, !6, !6, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !431, line: 192, size: 192, elements: !2904)
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2903, file: !431, line: 192, baseType: !159, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2903, file: !431, line: 192, baseType: !159, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2903, file: !431, line: 192, baseType: !67, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2903, file: !431, line: 192, baseType: !67, size: 64, offset: 128)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915, !2916}
!2910 = !DILocalVariable(name: "stream", arg: 1, scope: !2899, file: !431, line: 199, type: !2833)
!2911 = !DILocalVariable(name: "command_name", arg: 2, scope: !2899, file: !431, line: 200, type: !6)
!2912 = !DILocalVariable(name: "package", arg: 3, scope: !2899, file: !431, line: 200, type: !6)
!2913 = !DILocalVariable(name: "version", arg: 4, scope: !2899, file: !431, line: 201, type: !6)
!2914 = !DILocalVariable(name: "authors", arg: 5, scope: !2899, file: !431, line: 201, type: !2902)
!2915 = !DILocalVariable(name: "n_authors", scope: !2899, file: !431, line: 203, type: !69)
!2916 = !DILocalVariable(name: "authtab", scope: !2899, file: !431, line: 204, type: !2917)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!2918 = !DILocation(line: 0, scope: !2899)
!2919 = !DILocation(line: 204, column: 3, scope: !2899)
!2920 = !DILocation(line: 204, column: 15, scope: !2899)
!2921 = !DILocation(line: 0, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !431, line: 206, column: 3)
!2923 = distinct !DILexicalBlock(scope: !2899, file: !431, line: 206, column: 3)
!2924 = !DILocation(line: 208, column: 35, scope: !2922)
!2925 = !DILocation(line: 208, column: 14, scope: !2922)
!2926 = !DILocation(line: 208, column: 33, scope: !2922)
!2927 = !DILocation(line: 208, column: 67, scope: !2922)
!2928 = !DILocation(line: 206, column: 3, scope: !2923)
!2929 = !DILocation(line: 0, scope: !2923)
!2930 = !DILocation(line: 211, column: 3, scope: !2899)
!2931 = !DILocation(line: 213, column: 1, scope: !2899)
!2932 = distinct !DISubprogram(name: "version_etc", scope: !431, file: !431, line: 230, type: !2933, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{null, !2833, !6, !6, !6, null}
!2935 = !{!2936, !2937, !2938, !2939, !2940}
!2936 = !DILocalVariable(name: "stream", arg: 1, scope: !2932, file: !431, line: 230, type: !2833)
!2937 = !DILocalVariable(name: "command_name", arg: 2, scope: !2932, file: !431, line: 231, type: !6)
!2938 = !DILocalVariable(name: "package", arg: 3, scope: !2932, file: !431, line: 231, type: !6)
!2939 = !DILocalVariable(name: "version", arg: 4, scope: !2932, file: !431, line: 232, type: !6)
!2940 = !DILocalVariable(name: "authors", scope: !2932, file: !431, line: 234, type: !2941)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !2942)
!2942 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1259, line: 32, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !431, line: 234, baseType: !2944)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2903, size: 192, elements: !52)
!2945 = !DILocation(line: 0, scope: !2932)
!2946 = !DILocation(line: 234, column: 3, scope: !2932)
!2947 = !DILocation(line: 234, column: 11, scope: !2932)
!2948 = !DILocation(line: 236, column: 3, scope: !2932)
!2949 = !DILocation(line: 237, column: 3, scope: !2932)
!2950 = !DILocation(line: 238, column: 3, scope: !2932)
!2951 = !DILocation(line: 239, column: 1, scope: !2932)
!2952 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !431, file: !431, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !430, retainedNodes: !4)
!2953 = !DILocation(line: 244, column: 3, scope: !2952)
!2954 = !DILocation(line: 249, column: 3, scope: !2952)
!2955 = !DILocation(line: 255, column: 3, scope: !2952)
!2956 = !DILocation(line: 260, column: 3, scope: !2952)
!2957 = !DILocation(line: 262, column: 1, scope: !2952)
!2958 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !2959, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!67, !69, !69}
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !249, line: 99, type: !69)
!2963 = !DILocalVariable(name: "s", arg: 2, scope: !2958, file: !249, line: 99, type: !69)
!2964 = !DILocation(line: 0, scope: !2958)
!2965 = !DILocation(line: 101, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !249, line: 101, column: 7)
!2967 = !DILocation(line: 101, column: 7, scope: !2958)
!2968 = !DILocation(line: 102, column: 5, scope: !2966)
!2969 = !DILocation(line: 103, column: 21, scope: !2958)
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !473, line: 39, type: !69)
!2971 = distinct !DISubprogram(name: "xmalloc", scope: !473, file: !473, line: 39, type: !2972, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!67, !69}
!2974 = !{!2970, !2975}
!2975 = !DILocalVariable(name: "p", scope: !2971, file: !473, line: 41, type: !67)
!2976 = !DILocation(line: 0, scope: !2971, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 103, column: 10, scope: !2958)
!2978 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !2977)
!2979 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !2977)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !473, line: 42, column: 7)
!2981 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !2977)
!2982 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !2977)
!2983 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !2977)
!2984 = !DILocation(line: 103, column: 3, scope: !2958)
!2985 = !DILocation(line: 0, scope: !2971)
!2986 = !DILocation(line: 41, column: 13, scope: !2971)
!2987 = !DILocation(line: 42, column: 8, scope: !2980)
!2988 = !DILocation(line: 42, column: 15, scope: !2980)
!2989 = !DILocation(line: 42, column: 10, scope: !2980)
!2990 = !DILocation(line: 43, column: 5, scope: !2980)
!2991 = !DILocation(line: 44, column: 3, scope: !2971)
!2992 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !2993, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!67, !67, !69, !69}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "p", arg: 1, scope: !2992, file: !249, line: 112, type: !67)
!2997 = !DILocalVariable(name: "n", arg: 2, scope: !2992, file: !249, line: 112, type: !69)
!2998 = !DILocalVariable(name: "s", arg: 3, scope: !2992, file: !249, line: 112, type: !69)
!2999 = !DILocation(line: 0, scope: !2992)
!3000 = !DILocation(line: 114, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2992, file: !249, line: 114, column: 7)
!3002 = !DILocation(line: 114, column: 7, scope: !2992)
!3003 = !DILocation(line: 115, column: 5, scope: !3001)
!3004 = !DILocation(line: 116, column: 25, scope: !2992)
!3005 = !DILocalVariable(name: "p", arg: 1, scope: !3006, file: !473, line: 51, type: !67)
!3006 = distinct !DISubprogram(name: "xrealloc", scope: !473, file: !473, line: 51, type: !3007, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!67, !67, !69}
!3009 = !{!3005, !3010}
!3010 = !DILocalVariable(name: "n", arg: 2, scope: !3006, file: !473, line: 51, type: !69)
!3011 = !DILocation(line: 0, scope: !3006, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 116, column: 10, scope: !2992)
!3013 = !DILocation(line: 53, column: 8, scope: !3014, inlinedAt: !3012)
!3014 = distinct !DILexicalBlock(scope: !3006, file: !473, line: 53, column: 7)
!3015 = !DILocation(line: 53, column: 13, scope: !3014, inlinedAt: !3012)
!3016 = !DILocation(line: 53, column: 10, scope: !3014, inlinedAt: !3012)
!3017 = !DILocation(line: 57, column: 7, scope: !3018, inlinedAt: !3012)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !473, line: 54, column: 5)
!3019 = !DILocation(line: 58, column: 7, scope: !3018, inlinedAt: !3012)
!3020 = !DILocation(line: 61, column: 7, scope: !3006, inlinedAt: !3012)
!3021 = !DILocation(line: 62, column: 8, scope: !3022, inlinedAt: !3012)
!3022 = distinct !DILexicalBlock(scope: !3006, file: !473, line: 62, column: 7)
!3023 = !DILocation(line: 62, column: 13, scope: !3022, inlinedAt: !3012)
!3024 = !DILocation(line: 62, column: 10, scope: !3022, inlinedAt: !3012)
!3025 = !DILocation(line: 63, column: 5, scope: !3022, inlinedAt: !3012)
!3026 = !DILocation(line: 116, column: 3, scope: !2992)
!3027 = !DILocation(line: 0, scope: !3006)
!3028 = !DILocation(line: 53, column: 8, scope: !3014)
!3029 = !DILocation(line: 53, column: 13, scope: !3014)
!3030 = !DILocation(line: 53, column: 10, scope: !3014)
!3031 = !DILocation(line: 57, column: 7, scope: !3018)
!3032 = !DILocation(line: 58, column: 7, scope: !3018)
!3033 = !DILocation(line: 61, column: 7, scope: !3006)
!3034 = !DILocation(line: 62, column: 8, scope: !3022)
!3035 = !DILocation(line: 62, column: 13, scope: !3022)
!3036 = !DILocation(line: 62, column: 10, scope: !3022)
!3037 = !DILocation(line: 63, column: 5, scope: !3022)
!3038 = !DILocation(line: 65, column: 1, scope: !3006)
!3039 = !DILocation(line: 0, scope: !476)
!3040 = !DILocation(line: 176, column: 14, scope: !476)
!3041 = !DILocation(line: 178, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !476, file: !249, line: 178, column: 7)
!3043 = !DILocation(line: 178, column: 7, scope: !476)
!3044 = !DILocation(line: 180, column: 13, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !249, line: 180, column: 11)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !249, line: 179, column: 5)
!3047 = !DILocation(line: 180, column: 11, scope: !3046)
!3048 = !DILocation(line: 188, column: 30, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !249, line: 181, column: 9)
!3050 = !DILocation(line: 189, column: 16, scope: !3049)
!3051 = !DILocation(line: 189, column: 13, scope: !3049)
!3052 = !DILocation(line: 190, column: 9, scope: !3049)
!3053 = !DILocation(line: 191, column: 11, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !249, line: 191, column: 11)
!3055 = !DILocation(line: 191, column: 11, scope: !3046)
!3056 = !DILocation(line: 206, column: 7, scope: !476)
!3057 = !DILocation(line: 207, column: 25, scope: !476)
!3058 = !DILocation(line: 0, scope: !3006, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 207, column: 10, scope: !476)
!3060 = !DILocation(line: 53, column: 10, scope: !3014, inlinedAt: !3059)
!3061 = !DILocation(line: 192, column: 9, scope: !3054)
!3062 = !DILocation(line: 200, column: 69, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !249, line: 200, column: 11)
!3064 = distinct !DILexicalBlock(scope: !3042, file: !249, line: 195, column: 5)
!3065 = !DILocation(line: 201, column: 11, scope: !3063)
!3066 = !DILocation(line: 200, column: 11, scope: !3064)
!3067 = !DILocation(line: 202, column: 9, scope: !3063)
!3068 = !DILocation(line: 203, column: 14, scope: !3064)
!3069 = !DILocation(line: 203, column: 18, scope: !3064)
!3070 = !DILocation(line: 203, column: 9, scope: !3064)
!3071 = !DILocation(line: 53, column: 8, scope: !3014, inlinedAt: !3059)
!3072 = !DILocation(line: 57, column: 7, scope: !3018, inlinedAt: !3059)
!3073 = !DILocation(line: 58, column: 7, scope: !3018, inlinedAt: !3059)
!3074 = !DILocation(line: 61, column: 7, scope: !3006, inlinedAt: !3059)
!3075 = !DILocation(line: 62, column: 8, scope: !3022, inlinedAt: !3059)
!3076 = !DILocation(line: 62, column: 13, scope: !3022, inlinedAt: !3059)
!3077 = !DILocation(line: 62, column: 10, scope: !3022, inlinedAt: !3059)
!3078 = !DILocation(line: 63, column: 5, scope: !3022, inlinedAt: !3059)
!3079 = !DILocation(line: 207, column: 3, scope: !476)
!3080 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2243, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3081)
!3081 = !{!3082}
!3082 = !DILocalVariable(name: "n", arg: 1, scope: !3080, file: !249, line: 216, type: !69)
!3083 = !DILocation(line: 0, scope: !3080)
!3084 = !DILocation(line: 0, scope: !2971, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 218, column: 10, scope: !3080)
!3086 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3085)
!3087 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3085)
!3088 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3085)
!3089 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3085)
!3090 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3085)
!3091 = !DILocation(line: 218, column: 3, scope: !3080)
!3092 = distinct !DISubprogram(name: "x2realloc", scope: !473, file: !473, line: 74, type: !3093, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!67, !67, !479}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !473, line: 74, type: !67)
!3097 = !DILocalVariable(name: "pn", arg: 2, scope: !3092, file: !473, line: 74, type: !479)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 0, scope: !476, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 76, column: 10, scope: !3092)
!3101 = !DILocation(line: 176, column: 14, scope: !476, inlinedAt: !3100)
!3102 = !DILocation(line: 178, column: 9, scope: !3042, inlinedAt: !3100)
!3103 = !DILocation(line: 178, column: 7, scope: !476, inlinedAt: !3100)
!3104 = !DILocation(line: 180, column: 13, scope: !3045, inlinedAt: !3100)
!3105 = !DILocation(line: 180, column: 11, scope: !3046, inlinedAt: !3100)
!3106 = !DILocation(line: 191, column: 11, scope: !3054, inlinedAt: !3100)
!3107 = !DILocation(line: 191, column: 11, scope: !3046, inlinedAt: !3100)
!3108 = !DILocation(line: 206, column: 7, scope: !476, inlinedAt: !3100)
!3109 = !DILocation(line: 0, scope: !3006, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 207, column: 10, scope: !476, inlinedAt: !3100)
!3111 = !DILocation(line: 53, column: 10, scope: !3014, inlinedAt: !3110)
!3112 = !DILocation(line: 192, column: 9, scope: !3054, inlinedAt: !3100)
!3113 = !DILocation(line: 201, column: 11, scope: !3063, inlinedAt: !3100)
!3114 = !DILocation(line: 200, column: 11, scope: !3064, inlinedAt: !3100)
!3115 = !DILocation(line: 202, column: 9, scope: !3063, inlinedAt: !3100)
!3116 = !DILocation(line: 203, column: 14, scope: !3064, inlinedAt: !3100)
!3117 = !DILocation(line: 203, column: 18, scope: !3064, inlinedAt: !3100)
!3118 = !DILocation(line: 203, column: 9, scope: !3064, inlinedAt: !3100)
!3119 = !DILocation(line: 53, column: 8, scope: !3014, inlinedAt: !3110)
!3120 = !DILocation(line: 57, column: 7, scope: !3018, inlinedAt: !3110)
!3121 = !DILocation(line: 58, column: 7, scope: !3018, inlinedAt: !3110)
!3122 = !DILocation(line: 61, column: 7, scope: !3006, inlinedAt: !3110)
!3123 = !DILocation(line: 62, column: 8, scope: !3022, inlinedAt: !3110)
!3124 = !DILocation(line: 62, column: 13, scope: !3022, inlinedAt: !3110)
!3125 = !DILocation(line: 62, column: 10, scope: !3022, inlinedAt: !3110)
!3126 = !DILocation(line: 63, column: 5, scope: !3022, inlinedAt: !3110)
!3127 = !DILocation(line: 76, column: 3, scope: !3092)
!3128 = distinct !DISubprogram(name: "xzalloc", scope: !473, file: !473, line: 84, type: !2972, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3129)
!3129 = !{!3130}
!3130 = !DILocalVariable(name: "n", arg: 1, scope: !3128, file: !473, line: 84, type: !69)
!3131 = !DILocation(line: 0, scope: !3128)
!3132 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !473, line: 93, type: !69)
!3133 = distinct !DISubprogram(name: "xcalloc", scope: !473, file: !473, line: 93, type: !2959, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3134)
!3134 = !{!3132, !3135, !3136}
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !473, line: 93, type: !69)
!3136 = !DILocalVariable(name: "p", scope: !3133, file: !473, line: 95, type: !67)
!3137 = !DILocation(line: 0, scope: !3133, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 86, column: 10, scope: !3128)
!3139 = !DILocation(line: 100, column: 7, scope: !3140, inlinedAt: !3138)
!3140 = distinct !DILexicalBlock(scope: !3133, file: !473, line: 100, column: 7)
!3141 = !DILocation(line: 101, column: 7, scope: !3140, inlinedAt: !3138)
!3142 = !DILocation(line: 101, column: 18, scope: !3140, inlinedAt: !3138)
!3143 = !DILocation(line: 101, column: 16, scope: !3140, inlinedAt: !3138)
!3144 = !DILocation(line: 100, column: 7, scope: !3133, inlinedAt: !3138)
!3145 = !DILocation(line: 102, column: 5, scope: !3140, inlinedAt: !3138)
!3146 = !DILocation(line: 86, column: 3, scope: !3128)
!3147 = !DILocation(line: 0, scope: !3133)
!3148 = !DILocation(line: 100, column: 7, scope: !3140)
!3149 = !DILocation(line: 101, column: 7, scope: !3140)
!3150 = !DILocation(line: 101, column: 18, scope: !3140)
!3151 = !DILocation(line: 101, column: 16, scope: !3140)
!3152 = !DILocation(line: 100, column: 7, scope: !3133)
!3153 = !DILocation(line: 102, column: 5, scope: !3140)
!3154 = !DILocation(line: 103, column: 3, scope: !3133)
!3155 = distinct !DISubprogram(name: "xmemdup", scope: !473, file: !473, line: 111, type: !3156, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!67, !252, !69}
!3158 = !{!3159, !3160}
!3159 = !DILocalVariable(name: "p", arg: 1, scope: !3155, file: !473, line: 111, type: !252)
!3160 = !DILocalVariable(name: "s", arg: 2, scope: !3155, file: !473, line: 111, type: !69)
!3161 = !DILocation(line: 0, scope: !3155)
!3162 = !DILocation(line: 0, scope: !2971, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 113, column: 18, scope: !3155)
!3164 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3163)
!3165 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3163)
!3166 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3163)
!3167 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3163)
!3168 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3163)
!3169 = !DILocalVariable(name: "__dest", arg: 1, scope: !3170, file: !1776, line: 31, type: !3173)
!3170 = distinct !DISubprogram(name: "memcpy", scope: !1776, file: !1776, line: 31, type: !3171, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3175)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!67, !3173, !3174, !69}
!3173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3175 = !{!3169, !3176, !3177}
!3176 = !DILocalVariable(name: "__src", arg: 2, scope: !3170, file: !1776, line: 31, type: !3174)
!3177 = !DILocalVariable(name: "__len", arg: 3, scope: !3170, file: !1776, line: 31, type: !69)
!3178 = !DILocation(line: 0, scope: !3170, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 113, column: 10, scope: !3155)
!3180 = !DILocation(line: 34, column: 10, scope: !3170, inlinedAt: !3179)
!3181 = !DILocation(line: 113, column: 3, scope: !3155)
!3182 = distinct !DISubprogram(name: "xstrdup", scope: !473, file: !473, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !3183)
!3183 = !{!3184}
!3184 = !DILocalVariable(name: "string", arg: 1, scope: !3182, file: !473, line: 119, type: !6)
!3185 = !DILocation(line: 0, scope: !3182)
!3186 = !DILocation(line: 121, column: 27, scope: !3182)
!3187 = !DILocation(line: 121, column: 43, scope: !3182)
!3188 = !DILocation(line: 0, scope: !3155, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 121, column: 10, scope: !3182)
!3190 = !DILocation(line: 0, scope: !2971, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 113, column: 18, scope: !3155, inlinedAt: !3189)
!3192 = !DILocation(line: 41, column: 13, scope: !2971, inlinedAt: !3191)
!3193 = !DILocation(line: 42, column: 8, scope: !2980, inlinedAt: !3191)
!3194 = !DILocation(line: 42, column: 15, scope: !2980, inlinedAt: !3191)
!3195 = !DILocation(line: 42, column: 10, scope: !2980, inlinedAt: !3191)
!3196 = !DILocation(line: 43, column: 5, scope: !2980, inlinedAt: !3191)
!3197 = !DILocation(line: 0, scope: !3170, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 113, column: 10, scope: !3155, inlinedAt: !3189)
!3199 = !DILocation(line: 34, column: 10, scope: !3170, inlinedAt: !3198)
!3200 = !DILocation(line: 121, column: 3, scope: !3182)
!3201 = distinct !DISubprogram(name: "xalloc_die", scope: !494, file: !494, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !493, retainedNodes: !4)
!3202 = !DILocation(line: 34, column: 10, scope: !3201)
!3203 = !DILocation(line: 34, column: 33, scope: !3201)
!3204 = !DILocation(line: 34, column: 3, scope: !3201)
!3205 = !DILocation(line: 40, column: 3, scope: !3201)
!3206 = distinct !DISubprogram(name: "rpl_calloc", scope: !497, file: !497, line: 42, type: !2959, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !3207)
!3207 = !{!3208, !3209, !3210, !3211}
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3206, file: !497, line: 42, type: !69)
!3209 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !497, line: 42, type: !69)
!3210 = !DILocalVariable(name: "result", scope: !3206, file: !497, line: 44, type: !67)
!3211 = !DILocalVariable(name: "bytes", scope: !3212, file: !497, line: 56, type: !69)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !497, line: 53, column: 5)
!3213 = distinct !DILexicalBlock(scope: !3206, file: !497, line: 47, column: 7)
!3214 = !DILocation(line: 0, scope: !3206)
!3215 = !DILocation(line: 47, column: 9, scope: !3213)
!3216 = !DILocation(line: 47, column: 19, scope: !3213)
!3217 = !DILocation(line: 47, column: 14, scope: !3213)
!3218 = !DILocation(line: 0, scope: !3212)
!3219 = !DILocation(line: 57, column: 21, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !497, line: 57, column: 11)
!3221 = !DILocation(line: 57, column: 11, scope: !3212)
!3222 = !DILocation(line: 59, column: 11, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3220, file: !497, line: 58, column: 9)
!3224 = !DILocation(line: 59, column: 17, scope: !3223)
!3225 = !DILocation(line: 65, column: 12, scope: !3206)
!3226 = !DILocation(line: 72, column: 3, scope: !3206)
!3227 = !DILocation(line: 73, column: 1, scope: !3206)
!3228 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !500, file: !500, line: 86, type: !3229, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !3235)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!69, !3231, !6, !69, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1517, line: 6, baseType: !3234)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !506)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3236 = !DILocalVariable(name: "pwc", arg: 1, scope: !3228, file: !500, line: 86, type: !3231)
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3228, file: !500, line: 86, type: !6)
!3238 = !DILocalVariable(name: "n", arg: 3, scope: !3228, file: !500, line: 86, type: !69)
!3239 = !DILocalVariable(name: "ps", arg: 4, scope: !3228, file: !500, line: 86, type: !3232)
!3240 = !DILocalVariable(name: "ret", scope: !3228, file: !500, line: 88, type: !69)
!3241 = !DILocalVariable(name: "wc", scope: !3228, file: !500, line: 89, type: !1521)
!3242 = !DILocalVariable(name: "uc", scope: !3243, file: !500, line: 156, type: !1394)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !500, line: 155, column: 5)
!3244 = distinct !DILexicalBlock(scope: !3228, file: !500, line: 154, column: 7)
!3245 = !DILocation(line: 0, scope: !3228)
!3246 = !DILocation(line: 89, column: 3, scope: !3228)
!3247 = !DILocation(line: 105, column: 9, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3228, file: !500, line: 105, column: 7)
!3249 = !DILocation(line: 105, column: 7, scope: !3228)
!3250 = !DILocation(line: 145, column: 9, scope: !3228)
!3251 = !DILocation(line: 154, column: 19, scope: !3244)
!3252 = !DILocation(line: 154, column: 31, scope: !3244)
!3253 = !DILocation(line: 154, column: 26, scope: !3244)
!3254 = !DILocation(line: 154, column: 41, scope: !3244)
!3255 = !DILocation(line: 154, column: 7, scope: !3228)
!3256 = !DILocation(line: 156, column: 26, scope: !3243)
!3257 = !DILocation(line: 0, scope: !3243)
!3258 = !DILocation(line: 157, column: 14, scope: !3243)
!3259 = !DILocation(line: 157, column: 12, scope: !3243)
!3260 = !DILocation(line: 163, column: 1, scope: !3228)
!3261 = distinct !DISubprogram(name: "close_stream", scope: !519, file: !519, line: 56, type: !3262, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !3266)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!18, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2835, line: 7, baseType: !526)
!3266 = !{!3267, !3268, !3270, !3271}
!3267 = !DILocalVariable(name: "stream", arg: 1, scope: !3261, file: !519, line: 56, type: !3264)
!3268 = !DILocalVariable(name: "some_pending", scope: !3261, file: !519, line: 58, type: !3269)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3270 = !DILocalVariable(name: "prev_fail", scope: !3261, file: !519, line: 59, type: !3269)
!3271 = !DILocalVariable(name: "fclose_fail", scope: !3261, file: !519, line: 60, type: !3269)
!3272 = !DILocation(line: 0, scope: !3261)
!3273 = !DILocation(line: 58, column: 30, scope: !3261)
!3274 = !DILocalVariable(name: "__stream", arg: 1, scope: !3275, file: !3276, line: 135, type: !3264)
!3275 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3276, file: !3276, line: 135, type: !3262, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !3277)
!3276 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3277 = !{!3274}
!3278 = !DILocation(line: 0, scope: !3275, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 59, column: 27, scope: !3261)
!3280 = !DILocation(line: 137, column: 10, scope: !3275, inlinedAt: !3279)
!3281 = !{!3282, !1177, i64 0}
!3282 = !{!"_IO_FILE", !1177, i64 0, !1121, i64 8, !1121, i64 16, !1121, i64 24, !1121, i64 32, !1121, i64 40, !1121, i64 48, !1121, i64 56, !1121, i64 64, !1121, i64 72, !1121, i64 80, !1121, i64 88, !1121, i64 96, !1121, i64 104, !1177, i64 112, !1177, i64 116, !2279, i64 120, !1769, i64 128, !1122, i64 130, !1122, i64 131, !1121, i64 136, !2279, i64 144, !1121, i64 152, !1121, i64 160, !1121, i64 168, !1121, i64 176, !2279, i64 184, !1177, i64 192, !1122, i64 196}
!3283 = !DILocation(line: 59, column: 43, scope: !3261)
!3284 = !DILocation(line: 60, column: 29, scope: !3261)
!3285 = !DILocation(line: 60, column: 45, scope: !3261)
!3286 = !DILocation(line: 70, column: 17, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3261, file: !519, line: 70, column: 7)
!3288 = !DILocation(line: 58, column: 50, scope: !3261)
!3289 = !DILocation(line: 70, column: 33, scope: !3287)
!3290 = !DILocation(line: 70, column: 53, scope: !3287)
!3291 = !DILocation(line: 70, column: 59, scope: !3287)
!3292 = !DILocation(line: 70, column: 7, scope: !3261)
!3293 = !DILocation(line: 72, column: 11, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !519, line: 71, column: 5)
!3295 = !DILocation(line: 73, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3294, file: !519, line: 72, column: 11)
!3297 = !DILocation(line: 73, column: 15, scope: !3296)
!3298 = !DILocation(line: 78, column: 1, scope: !3261)
!3299 = distinct !DISubprogram(name: "hard_locale", scope: !558, file: !558, line: 27, type: !516, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !557, retainedNodes: !3300)
!3300 = !{!3301, !3302}
!3301 = !DILocalVariable(name: "category", arg: 1, scope: !3299, file: !558, line: 27, type: !18)
!3302 = !DILocalVariable(name: "locale", scope: !3299, file: !558, line: 29, type: !3303)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3304)
!3304 = !{!3305}
!3305 = !DISubrange(count: 257)
!3306 = !DILocation(line: 0, scope: !3299)
!3307 = !DILocation(line: 29, column: 3, scope: !3299)
!3308 = !DILocation(line: 29, column: 8, scope: !3299)
!3309 = !DILocation(line: 31, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3299, file: !558, line: 31, column: 7)
!3311 = !DILocation(line: 31, column: 7, scope: !3299)
!3312 = !DILocation(line: 34, column: 12, scope: !3299)
!3313 = !DILocation(line: 34, column: 38, scope: !3299)
!3314 = !DILocation(line: 34, column: 41, scope: !3299)
!3315 = !DILocation(line: 34, column: 66, scope: !3299)
!3316 = !DILocation(line: 35, column: 1, scope: !3299)
!3317 = distinct !DISubprogram(name: "locale_charset", scope: !565, file: !565, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !3318)
!3318 = !{!3319}
!3319 = !DILocalVariable(name: "codeset", scope: !3317, file: !565, line: 833, type: !6)
!3320 = !DILocation(line: 847, column: 13, scope: !3317)
!3321 = !DILocation(line: 0, scope: !3317)
!3322 = !DILocation(line: 911, column: 15, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3317, file: !565, line: 911, column: 7)
!3324 = !DILocation(line: 911, column: 7, scope: !3317)
!3325 = !DILocation(line: 1070, column: 13, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !565, line: 1070, column: 13)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !565, line: 1060, column: 7)
!3328 = distinct !DILexicalBlock(scope: !3317, file: !565, line: 1019, column: 3)
!3329 = !DILocation(line: 1070, column: 24, scope: !3326)
!3330 = !DILocation(line: 1070, column: 13, scope: !3327)
!3331 = !DILocation(line: 1158, column: 3, scope: !3317)
!3332 = distinct !DISubprogram(name: "setlocale_null_r", scope: !958, file: !958, line: 269, type: !3333, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!18, !18, !25, !69}
!3335 = !{!3336, !3337, !3338}
!3336 = !DILocalVariable(name: "category", arg: 1, scope: !3332, file: !958, line: 269, type: !18)
!3337 = !DILocalVariable(name: "buf", arg: 2, scope: !3332, file: !958, line: 269, type: !25)
!3338 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3332, file: !958, line: 269, type: !69)
!3339 = !DILocation(line: 0, scope: !3332)
!3340 = !DILocalVariable(name: "category", arg: 1, scope: !3341, file: !958, line: 91, type: !18)
!3341 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !958, file: !958, line: 91, type: !3333, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3342)
!3342 = !{!3340, !3343, !3344, !3345, !3346}
!3343 = !DILocalVariable(name: "buf", arg: 2, scope: !3341, file: !958, line: 91, type: !25)
!3344 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3341, file: !958, line: 91, type: !69)
!3345 = !DILocalVariable(name: "result", scope: !3341, file: !958, line: 140, type: !6)
!3346 = !DILocalVariable(name: "length", scope: !3347, file: !958, line: 154, type: !69)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !958, line: 153, column: 5)
!3348 = distinct !DILexicalBlock(scope: !3341, file: !958, line: 142, column: 7)
!3349 = !DILocation(line: 0, scope: !3341, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 274, column: 10, scope: !3332)
!3351 = !DILocalVariable(name: "category", arg: 1, scope: !3352, file: !958, line: 60, type: !18)
!3352 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !958, file: !958, line: 60, type: !3353, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!6, !18}
!3355 = !{!3351, !3356}
!3356 = !DILocalVariable(name: "result", scope: !3352, file: !958, line: 62, type: !6)
!3357 = !DILocation(line: 0, scope: !3352, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 140, column: 24, scope: !3341, inlinedAt: !3350)
!3359 = !DILocation(line: 62, column: 24, scope: !3352, inlinedAt: !3358)
!3360 = !DILocation(line: 142, column: 14, scope: !3348, inlinedAt: !3350)
!3361 = !DILocation(line: 142, column: 7, scope: !3341, inlinedAt: !3350)
!3362 = !DILocation(line: 145, column: 19, scope: !3363, inlinedAt: !3350)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !958, line: 145, column: 11)
!3364 = distinct !DILexicalBlock(scope: !3348, file: !958, line: 143, column: 5)
!3365 = !DILocation(line: 145, column: 11, scope: !3364, inlinedAt: !3350)
!3366 = !DILocation(line: 149, column: 16, scope: !3363, inlinedAt: !3350)
!3367 = !DILocation(line: 149, column: 9, scope: !3363, inlinedAt: !3350)
!3368 = !DILocation(line: 154, column: 23, scope: !3347, inlinedAt: !3350)
!3369 = !DILocation(line: 0, scope: !3347, inlinedAt: !3350)
!3370 = !DILocation(line: 155, column: 18, scope: !3371, inlinedAt: !3350)
!3371 = distinct !DILexicalBlock(scope: !3347, file: !958, line: 155, column: 11)
!3372 = !DILocation(line: 155, column: 11, scope: !3347, inlinedAt: !3350)
!3373 = !DILocation(line: 157, column: 39, scope: !3374, inlinedAt: !3350)
!3374 = distinct !DILexicalBlock(scope: !3371, file: !958, line: 156, column: 9)
!3375 = !DILocalVariable(name: "__dest", arg: 1, scope: !3376, file: !1776, line: 31, type: !3173)
!3376 = distinct !DISubprogram(name: "memcpy", scope: !1776, file: !1776, line: 31, type: !3171, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3377)
!3377 = !{!3375, !3378, !3379}
!3378 = !DILocalVariable(name: "__src", arg: 2, scope: !3376, file: !1776, line: 31, type: !3174)
!3379 = !DILocalVariable(name: "__len", arg: 3, scope: !3376, file: !1776, line: 31, type: !69)
!3380 = !DILocation(line: 0, scope: !3376, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 157, column: 11, scope: !3374, inlinedAt: !3350)
!3382 = !DILocation(line: 34, column: 10, scope: !3376, inlinedAt: !3381)
!3383 = !DILocation(line: 158, column: 11, scope: !3374, inlinedAt: !3350)
!3384 = !DILocation(line: 162, column: 23, scope: !3385, inlinedAt: !3350)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !958, line: 162, column: 15)
!3386 = distinct !DILexicalBlock(scope: !3371, file: !958, line: 161, column: 9)
!3387 = !DILocation(line: 162, column: 15, scope: !3386, inlinedAt: !3350)
!3388 = !DILocation(line: 167, column: 44, scope: !3389, inlinedAt: !3350)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !958, line: 163, column: 13)
!3390 = !DILocation(line: 0, scope: !3376, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 167, column: 15, scope: !3389, inlinedAt: !3350)
!3392 = !DILocation(line: 34, column: 10, scope: !3376, inlinedAt: !3391)
!3393 = !DILocation(line: 168, column: 15, scope: !3389, inlinedAt: !3350)
!3394 = !DILocation(line: 168, column: 32, scope: !3389, inlinedAt: !3350)
!3395 = !DILocation(line: 169, column: 13, scope: !3389, inlinedAt: !3350)
!3396 = !DILocation(line: 0, scope: !3348, inlinedAt: !3350)
!3397 = !DILocation(line: 274, column: 3, scope: !3332)
!3398 = distinct !DISubprogram(name: "setlocale_null", scope: !958, file: !958, line: 301, type: !3353, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !957, retainedNodes: !3399)
!3399 = !{!3400}
!3400 = !DILocalVariable(name: "category", arg: 1, scope: !3398, file: !958, line: 301, type: !18)
!3401 = !DILocation(line: 0, scope: !3398)
!3402 = !DILocation(line: 0, scope: !3352, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 304, column: 10, scope: !3398)
!3404 = !DILocation(line: 62, column: 24, scope: !3352, inlinedAt: !3403)
!3405 = !DILocation(line: 304, column: 3, scope: !3398)
!3406 = distinct !DISubprogram(name: "rpl_fclose", scope: !961, file: !961, line: 58, type: !3407, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3411)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!18, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2835, line: 7, baseType: !967)
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DILocalVariable(name: "fp", arg: 1, scope: !3406, file: !961, line: 58, type: !3409)
!3413 = !DILocalVariable(name: "saved_errno", scope: !3406, file: !961, line: 60, type: !18)
!3414 = !DILocalVariable(name: "fd", scope: !3406, file: !961, line: 61, type: !18)
!3415 = !DILocalVariable(name: "result", scope: !3406, file: !961, line: 62, type: !18)
!3416 = !DILocation(line: 0, scope: !3406)
!3417 = !DILocation(line: 65, column: 8, scope: !3406)
!3418 = !DILocation(line: 66, column: 10, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3406, file: !961, line: 66, column: 7)
!3420 = !DILocation(line: 66, column: 7, scope: !3406)
!3421 = !DILocation(line: 67, column: 12, scope: !3419)
!3422 = !DILocation(line: 67, column: 5, scope: !3419)
!3423 = !DILocation(line: 72, column: 9, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3406, file: !961, line: 72, column: 7)
!3425 = !DILocation(line: 72, column: 23, scope: !3424)
!3426 = !DILocation(line: 72, column: 33, scope: !3424)
!3427 = !DILocation(line: 72, column: 26, scope: !3424)
!3428 = !DILocation(line: 72, column: 59, scope: !3424)
!3429 = !DILocation(line: 73, column: 7, scope: !3424)
!3430 = !DILocation(line: 73, column: 10, scope: !3424)
!3431 = !DILocation(line: 72, column: 7, scope: !3406)
!3432 = !DILocation(line: 100, column: 12, scope: !3406)
!3433 = !DILocation(line: 105, column: 7, scope: !3406)
!3434 = !DILocation(line: 74, column: 19, scope: !3424)
!3435 = !DILocation(line: 105, column: 19, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3406, file: !961, line: 105, column: 7)
!3437 = !DILocation(line: 107, column: 13, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3436, file: !961, line: 106, column: 5)
!3439 = !DILocation(line: 109, column: 5, scope: !3438)
!3440 = !DILocation(line: 112, column: 1, scope: !3406)
!3441 = distinct !DISubprogram(name: "rpl_fflush", scope: !1004, file: !1004, line: 129, type: !3442, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !3446)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!18, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2835, line: 7, baseType: !1010)
!3446 = !{!3447}
!3447 = !DILocalVariable(name: "stream", arg: 1, scope: !3441, file: !1004, line: 129, type: !3444)
!3448 = !DILocation(line: 0, scope: !3441)
!3449 = !DILocation(line: 150, column: 14, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3441, file: !1004, line: 150, column: 7)
!3451 = !DILocation(line: 150, column: 22, scope: !3450)
!3452 = !DILocation(line: 150, column: 27, scope: !3450)
!3453 = !DILocation(line: 150, column: 7, scope: !3441)
!3454 = !DILocation(line: 151, column: 12, scope: !3450)
!3455 = !DILocation(line: 151, column: 5, scope: !3450)
!3456 = !DILocalVariable(name: "fp", arg: 1, scope: !3457, file: !1004, line: 41, type: !3444)
!3457 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1004, file: !1004, line: 41, type: !3458, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !3444}
!3460 = !{!3456}
!3461 = !DILocation(line: 0, scope: !3457, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 156, column: 3, scope: !3441)
!3463 = !DILocation(line: 43, column: 11, scope: !3464, inlinedAt: !3462)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !1004, line: 43, column: 7)
!3465 = !DILocation(line: 43, column: 18, scope: !3464, inlinedAt: !3462)
!3466 = !DILocation(line: 43, column: 7, scope: !3457, inlinedAt: !3462)
!3467 = !DILocation(line: 45, column: 5, scope: !3464, inlinedAt: !3462)
!3468 = !DILocation(line: 158, column: 10, scope: !3441)
!3469 = !DILocation(line: 158, column: 3, scope: !3441)
!3470 = !DILocation(line: 235, column: 1, scope: !3441)
!3471 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1045, file: !1045, line: 28, type: !3472, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1044, retainedNodes: !3477)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!18, !3474, !3476, !18}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2835, line: 7, baseType: !1051)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "fp", arg: 1, scope: !3471, file: !1045, line: 28, type: !3474)
!3479 = !DILocalVariable(name: "offset", arg: 2, scope: !3471, file: !1045, line: 28, type: !3476)
!3480 = !DILocalVariable(name: "whence", arg: 3, scope: !3471, file: !1045, line: 28, type: !18)
!3481 = !DILocalVariable(name: "pos", scope: !3482, file: !1045, line: 117, type: !3476)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !1045, line: 113, column: 5)
!3483 = distinct !DILexicalBlock(scope: !3471, file: !1045, line: 52, column: 7)
!3484 = !DILocation(line: 0, scope: !3471)
!3485 = !DILocation(line: 52, column: 11, scope: !3483)
!3486 = !{!3282, !1121, i64 16}
!3487 = !DILocation(line: 52, column: 31, scope: !3483)
!3488 = !{!3282, !1121, i64 8}
!3489 = !DILocation(line: 52, column: 24, scope: !3483)
!3490 = !DILocation(line: 53, column: 7, scope: !3483)
!3491 = !DILocation(line: 53, column: 14, scope: !3483)
!3492 = !{!3282, !1121, i64 40}
!3493 = !DILocation(line: 53, column: 35, scope: !3483)
!3494 = !{!3282, !1121, i64 32}
!3495 = !DILocation(line: 53, column: 28, scope: !3483)
!3496 = !DILocation(line: 54, column: 7, scope: !3483)
!3497 = !DILocation(line: 54, column: 14, scope: !3483)
!3498 = !{!3282, !1121, i64 72}
!3499 = !DILocation(line: 54, column: 28, scope: !3483)
!3500 = !DILocation(line: 52, column: 7, scope: !3471)
!3501 = !DILocation(line: 117, column: 26, scope: !3482)
!3502 = !DILocation(line: 117, column: 19, scope: !3482)
!3503 = !DILocation(line: 0, scope: !3482)
!3504 = !DILocation(line: 118, column: 15, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3482, file: !1045, line: 118, column: 11)
!3506 = !DILocation(line: 118, column: 11, scope: !3482)
!3507 = !DILocation(line: 129, column: 11, scope: !3482)
!3508 = !DILocation(line: 129, column: 18, scope: !3482)
!3509 = !DILocation(line: 130, column: 11, scope: !3482)
!3510 = !DILocation(line: 130, column: 19, scope: !3482)
!3511 = !{!3282, !2279, i64 144}
!3512 = !DILocation(line: 161, column: 7, scope: !3482)
!3513 = !DILocation(line: 163, column: 10, scope: !3471)
!3514 = !DILocation(line: 163, column: 3, scope: !3471)
!3515 = !DILocation(line: 164, column: 1, scope: !3471)
