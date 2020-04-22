; ModuleID = 'coreutils-8.32/src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Print the name of the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c"FIXME: unknown\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
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
define dso_local void @usage(i32 %0) #0 !dbg !1094 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1097, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 %0, metadata !1096, metadata !DIExpression()), !dbg !1118
  %3 = icmp eq i32 %0, 0, !dbg !1119
  br i1 %3, label %9, label %4, !dbg !1120

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1121, !tbaa !1123
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1121
  %7 = load i8*, i8** @program_name, align 8, !dbg !1121, !tbaa !1123
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1121
  br label %58, !dbg !1121

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1127
  %11 = load i8*, i8** @program_name, align 8, !dbg !1127, !tbaa !1123
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !1127
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1128
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1128, !tbaa !1123
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1128
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1129
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !1123
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1129
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !1130
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1130, !tbaa !1123
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1130
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !1101, metadata !DIExpression()) #12, !dbg !1131
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1132
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1114
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !1102, metadata !DIExpression()) #12, !dbg !1131
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1133
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  br label %24, !dbg !1134

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1135
  %28 = icmp eq i32 %27, 0, !dbg !1135
  br i1 %28, label %34, label %29, !dbg !1134

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1136
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1137
  %32 = load i8*, i8** %31, align 8, !dbg !1137, !tbaa !1138
  %33 = icmp eq i8* %32, null, !dbg !1140
  br i1 %33, label %34, label %24, !dbg !1141, !llvm.loop !1142

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1103, metadata !DIExpression()) #12, !dbg !1131
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1143
  %37 = load i8*, i8** %36, align 8, !dbg !1143, !tbaa !1145
  %38 = icmp eq i8* %37, null, !dbg !1146
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %39, metadata !1102, metadata !DIExpression()) #12, !dbg !1131
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !1148
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1148
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %42, metadata !1110, metadata !DIExpression()) #12, !dbg !1131
  %43 = icmp eq i8* %42, null, !dbg !1150
  br i1 %43, label %51, label %44, !dbg !1152

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #21, !dbg !1153
  %46 = icmp eq i32 %45, 0, !dbg !1153
  br i1 %46, label %51, label %47, !dbg !1154

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !1155
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1155, !tbaa !1123
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !1155
  br label %51, !dbg !1157

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1158
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1158
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1159
  %55 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !1159
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1159
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #12, !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1160
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1161
  unreachable, !dbg !1161
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1162 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1166, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8** %1, metadata !1167, metadata !DIExpression()), !dbg !1169
  %3 = load i8*, i8** %1, align 8, !dbg !1170, !tbaa !1123
  tail call void @set_program_name(i8* %3) #12, !dbg !1171
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1172
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1173
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1174
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1175
  %8 = load i8*, i8** @Version, align 8, !dbg !1176, !tbaa !1123
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null) #12, !dbg !1177
  %9 = load i32, i32* @optind, align 4, !dbg !1178, !tbaa !1180
  %10 = icmp slt i32 %9, %0, !dbg !1182
  br i1 %10, label %11, label %18, !dbg !1183

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !1184
  %13 = load i32, i32* @optind, align 4, !dbg !1186, !tbaa !1180
  %14 = sext i32 %13 to i64, !dbg !1187
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1187
  %16 = load i8*, i8** %15, align 8, !dbg !1187, !tbaa !1123
  %17 = tail call i8* @quote(i8* %16) #12, !dbg !1188
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #12, !dbg !1189
  tail call void @usage(i32 1) #23, !dbg !1190
  unreachable, !dbg !1190

18:                                               ; preds = %2
  %19 = tail call i8* @getlogin() #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8* %19, metadata !1168, metadata !DIExpression()), !dbg !1169
  %20 = icmp eq i8* %19, null, !dbg !1192
  br i1 %20, label %21, label %23, !dbg !1194

21:                                               ; preds = %18
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !1195
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %22) #12, !dbg !1195
  unreachable, !dbg !1195

23:                                               ; preds = %18
  %24 = tail call i32 @puts(i8* nonnull %19), !dbg !1196
  ret i32 0, !dbg !1197
}

; Function Attrs: nounwind
declare !dbg !406 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !409 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare !dbg !426 i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !430 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1200, metadata !DIExpression()), !dbg !1201
  store i8* %0, i8** @file_name, align 8, !dbg !1202, !tbaa !1123
  ret void, !dbg !1203
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1204 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1210, !tbaa !1211
  ret void, !dbg !1213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1214 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1219, !tbaa !1123
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1220
  %3 = icmp eq i32 %2, 0, !dbg !1221
  br i1 %3, label %22, label %4, !dbg !1222

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1223, !tbaa !1211, !range !1224
  %6 = icmp eq i8 %5, 0, !dbg !1223
  br i1 %6, label %11, label %7, !dbg !1225

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1226
  %9 = load i32, i32* %8, align 4, !dbg !1226, !tbaa !1180
  %10 = icmp eq i32 %9, 32, !dbg !1227
  br i1 %10, label %22, label %11, !dbg !1228

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !1229
  call void @llvm.dbg.value(metadata i8* %12, metadata !1216, metadata !DIExpression()), !dbg !1230
  %13 = load i8*, i8** @file_name, align 8, !dbg !1231, !tbaa !1123
  %14 = icmp eq i8* %13, null, !dbg !1231
  %15 = tail call i32* @__errno_location() #24, !dbg !1233
  %16 = load i32, i32* %15, align 4, !dbg !1233, !tbaa !1180
  br i1 %14, label %19, label %17, !dbg !1234

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1235
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1236
  br label %20, !dbg !1236

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #12, !dbg !1237
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1238, !tbaa !1180
  tail call void @_exit(i32 %21) #22, !dbg !1239
  unreachable, !dbg !1239

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1240, !tbaa !1123
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1242
  %25 = icmp eq i32 %24, 0, !dbg !1243
  br i1 %25, label %28, label %26, !dbg !1244

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1245, !tbaa !1180
  tail call void @_exit(i32 %27) #22, !dbg !1246
  unreachable, !dbg !1246

28:                                               ; preds = %22
  ret void, !dbg !1247
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1248 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8** %1, metadata !1253, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %2, metadata !1254, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %3, metadata !1255, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i8* %4, metadata !1256, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1257, metadata !DIExpression()), !dbg !1270
  %8 = load i32, i32* @opterr, align 4, !dbg !1271, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %8, metadata !1259, metadata !DIExpression()), !dbg !1270
  store i32 0, i32* @opterr, align 4, !dbg !1272, !tbaa !1180
  %9 = icmp eq i32 %0, 2, !dbg !1273
  br i1 %9, label %10, label %17, !dbg !1274

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %11, metadata !1258, metadata !DIExpression()), !dbg !1270
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1276

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1277
  br label %17, !dbg !1278

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1279
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1260, metadata !DIExpression()), !dbg !1280
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1281
  call void @llvm.va_start(i8* nonnull %14), !dbg !1281
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1282, !tbaa !1123
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1283
  call void @exit(i32 0) #22, !dbg !1284
  unreachable, !dbg !1284

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1285, !tbaa !1180
  store i32 0, i32* @optind, align 4, !dbg !1286, !tbaa !1180
  ret void, !dbg !1287
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1288 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1290, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8** %1, metadata !1291, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %2, metadata !1292, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %3, metadata !1293, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8* %4, metadata !1294, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i1 %5, metadata !1295, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1296, metadata !DIExpression()), !dbg !1305
  %9 = load i32, i32* @opterr, align 4, !dbg !1306, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %9, metadata !1298, metadata !DIExpression()), !dbg !1305
  store i32 1, i32* @opterr, align 4, !dbg !1307, !tbaa !1180
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !1308
  call void @llvm.dbg.value(metadata i8* %10, metadata !1299, metadata !DIExpression()), !dbg !1305
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %11, metadata !1297, metadata !DIExpression()), !dbg !1305
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1310

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1311
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1311
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1300, metadata !DIExpression()), !dbg !1312
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1313
  call void @llvm.va_start(i8* nonnull %13), !dbg !1313
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1314, !tbaa !1123
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1315
  call void @exit(i32 0) #22, !dbg !1316
  unreachable, !dbg !1316

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1317, !tbaa !1180
  br label %18, !dbg !1318

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1319
  br label %20, !dbg !1320

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1320, !tbaa !1180
  ret void, !dbg !1321
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1324, metadata !DIExpression()), !dbg !1327
  %2 = icmp eq i8* %0, null, !dbg !1328
  br i1 %2, label %3, label %6, !dbg !1330

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1331, !tbaa !1123
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1333
  tail call void @abort() #22, !dbg !1334
  unreachable, !dbg !1334

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %7, metadata !1325, metadata !DIExpression()), !dbg !1327
  %8 = icmp eq i8* %7, null, !dbg !1336
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1337
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %10, metadata !1326, metadata !DIExpression()), !dbg !1327
  %11 = ptrtoint i8* %10 to i64, !dbg !1338
  %12 = ptrtoint i8* %0 to i64, !dbg !1338
  %13 = sub i64 %11, %12, !dbg !1338
  %14 = icmp sgt i64 %13, 6, !dbg !1340
  br i1 %14, label %15, label %24, !dbg !1341

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1342
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #21, !dbg !1343
  %18 = icmp eq i32 %17, 0, !dbg !1344
  br i1 %18, label %19, label %24, !dbg !1345

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1324, metadata !DIExpression()), !dbg !1327
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #21, !dbg !1346
  %21 = icmp eq i32 %20, 0, !dbg !1349
  br i1 %21, label %22, label %24, !dbg !1350

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %23, metadata !1324, metadata !DIExpression()), !dbg !1327
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1353, !tbaa !1123
  br label %24, !dbg !1354

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1324, metadata !DIExpression()), !dbg !1327
  store i8* %25, i8** @program_name, align 8, !dbg !1355, !tbaa !1123
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1356, !tbaa !1123
  ret void, !dbg !1357
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1358 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1363, metadata !DIExpression()), !dbg !1366
  %2 = tail call i32* @__errno_location() #24, !dbg !1367
  %3 = load i32, i32* %2, align 4, !dbg !1367, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %3, metadata !1364, metadata !DIExpression()), !dbg !1366
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1368
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1368
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1368
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1369
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i32 %3, i32* %2, align 4, !dbg !1370, !tbaa !1180
  ret %struct.quoting_options* %8, !dbg !1371
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1372 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1376, metadata !DIExpression()), !dbg !1377
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1378
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1378
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1379
  %5 = load i32, i32* %4, align 8, !dbg !1379, !tbaa !1380
  ret i32 %5, !dbg !1382
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1383 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1387, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %1, metadata !1388, metadata !DIExpression()), !dbg !1389
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1390
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1390
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1391
  store i32 %1, i32* %5, align 8, !dbg !1392, !tbaa !1380
  ret void, !dbg !1393
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1394 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1398, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1399, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %2, metadata !1400, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8 %1, metadata !1401, metadata !DIExpression()), !dbg !1407
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1408
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1408
  %6 = lshr i8 %1, 5, !dbg !1409
  %7 = zext i8 %6 to i64, !dbg !1409
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1410
  call void @llvm.dbg.value(metadata i32* %8, metadata !1403, metadata !DIExpression()), !dbg !1407
  %9 = and i8 %1, 31, !dbg !1411
  %10 = zext i8 %9 to i32, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %10, metadata !1405, metadata !DIExpression()), !dbg !1407
  %11 = load i32, i32* %8, align 4, !dbg !1412, !tbaa !1180
  %12 = lshr i32 %11, %10, !dbg !1413
  %13 = and i32 %12, 1, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %13, metadata !1406, metadata !DIExpression()), !dbg !1407
  %14 = and i32 %2, 1, !dbg !1415
  %15 = xor i32 %13, %14, !dbg !1416
  %16 = shl i32 %15, %10, !dbg !1417
  %17 = xor i32 %16, %11, !dbg !1418
  store i32 %17, i32* %8, align 4, !dbg !1418, !tbaa !1180
  ret i32 %13, !dbg !1419
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1420 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i32 %1, metadata !1425, metadata !DIExpression()), !dbg !1427
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1428
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1430
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1424, metadata !DIExpression()), !dbg !1427
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1431
  %6 = load i32, i32* %5, align 4, !dbg !1431, !tbaa !1432
  call void @llvm.dbg.value(metadata i32 %6, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i32 %1, i32* %5, align 4, !dbg !1433, !tbaa !1432
  ret i32 %6, !dbg !1434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1435 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1439, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %1, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i8* %2, metadata !1441, metadata !DIExpression()), !dbg !1442
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1443
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1445
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1439, metadata !DIExpression()), !dbg !1442
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1446
  store i32 10, i32* %6, align 8, !dbg !1447, !tbaa !1380
  %7 = icmp ne i8* %1, null, !dbg !1448
  %8 = icmp ne i8* %2, null, !dbg !1450
  %9 = and i1 %7, %8, !dbg !1451
  br i1 %9, label %11, label %10, !dbg !1451

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1452
  unreachable, !dbg !1452

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1453
  store i8* %1, i8** %12, align 8, !dbg !1454, !tbaa !1455
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1456
  store i8* %2, i8** %13, align 8, !dbg !1457, !tbaa !1458
  ret void, !dbg !1459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1464, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %1, metadata !1465, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %2, metadata !1466, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i64 %3, metadata !1467, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1468, metadata !DIExpression()), !dbg !1472
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1473
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1469, metadata !DIExpression()), !dbg !1472
  %8 = tail call i32* @__errno_location() #24, !dbg !1474
  %9 = load i32, i32* %8, align 4, !dbg !1474, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %9, metadata !1470, metadata !DIExpression()), !dbg !1472
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1475
  %11 = load i32, i32* %10, align 8, !dbg !1475, !tbaa !1380
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1476
  %13 = load i32, i32* %12, align 4, !dbg !1476, !tbaa !1432
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1477
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1478
  %16 = load i8*, i8** %15, align 8, !dbg !1478, !tbaa !1455
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1479
  %18 = load i8*, i8** %17, align 8, !dbg !1479, !tbaa !1458
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1480
  call void @llvm.dbg.value(metadata i64 %19, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i32 %9, i32* %8, align 4, !dbg !1481, !tbaa !1180
  ret i64 %19, !dbg !1482
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1483 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1489, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %1, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %2, metadata !1491, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %3, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %4, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %5, metadata !1494, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32* %6, metadata !1495, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %7, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %8, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* null, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1502, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1503, metadata !DIExpression()), !dbg !1547
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1548
  %14 = icmp eq i64 %13, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i1 %14, metadata !1504, metadata !DIExpression()), !dbg !1547
  %15 = lshr i32 %5, 1, !dbg !1550
  %16 = trunc i32 %15 to i8, !dbg !1550
  %17 = and i8 %16, 1, !dbg !1550
  call void @llvm.dbg.value(metadata i8 %17, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1508, metadata !DIExpression()), !dbg !1547
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1551
  %19 = and i32 %5, 4, !dbg !1553
  %20 = icmp eq i32 %19, 0, !dbg !1553
  %21 = and i32 %5, 1, !dbg !1556
  %22 = icmp eq i32 %21, 0, !dbg !1556
  %23 = bitcast i64* %10 to i8*, !dbg !1559
  %24 = bitcast i32* %12 to i8*, !dbg !1560
  %25 = icmp eq i32* %6, null, !dbg !1561
  br label %26, !dbg !1563

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1564
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1565
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1566
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1567
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1547
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1568
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1569
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1570
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %38, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %37, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %36, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %35, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %34, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %33, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %32, metadata !1502, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %31, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %30, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %29, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %28, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %27, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1541), !dbg !1571
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
  ], !dbg !1572

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %35, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 5, metadata !1493, metadata !DIExpression()), !dbg !1547
  br label %92, !dbg !1573

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 5, metadata !1493, metadata !DIExpression()), !dbg !1547
  %42 = and i8 %35, 1, !dbg !1575
  %43 = icmp eq i8 %42, 0, !dbg !1575
  br i1 %43, label %44, label %92, !dbg !1573

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1577
  br i1 %45, label %92, label %46, !dbg !1580

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1577, !tbaa !1581
  br label %92, !dbg !1577

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %27), !dbg !1582
  call void @llvm.dbg.value(metadata i8* %48, metadata !1496, metadata !DIExpression()), !dbg !1547
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %27), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %49, metadata !1497, metadata !DIExpression()), !dbg !1547
  br label %50, !dbg !1587

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %51, metadata !1496, metadata !DIExpression()), !dbg !1547
  %53 = and i8 %35, 1, !dbg !1588
  %54 = icmp eq i8 %53, 0, !dbg !1588
  br i1 %54, label %55, label %70, !dbg !1590

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1547
  %56 = load i8, i8* %51, align 1, !dbg !1591, !tbaa !1581
  %57 = icmp eq i8 %56, 0, !dbg !1594
  br i1 %57, label %70, label %58, !dbg !1594

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %61, metadata !1499, metadata !DIExpression()), !dbg !1547
  %62 = icmp ult i64 %61, %39, !dbg !1595
  br i1 %62, label %63, label %65, !dbg !1598

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1595
  store i8 %59, i8* %64, align 1, !dbg !1595, !tbaa !1581
  br label %65, !dbg !1595

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %66, metadata !1499, metadata !DIExpression()), !dbg !1547
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %67, metadata !1501, metadata !DIExpression()), !dbg !1547
  %68 = load i8, i8* %67, align 1, !dbg !1591, !tbaa !1581
  %69 = icmp eq i8 %68, 0, !dbg !1594
  br i1 %69, label %70, label %58, !dbg !1594, !llvm.loop !1600

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %71, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %52, metadata !1501, metadata !DIExpression()), !dbg !1547
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %72, metadata !1502, metadata !DIExpression()), !dbg !1547
  br label %92, !dbg !1604

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1503, metadata !DIExpression()), !dbg !1547
  br label %74, !dbg !1605

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %75, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1505, metadata !DIExpression()), !dbg !1547
  br label %76, !dbg !1606

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1567
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %78, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %77, metadata !1503, metadata !DIExpression()), !dbg !1547
  %79 = and i8 %78, 1, !dbg !1607
  %80 = icmp eq i8 %79, 0, !dbg !1607
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1609
  br label %82, !dbg !1609

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1547
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1550
  call void @llvm.dbg.value(metadata i8 %84, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %83, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  %85 = and i8 %84, 1, !dbg !1610
  %86 = icmp eq i8 %85, 0, !dbg !1610
  br i1 %86, label %87, label %92, !dbg !1612

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1613
  br i1 %88, label %92, label %89, !dbg !1616

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1613, !tbaa !1581
  br label %92, !dbg !1613

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1505, metadata !DIExpression()), !dbg !1547
  br label %92, !dbg !1617

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1618
  unreachable, !dbg !1618

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1602
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %40 ], !dbg !1547
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1547
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1547
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %100, metadata !1505, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %98, metadata !1502, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %96, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %93, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 0, metadata !1498, metadata !DIExpression()), !dbg !1547
  %101 = and i8 %99, 1, !dbg !1619
  %102 = icmp ne i8 %101, 0, !dbg !1619
  %103 = icmp ne i32 %93, 2, !dbg !1619
  %104 = and i1 %103, %102, !dbg !1619
  %105 = icmp ne i64 %98, 0, !dbg !1619
  %106 = and i1 %105, %104, !dbg !1619
  %107 = icmp ugt i64 %98, 1, !dbg !1619
  %108 = and i8 %100, 1, !dbg !1621
  %109 = icmp eq i8 %108, 0, !dbg !1621
  %110 = icmp eq i32 %93, 2, !dbg !1624
  %111 = or i1 %103, %109, !dbg !1626
  %112 = icmp ne i8 %108, 0, !dbg !1628
  %113 = and i1 %110, %112, !dbg !1628
  %114 = xor i1 %102, true, !dbg !1629
  %115 = xor i1 %104, true, !dbg !1561
  %116 = and i1 %109, %115, !dbg !1561
  %117 = or i1 %25, %116, !dbg !1561
  %118 = and i8 %99, %100, !dbg !1630
  %119 = and i8 %118, 1, !dbg !1630
  %120 = icmp ne i8 %119, 0, !dbg !1630
  %121 = and i1 %120, %105, !dbg !1630
  br label %122, !dbg !1632

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1633
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1602
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1564
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1568
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1569
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1570
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %126, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %123, metadata !1498, metadata !DIExpression()), !dbg !1547
  %131 = icmp eq i64 %126, -1, !dbg !1634
  br i1 %131, label %132, label %136, !dbg !1635

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1636
  %134 = load i8, i8* %133, align 1, !dbg !1636, !tbaa !1581
  %135 = icmp eq i8 %134, 0, !dbg !1637
  br i1 %135, label %581, label %138, !dbg !1638

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1639
  br i1 %137, label %581, label %138, !dbg !1638

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1640
  br i1 %106, label %139, label %154, !dbg !1641

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1642
  %141 = and i1 %107, %131, !dbg !1643
  br i1 %141, label %142, label %144, !dbg !1643

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %143, metadata !1492, metadata !DIExpression()), !dbg !1547
  br label %144, !dbg !1645

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1492, metadata !DIExpression()), !dbg !1547
  %146 = icmp ugt i64 %140, %145, !dbg !1646
  br i1 %146, label %154, label %147, !dbg !1647

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1648
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1649
  %150 = icmp ne i32 %149, 0, !dbg !1650
  %151 = or i1 %150, %109, !dbg !1651
  %152 = xor i1 %150, true, !dbg !1651
  %153 = zext i1 %152 to i8, !dbg !1651
  br i1 %151, label %154, label %639, !dbg !1651

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1640
  call void @llvm.dbg.value(metadata i8 %156, metadata !1514, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %155, metadata !1492, metadata !DIExpression()), !dbg !1547
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1652
  %158 = load i8, i8* %157, align 1, !dbg !1652, !tbaa !1581
  call void @llvm.dbg.value(metadata i8 %158, metadata !1509, metadata !DIExpression()), !dbg !1640
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
  ], !dbg !1653

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1654

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1655

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1640
  %162 = and i8 %127, 1, !dbg !1658
  %163 = icmp eq i8 %162, 0, !dbg !1658
  %164 = and i1 %110, %163, !dbg !1658
  br i1 %164, label %165, label %181, !dbg !1658

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1660
  br i1 %166, label %167, label %169, !dbg !1664

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1660
  store i8 39, i8* %168, align 1, !dbg !1660, !tbaa !1581
  br label %169, !dbg !1660

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %170, metadata !1499, metadata !DIExpression()), !dbg !1547
  %171 = icmp ult i64 %170, %130, !dbg !1665
  br i1 %171, label %172, label %174, !dbg !1668

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1665
  store i8 36, i8* %173, align 1, !dbg !1665, !tbaa !1581
  br label %174, !dbg !1665

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %175, metadata !1499, metadata !DIExpression()), !dbg !1547
  %176 = icmp ult i64 %175, %130, !dbg !1669
  br i1 %176, label %177, label %179, !dbg !1672

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1669
  store i8 39, i8* %178, align 1, !dbg !1669, !tbaa !1581
  br label %179, !dbg !1669

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %180, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %181, !dbg !1673

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1547
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %183, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %182, metadata !1499, metadata !DIExpression()), !dbg !1547
  %184 = icmp ult i64 %182, %130, !dbg !1674
  br i1 %184, label %185, label %187, !dbg !1677

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1674
  store i8 92, i8* %186, align 1, !dbg !1674, !tbaa !1581
  br label %187, !dbg !1674

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %188, metadata !1499, metadata !DIExpression()), !dbg !1547
  br i1 %103, label %189, label %463, !dbg !1678

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1680
  %191 = icmp ult i64 %190, %155, !dbg !1681
  br i1 %191, label %192, label %463, !dbg !1682

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1683
  %194 = load i8, i8* %193, align 1, !dbg !1683, !tbaa !1581
  %195 = add i8 %194, -48, !dbg !1684
  %196 = icmp ult i8 %195, 10, !dbg !1684
  br i1 %196, label %197, label %463, !dbg !1684

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1685
  br i1 %198, label %199, label %201, !dbg !1689

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1685
  store i8 48, i8* %200, align 1, !dbg !1685, !tbaa !1581
  br label %201, !dbg !1685

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %202, metadata !1499, metadata !DIExpression()), !dbg !1547
  %203 = icmp ult i64 %202, %130, !dbg !1690
  br i1 %203, label %204, label %206, !dbg !1693

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1690
  store i8 48, i8* %205, align 1, !dbg !1690, !tbaa !1581
  br label %206, !dbg !1690

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %207, metadata !1499, metadata !DIExpression()), !dbg !1547
  br label %463, !dbg !1694

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1695

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1696

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1697

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1698

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1699
  %214 = icmp ult i64 %213, %155, !dbg !1700
  br i1 %214, label %215, label %463, !dbg !1701

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1702
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1703
  %218 = load i8, i8* %217, align 1, !dbg !1703, !tbaa !1581
  %219 = icmp eq i8 %218, 63, !dbg !1704
  br i1 %219, label %220, label %463, !dbg !1705

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1706
  %222 = load i8, i8* %221, align 1, !dbg !1706, !tbaa !1581
  %223 = sext i8 %222 to i32, !dbg !1706
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
  ], !dbg !1707

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1708

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %213, metadata !1498, metadata !DIExpression()), !dbg !1547
  %226 = icmp ult i64 %124, %130, !dbg !1710
  br i1 %226, label %227, label %229, !dbg !1713

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1710
  store i8 63, i8* %228, align 1, !dbg !1710, !tbaa !1581
  br label %229, !dbg !1710

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %230, metadata !1499, metadata !DIExpression()), !dbg !1547
  %231 = icmp ult i64 %230, %130, !dbg !1714
  br i1 %231, label %232, label %234, !dbg !1717

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1714
  store i8 34, i8* %233, align 1, !dbg !1714, !tbaa !1581
  br label %234, !dbg !1714

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %235, metadata !1499, metadata !DIExpression()), !dbg !1547
  %236 = icmp ult i64 %235, %130, !dbg !1718
  br i1 %236, label %237, label %239, !dbg !1721

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1718
  store i8 34, i8* %238, align 1, !dbg !1718, !tbaa !1581
  br label %239, !dbg !1718

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %240, metadata !1499, metadata !DIExpression()), !dbg !1547
  %241 = icmp ult i64 %240, %130, !dbg !1722
  br i1 %241, label %242, label %244, !dbg !1725

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1722
  store i8 63, i8* %243, align 1, !dbg !1722, !tbaa !1581
  br label %244, !dbg !1722

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %245, metadata !1499, metadata !DIExpression()), !dbg !1547
  br label %463, !dbg !1726

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1513, metadata !DIExpression()), !dbg !1640
  br label %256, !dbg !1727

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1513, metadata !DIExpression()), !dbg !1640
  br label %256, !dbg !1728

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1513, metadata !DIExpression()), !dbg !1640
  br label %254, !dbg !1729

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1513, metadata !DIExpression()), !dbg !1640
  br label %254, !dbg !1730

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1513, metadata !DIExpression()), !dbg !1640
  br label %256, !dbg !1731

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1513, metadata !DIExpression()), !dbg !1640
  br i1 %110, label %252, label %253, !dbg !1732

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1733

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1736

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1737
  call void @llvm.dbg.value(metadata i8 %255, metadata !1513, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.label(metadata !1542), !dbg !1738
  br i1 %111, label %256, label %625, !dbg !1739

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1737
  call void @llvm.dbg.value(metadata i8 %257, metadata !1513, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.label(metadata !1543), !dbg !1741
  br i1 %102, label %488, label %463, !dbg !1742

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1743

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1744, !tbaa !1581
  %261 = icmp eq i8 %260, 0, !dbg !1745
  br i1 %261, label %262, label %463, !dbg !1746

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1747
  br i1 %263, label %264, label %463, !dbg !1749

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1516, metadata !DIExpression()), !dbg !1640
  br label %265, !dbg !1750

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1640
  call void @llvm.dbg.value(metadata i8 %266, metadata !1516, metadata !DIExpression()), !dbg !1640
  br i1 %111, label %463, label %625, !dbg !1751

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1516, metadata !DIExpression()), !dbg !1640
  br i1 %110, label %268, label %463, !dbg !1752

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1753

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1755
  %271 = icmp ne i64 %125, 0, !dbg !1757
  %272 = or i1 %271, %270, !dbg !1758
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1758
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %274, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %273, metadata !1500, metadata !DIExpression()), !dbg !1547
  %275 = icmp ult i64 %124, %274, !dbg !1759
  br i1 %275, label %276, label %278, !dbg !1762

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1759
  store i8 39, i8* %277, align 1, !dbg !1759, !tbaa !1581
  br label %278, !dbg !1759

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %279, metadata !1499, metadata !DIExpression()), !dbg !1547
  %280 = icmp ult i64 %279, %274, !dbg !1763
  br i1 %280, label %281, label %283, !dbg !1766

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1763
  store i8 92, i8* %282, align 1, !dbg !1763, !tbaa !1581
  br label %283, !dbg !1763

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %284, metadata !1499, metadata !DIExpression()), !dbg !1547
  %285 = icmp ult i64 %284, %274, !dbg !1767
  br i1 %285, label %286, label %288, !dbg !1770

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1767
  store i8 39, i8* %287, align 1, !dbg !1767, !tbaa !1581
  br label %288, !dbg !1767

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %289, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %463, !dbg !1771

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1772

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1517, metadata !DIExpression()), !dbg !1773
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1774
  %293 = load i16*, i16** %292, align 8, !dbg !1774, !tbaa !1123
  %294 = zext i8 %158 to i64, !dbg !1774
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1774
  %296 = load i16, i16* %295, align 2, !dbg !1774, !tbaa !1776
  %297 = lshr i16 %296, 14, !dbg !1778
  %298 = trunc i16 %297 to i8, !dbg !1778
  %299 = and i8 %298, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i8 %299, metadata !1520, metadata !DIExpression()), !dbg !1773
  br label %355, !dbg !1779

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1780
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1521, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* %23, metadata !1782, metadata !DIExpression()) #12, !dbg !1790
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()) #12, !dbg !1790
  call void @llvm.dbg.value(metadata i64 8, metadata !1789, metadata !DIExpression()) #12, !dbg !1790
  store i64 0, i64* %10, align 8, !dbg !1792
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 1, metadata !1520, metadata !DIExpression()), !dbg !1773
  %301 = icmp eq i64 %155, -1, !dbg !1793
  br i1 %301, label %302, label %304, !dbg !1795

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %303, metadata !1492, metadata !DIExpression()), !dbg !1547
  br label %304, !dbg !1797

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  br label %306, !dbg !1798

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1799
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1800
  call void @llvm.dbg.value(metadata i8 %308, metadata !1520, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1801
  %309 = add i64 %307, %123, !dbg !1802
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1803
  %311 = sub i64 %305, %309, !dbg !1804
  call void @llvm.dbg.value(metadata i32* %12, metadata !1527, metadata !DIExpression(DW_OP_deref)), !dbg !1560
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %312, metadata !1530, metadata !DIExpression()), !dbg !1560
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1806

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  %314 = icmp ugt i64 %305, %309, !dbg !1807
  br i1 %314, label %315, label %340, !dbg !1809

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1810
  br label %317, !dbg !1810

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1517, metadata !DIExpression()), !dbg !1773
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1811
  %321 = load i8, i8* %320, align 1, !dbg !1811, !tbaa !1581
  %322 = icmp eq i8 %321, 0, !dbg !1809
  br i1 %322, label %340, label %323, !dbg !1810

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %324, metadata !1517, metadata !DIExpression()), !dbg !1773
  %325 = add i64 %324, %123, !dbg !1813
  %326 = icmp ult i64 %325, %305, !dbg !1807
  br i1 %326, label %317, label %340, !dbg !1809, !llvm.loop !1814

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1815
  %329 = and i1 %113, %328, !dbg !1818
  call void @llvm.dbg.value(metadata i64 1, metadata !1531, metadata !DIExpression()), !dbg !1819
  br i1 %329, label %330, label %343, !dbg !1818

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1531, metadata !DIExpression()), !dbg !1819
  %332 = add i64 %331, %309, !dbg !1820
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1821
  %334 = load i8, i8* %333, align 1, !dbg !1821, !tbaa !1581
  %335 = sext i8 %334 to i32, !dbg !1821
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1822

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %337, metadata !1531, metadata !DIExpression()), !dbg !1819
  %338 = icmp eq i64 %337, %312, !dbg !1815
  br i1 %338, label %343, label %330, !dbg !1824, !llvm.loop !1825

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %308, metadata !1520, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %307, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %308, metadata !1520, metadata !DIExpression()), !dbg !1773
  br label %340, !dbg !1827

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1827
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1828, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %344, metadata !1527, metadata !DIExpression()), !dbg !1560
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !1830
  %346 = icmp eq i32 %345, 0, !dbg !1830
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1831
  call void @llvm.dbg.value(metadata i8 %347, metadata !1520, metadata !DIExpression()), !dbg !1773
  %348 = add i64 %312, %307, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %348, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %347, metadata !1520, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %348, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1827
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1833
  %350 = icmp eq i32 %349, 0, !dbg !1834
  br i1 %350, label %306, label %351, !dbg !1835, !llvm.loop !1836

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1838
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 2, metadata !1493, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %99, metadata !1503, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %305, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1827
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1838
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1640
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1839
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %358, metadata !1520, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %357, metadata !1517, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %356, metadata !1492, metadata !DIExpression()), !dbg !1547
  %359 = and i8 %358, 1, !dbg !1840
  %360 = icmp ne i8 %359, 0, !dbg !1840
  call void @llvm.dbg.value(metadata i8 %359, metadata !1516, metadata !DIExpression()), !dbg !1640
  %361 = icmp ult i64 %357, 2, !dbg !1841
  %362 = or i1 %360, %114, !dbg !1842
  %363 = and i1 %361, %362, !dbg !1843
  br i1 %363, label %463, label %364, !dbg !1843

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %365, metadata !1538, metadata !DIExpression()), !dbg !1845
  br label %366, !dbg !1846

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1633
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1547
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1568
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1640
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1640
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1847
  call void @llvm.dbg.value(metadata i8 %372, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %371, metadata !1514, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %370, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %369, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %368, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %367, metadata !1498, metadata !DIExpression()), !dbg !1547
  br i1 %362, label %419, label %373, !dbg !1848

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1853

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1640
  %375 = and i8 %369, 1, !dbg !1856
  %376 = icmp eq i8 %375, 0, !dbg !1856
  %377 = and i1 %110, %376, !dbg !1856
  br i1 %377, label %378, label %394, !dbg !1856

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1858
  br i1 %379, label %380, label %382, !dbg !1862

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1858
  store i8 39, i8* %381, align 1, !dbg !1858, !tbaa !1581
  br label %382, !dbg !1858

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %383, metadata !1499, metadata !DIExpression()), !dbg !1547
  %384 = icmp ult i64 %383, %130, !dbg !1863
  br i1 %384, label %385, label %387, !dbg !1866

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1863
  store i8 36, i8* %386, align 1, !dbg !1863, !tbaa !1581
  br label %387, !dbg !1863

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %388, metadata !1499, metadata !DIExpression()), !dbg !1547
  %389 = icmp ult i64 %388, %130, !dbg !1867
  br i1 %389, label %390, label %392, !dbg !1870

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1867
  store i8 39, i8* %391, align 1, !dbg !1867, !tbaa !1581
  br label %392, !dbg !1867

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %393, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %394, !dbg !1871

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1547
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %396, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %395, metadata !1499, metadata !DIExpression()), !dbg !1547
  %397 = icmp ult i64 %395, %130, !dbg !1872
  br i1 %397, label %398, label %400, !dbg !1875

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1872
  store i8 92, i8* %399, align 1, !dbg !1872, !tbaa !1581
  br label %400, !dbg !1872

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %401, metadata !1499, metadata !DIExpression()), !dbg !1547
  %402 = icmp ult i64 %401, %130, !dbg !1876
  br i1 %402, label %403, label %407, !dbg !1879

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1876
  %405 = or i8 %404, 48, !dbg !1876
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1876
  store i8 %405, i8* %406, align 1, !dbg !1876, !tbaa !1581
  br label %407, !dbg !1876

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %408, metadata !1499, metadata !DIExpression()), !dbg !1547
  %409 = icmp ult i64 %408, %130, !dbg !1880
  br i1 %409, label %410, label %415, !dbg !1883

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1880
  %412 = and i8 %411, 7, !dbg !1880
  %413 = or i8 %412, 48, !dbg !1880
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1880
  store i8 %413, i8* %414, align 1, !dbg !1880, !tbaa !1581
  br label %415, !dbg !1880

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %416, metadata !1499, metadata !DIExpression()), !dbg !1547
  %417 = and i8 %370, 7, !dbg !1884
  %418 = or i8 %417, 48, !dbg !1885
  call void @llvm.dbg.value(metadata i8 %418, metadata !1509, metadata !DIExpression()), !dbg !1640
  br label %428, !dbg !1886

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1887
  %421 = icmp eq i8 %420, 0, !dbg !1887
  br i1 %421, label %428, label %422, !dbg !1889

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1890
  br i1 %423, label %424, label %426, !dbg !1894

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1890
  store i8 92, i8* %425, align 1, !dbg !1890, !tbaa !1581
  br label %426, !dbg !1890

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %427, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1640
  br label %428, !dbg !1895

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1547
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1568
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1640
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1640
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1640
  call void @llvm.dbg.value(metadata i8 %433, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %432, metadata !1514, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %431, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %430, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %429, metadata !1499, metadata !DIExpression()), !dbg !1547
  %434 = add i64 %367, 1, !dbg !1896
  %435 = icmp ugt i64 %365, %434, !dbg !1898
  br i1 %435, label %436, label %526, !dbg !1899

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1900
  %438 = icmp ne i8 %437, 0, !dbg !1900
  %439 = and i8 %433, 1, !dbg !1900
  %440 = icmp eq i8 %439, 0, !dbg !1900
  %441 = and i1 %438, %440, !dbg !1900
  br i1 %441, label %442, label %453, !dbg !1900

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1903
  br i1 %443, label %444, label %446, !dbg !1907

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1903
  store i8 39, i8* %445, align 1, !dbg !1903, !tbaa !1581
  br label %446, !dbg !1903

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %447, metadata !1499, metadata !DIExpression()), !dbg !1547
  %448 = icmp ult i64 %447, %130, !dbg !1908
  br i1 %448, label %449, label %451, !dbg !1911

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1908
  store i8 39, i8* %450, align 1, !dbg !1908, !tbaa !1581
  br label %451, !dbg !1908

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %452, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %453, !dbg !1912

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1913
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %455, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %454, metadata !1499, metadata !DIExpression()), !dbg !1547
  %456 = icmp ult i64 %454, %130, !dbg !1914
  br i1 %456, label %457, label %459, !dbg !1917

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1914
  store i8 %431, i8* %458, align 1, !dbg !1914, !tbaa !1581
  br label %459, !dbg !1914

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %460, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %434, metadata !1498, metadata !DIExpression()), !dbg !1547
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1918
  %462 = load i8, i8* %461, align 1, !dbg !1918, !tbaa !1581
  call void @llvm.dbg.value(metadata i8 %462, metadata !1509, metadata !DIExpression()), !dbg !1640
  br label %366, !dbg !1919, !llvm.loop !1920

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1633
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1547
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1564
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1923
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1547
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1547
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1640
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1640
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1640
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %472, metadata !1516, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %471, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %156, metadata !1514, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %470, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %469, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %468, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %467, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %466, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %465, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %464, metadata !1498, metadata !DIExpression()), !dbg !1547
  br i1 %117, label %486, label %474, !dbg !1924

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1925
  %476 = zext i8 %475 to i64, !dbg !1925
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1926
  %478 = load i32, i32* %477, align 4, !dbg !1926, !tbaa !1180
  %479 = and i8 %470, 31, !dbg !1927
  %480 = zext i8 %479 to i32, !dbg !1927
  %481 = shl nuw i32 1, %480, !dbg !1928
  %482 = and i32 %478, %481, !dbg !1928
  %483 = icmp eq i32 %482, 0, !dbg !1928
  %484 = icmp eq i8 %156, 0, !dbg !1929
  %485 = and i1 %484, %483, !dbg !1930
  br i1 %485, label %526, label %488, !dbg !1930

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1929
  br i1 %487, label %526, label %488, !dbg !1931

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1932
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1547
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1564
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1923
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1568
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1569
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1640
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1640
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %496, metadata !1516, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %495, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %494, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %493, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %492, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %491, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %490, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %489, metadata !1498, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1544), !dbg !1933
  br i1 %109, label %498, label %629, !dbg !1934

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1640
  %499 = and i8 %493, 1, !dbg !1936
  %500 = icmp eq i8 %499, 0, !dbg !1936
  %501 = and i1 %110, %500, !dbg !1936
  br i1 %501, label %502, label %518, !dbg !1936

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1938
  br i1 %503, label %504, label %506, !dbg !1942

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1938
  store i8 39, i8* %505, align 1, !dbg !1938, !tbaa !1581
  br label %506, !dbg !1938

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %507, metadata !1499, metadata !DIExpression()), !dbg !1547
  %508 = icmp ult i64 %507, %497, !dbg !1943
  br i1 %508, label %509, label %511, !dbg !1946

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1943
  store i8 36, i8* %510, align 1, !dbg !1943, !tbaa !1581
  br label %511, !dbg !1943

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %512, metadata !1499, metadata !DIExpression()), !dbg !1547
  %513 = icmp ult i64 %512, %497, !dbg !1947
  br i1 %513, label %514, label %516, !dbg !1950

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1947
  store i8 39, i8* %515, align 1, !dbg !1947, !tbaa !1581
  br label %516, !dbg !1947

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %517, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 1, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %518, !dbg !1951

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1640
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %520, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %519, metadata !1499, metadata !DIExpression()), !dbg !1547
  %521 = icmp ult i64 %519, %497, !dbg !1952
  br i1 %521, label %522, label %524, !dbg !1955

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1952
  store i8 92, i8* %523, align 1, !dbg !1952, !tbaa !1581
  br label %524, !dbg !1952

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %525, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %536, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %535, metadata !1516, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %534, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %533, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %532, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %531, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %530, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %529, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %528, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %527, metadata !1498, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1545), !dbg !1956
  br label %553, !dbg !1957

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1932
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1547
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1564
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1923
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1568
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1569
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1960
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1640
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1640
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %535, metadata !1516, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %534, metadata !1515, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %533, metadata !1509, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %532, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %531, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %530, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %529, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %528, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %527, metadata !1498, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1545), !dbg !1956
  %537 = and i8 %531, 1, !dbg !1957
  %538 = icmp ne i8 %537, 0, !dbg !1957
  %539 = and i8 %534, 1, !dbg !1957
  %540 = icmp eq i8 %539, 0, !dbg !1957
  %541 = and i1 %538, %540, !dbg !1957
  br i1 %541, label %542, label %553, !dbg !1957

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1961
  br i1 %543, label %544, label %546, !dbg !1965

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1961
  store i8 39, i8* %545, align 1, !dbg !1961, !tbaa !1581
  br label %546, !dbg !1961

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %547, metadata !1499, metadata !DIExpression()), !dbg !1547
  %548 = icmp ult i64 %547, %536, !dbg !1966
  br i1 %548, label %549, label %551, !dbg !1969

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1966
  store i8 39, i8* %550, align 1, !dbg !1966, !tbaa !1581
  br label %551, !dbg !1966

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %552, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1547
  br label %553, !dbg !1970

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1640
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1547
  call void @llvm.dbg.value(metadata i8 %562, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %561, metadata !1499, metadata !DIExpression()), !dbg !1547
  %563 = icmp ult i64 %561, %554, !dbg !1971
  br i1 %563, label %564, label %566, !dbg !1974

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1971
  store i8 %556, i8* %565, align 1, !dbg !1971, !tbaa !1581
  br label %566, !dbg !1971

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %567, metadata !1499, metadata !DIExpression()), !dbg !1547
  %568 = and i8 %555, 1, !dbg !1975
  %569 = icmp eq i8 %568, 0, !dbg !1975
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1977
  call void @llvm.dbg.value(metadata i8 %570, metadata !1508, metadata !DIExpression()), !dbg !1547
  br label %571, !dbg !1978

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1932
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1547
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1564
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1923
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1568
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1547
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1570
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %578, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %577, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %576, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %575, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %574, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %573, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %572, metadata !1498, metadata !DIExpression()), !dbg !1547
  %580 = add i64 %572, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %580, metadata !1498, metadata !DIExpression()), !dbg !1547
  br label %122, !dbg !1980, !llvm.loop !1981

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %127, metadata !1506, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %128, metadata !1507, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %129, metadata !1508, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  %583 = icmp eq i64 %124, 0, !dbg !1983
  %584 = and i1 %110, %583, !dbg !1985
  %585 = xor i1 %584, true, !dbg !1985
  %586 = or i1 %109, %585, !dbg !1985
  br i1 %586, label %587, label %629, !dbg !1985

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1986
  %589 = xor i1 %588, true, !dbg !1986
  %590 = and i8 %128, 1, !dbg !1988
  %591 = icmp eq i8 %590, 0, !dbg !1988
  %592 = or i1 %591, %589, !dbg !1986
  br i1 %592, label %602, label %593, !dbg !1986

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1989
  %595 = icmp eq i8 %594, 0, !dbg !1989
  br i1 %595, label %598, label %596, !dbg !1992

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %94, metadata !1496, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %95, metadata !1497, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %125, metadata !1500, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %582, metadata !1492, metadata !DIExpression()), !dbg !1547
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1993
  br label %645, !dbg !1994

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !1995
  %600 = icmp ne i64 %125, 0, !dbg !1997
  %601 = and i1 %600, %599, !dbg !1998
  br i1 %601, label %26, label %602, !dbg !1998

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %130, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  %603 = icmp ne i8* %97, null, !dbg !1999
  %604 = and i1 %603, %109, !dbg !2001
  br i1 %604, label %605, label %620, !dbg !2001

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %124, metadata !1499, metadata !DIExpression()), !dbg !1547
  %606 = load i8, i8* %97, align 1, !dbg !2002, !tbaa !1581
  %607 = icmp eq i8 %606, 0, !dbg !2005
  br i1 %607, label %620, label %608, !dbg !2005

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1501, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %611, metadata !1499, metadata !DIExpression()), !dbg !1547
  %612 = icmp ult i64 %611, %130, !dbg !2006
  br i1 %612, label %613, label %615, !dbg !2009

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2006
  store i8 %609, i8* %614, align 1, !dbg !2006, !tbaa !1581
  br label %615, !dbg !2006

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %616, metadata !1499, metadata !DIExpression()), !dbg !1547
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8* %617, metadata !1501, metadata !DIExpression()), !dbg !1547
  %618 = load i8, i8* %617, align 1, !dbg !2002, !tbaa !1581
  %619 = icmp eq i8 %618, 0, !dbg !2005
  br i1 %619, label %620, label %608, !dbg !2005, !llvm.loop !2011

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1602
  call void @llvm.dbg.value(metadata i64 %621, metadata !1499, metadata !DIExpression()), !dbg !1547
  %622 = icmp ult i64 %621, %130, !dbg !2013
  br i1 %622, label %623, label %645, !dbg !2015

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2016
  store i8 0, i8* %624, align 1, !dbg !2017, !tbaa !1581
  br label %645, !dbg !2016

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %630, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1546), !dbg !2018
  %627 = icmp eq i8 %101, 0, !dbg !2019
  %628 = select i1 %627, i32 2, i32 4, !dbg !2019
  br label %635, !dbg !2019

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1490, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i64 %630, metadata !1492, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.label(metadata !1546), !dbg !2018
  %632 = icmp eq i32 %93, 2, !dbg !2021
  %633 = icmp eq i8 %101, 0, !dbg !2019
  %634 = select i1 %633, i32 2, i32 4, !dbg !2019
  br i1 %632, label %635, label %639, !dbg !2019

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2019

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1493, metadata !DIExpression()), !dbg !1547
  %643 = and i32 %5, -3, !dbg !2022
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2023
  br label %645, !dbg !2024

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2025
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2026 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2030, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i32 %1, metadata !2031, metadata !DIExpression()), !dbg !2034
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2035
  call void @llvm.dbg.value(metadata i8* %3, metadata !2032, metadata !DIExpression()), !dbg !2034
  %4 = icmp eq i8* %3, %0, !dbg !2036
  br i1 %4, label %5, label %71, !dbg !2038

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2039
  call void @llvm.dbg.value(metadata i8* %6, metadata !2033, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* undef, metadata !2046, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 85, metadata !2047, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 84, metadata !2048, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 70, metadata !2049, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 45, metadata !2050, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 56, metadata !2051, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2052, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2056
  %7 = load i8, i8* %6, align 1, !dbg !2059, !tbaa !1581
  %8 = and i8 %7, -33, !dbg !2059
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2059

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2061, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* undef, metadata !2066, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 84, metadata !2067, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 70, metadata !2068, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 45, metadata !2069, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 56, metadata !2070, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2075
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2079
  %11 = load i8, i8* %10, align 1, !dbg !2079, !tbaa !1581
  %12 = and i8 %11, -33, !dbg !2079
  %13 = icmp eq i8 %12, 84, !dbg !2079
  br i1 %13, label %14, label %68, !dbg !2079

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2081, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* undef, metadata !2086, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 70, metadata !2087, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 45, metadata !2088, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 56, metadata !2089, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2094
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2098
  %16 = load i8, i8* %15, align 1, !dbg !2098, !tbaa !1581
  %17 = and i8 %16, -33, !dbg !2098
  %18 = icmp eq i8 %17, 70, !dbg !2098
  br i1 %18, label %19, label %68, !dbg !2098

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2100, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8* undef, metadata !2105, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 45, metadata !2106, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 56, metadata !2107, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2108, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2109, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 0, metadata !2111, metadata !DIExpression()), !dbg !2112
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2116
  %21 = load i8, i8* %20, align 1, !dbg !2116, !tbaa !1581
  %22 = icmp eq i8 %21, 45, !dbg !2116
  br i1 %22, label %23, label %68, !dbg !2118

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2119, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* undef, metadata !2124, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 56, metadata !2125, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2126, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2130
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2134
  %25 = load i8, i8* %24, align 1, !dbg !2134, !tbaa !1581
  %26 = icmp eq i8 %25, 56, !dbg !2134
  br i1 %26, label %27, label %68, !dbg !2136

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* undef, metadata !2142, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2147
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2151
  %29 = load i8, i8* %28, align 1, !dbg !2151, !tbaa !1581
  %30 = icmp eq i8 %29, 0, !dbg !2151
  br i1 %30, label %31, label %68, !dbg !2153

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2154, !tbaa !1581
  %33 = icmp eq i8 %32, 96, !dbg !2155
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !2154
  br label %71, !dbg !2156

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2061, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8* undef, metadata !2066, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 66, metadata !2067, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 49, metadata !2068, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 56, metadata !2069, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 48, metadata !2070, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 51, metadata !2071, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 48, metadata !2072, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2157
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2161
  %37 = load i8, i8* %36, align 1, !dbg !2161, !tbaa !1581
  %38 = and i8 %37, -33, !dbg !2161
  %39 = icmp eq i8 %38, 66, !dbg !2161
  br i1 %39, label %40, label %68, !dbg !2161

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2081, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8* undef, metadata !2086, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 49, metadata !2087, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 56, metadata !2088, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 48, metadata !2089, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 51, metadata !2090, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 48, metadata !2091, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2162
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2164
  %42 = load i8, i8* %41, align 1, !dbg !2164, !tbaa !1581
  %43 = icmp eq i8 %42, 49, !dbg !2164
  br i1 %43, label %44, label %68, !dbg !2165

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2100, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8* undef, metadata !2105, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 56, metadata !2106, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2107, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 51, metadata !2108, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2109, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2110, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2111, metadata !DIExpression()), !dbg !2166
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2168
  %46 = load i8, i8* %45, align 1, !dbg !2168, !tbaa !1581
  %47 = icmp eq i8 %46, 56, !dbg !2168
  br i1 %47, label %48, label %68, !dbg !2169

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2119, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* undef, metadata !2124, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 48, metadata !2125, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 51, metadata !2126, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 48, metadata !2127, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2129, metadata !DIExpression()), !dbg !2170
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2172
  %50 = load i8, i8* %49, align 1, !dbg !2172, !tbaa !1581
  %51 = icmp eq i8 %50, 48, !dbg !2172
  br i1 %51, label %52, label %68, !dbg !2173

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2137, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* undef, metadata !2142, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 51, metadata !2143, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 48, metadata !2144, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2174
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2176
  %54 = load i8, i8* %53, align 1, !dbg !2176, !tbaa !1581
  %55 = icmp eq i8 %54, 51, !dbg !2176
  br i1 %55, label %56, label %68, !dbg !2177

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2178, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* undef, metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 48, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2187
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2191
  %58 = load i8, i8* %57, align 1, !dbg !2191, !tbaa !1581
  %59 = icmp eq i8 %58, 48, !dbg !2191
  br i1 %59, label %60, label %68, !dbg !2193

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2194, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* undef, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2201, metadata !DIExpression()), !dbg !2202
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2206
  %62 = load i8, i8* %61, align 1, !dbg !2206, !tbaa !1581
  %63 = icmp eq i8 %62, 0, !dbg !2206
  br i1 %63, label %64, label %68, !dbg !2208

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2209, !tbaa !1581
  %66 = icmp eq i8 %65, 96, !dbg !2210
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !2209
  br label %71, !dbg !2211

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2212
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !2213
  br label %71, !dbg !2214

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2034
  ret i8* %72, !dbg !2215
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
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i64 %1, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2222, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2224, metadata !DIExpression()) #12, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %1, metadata !2229, metadata !DIExpression()) #12, !dbg !2237
  call void @llvm.dbg.value(metadata i64* null, metadata !2230, metadata !DIExpression()) #12, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2231, metadata !DIExpression()) #12, !dbg !2237
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2239
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2232, metadata !DIExpression()) #12, !dbg !2237
  %6 = tail call i32* @__errno_location() #24, !dbg !2240
  %7 = load i32, i32* %6, align 4, !dbg !2240, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %7, metadata !2233, metadata !DIExpression()) #12, !dbg !2237
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2241
  %9 = load i32, i32* %8, align 4, !dbg !2241, !tbaa !1432
  %10 = or i32 %9, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %10, metadata !2234, metadata !DIExpression()) #12, !dbg !2237
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2243
  %12 = load i32, i32* %11, align 8, !dbg !2243, !tbaa !1380
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2244
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2245
  %15 = load i8*, i8** %14, align 8, !dbg !2245, !tbaa !1455
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2246
  %17 = load i8*, i8** %16, align 8, !dbg !2246, !tbaa !1458
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2247
  %19 = add i64 %18, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %19, metadata !2235, metadata !DIExpression()) #12, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %19, metadata !2249, metadata !DIExpression()) #12, !dbg !2254
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2256
  call void @llvm.dbg.value(metadata i8* %20, metadata !2236, metadata !DIExpression()) #12, !dbg !2237
  %21 = load i32, i32* %11, align 8, !dbg !2257, !tbaa !1380
  %22 = load i8*, i8** %14, align 8, !dbg !2258, !tbaa !1455
  %23 = load i8*, i8** %16, align 8, !dbg !2259, !tbaa !1458
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2260
  store i32 %7, i32* %6, align 4, !dbg !2261, !tbaa !1180
  ret i8* %20, !dbg !2262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2224, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2229, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64* %2, metadata !2230, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2231, metadata !DIExpression()), !dbg !2263
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2264
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2232, metadata !DIExpression()), !dbg !2263
  %7 = tail call i32* @__errno_location() #24, !dbg !2265
  %8 = load i32, i32* %7, align 4, !dbg !2265, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %8, metadata !2233, metadata !DIExpression()), !dbg !2263
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2266
  %10 = load i32, i32* %9, align 4, !dbg !2266, !tbaa !1432
  %11 = icmp ne i64* %2, null, !dbg !2267
  %12 = xor i1 %11, true, !dbg !2267
  %13 = zext i1 %12 to i32, !dbg !2267
  %14 = or i32 %10, %13, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %14, metadata !2234, metadata !DIExpression()), !dbg !2263
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2269
  %16 = load i32, i32* %15, align 8, !dbg !2269, !tbaa !1380
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2270
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2271
  %19 = load i8*, i8** %18, align 8, !dbg !2271, !tbaa !1455
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2272
  %21 = load i8*, i8** %20, align 8, !dbg !2272, !tbaa !1458
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2273
  %23 = add i64 %22, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %23, metadata !2235, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %23, metadata !2249, metadata !DIExpression()) #12, !dbg !2275
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %24, metadata !2236, metadata !DIExpression()), !dbg !2263
  %25 = load i32, i32* %15, align 8, !dbg !2278, !tbaa !1380
  %26 = load i8*, i8** %18, align 8, !dbg !2279, !tbaa !1455
  %27 = load i8*, i8** %20, align 8, !dbg !2280, !tbaa !1458
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2281
  store i32 %8, i32* %7, align 4, !dbg !2282, !tbaa !1180
  br i1 %11, label %29, label %30, !dbg !2283

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2284, !tbaa !2286
  br label %30, !dbg !2288

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2289
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2290 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2294, !tbaa !1123
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2292, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i32 1, metadata !2293, metadata !DIExpression()), !dbg !2295
  %2 = load i32, i32* @nslots, align 4, !dbg !2296, !tbaa !1180
  %3 = icmp sgt i32 %2, 1, !dbg !2299
  br i1 %3, label %4, label %12, !dbg !2300

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2293, metadata !DIExpression()), !dbg !2295
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2301
  %7 = load i8*, i8** %6, align 8, !dbg !2301, !tbaa !2302
  tail call void @free(i8* %7) #12, !dbg !2304
  %8 = add nuw nsw i64 %5, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %8, metadata !2293, metadata !DIExpression()), !dbg !2295
  %9 = load i32, i32* @nslots, align 4, !dbg !2296, !tbaa !1180
  %10 = sext i32 %9 to i64, !dbg !2299
  %11 = icmp slt i64 %8, %10, !dbg !2299
  br i1 %11, label %4, label %12, !dbg !2300, !llvm.loop !2306

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2308
  %14 = load i8*, i8** %13, align 8, !dbg !2308, !tbaa !2302
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2310
  br i1 %15, label %17, label %16, !dbg !2311

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2312
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2314, !tbaa !2315
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2316, !tbaa !2302
  br label %17, !dbg !2317

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2318
  br i1 %18, label %21, label %19, !dbg !2320

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2321
  tail call void @free(i8* %20) #12, !dbg !2323
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2324, !tbaa !1123
  br label %21, !dbg !2325

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2326, !tbaa !1180
  ret void, !dbg !2327
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2330, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %1, metadata !2331, metadata !DIExpression()), !dbg !2332
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2333
  ret i8* %3, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %1, metadata !2340, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %2, metadata !2341, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2342, metadata !DIExpression()), !dbg !2354
  %5 = tail call i32* @__errno_location() #24, !dbg !2355
  %6 = load i32, i32* %5, align 4, !dbg !2355, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %6, metadata !2343, metadata !DIExpression()), !dbg !2354
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2356, !tbaa !1123
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2344, metadata !DIExpression()), !dbg !2354
  %8 = icmp slt i32 %0, 0, !dbg !2357
  br i1 %8, label %9, label %10, !dbg !2359

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2360
  unreachable, !dbg !2360

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2361, !tbaa !1180
  %12 = icmp sgt i32 %11, %0, !dbg !2362
  br i1 %12, label %34, label %13, !dbg !2363

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2364
  call void @llvm.dbg.value(metadata i1 %14, metadata !2345, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2348, metadata !DIExpression()), !dbg !2365
  %15 = icmp eq i32 %0, 2147483647, !dbg !2366
  br i1 %15, label %16, label %17, !dbg !2368

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2369
  unreachable, !dbg !2369

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2370
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2370
  %20 = add nuw nsw i32 %0, 1, !dbg !2371
  %21 = sext i32 %20 to i64, !dbg !2372
  %22 = shl nuw nsw i64 %21, 4, !dbg !2373
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2374
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2344, metadata !DIExpression()), !dbg !2354
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2375, !tbaa !1123
  br i1 %14, label %25, label %26, !dbg !2376

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2377, !tbaa.struct !2379
  br label %26, !dbg !2380

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2381, !tbaa !1180
  %28 = sext i32 %27 to i64, !dbg !2382
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2382
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2383
  %31 = sub nsw i32 %20, %27, !dbg !2384
  %32 = sext i32 %31 to i64, !dbg !2385
  %33 = shl nsw i64 %32, 4, !dbg !2386
  call void @llvm.dbg.value(metadata i8* %30, metadata !1782, metadata !DIExpression()) #12, !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()) #12, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %33, metadata !1789, metadata !DIExpression()) #12, !dbg !2387
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2389
  store i32 %20, i32* @nslots, align 4, !dbg !2390, !tbaa !1180
  br label %34, !dbg !2391

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2354
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2344, metadata !DIExpression()), !dbg !2354
  %36 = zext i32 %0 to i64, !dbg !2392
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2393
  %38 = load i64, i64* %37, align 8, !dbg !2393, !tbaa !2315
  call void @llvm.dbg.value(metadata i64 %38, metadata !2349, metadata !DIExpression()), !dbg !2394
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2395
  %40 = load i8*, i8** %39, align 8, !dbg !2395, !tbaa !2302
  call void @llvm.dbg.value(metadata i8* %40, metadata !2351, metadata !DIExpression()), !dbg !2394
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2396
  %42 = load i32, i32* %41, align 4, !dbg !2396, !tbaa !1432
  %43 = or i32 %42, 1, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %43, metadata !2352, metadata !DIExpression()), !dbg !2394
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2398
  %45 = load i32, i32* %44, align 8, !dbg !2398, !tbaa !1380
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2399
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2400
  %48 = load i8*, i8** %47, align 8, !dbg !2400, !tbaa !1455
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2401
  %50 = load i8*, i8** %49, align 8, !dbg !2401, !tbaa !1458
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %51, metadata !2353, metadata !DIExpression()), !dbg !2394
  %52 = icmp ugt i64 %38, %51, !dbg !2403
  br i1 %52, label %63, label %53, !dbg !2405

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %54, metadata !2349, metadata !DIExpression()), !dbg !2394
  store i64 %54, i64* %37, align 8, !dbg !2408, !tbaa !2315
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2409
  br i1 %55, label %57, label %56, !dbg !2411

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2412
  br label %57, !dbg !2412

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2249, metadata !DIExpression()) #12, !dbg !2413
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2415
  call void @llvm.dbg.value(metadata i8* %58, metadata !2351, metadata !DIExpression()), !dbg !2394
  store i8* %58, i8** %39, align 8, !dbg !2416, !tbaa !2302
  %59 = load i32, i32* %44, align 8, !dbg !2417, !tbaa !1380
  %60 = load i8*, i8** %47, align 8, !dbg !2418, !tbaa !1455
  %61 = load i8*, i8** %49, align 8, !dbg !2419, !tbaa !1458
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2420
  br label %63, !dbg !2421

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8* %64, metadata !2351, metadata !DIExpression()), !dbg !2394
  store i32 %6, i32* %5, align 4, !dbg !2422, !tbaa !1180
  ret i8* %64, !dbg !2423
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2424 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %2, metadata !2430, metadata !DIExpression()), !dbg !2431
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2432
  ret i8* %4, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 0, metadata !2330, metadata !DIExpression()) #12, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %0, metadata !2331, metadata !DIExpression()) #12, !dbg !2438
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2440
  ret i8* %2, !dbg !2441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2442 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 0, metadata !2428, metadata !DIExpression()) #12, !dbg !2449
  call void @llvm.dbg.value(metadata i8* %0, metadata !2429, metadata !DIExpression()) #12, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %1, metadata !2430, metadata !DIExpression()) #12, !dbg !2449
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2451
  ret i8* %3, !dbg !2452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2453 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2457, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %1, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %2, metadata !2459, metadata !DIExpression()), !dbg !2461
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2462
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %1, metadata !2464, metadata !DIExpression()) #12, !dbg !2470
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2469, metadata !DIExpression()) #12, !dbg !2472
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2472, !alias.scope !2473
  %6 = icmp eq i32 %1, 10, !dbg !2476
  br i1 %6, label %7, label %8, !dbg !2478

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2479, !noalias !2473
  unreachable, !dbg !2479

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2480
  store i32 %1, i32* %9, align 8, !dbg !2481, !tbaa !1380, !alias.scope !2473
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2483
  ret i8* %10, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2485 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2489, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %1, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %2, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %3, metadata !2492, metadata !DIExpression()), !dbg !2494
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2464, metadata !DIExpression()) #12, !dbg !2497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2469, metadata !DIExpression()) #12, !dbg !2499
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2499, !alias.scope !2500
  %7 = icmp eq i32 %1, 10, !dbg !2503
  br i1 %7, label %8, label %9, !dbg !2504

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2505, !noalias !2500
  unreachable, !dbg !2505

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2506
  store i32 %1, i32* %10, align 8, !dbg !2507, !tbaa !1380, !alias.scope !2500
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2508
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2509
  ret i8* %11, !dbg !2510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2511 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2469, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2460, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !2516, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 0, metadata !2457, metadata !DIExpression()) #12, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()) #12, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %1, metadata !2459, metadata !DIExpression()) #12, !dbg !2522
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()) #12, !dbg !2524
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2517, !alias.scope !2525
  %5 = icmp eq i32 %0, 10, !dbg !2528
  br i1 %5, label %6, label %7, !dbg !2529

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2530, !noalias !2525
  unreachable, !dbg !2530

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2531
  store i32 %0, i32* %8, align 8, !dbg !2532, !tbaa !1380, !alias.scope !2525
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2534
  ret i8* %9, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2536 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2469, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2493, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %0, metadata !2540, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2541, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 %2, metadata !2542, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()) #12, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %0, metadata !2490, metadata !DIExpression()) #12, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %1, metadata !2491, metadata !DIExpression()) #12, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %2, metadata !2492, metadata !DIExpression()) #12, !dbg !2548
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %0, metadata !2464, metadata !DIExpression()) #12, !dbg !2550
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2543, !alias.scope !2551
  %6 = icmp eq i32 %0, 10, !dbg !2554
  br i1 %6, label %7, label %8, !dbg !2555

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2556, !noalias !2551
  unreachable, !dbg !2556

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2557
  store i32 %0, i32* %9, align 8, !dbg !2558, !tbaa !1380, !alias.scope !2551
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2560
  ret i8* %10, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2562 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 %2, metadata !2568, metadata !DIExpression()), !dbg !2570
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2571
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2573, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1398, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 %2, metadata !1399, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 1, metadata !1400, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 %2, metadata !1401, metadata !DIExpression()), !dbg !2575
  %6 = lshr i8 %2, 5, !dbg !2577
  %7 = zext i8 %6 to i64, !dbg !2577
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2578
  call void @llvm.dbg.value(metadata i32* %8, metadata !1403, metadata !DIExpression()), !dbg !2575
  %9 = and i8 %2, 31, !dbg !2579
  %10 = zext i8 %9 to i32, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %10, metadata !1405, metadata !DIExpression()), !dbg !2575
  %11 = load i32, i32* %8, align 4, !dbg !2580, !tbaa !1180
  %12 = lshr i32 %11, %10, !dbg !2581
  %13 = and i32 %12, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %13, metadata !1406, metadata !DIExpression()), !dbg !2575
  %14 = xor i32 %13, 1, !dbg !2583
  %15 = shl i32 %14, %10, !dbg !2584
  %16 = xor i32 %15, %11, !dbg !2585
  store i32 %16, i32* %8, align 4, !dbg !2585, !tbaa !1180
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2587
  ret i8* %17, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2589 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 %1, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #12, !dbg !2598
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #12, !dbg !2598
  call void @llvm.dbg.value(metadata i8 %1, metadata !2568, metadata !DIExpression()) #12, !dbg !2598
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2600, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1398, metadata !DIExpression()) #12, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %1, metadata !1399, metadata !DIExpression()) #12, !dbg !2601
  call void @llvm.dbg.value(metadata i32 1, metadata !1400, metadata !DIExpression()) #12, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %1, metadata !1401, metadata !DIExpression()) #12, !dbg !2601
  %5 = lshr i8 %1, 5, !dbg !2603
  %6 = zext i8 %5 to i64, !dbg !2603
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2604
  call void @llvm.dbg.value(metadata i32* %7, metadata !1403, metadata !DIExpression()) #12, !dbg !2601
  %8 = and i8 %1, 31, !dbg !2605
  %9 = zext i8 %8 to i32, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %9, metadata !1405, metadata !DIExpression()) #12, !dbg !2601
  %10 = load i32, i32* %7, align 4, !dbg !2606, !tbaa !1180
  %11 = lshr i32 %10, %9, !dbg !2607
  %12 = and i32 %11, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %12, metadata !1406, metadata !DIExpression()) #12, !dbg !2601
  %13 = xor i32 %12, 1, !dbg !2609
  %14 = shl i32 %13, %9, !dbg !2610
  %15 = xor i32 %14, %10, !dbg !2611
  store i32 %15, i32* %7, align 4, !dbg !2611, !tbaa !1180
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2613
  ret i8* %16, !dbg !2614
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2615 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2569, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !2593, metadata !DIExpression()) #12, !dbg !2622
  call void @llvm.dbg.value(metadata i8 58, metadata !2594, metadata !DIExpression()) #12, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i64 -1, metadata !2567, metadata !DIExpression()) #12, !dbg !2623
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #12, !dbg !2623
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2624
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2625, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1398, metadata !DIExpression()) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i8 58, metadata !1399, metadata !DIExpression()) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i32 1, metadata !1400, metadata !DIExpression()) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()) #12, !dbg !2626
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2628
  call void @llvm.dbg.value(metadata i32* %4, metadata !1403, metadata !DIExpression()) #12, !dbg !2626
  call void @llvm.dbg.value(metadata i32 26, metadata !1405, metadata !DIExpression()) #12, !dbg !2626
  %5 = load i32, i32* %4, align 4, !dbg !2629, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %5, metadata !1406, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2626
  %6 = or i32 %5, 67108864, !dbg !2630
  store i32 %6, i32* %4, align 4, !dbg !2630, !tbaa !1180
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2632
  ret i8* %7, !dbg !2633
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2634 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2569, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 %1, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %1, metadata !2567, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !2568, metadata !DIExpression()) #12, !dbg !2641
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2643, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1398, metadata !DIExpression()) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i8 58, metadata !1399, metadata !DIExpression()) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i32 1, metadata !1400, metadata !DIExpression()) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()) #12, !dbg !2644
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2646
  call void @llvm.dbg.value(metadata i32* %5, metadata !1403, metadata !DIExpression()) #12, !dbg !2644
  call void @llvm.dbg.value(metadata i32 26, metadata !1405, metadata !DIExpression()) #12, !dbg !2644
  %6 = load i32, i32* %5, align 4, !dbg !2647, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %6, metadata !1406, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2644
  %7 = or i32 %6, 67108864, !dbg !2648
  store i32 %7, i32* %5, align 4, !dbg !2648, !tbaa !1180
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2649
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2650
  ret i8* %8, !dbg !2651
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2652 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2469, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %0, metadata !2654, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 %1, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()), !dbg !2660
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2661
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2657, metadata !DIExpression()), !dbg !2662
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %1, metadata !2464, metadata !DIExpression()) #12, !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2664
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2658, !alias.scope !2665
  %8 = icmp eq i32 %1, 10, !dbg !2668
  br i1 %8, label %9, label %10, !dbg !2669

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2670, !noalias !2665
  unreachable, !dbg !2670

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2469, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2664
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2663
  store i32 %1, i32* %11, align 8, !dbg !2663, !tbaa.struct !2574
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2663
  %13 = bitcast i32* %12 to i8*, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2663, !tbaa.struct !2574
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1398, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !1399, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 1, metadata !1400, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !1401, metadata !DIExpression()), !dbg !2671
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2673
  call void @llvm.dbg.value(metadata i32* %14, metadata !1403, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 26, metadata !1405, metadata !DIExpression()), !dbg !2671
  %15 = load i32, i32* %14, align 4, !dbg !2674, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %15, metadata !1406, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2671
  %16 = or i32 %15, 67108864, !dbg !2675
  store i32 %16, i32* %14, align 4, !dbg !2675, !tbaa !1180
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2677
  ret i8* %17, !dbg !2678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2679 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2687, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 %0, metadata !2683, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %1, metadata !2684, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %2, metadata !2685, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i8* %3, metadata !2686, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()) #12, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %1, metadata !2693, metadata !DIExpression()) #12, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %2, metadata !2694, metadata !DIExpression()) #12, !dbg !2700
  call void @llvm.dbg.value(metadata i8* %3, metadata !2695, metadata !DIExpression()) #12, !dbg !2700
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #12, !dbg !2700
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2702, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1439, metadata !DIExpression()) #12, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %1, metadata !1440, metadata !DIExpression()) #12, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %2, metadata !1441, metadata !DIExpression()) #12, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1439, metadata !DIExpression()) #12, !dbg !2703
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2705
  store i32 10, i32* %7, align 8, !dbg !2706, !tbaa !1380
  %8 = icmp ne i8* %1, null, !dbg !2707
  %9 = icmp ne i8* %2, null, !dbg !2708
  %10 = and i1 %8, %9, !dbg !2709
  br i1 %10, label %12, label %11, !dbg !2709

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2710
  unreachable, !dbg !2710

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2711
  store i8* %1, i8** %13, align 8, !dbg !2712, !tbaa !1455
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2713
  store i8* %2, i8** %14, align 8, !dbg !2714, !tbaa !1458
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2715
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2716
  ret i8* %15, !dbg !2717
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2688 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2693, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !2694, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %3, metadata !2695, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %4, metadata !2696, metadata !DIExpression()), !dbg !2718
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2687, metadata !DIExpression()), !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2721, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1439, metadata !DIExpression()) #12, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !1440, metadata !DIExpression()) #12, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !1441, metadata !DIExpression()) #12, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1439, metadata !DIExpression()) #12, !dbg !2722
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2724
  store i32 10, i32* %8, align 8, !dbg !2725, !tbaa !1380
  %9 = icmp ne i8* %1, null, !dbg !2726
  %10 = icmp ne i8* %2, null, !dbg !2727
  %11 = and i1 %9, %10, !dbg !2728
  br i1 %11, label %13, label %12, !dbg !2728

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2729
  unreachable, !dbg !2729

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2730
  store i8* %1, i8** %14, align 8, !dbg !2731, !tbaa !1455
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2732
  store i8* %2, i8** %15, align 8, !dbg !2733, !tbaa !1458
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2735
  ret i8* %16, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2737 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2687, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %2, metadata !2743, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()) #12, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()) #12, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()) #12, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()) #12, !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2692, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %2, metadata !2695, metadata !DIExpression()) #12, !dbg !2749
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #12, !dbg !2749
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2751, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1439, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !1440, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !1441, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1439, metadata !DIExpression()) #12, !dbg !2752
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %6, align 8, !dbg !2755, !tbaa !1380
  %7 = icmp ne i8* %0, null, !dbg !2756
  %8 = icmp ne i8* %1, null, !dbg !2757
  %9 = and i1 %7, %8, !dbg !2758
  br i1 %9, label %11, label %10, !dbg !2758

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2759
  unreachable, !dbg !2759

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2760
  store i8* %0, i8** %12, align 8, !dbg !2761, !tbaa !1455
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2762
  store i8* %1, i8** %13, align 8, !dbg !2763, !tbaa !1458
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2765
  ret i8* %14, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2767 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2687, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %3, metadata !2774, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2692, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %0, metadata !2693, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %2, metadata !2695, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %3, metadata !2696, metadata !DIExpression()) #12, !dbg !2778
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2779
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2780, !tbaa.struct !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1439, metadata !DIExpression()) #12, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %0, metadata !1440, metadata !DIExpression()) #12, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !1441, metadata !DIExpression()) #12, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1439, metadata !DIExpression()) #12, !dbg !2781
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2783
  store i32 10, i32* %7, align 8, !dbg !2784, !tbaa !1380
  %8 = icmp ne i8* %0, null, !dbg !2785
  %9 = icmp ne i8* %1, null, !dbg !2786
  %10 = and i1 %8, %9, !dbg !2787
  br i1 %10, label %12, label %11, !dbg !2787

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2788
  unreachable, !dbg !2788

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2789
  store i8* %0, i8** %13, align 8, !dbg !2790, !tbaa !1455
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2791
  store i8* %1, i8** %14, align 8, !dbg !2792, !tbaa !1458
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2794
  ret i8* %15, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2796 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %2, metadata !2802, metadata !DIExpression()), !dbg !2803
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2804
  ret i8* %4, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2806 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 %1, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #12, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #12, !dbg !2813
  call void @llvm.dbg.value(metadata i64 %1, metadata !2802, metadata !DIExpression()) #12, !dbg !2813
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2815
  ret i8* %3, !dbg !2816
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2821, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %1, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()) #12, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()) #12, !dbg !2824
  call void @llvm.dbg.value(metadata i64 -1, metadata !2802, metadata !DIExpression()) #12, !dbg !2824
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2826
  ret i8* %3, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 0, metadata !2821, metadata !DIExpression()) #12, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %0, metadata !2822, metadata !DIExpression()) #12, !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()) #12, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()) #12, !dbg !2834
  call void @llvm.dbg.value(metadata i64 -1, metadata !2802, metadata !DIExpression()) #12, !dbg !2834
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2836
  ret i8* %2, !dbg !2837
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2838 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2846, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !2848, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %3, metadata !2849, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8** %4, metadata !2850, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %5, metadata !2851, metadata !DIExpression()), !dbg !2852
  %7 = icmp eq i8* %1, null, !dbg !2853
  br i1 %7, label %10, label %8, !dbg !2855

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2856
  br label %12, !dbg !2856

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2857
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #12, !dbg !2858
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !2858
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2859
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #12, !dbg !2860
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.75, i64 0, i64 0)) #12, !dbg !2860
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2861
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
  ], !dbg !2862

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #12, !dbg !2863
  %21 = load i8*, i8** %4, align 8, !dbg !2863, !tbaa !1123
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !2863
  br label %147, !dbg !2865

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #12, !dbg !2866
  %25 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !1123
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %27 = load i8*, i8** %26, align 8, !dbg !2866, !tbaa !1123
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !2866
  br label %147, !dbg !2867

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #12, !dbg !2868
  %31 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !1123
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %33 = load i8*, i8** %32, align 8, !dbg !2868, !tbaa !1123
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2868
  %35 = load i8*, i8** %34, align 8, !dbg !2868, !tbaa !1123
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !2868
  br label %147, !dbg !2869

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #12, !dbg !2870
  %39 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !1123
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %41 = load i8*, i8** %40, align 8, !dbg !2870, !tbaa !1123
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %43 = load i8*, i8** %42, align 8, !dbg !2870, !tbaa !1123
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2870
  %45 = load i8*, i8** %44, align 8, !dbg !2870, !tbaa !1123
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !2870
  br label %147, !dbg !2871

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #12, !dbg !2872
  %49 = load i8*, i8** %4, align 8, !dbg !2872, !tbaa !1123
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2872
  %51 = load i8*, i8** %50, align 8, !dbg !2872, !tbaa !1123
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2872
  %53 = load i8*, i8** %52, align 8, !dbg !2872, !tbaa !1123
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2872
  %55 = load i8*, i8** %54, align 8, !dbg !2872, !tbaa !1123
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2872
  %57 = load i8*, i8** %56, align 8, !dbg !2872, !tbaa !1123
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !2872
  br label %147, !dbg !2873

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #12, !dbg !2874
  %61 = load i8*, i8** %4, align 8, !dbg !2874, !tbaa !1123
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2874
  %63 = load i8*, i8** %62, align 8, !dbg !2874, !tbaa !1123
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2874
  %65 = load i8*, i8** %64, align 8, !dbg !2874, !tbaa !1123
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2874
  %67 = load i8*, i8** %66, align 8, !dbg !2874, !tbaa !1123
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2874
  %69 = load i8*, i8** %68, align 8, !dbg !2874, !tbaa !1123
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2874
  %71 = load i8*, i8** %70, align 8, !dbg !2874, !tbaa !1123
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !2874
  br label %147, !dbg !2875

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #12, !dbg !2876
  %75 = load i8*, i8** %4, align 8, !dbg !2876, !tbaa !1123
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2876
  %77 = load i8*, i8** %76, align 8, !dbg !2876, !tbaa !1123
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2876
  %79 = load i8*, i8** %78, align 8, !dbg !2876, !tbaa !1123
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2876
  %81 = load i8*, i8** %80, align 8, !dbg !2876, !tbaa !1123
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2876
  %83 = load i8*, i8** %82, align 8, !dbg !2876, !tbaa !1123
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2876
  %85 = load i8*, i8** %84, align 8, !dbg !2876, !tbaa !1123
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2876
  %87 = load i8*, i8** %86, align 8, !dbg !2876, !tbaa !1123
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !2876
  br label %147, !dbg !2877

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #12, !dbg !2878
  %91 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !1123
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2878
  %93 = load i8*, i8** %92, align 8, !dbg !2878, !tbaa !1123
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2878
  %95 = load i8*, i8** %94, align 8, !dbg !2878, !tbaa !1123
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2878
  %97 = load i8*, i8** %96, align 8, !dbg !2878, !tbaa !1123
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2878
  %99 = load i8*, i8** %98, align 8, !dbg !2878, !tbaa !1123
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2878
  %101 = load i8*, i8** %100, align 8, !dbg !2878, !tbaa !1123
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2878
  %103 = load i8*, i8** %102, align 8, !dbg !2878, !tbaa !1123
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2878
  %105 = load i8*, i8** %104, align 8, !dbg !2878, !tbaa !1123
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !2878
  br label %147, !dbg !2879

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.84, i64 0, i64 0), i32 5) #12, !dbg !2880
  %109 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !1123
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2880
  %111 = load i8*, i8** %110, align 8, !dbg !2880, !tbaa !1123
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2880
  %113 = load i8*, i8** %112, align 8, !dbg !2880, !tbaa !1123
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2880
  %115 = load i8*, i8** %114, align 8, !dbg !2880, !tbaa !1123
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2880
  %117 = load i8*, i8** %116, align 8, !dbg !2880, !tbaa !1123
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2880
  %119 = load i8*, i8** %118, align 8, !dbg !2880, !tbaa !1123
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2880
  %121 = load i8*, i8** %120, align 8, !dbg !2880, !tbaa !1123
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2880
  %123 = load i8*, i8** %122, align 8, !dbg !2880, !tbaa !1123
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2880
  %125 = load i8*, i8** %124, align 8, !dbg !2880, !tbaa !1123
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !2880
  br label %147, !dbg !2881

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.85, i64 0, i64 0), i32 5) #12, !dbg !2882
  %129 = load i8*, i8** %4, align 8, !dbg !2882, !tbaa !1123
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2882
  %131 = load i8*, i8** %130, align 8, !dbg !2882, !tbaa !1123
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2882
  %133 = load i8*, i8** %132, align 8, !dbg !2882, !tbaa !1123
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2882
  %135 = load i8*, i8** %134, align 8, !dbg !2882, !tbaa !1123
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2882
  %137 = load i8*, i8** %136, align 8, !dbg !2882, !tbaa !1123
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2882
  %139 = load i8*, i8** %138, align 8, !dbg !2882, !tbaa !1123
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2882
  %141 = load i8*, i8** %140, align 8, !dbg !2882, !tbaa !1123
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2882
  %143 = load i8*, i8** %142, align 8, !dbg !2882, !tbaa !1123
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2882
  %145 = load i8*, i8** %144, align 8, !dbg !2882, !tbaa !1123
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !2882
  br label %147, !dbg !2883

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2889, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %1, metadata !2890, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %2, metadata !2891, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %3, metadata !2892, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8** %4, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 0, metadata !2894, metadata !DIExpression()), !dbg !2895
  br label %6, !dbg !2896

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2898
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2899
  %9 = load i8*, i8** %8, align 8, !dbg !2899, !tbaa !1123
  %10 = icmp eq i8* %9, null, !dbg !2901
  %11 = add i64 %7, 1, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %11, metadata !2894, metadata !DIExpression()), !dbg !2895
  br i1 %10, label %12, label %6, !dbg !2901, !llvm.loop !2903

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %7, metadata !2894, metadata !DIExpression()), !dbg !2895
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2905
  ret void, !dbg !2906
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2907 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2918, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %1, metadata !2919, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %3, metadata !2921, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2922, metadata !DIExpression()), !dbg !2926
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2927
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2924, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 0, metadata !2923, metadata !DIExpression()), !dbg !2926
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2929
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2929
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2929
  %11 = load i32, i32* %8, align 8, !dbg !2932
  %12 = icmp ult i32 %11, 41, !dbg !2932
  br i1 %12, label %13, label %18, !dbg !2932

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2932
  %15 = zext i32 %11 to i64, !dbg !2932
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2932
  %17 = add nuw nsw i32 %11, 8, !dbg !2932
  store i32 %17, i32* %8, align 8, !dbg !2932
  br label %21, !dbg !2932

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2932
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2932
  store i8* %20, i8** %9, align 8, !dbg !2932
  br label %21, !dbg !2932

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2932
  %25 = load i8*, i8** %24, align 8, !dbg !2932
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2933
  store i8* %25, i8** %26, align 16, !dbg !2934, !tbaa !1123
  %27 = icmp eq i8* %25, null, !dbg !2935
  br i1 %27, label %30, label %28, !dbg !2936

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2923, metadata !DIExpression()), !dbg !2926
  %29 = icmp ult i32 %22, 41, !dbg !2932
  br i1 %29, label %35, label %32, !dbg !2932

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2937
  call void @llvm.dbg.value(metadata i64 %31, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %31, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2938
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2939
  ret void, !dbg !2939

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2932
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2932
  store i8* %34, i8** %9, align 8, !dbg !2932
  br label %40, !dbg !2932

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2932
  %37 = zext i32 %22 to i64, !dbg !2932
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2932
  %39 = add nuw nsw i32 %22, 8, !dbg !2932
  store i32 %39, i32* %8, align 8, !dbg !2932
  br label %40, !dbg !2932

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2932
  %44 = load i8*, i8** %43, align 8, !dbg !2932
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2933
  store i8* %44, i8** %45, align 8, !dbg !2934, !tbaa !1123
  %46 = icmp eq i8* %44, null, !dbg !2935
  br i1 %46, label %30, label %47, !dbg !2936

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2923, metadata !DIExpression()), !dbg !2926
  %48 = icmp ult i32 %41, 41, !dbg !2932
  br i1 %48, label %52, label %49, !dbg !2932

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2932
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2932
  store i8* %51, i8** %9, align 8, !dbg !2932
  br label %57, !dbg !2932

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2932
  %54 = zext i32 %41 to i64, !dbg !2932
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2932
  %56 = add nuw nsw i32 %41, 8, !dbg !2932
  store i32 %56, i32* %8, align 8, !dbg !2932
  br label %57, !dbg !2932

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2932
  %61 = load i8*, i8** %60, align 8, !dbg !2932
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2933
  store i8* %61, i8** %62, align 16, !dbg !2934, !tbaa !1123
  %63 = icmp eq i8* %61, null, !dbg !2935
  br i1 %63, label %30, label %64, !dbg !2936

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2923, metadata !DIExpression()), !dbg !2926
  %65 = icmp ult i32 %58, 41, !dbg !2932
  br i1 %65, label %69, label %66, !dbg !2932

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2932
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2932
  store i8* %68, i8** %9, align 8, !dbg !2932
  br label %74, !dbg !2932

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2932
  %71 = zext i32 %58 to i64, !dbg !2932
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2932
  %73 = add nuw nsw i32 %58, 8, !dbg !2932
  store i32 %73, i32* %8, align 8, !dbg !2932
  br label %74, !dbg !2932

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2932
  %78 = load i8*, i8** %77, align 8, !dbg !2932
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2933
  store i8* %78, i8** %79, align 8, !dbg !2934, !tbaa !1123
  %80 = icmp eq i8* %78, null, !dbg !2935
  br i1 %80, label %30, label %81, !dbg !2936

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2923, metadata !DIExpression()), !dbg !2926
  %82 = icmp ult i32 %75, 41, !dbg !2932
  br i1 %82, label %86, label %83, !dbg !2932

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2932
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2932
  store i8* %85, i8** %9, align 8, !dbg !2932
  br label %91, !dbg !2932

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2932
  %88 = zext i32 %75 to i64, !dbg !2932
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2932
  %90 = add nuw nsw i32 %75, 8, !dbg !2932
  store i32 %90, i32* %8, align 8, !dbg !2932
  br label %91, !dbg !2932

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2932
  %95 = load i8*, i8** %94, align 8, !dbg !2932
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2933
  store i8* %95, i8** %96, align 16, !dbg !2934, !tbaa !1123
  %97 = icmp eq i8* %95, null, !dbg !2935
  br i1 %97, label %30, label %98, !dbg !2936

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2923, metadata !DIExpression()), !dbg !2926
  %99 = icmp ult i32 %92, 41, !dbg !2932
  br i1 %99, label %103, label %100, !dbg !2932

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2932
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2932
  store i8* %102, i8** %9, align 8, !dbg !2932
  br label %108, !dbg !2932

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2932
  %105 = zext i32 %92 to i64, !dbg !2932
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2932
  %107 = add nuw nsw i32 %92, 8, !dbg !2932
  store i32 %107, i32* %8, align 8, !dbg !2932
  br label %108, !dbg !2932

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2932
  %111 = load i8*, i8** %110, align 8, !dbg !2932
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2933
  store i8* %111, i8** %112, align 8, !dbg !2934, !tbaa !1123
  %113 = icmp eq i8* %111, null, !dbg !2935
  br i1 %113, label %30, label %114, !dbg !2936

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2923, metadata !DIExpression()), !dbg !2926
  %115 = load i8*, i8** %9, align 8, !dbg !2932
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2932
  store i8* %116, i8** %9, align 8, !dbg !2932
  %117 = bitcast i8* %115 to i8**, !dbg !2932
  %118 = load i8*, i8** %117, align 8, !dbg !2932
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2933
  store i8* %118, i8** %119, align 16, !dbg !2934, !tbaa !1123
  %120 = icmp eq i8* %118, null, !dbg !2935
  br i1 %120, label %30, label %121, !dbg !2936

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2923, metadata !DIExpression()), !dbg !2926
  %122 = load i8*, i8** %9, align 8, !dbg !2932
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2932
  store i8* %123, i8** %9, align 8, !dbg !2932
  %124 = bitcast i8* %122 to i8**, !dbg !2932
  %125 = load i8*, i8** %124, align 8, !dbg !2932
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2933
  store i8* %125, i8** %126, align 8, !dbg !2934, !tbaa !1123
  %127 = icmp eq i8* %125, null, !dbg !2935
  br i1 %127, label %30, label %128, !dbg !2936

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2923, metadata !DIExpression()), !dbg !2926
  %129 = load i8*, i8** %9, align 8, !dbg !2932
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2932
  store i8* %130, i8** %9, align 8, !dbg !2932
  %131 = bitcast i8* %129 to i8**, !dbg !2932
  %132 = load i8*, i8** %131, align 8, !dbg !2932
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2933
  store i8* %132, i8** %133, align 16, !dbg !2934, !tbaa !1123
  %134 = icmp eq i8* %132, null, !dbg !2935
  br i1 %134, label %30, label %135, !dbg !2936

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2923, metadata !DIExpression()), !dbg !2926
  %136 = load i8*, i8** %9, align 8, !dbg !2932
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2932
  store i8* %137, i8** %9, align 8, !dbg !2932
  %138 = bitcast i8* %136 to i8**, !dbg !2932
  %139 = load i8*, i8** %138, align 8, !dbg !2932
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2933
  store i8* %139, i8** %140, align 8, !dbg !2934, !tbaa !1123
  %141 = icmp eq i8* %139, null, !dbg !2935
  %142 = select i1 %141, i64 9, i64 10, !dbg !2936
  br label %30, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2940 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2944, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %1, metadata !2945, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %2, metadata !2946, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i8* %3, metadata !2947, metadata !DIExpression()), !dbg !2953
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2954
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2954
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2948, metadata !DIExpression()), !dbg !2955
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2956
  call void @llvm.va_start(i8* nonnull %6), !dbg !2956
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2957
  call void @llvm.va_end(i8* nonnull %6), !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2959
  ret void, !dbg !2959
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2960 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2961, !tbaa !1123
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2961
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #12, !dbg !2962
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.89, i64 0, i64 0)) #12, !dbg !2962
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.90, i64 0, i64 0), i32 5) #12, !dbg !2963
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.92, i64 0, i64 0)) #12, !dbg !2963
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.93, i64 0, i64 0), i32 5) #12, !dbg !2964
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.94, i64 0, i64 0)) #12, !dbg !2964
  ret void, !dbg !2965
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !2972
  %3 = udiv i64 9223372036854775807, %1, !dbg !2973
  %4 = icmp ult i64 %3, %0, !dbg !2973
  br i1 %4, label %5, label %6, !dbg !2975

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2976
  unreachable, !dbg !2976

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %7, metadata !2978, metadata !DIExpression()) #12, !dbg !2984
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2986
  call void @llvm.dbg.value(metadata i8* %8, metadata !2983, metadata !DIExpression()) #12, !dbg !2984
  %9 = icmp eq i8* %8, null, !dbg !2987
  %10 = icmp ne i64 %7, 0, !dbg !2989
  %11 = and i1 %10, %9, !dbg !2990
  br i1 %11, label %12, label %13, !dbg !2990

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2991
  unreachable, !dbg !2991

13:                                               ; preds = %6
  ret i8* %8, !dbg !2992
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2979 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()), !dbg !2993
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()), !dbg !2993
  %3 = icmp eq i8* %2, null, !dbg !2995
  %4 = icmp ne i64 %0, 0, !dbg !2996
  %5 = and i1 %4, %3, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2997

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !2998
  unreachable, !dbg !2998

7:                                                ; preds = %1
  ret i8* %2, !dbg !2999
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %1, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %2, metadata !3006, metadata !DIExpression()), !dbg !3007
  %4 = udiv i64 9223372036854775807, %2, !dbg !3008
  %5 = icmp ult i64 %4, %1, !dbg !3008
  br i1 %5, label %6, label %7, !dbg !3010

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3011
  unreachable, !dbg !3011

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %8, metadata !3018, metadata !DIExpression()) #12, !dbg !3019
  %9 = icmp eq i64 %8, 0, !dbg !3021
  %10 = icmp ne i8* %0, null, !dbg !3023
  %11 = and i1 %10, %9, !dbg !3024
  br i1 %11, label %12, label %13, !dbg !3024

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3025
  br label %19, !dbg !3027

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %14, metadata !3013, metadata !DIExpression()) #12, !dbg !3019
  %15 = icmp eq i8* %14, null, !dbg !3029
  %16 = icmp ne i64 %8, 0, !dbg !3031
  %17 = and i1 %16, %15, !dbg !3032
  br i1 %17, label %18, label %19, !dbg !3032

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3033
  unreachable, !dbg !3033

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3019
  ret i8* %20, !dbg !3034
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3035
  %3 = icmp eq i64 %1, 0, !dbg !3036
  %4 = icmp ne i8* %0, null, !dbg !3037
  %5 = and i1 %4, %3, !dbg !3038
  br i1 %5, label %6, label %7, !dbg !3038

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3039
  br label %13, !dbg !3040

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %8, metadata !3013, metadata !DIExpression()), !dbg !3035
  %9 = icmp eq i8* %8, null, !dbg !3042
  %10 = icmp ne i64 %1, 0, !dbg !3043
  %11 = and i1 %10, %9, !dbg !3044
  br i1 %11, label %12, label %13, !dbg !3044

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3045
  unreachable, !dbg !3045

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3035
  ret i8* %14, !dbg !3046
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !479 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !484, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64* %1, metadata !485, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %2, metadata !486, metadata !DIExpression()), !dbg !3047
  %4 = load i64, i64* %1, align 8, !dbg !3048, !tbaa !2286
  call void @llvm.dbg.value(metadata i64 %4, metadata !487, metadata !DIExpression()), !dbg !3047
  %5 = icmp eq i8* %0, null, !dbg !3049
  br i1 %5, label %6, label %20, !dbg !3051

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3052
  br i1 %7, label %8, label %13, !dbg !3055

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %9, metadata !487, metadata !DIExpression()), !dbg !3047
  %10 = icmp ugt i64 %2, 128, !dbg !3058
  %11 = zext i1 %10 to i64, !dbg !3058
  %12 = add nuw nsw i64 %9, %11, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %12, metadata !487, metadata !DIExpression()), !dbg !3047
  br label %13, !dbg !3060

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3047
  call void @llvm.dbg.value(metadata i64 %14, metadata !487, metadata !DIExpression()), !dbg !3047
  %15 = udiv i64 9223372036854775807, %2, !dbg !3061
  %16 = icmp ult i64 %15, %14, !dbg !3061
  br i1 %16, label %19, label %17, !dbg !3063

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !487, metadata !DIExpression()), !dbg !3047
  store i64 %14, i64* %1, align 8, !dbg !3064, !tbaa !2286
  %18 = mul i64 %14, %2, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %28, metadata !3018, metadata !DIExpression()) #12, !dbg !3066
  br label %31, !dbg !3068

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3069
  unreachable, !dbg !3069

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3070
  %22 = icmp ugt i64 %21, %4, !dbg !3073
  br i1 %22, label %24, label %23, !dbg !3074

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3075
  unreachable, !dbg !3075

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3076
  %26 = add nuw i64 %4, 1, !dbg !3077
  %27 = add i64 %26, %25, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %27, metadata !487, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %27, metadata !487, metadata !DIExpression()), !dbg !3047
  store i64 %27, i64* %1, align 8, !dbg !3064, !tbaa !2286
  %28 = mul i64 %27, %2, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %28, metadata !3018, metadata !DIExpression()) #12, !dbg !3066
  %29 = icmp eq i64 %28, 0, !dbg !3079
  br i1 %29, label %30, label %31, !dbg !3068

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3080
  br label %38, !dbg !3081

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %33, metadata !3013, metadata !DIExpression()) #12, !dbg !3066
  %34 = icmp eq i8* %33, null, !dbg !3083
  %35 = icmp ne i64 %32, 0, !dbg !3084
  %36 = and i1 %35, %34, !dbg !3085
  br i1 %36, label %37, label %38, !dbg !3085

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3086
  unreachable, !dbg !3086

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3066
  ret i8* %39, !dbg !3087
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3088 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()) #12, !dbg !3092
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()) #12, !dbg !3092
  %3 = icmp eq i8* %2, null, !dbg !3095
  %4 = icmp ne i64 %0, 0, !dbg !3096
  %5 = and i1 %4, %3, !dbg !3097
  br i1 %5, label %6, label %7, !dbg !3097

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3098
  unreachable, !dbg !3098

7:                                                ; preds = %1
  ret i8* %2, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3104, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64* %1, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !484, metadata !DIExpression()) #12, !dbg !3107
  call void @llvm.dbg.value(metadata i64* %1, metadata !485, metadata !DIExpression()) #12, !dbg !3107
  call void @llvm.dbg.value(metadata i64 1, metadata !486, metadata !DIExpression()) #12, !dbg !3107
  %3 = load i64, i64* %1, align 8, !dbg !3109, !tbaa !2286
  call void @llvm.dbg.value(metadata i64 %3, metadata !487, metadata !DIExpression()) #12, !dbg !3107
  %4 = icmp eq i8* %0, null, !dbg !3110
  br i1 %4, label %5, label %12, !dbg !3111

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3112
  br i1 %6, label %9, label %7, !dbg !3113

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !487, metadata !DIExpression()) #12, !dbg !3107
  %8 = icmp slt i64 %3, 0, !dbg !3114
  br i1 %8, label %11, label %9, !dbg !3115

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !487, metadata !DIExpression()) #12, !dbg !3107
  store i64 %10, i64* %1, align 8, !dbg !3116, !tbaa !2286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %18, metadata !3018, metadata !DIExpression()) #12, !dbg !3117
  br label %21, !dbg !3119

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3120
  unreachable, !dbg !3120

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3121
  br i1 %13, label %15, label %14, !dbg !3122

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3123
  unreachable, !dbg !3123

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3124
  %17 = add nuw nsw i64 %3, 1, !dbg !3125
  %18 = add nuw nsw i64 %17, %16, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %18, metadata !487, metadata !DIExpression()) #12, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %18, metadata !487, metadata !DIExpression()) #12, !dbg !3107
  store i64 %18, i64* %1, align 8, !dbg !3116, !tbaa !2286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()) #12, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %18, metadata !3018, metadata !DIExpression()) #12, !dbg !3117
  %19 = icmp eq i64 %18, 0, !dbg !3127
  br i1 %19, label %20, label %21, !dbg !3119

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3128
  br label %28, !dbg !3129

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %23, metadata !3013, metadata !DIExpression()) #12, !dbg !3117
  %24 = icmp eq i8* %23, null, !dbg !3131
  %25 = icmp ne i64 %22, 0, !dbg !3132
  %26 = and i1 %25, %24, !dbg !3133
  br i1 %26, label %27, label %28, !dbg !3133

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3134
  unreachable, !dbg !3134

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3117
  ret i8* %29, !dbg !3135
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3136 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()) #12, !dbg !3145
  call void @llvm.dbg.value(metadata i64 1, metadata !3143, metadata !DIExpression()) #12, !dbg !3145
  %2 = icmp slt i64 %0, 0, !dbg !3147
  br i1 %2, label %6, label %3, !dbg !3149

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3150
  call void @llvm.dbg.value(metadata i8* %4, metadata !3144, metadata !DIExpression()) #12, !dbg !3145
  %5 = icmp eq i8* %4, null, !dbg !3151
  br i1 %5, label %6, label %7, !dbg !3152

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3153
  unreachable, !dbg !3153

7:                                                ; preds = %3
  ret i8* %4, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3155
  %3 = udiv i64 9223372036854775807, %1, !dbg !3156
  %4 = icmp ult i64 %3, %0, !dbg !3156
  br i1 %4, label %8, label %5, !dbg !3157

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %6, metadata !3144, metadata !DIExpression()), !dbg !3155
  %7 = icmp eq i8* %6, null, !dbg !3159
  br i1 %7, label %8, label %9, !dbg !3160

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3161
  unreachable, !dbg !3161

9:                                                ; preds = %5
  ret i8* %6, !dbg !3162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()) #12, !dbg !3170
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %3, metadata !2983, metadata !DIExpression()) #12, !dbg !3170
  %4 = icmp eq i8* %3, null, !dbg !3173
  %5 = icmp ne i64 %1, 0, !dbg !3174
  %6 = and i1 %5, %4, !dbg !3175
  br i1 %6, label %7, label %8, !dbg !3175

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3176
  unreachable, !dbg !3176

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3177, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()) #12, !dbg !3186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3188
  ret i8* %3, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3190 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3192, metadata !DIExpression()), !dbg !3193
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3194
  %3 = add i64 %2, 1, !dbg !3195
  call void @llvm.dbg.value(metadata i8* %0, metadata !3167, metadata !DIExpression()) #12, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %3, metadata !3168, metadata !DIExpression()) #12, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %3, metadata !2978, metadata !DIExpression()) #12, !dbg !3198
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %4, metadata !2983, metadata !DIExpression()) #12, !dbg !3198
  %5 = icmp eq i8* %4, null, !dbg !3201
  %6 = icmp ne i64 %3, 0, !dbg !3202
  %7 = and i1 %6, %5, !dbg !3203
  br i1 %7, label %8, label %9, !dbg !3203

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3204
  unreachable, !dbg !3204

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3177, metadata !DIExpression()) #12, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %0, metadata !3184, metadata !DIExpression()) #12, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %3, metadata !3185, metadata !DIExpression()) #12, !dbg !3205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3207
  ret i8* %4, !dbg !3208
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3209 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3210, !tbaa !1180
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #12, !dbg !3211
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #12, !dbg !3212
  tail call void @abort() #22, !dbg !3213
  unreachable, !dbg !3213
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3216, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3217, metadata !DIExpression()), !dbg !3222
  %3 = icmp eq i64 %0, 0, !dbg !3223
  %4 = icmp eq i64 %1, 0, !dbg !3224
  %5 = or i1 %3, %4, !dbg !3225
  br i1 %5, label %11, label %6, !dbg !3225

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3226
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3227
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3227
  br i1 %8, label %9, label %11, !dbg !3229

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3230
  store i32 12, i32* %10, align 4, !dbg !3232, !tbaa !1180
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3216, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %12, metadata !3217, metadata !DIExpression()), !dbg !3222
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %14, metadata !3218, metadata !DIExpression()), !dbg !3222
  br label %15, !dbg !3234

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3222
  ret i8* %16, !dbg !3235
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3236 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3244, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3245, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %2, metadata !3246, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3247, metadata !DIExpression()), !dbg !3253
  %6 = bitcast i32* %5 to i8*, !dbg !3254
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3254
  %7 = icmp eq i32* %0, null, !dbg !3255
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3257
  call void @llvm.dbg.value(metadata i32* %8, metadata !3244, metadata !DIExpression()), !dbg !3253
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3258
  call void @llvm.dbg.value(metadata i64 %9, metadata !3248, metadata !DIExpression()), !dbg !3253
  %10 = icmp ugt i64 %9, -3, !dbg !3259
  %11 = icmp ne i64 %2, 0, !dbg !3260
  %12 = and i1 %11, %10, !dbg !3261
  br i1 %12, label %13, label %18, !dbg !3261

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3262
  br i1 %14, label %18, label %15, !dbg !3263

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3264, !tbaa !1581
  call void @llvm.dbg.value(metadata i8 %16, metadata !3250, metadata !DIExpression()), !dbg !3265
  %17 = zext i8 %16 to i32, !dbg !3266
  store i32 %17, i32* %8, align 4, !dbg !3267, !tbaa !1180
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3268
  ret i64 %19, !dbg !3268
}

; Function Attrs: nounwind
declare !dbg !505 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3269 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3275, metadata !DIExpression()), !dbg !3280
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3281
  call void @llvm.dbg.value(metadata i1 undef, metadata !3276, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3282, metadata !DIExpression()), !dbg !3286
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3288
  %4 = load i32, i32* %3, align 8, !dbg !3288, !tbaa !3289
  %5 = and i32 %4, 32, !dbg !3288
  %6 = icmp eq i32 %5, 0, !dbg !3291
  call void @llvm.dbg.value(metadata i1 %6, metadata !3278, metadata !DIExpression()), !dbg !3280
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3292
  %8 = icmp ne i32 %7, 0, !dbg !3293
  call void @llvm.dbg.value(metadata i1 %8, metadata !3279, metadata !DIExpression()), !dbg !3280
  br i1 %6, label %9, label %19, !dbg !3294

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3296
  call void @llvm.dbg.value(metadata i1 %10, metadata !3276, metadata !DIExpression()), !dbg !3280
  %11 = xor i1 %8, true, !dbg !3297
  %12 = or i1 %10, %11, !dbg !3297
  %13 = sext i1 %8 to i32, !dbg !3297
  br i1 %12, label %22, label %14, !dbg !3297

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3298
  %16 = load i32, i32* %15, align 4, !dbg !3298, !tbaa !1180
  %17 = icmp ne i32 %16, 9, !dbg !3299
  %18 = sext i1 %17 to i32, !dbg !3300
  br label %22, !dbg !3300

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3301

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3303
  store i32 0, i32* %21, align 4, !dbg !3305, !tbaa !1180
  br label %22, !dbg !3303

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3280
  ret i32 %23, !dbg !3306
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3307 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3314
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3315
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3315
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3310, metadata !DIExpression()), !dbg !3316
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3317
  %5 = icmp eq i32 %4, 0, !dbg !3317
  br i1 %5, label %6, label %13, !dbg !3319

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3320
  %8 = load i16, i16* %7, align 16, !dbg !3320
  %9 = icmp eq i16 %8, 67, !dbg !3320
  br i1 %9, label %13, label %10, !dbg !3321

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i64 6), !dbg !3322
  %12 = icmp ne i32 %11, 0, !dbg !3323
  br label %13, !dbg !3321

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3314
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3324
  ret i1 %14, !dbg !3324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3325 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3327, metadata !DIExpression()), !dbg !3329
  %2 = icmp eq i8* %1, null, !dbg !3330
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i64 0, i64 0), i8* %1, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %3, metadata !3327, metadata !DIExpression()), !dbg !3329
  %4 = load i8, i8* %3, align 1, !dbg !3333, !tbaa !1581
  %5 = icmp eq i8 %4, 0, !dbg !3337
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %3, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %6, metadata !3327, metadata !DIExpression()), !dbg !3329
  ret i8* %6, !dbg !3339
}

; Function Attrs: nounwind
declare !dbg !957 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3340 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i8* %1, metadata !3345, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %2, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i32 %0, metadata !3348, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %1, metadata !3351, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %2, metadata !3352, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()) #12, !dbg !3365
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3367
  call void @llvm.dbg.value(metadata i8* %4, metadata !3364, metadata !DIExpression()) #12, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %4, metadata !3353, metadata !DIExpression()) #12, !dbg !3357
  %5 = icmp eq i8* %4, null, !dbg !3368
  br i1 %5, label %6, label %9, !dbg !3369

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3370
  br i1 %7, label %19, label %8, !dbg !3373

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3374, !tbaa !1581
  br label %19, !dbg !3375

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %10, metadata !3354, metadata !DIExpression()) #12, !dbg !3377
  %11 = icmp ult i64 %10, %2, !dbg !3378
  br i1 %11, label %12, label %14, !dbg !3380

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %1, metadata !3383, metadata !DIExpression()) #12, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %4, metadata !3386, metadata !DIExpression()) #12, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %13, metadata !3387, metadata !DIExpression()) #12, !dbg !3388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3390
  br label %19, !dbg !3391

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3392
  br i1 %15, label %19, label %16, !dbg !3395

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %1, metadata !3383, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i8* %4, metadata !3386, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %17, metadata !3387, metadata !DIExpression()) #12, !dbg !3398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3400
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3401
  store i8 0, i8* %18, align 1, !dbg !3402, !tbaa !1581
  br label %19, !dbg !3403

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3404
  ret i32 %20, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()) #12, !dbg !3410
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %2, metadata !3364, metadata !DIExpression()) #12, !dbg !3410
  ret i8* %2, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3414 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3420, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 0, metadata !3423, metadata !DIExpression()), !dbg !3424
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %2, metadata !3422, metadata !DIExpression()), !dbg !3424
  %3 = icmp slt i32 %2, 0, !dbg !3426
  br i1 %3, label %4, label %6, !dbg !3428

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3429
  br label %24, !dbg !3430

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3431
  %8 = icmp eq i32 %7, 0, !dbg !3431
  br i1 %8, label %13, label %9, !dbg !3433

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3434
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3435
  %12 = icmp eq i64 %11, -1, !dbg !3436
  br i1 %12, label %16, label %13, !dbg !3437

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3438
  %15 = icmp eq i32 %14, 0, !dbg !3438
  br i1 %15, label %16, label %18, !dbg !3439

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3421, metadata !DIExpression()), !dbg !3424
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %21, metadata !3423, metadata !DIExpression()), !dbg !3424
  br label %24, !dbg !3441

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3442
  %20 = load i32, i32* %19, align 4, !dbg !3442, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %20, metadata !3421, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %20, metadata !3421, metadata !DIExpression()), !dbg !3424
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3440
  call void @llvm.dbg.value(metadata i32 %21, metadata !3423, metadata !DIExpression()), !dbg !3424
  %22 = icmp eq i32 %20, 0, !dbg !3443
  br i1 %22, label %24, label %23, !dbg !3441

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3445, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 -1, metadata !3423, metadata !DIExpression()), !dbg !3424
  br label %24, !dbg !3447

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3424
  ret i32 %25, !dbg !3448
}

; Function Attrs: nofree nounwind
declare !dbg !966 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1001 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1002 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3449 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3455, metadata !DIExpression()), !dbg !3456
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3457
  br i1 %2, label %6, label %3, !dbg !3459

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3460
  %5 = icmp eq i32 %4, 0, !dbg !3460
  br i1 %5, label %6, label %8, !dbg !3461

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3462
  br label %17, !dbg !3463

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3464, metadata !DIExpression()) #12, !dbg !3469
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3471
  %10 = load i32, i32* %9, align 8, !dbg !3471, !tbaa !3289
  %11 = and i32 %10, 256, !dbg !3473
  %12 = icmp eq i32 %11, 0, !dbg !3473
  br i1 %12, label %15, label %13, !dbg !3474

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3475
  br label %15, !dbg !3475

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3476
  br label %17, !dbg !3477

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3456
  ret i32 %18, !dbg !3478
}

; Function Attrs: nofree nounwind
declare !dbg !1009 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3479 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3486, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3487, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.value(metadata i32 %2, metadata !3488, metadata !DIExpression()), !dbg !3492
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3493
  %5 = load i8*, i8** %4, align 8, !dbg !3493, !tbaa !3494
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3495
  %7 = load i8*, i8** %6, align 8, !dbg !3495, !tbaa !3496
  %8 = icmp eq i8* %5, %7, !dbg !3497
  br i1 %8, label %9, label %28, !dbg !3498

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3499
  %11 = load i8*, i8** %10, align 8, !dbg !3499, !tbaa !3500
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3501
  %13 = load i8*, i8** %12, align 8, !dbg !3501, !tbaa !3502
  %14 = icmp eq i8* %11, %13, !dbg !3503
  br i1 %14, label %15, label %28, !dbg !3504

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3505
  %17 = load i8*, i8** %16, align 8, !dbg !3505, !tbaa !3506
  %18 = icmp eq i8* %17, null, !dbg !3507
  br i1 %18, label %19, label %28, !dbg !3508

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3509
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %21, metadata !3489, metadata !DIExpression()), !dbg !3511
  %22 = icmp eq i64 %21, -1, !dbg !3512
  br i1 %22, label %30, label %23, !dbg !3514

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3515
  %25 = load i32, i32* %24, align 8, !dbg !3516, !tbaa !3289
  %26 = and i32 %25, -17, !dbg !3516
  store i32 %26, i32* %24, align 8, !dbg !3516, !tbaa !3289
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3517
  store i64 %21, i64* %27, align 8, !dbg !3518, !tbaa !3519
  br label %30, !dbg !3520

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3521
  br label %30, !dbg !3522

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3492
  ret i32 %31, !dbg !3523
}

; Function Attrs: nofree nounwind
declare !dbg !1085 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !433, !354, !475, !496, !499, !502, !521, !560, !567, !960, !963, !1006, !1047}
!llvm.ident = !{!1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088, !1088}
!llvm.module.flags = !{!1089, !1090, !1091, !1092, !1093}

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
!361 = !DIFile(filename: "src/logname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!77, !363, !398, !402, !406, !409, !410, !6, !67, !414, !422, !85, !426, !430}
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
!426 = !DISubprogram(name: "getlogin", scope: !427, file: !427, line: 848, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!427 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!25}
!430 = !DISubprogram(name: "puts", scope: !173, file: !173, line: 632, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{!18, !6}
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !435, retainedTypes: !439, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!435 = !{!436}
!436 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !434, line: 40, baseType: !159, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!439 = !{!77, !440, !67}
!440 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!441 = !DISubroutineType(types: !442)
!442 = !{!18, !6, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !444, file: !21, line: 51, baseType: !18, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !444, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !444, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !444, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !444, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !444, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !444, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !444, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !444, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !444, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !444, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !444, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !444, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !444, file: !21, line: 70, baseType: !443, size: 64, offset: 832)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !444, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !444, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !444, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !444, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !444, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !444, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !444, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !444, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !444, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !444, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !444, file: !21, line: 93, baseType: !443, size: 64, offset: 1344)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !444, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !444, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !444, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !444, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !477, retainedTypes: !490, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !{!478}
!478 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !479, file: !249, line: 186, baseType: !159, size: 32, elements: !488)
!479 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !480, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !483)
!480 = !DISubroutineType(types: !481)
!481 = !{!67, !67, !482, !69}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!483 = !{!484, !485, !486, !487}
!484 = !DILocalVariable(name: "p", arg: 1, scope: !479, file: !249, line: 174, type: !67)
!485 = !DILocalVariable(name: "pn", arg: 2, scope: !479, file: !249, line: 174, type: !482)
!486 = !DILocalVariable(name: "s", arg: 3, scope: !479, file: !249, line: 174, type: !69)
!487 = !DILocalVariable(name: "n", scope: !479, file: !249, line: 176, type: !69)
!488 = !{!489}
!489 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!490 = !{!69, !315, !312, !318, !25, !270, !67, !491, !494}
!491 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!492 = !DISubroutineType(types: !493)
!493 = !{!67, !71, !71}
!494 = !DISubprogram(name: "rpl_calloc", scope: !495, file: !495, line: 688, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!495 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!496 = distinct !DICompileUnit(language: DW_LANG_C99, file: !497, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !498, splitDebugInlining: false, nameTableKind: None)
!497 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!498 = !{!77, !85}
!499 = distinct !DICompileUnit(language: DW_LANG_C99, file: !500, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !501, splitDebugInlining: false, nameTableKind: None)
!500 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!501 = !{!67}
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !{!505, !69, !517}
!505 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!506 = !DISubroutineType(types: !507)
!507 = !{!71, !117, !6, !71, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !509, file: !283, line: 15, baseType: !18, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !509, file: !283, line: 20, baseType: !513, size: 32, offset: 32)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !283, line: 16, size: 32, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !513, file: !283, line: 18, baseType: !159, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !513, file: !283, line: 19, baseType: !291, size: 32)
!517 = !DISubprogram(name: "hard_locale", scope: !518, file: !518, line: 26, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!518 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!519 = !DISubroutineType(types: !520)
!520 = !{!92, !18}
!521 = distinct !DICompileUnit(language: DW_LANG_C99, file: !522, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !523, splitDebugInlining: false, nameTableKind: None)
!522 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!523 = !{!524}
!524 = !DISubprogram(name: "rpl_fclose", scope: !525, file: !525, line: 672, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!525 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!526 = !DISubroutineType(types: !527)
!527 = !{!18, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !529, file: !21, line: 51, baseType: !18, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !529, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !529, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !529, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !529, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !529, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !529, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !529, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !529, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !529, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !529, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !529, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !529, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !529, file: !21, line: 70, baseType: !528, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !529, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !529, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !529, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !529, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !529, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !529, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !529, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !529, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !529, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !529, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !529, file: !21, line: 93, baseType: !528, size: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !529, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !529, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !529, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !529, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!560 = distinct !DICompileUnit(language: DW_LANG_C99, file: !561, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !562, splitDebugInlining: false, nameTableKind: None)
!561 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!562 = !{!563}
!563 = !DISubprogram(name: "setlocale_null_r", scope: !564, file: !564, line: 64, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!564 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !DISubroutineType(types: !566)
!566 = !{!18, !18, !25, !71}
!567 = distinct !DICompileUnit(language: DW_LANG_C99, file: !568, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !569, retainedTypes: !956, splitDebugInlining: false, nameTableKind: None)
!568 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!569 = !{!570}
!570 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !571, line: 41, baseType: !159, size: 32, elements: !572)
!571 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!572 = !{!573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955}
!573 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!574 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!575 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!576 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!577 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!578 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!579 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!580 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!581 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!582 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!583 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!584 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!585 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!586 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!587 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!588 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!589 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!590 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!596 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!599 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!600 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!601 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!602 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!608 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!611 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!612 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!613 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!614 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!615 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!616 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!617 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!618 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!619 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!620 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!621 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!622 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!681 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!684 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!685 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!686 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!687 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!693 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!768 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!841 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!842 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!843 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!844 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!845 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!846 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!847 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!848 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!849 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!850 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!851 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!852 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!853 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!854 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!855 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!857 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!859 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!860 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!861 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!862 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!888 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!889 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!890 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!891 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!892 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!897 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!898 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!899 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!900 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!956 = !{!957, !67}
!957 = !DISubprogram(name: "nl_langinfo", scope: !571, file: !571, line: 661, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!958 = !DISubroutineType(types: !959)
!959 = !{!25, !18}
!960 = distinct !DICompileUnit(language: DW_LANG_C99, file: !961, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !962, splitDebugInlining: false, nameTableKind: None)
!961 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!962 = !{!67, !402}
!963 = distinct !DICompileUnit(language: DW_LANG_C99, file: !964, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !965, splitDebugInlining: false, nameTableKind: None)
!964 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!965 = !{!966, !1001, !1002, !1005}
!966 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!967 = !DISubroutineType(types: !968)
!968 = !{!18, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !970, file: !21, line: 51, baseType: !18, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !970, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !970, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !970, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !970, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !970, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !970, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !970, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !970, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !970, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !970, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !970, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !970, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !970, file: !21, line: 70, baseType: !969, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !970, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !970, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !970, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !970, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !970, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !970, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !970, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !970, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !970, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !970, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !970, file: !21, line: 93, baseType: !969, size: 64, offset: 1344)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !970, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !970, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !970, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !970, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1001 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1002 = !DISubprogram(name: "lseek", scope: !427, file: !427, line: 334, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!45, !18, !45, !18}
!1005 = !DISubprogram(name: "rpl_fflush", scope: !525, file: !525, line: 718, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1006 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1007, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1008, splitDebugInlining: false, nameTableKind: None)
!1007 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1008 = !{!67, !1009, !1044}
!1009 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!18, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1013, file: !21, line: 51, baseType: !18, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1013, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1013, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1013, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1013, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1013, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1013, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1013, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1013, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1013, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1013, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1013, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1013, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1013, file: !21, line: 70, baseType: !1012, size: 64, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1013, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1013, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1013, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1013, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1013, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1013, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1013, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1013, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1013, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1013, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1013, file: !21, line: 93, baseType: !1012, size: 64, offset: 1344)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1013, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1013, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1013, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1013, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1044 = !DISubprogram(name: "rpl_fseeko", scope: !525, file: !525, line: 1034, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!18, !1012, !45, !18}
!1047 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1048, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1049, splitDebugInlining: false, nameTableKind: None)
!1048 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1049 = !{!67, !1050, !1002, !1085}
!1050 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!18, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1054, file: !21, line: 51, baseType: !18, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1054, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1054, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1054, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1054, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1054, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1054, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1054, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1054, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1054, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1054, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1054, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1054, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1054, file: !21, line: 70, baseType: !1053, size: 64, offset: 832)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1054, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1054, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1054, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1054, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1054, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1054, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1054, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1054, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1054, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1054, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1054, file: !21, line: 93, baseType: !1053, size: 64, offset: 1344)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1054, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1054, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1054, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1054, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1085 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!18, !1053, !45, !18}
!1088 = !{!"clang version 10.0.0 "}
!1089 = !{i32 7, !"Dwarf Version", i32 4}
!1090 = !{i32 2, !"Debug Info Version", i32 3}
!1091 = !{i32 1, !"wchar_size", i32 4}
!1092 = !{i32 7, !"PIC Level", i32 2}
!1093 = !{i32 7, !"PIE Level", i32 2}
!1094 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 33, type: !420, scopeLine: 34, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1095)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "status", arg: 1, scope: !1094, file: !361, line: 33, type: !18)
!1097 = !DILocalVariable(name: "infomap", scope: !1098, file: !1099, line: 636, type: !1111)
!1098 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1099, file: !1099, line: 634, type: !400, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1100)
!1099 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1100 = !{!1101, !1097, !1102, !1103, !1110}
!1101 = !DILocalVariable(name: "program", arg: 1, scope: !1098, file: !1099, line: 634, type: !6)
!1102 = !DILocalVariable(name: "node", scope: !1098, file: !1099, line: 646, type: !6)
!1103 = !DILocalVariable(name: "map_prog", scope: !1098, file: !1099, line: 647, type: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1106)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1098, file: !1099, line: 636, size: 128, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1106, file: !1099, line: 636, baseType: !6, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1106, file: !1099, line: 636, baseType: !6, size: 64, offset: 64)
!1110 = !DILocalVariable(name: "lc_messages", scope: !1098, file: !1099, line: 659, type: !6)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1105, size: 896, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 7)
!1114 = !DILocation(line: 636, column: 67, scope: !1098, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 46, column: 7, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !361, line: 38, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1094, file: !361, line: 35, column: 7)
!1118 = !DILocation(line: 0, scope: !1094)
!1119 = !DILocation(line: 35, column: 14, scope: !1117)
!1120 = !DILocation(line: 35, column: 7, scope: !1094)
!1121 = !DILocation(line: 36, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !361, line: 36, column: 5)
!1123 = !{!1124, !1124, i64 0}
!1124 = !{!"any pointer", !1125, i64 0}
!1125 = !{!"omnipotent char", !1126, i64 0}
!1126 = !{!"Simple C/C++ TBAA"}
!1127 = !DILocation(line: 39, column: 7, scope: !1116)
!1128 = !DILocation(line: 40, column: 7, scope: !1116)
!1129 = !DILocation(line: 44, column: 7, scope: !1116)
!1130 = !DILocation(line: 45, column: 7, scope: !1116)
!1131 = !DILocation(line: 0, scope: !1098, inlinedAt: !1115)
!1132 = !DILocation(line: 636, column: 3, scope: !1098, inlinedAt: !1115)
!1133 = !DILocation(line: 647, column: 36, scope: !1098, inlinedAt: !1115)
!1134 = !DILocation(line: 649, column: 3, scope: !1098, inlinedAt: !1115)
!1135 = !DILocation(line: 649, column: 33, scope: !1098, inlinedAt: !1115)
!1136 = !DILocation(line: 650, column: 13, scope: !1098, inlinedAt: !1115)
!1137 = !DILocation(line: 649, column: 20, scope: !1098, inlinedAt: !1115)
!1138 = !{!1139, !1124, i64 0}
!1139 = !{!"infomap", !1124, i64 0, !1124, i64 8}
!1140 = !DILocation(line: 649, column: 10, scope: !1098, inlinedAt: !1115)
!1141 = !DILocation(line: 649, column: 28, scope: !1098, inlinedAt: !1115)
!1142 = distinct !{!1142, !1134, !1136}
!1143 = !DILocation(line: 652, column: 17, scope: !1144, inlinedAt: !1115)
!1144 = distinct !DILexicalBlock(scope: !1098, file: !1099, line: 652, column: 7)
!1145 = !{!1139, !1124, i64 8}
!1146 = !DILocation(line: 652, column: 7, scope: !1144, inlinedAt: !1115)
!1147 = !DILocation(line: 652, column: 7, scope: !1098, inlinedAt: !1115)
!1148 = !DILocation(line: 655, column: 3, scope: !1098, inlinedAt: !1115)
!1149 = !DILocation(line: 659, column: 29, scope: !1098, inlinedAt: !1115)
!1150 = !DILocation(line: 660, column: 7, scope: !1151, inlinedAt: !1115)
!1151 = distinct !DILexicalBlock(scope: !1098, file: !1099, line: 660, column: 7)
!1152 = !DILocation(line: 660, column: 19, scope: !1151, inlinedAt: !1115)
!1153 = !DILocation(line: 660, column: 22, scope: !1151, inlinedAt: !1115)
!1154 = !DILocation(line: 660, column: 7, scope: !1098, inlinedAt: !1115)
!1155 = !DILocation(line: 666, column: 7, scope: !1156, inlinedAt: !1115)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !1099, line: 661, column: 5)
!1157 = !DILocation(line: 668, column: 5, scope: !1156, inlinedAt: !1115)
!1158 = !DILocation(line: 669, column: 3, scope: !1098, inlinedAt: !1115)
!1159 = !DILocation(line: 671, column: 3, scope: !1098, inlinedAt: !1115)
!1160 = !DILocation(line: 673, column: 1, scope: !1098, inlinedAt: !1115)
!1161 = !DILocation(line: 48, column: 3, scope: !1094)
!1162 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 52, type: !1163, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!18, !18, !418}
!1165 = !{!1166, !1167, !1168}
!1166 = !DILocalVariable(name: "argc", arg: 1, scope: !1162, file: !361, line: 52, type: !18)
!1167 = !DILocalVariable(name: "argv", arg: 2, scope: !1162, file: !361, line: 52, type: !418)
!1168 = !DILocalVariable(name: "cp", scope: !1162, file: !361, line: 54, type: !25)
!1169 = !DILocation(line: 0, scope: !1162)
!1170 = !DILocation(line: 57, column: 21, scope: !1162)
!1171 = !DILocation(line: 57, column: 3, scope: !1162)
!1172 = !DILocation(line: 58, column: 3, scope: !1162)
!1173 = !DILocation(line: 59, column: 3, scope: !1162)
!1174 = !DILocation(line: 60, column: 3, scope: !1162)
!1175 = !DILocation(line: 62, column: 3, scope: !1162)
!1176 = !DILocation(line: 65, column: 36, scope: !1162)
!1177 = !DILocation(line: 64, column: 3, scope: !1162)
!1178 = !DILocation(line: 68, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1162, file: !361, line: 68, column: 7)
!1180 = !{!1181, !1181, i64 0}
!1181 = !{!"int", !1125, i64 0}
!1182 = !DILocation(line: 68, column: 14, scope: !1179)
!1183 = !DILocation(line: 68, column: 7, scope: !1162)
!1184 = !DILocation(line: 70, column: 20, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !361, line: 69, column: 5)
!1186 = !DILocation(line: 70, column: 55, scope: !1185)
!1187 = !DILocation(line: 70, column: 50, scope: !1185)
!1188 = !DILocation(line: 70, column: 43, scope: !1185)
!1189 = !DILocation(line: 70, column: 7, scope: !1185)
!1190 = !DILocation(line: 71, column: 7, scope: !1185)
!1191 = !DILocation(line: 76, column: 8, scope: !1162)
!1192 = !DILocation(line: 77, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1162, file: !361, line: 77, column: 7)
!1194 = !DILocation(line: 77, column: 7, scope: !1162)
!1195 = !DILocation(line: 78, column: 5, scope: !1193)
!1196 = !DILocation(line: 80, column: 3, scope: !1162)
!1197 = !DILocation(line: 81, column: 3, scope: !1162)
!1198 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !400, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1199)
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "file", arg: 1, scope: !1198, file: !12, line: 51, type: !6)
!1201 = !DILocation(line: 0, scope: !1198)
!1202 = !DILocation(line: 53, column: 13, scope: !1198)
!1203 = !DILocation(line: 54, column: 1, scope: !1198)
!1204 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1205, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !92}
!1207 = !{!1208}
!1208 = !DILocalVariable(name: "ignore", arg: 1, scope: !1204, file: !12, line: 88, type: !92)
!1209 = !DILocation(line: 0, scope: !1204)
!1210 = !DILocation(line: 90, column: 16, scope: !1204)
!1211 = !{!1212, !1212, i64 0}
!1212 = !{!"_Bool", !1125, i64 0}
!1213 = !DILocation(line: 91, column: 1, scope: !1204)
!1214 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1215)
!1215 = !{!1216}
!1216 = !DILocalVariable(name: "write_error", scope: !1217, file: !12, line: 122, type: !6)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !12, line: 121, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !12, line: 119, column: 7)
!1219 = !DILocation(line: 119, column: 21, scope: !1218)
!1220 = !DILocation(line: 119, column: 7, scope: !1218)
!1221 = !DILocation(line: 119, column: 29, scope: !1218)
!1222 = !DILocation(line: 120, column: 7, scope: !1218)
!1223 = !DILocation(line: 120, column: 12, scope: !1218)
!1224 = !{i8 0, i8 2}
!1225 = !DILocation(line: 120, column: 25, scope: !1218)
!1226 = !DILocation(line: 120, column: 28, scope: !1218)
!1227 = !DILocation(line: 120, column: 34, scope: !1218)
!1228 = !DILocation(line: 119, column: 7, scope: !1214)
!1229 = !DILocation(line: 122, column: 33, scope: !1217)
!1230 = !DILocation(line: 0, scope: !1217)
!1231 = !DILocation(line: 123, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1217, file: !12, line: 123, column: 11)
!1233 = !DILocation(line: 0, scope: !1232)
!1234 = !DILocation(line: 123, column: 11, scope: !1217)
!1235 = !DILocation(line: 124, column: 36, scope: !1232)
!1236 = !DILocation(line: 124, column: 9, scope: !1232)
!1237 = !DILocation(line: 127, column: 9, scope: !1232)
!1238 = !DILocation(line: 129, column: 14, scope: !1217)
!1239 = !DILocation(line: 129, column: 7, scope: !1217)
!1240 = !DILocation(line: 134, column: 42, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1214, file: !12, line: 134, column: 7)
!1242 = !DILocation(line: 134, column: 28, scope: !1241)
!1243 = !DILocation(line: 134, column: 50, scope: !1241)
!1244 = !DILocation(line: 134, column: 7, scope: !1214)
!1245 = !DILocation(line: 135, column: 12, scope: !1241)
!1246 = !DILocation(line: 135, column: 5, scope: !1241)
!1247 = !DILocation(line: 136, column: 1, scope: !1214)
!1248 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1249, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !18, !418, !6, !6, !6, !419, null}
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1252 = !DILocalVariable(name: "argc", arg: 1, scope: !1248, file: !102, line: 45, type: !18)
!1253 = !DILocalVariable(name: "argv", arg: 2, scope: !1248, file: !102, line: 46, type: !418)
!1254 = !DILocalVariable(name: "command_name", arg: 3, scope: !1248, file: !102, line: 47, type: !6)
!1255 = !DILocalVariable(name: "package", arg: 4, scope: !1248, file: !102, line: 48, type: !6)
!1256 = !DILocalVariable(name: "version", arg: 5, scope: !1248, file: !102, line: 49, type: !6)
!1257 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1248, file: !102, line: 50, type: !419)
!1258 = !DILocalVariable(name: "c", scope: !1248, file: !102, line: 53, type: !18)
!1259 = !DILocalVariable(name: "saved_opterr", scope: !1248, file: !102, line: 54, type: !18)
!1260 = !DILocalVariable(name: "authors", scope: !1261, file: !102, line: 72, type: !1265)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !102, line: 71, column: 11)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !102, line: 65, column: 9)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !102, line: 63, column: 5)
!1264 = distinct !DILexicalBlock(scope: !1248, file: !102, line: 61, column: 7)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1267, line: 32, baseType: !1268)
!1267 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1269)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1270 = !DILocation(line: 0, scope: !1248)
!1271 = !DILocation(line: 56, column: 18, scope: !1248)
!1272 = !DILocation(line: 59, column: 10, scope: !1248)
!1273 = !DILocation(line: 61, column: 12, scope: !1264)
!1274 = !DILocation(line: 62, column: 7, scope: !1264)
!1275 = !DILocation(line: 62, column: 15, scope: !1264)
!1276 = !DILocation(line: 61, column: 7, scope: !1248)
!1277 = !DILocation(line: 67, column: 11, scope: !1262)
!1278 = !DILocation(line: 68, column: 11, scope: !1262)
!1279 = !DILocation(line: 72, column: 13, scope: !1261)
!1280 = !DILocation(line: 72, column: 21, scope: !1261)
!1281 = !DILocation(line: 73, column: 13, scope: !1261)
!1282 = !DILocation(line: 74, column: 29, scope: !1261)
!1283 = !DILocation(line: 74, column: 13, scope: !1261)
!1284 = !DILocation(line: 75, column: 13, scope: !1261)
!1285 = !DILocation(line: 85, column: 10, scope: !1248)
!1286 = !DILocation(line: 89, column: 10, scope: !1248)
!1287 = !DILocation(line: 90, column: 1, scope: !1248)
!1288 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !416, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1289)
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1290 = !DILocalVariable(name: "argc", arg: 1, scope: !1288, file: !102, line: 98, type: !18)
!1291 = !DILocalVariable(name: "argv", arg: 2, scope: !1288, file: !102, line: 99, type: !418)
!1292 = !DILocalVariable(name: "command_name", arg: 3, scope: !1288, file: !102, line: 100, type: !6)
!1293 = !DILocalVariable(name: "package", arg: 4, scope: !1288, file: !102, line: 101, type: !6)
!1294 = !DILocalVariable(name: "version", arg: 5, scope: !1288, file: !102, line: 102, type: !6)
!1295 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1288, file: !102, line: 103, type: !92)
!1296 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1288, file: !102, line: 104, type: !419)
!1297 = !DILocalVariable(name: "c", scope: !1288, file: !102, line: 107, type: !18)
!1298 = !DILocalVariable(name: "saved_opterr", scope: !1288, file: !102, line: 108, type: !18)
!1299 = !DILocalVariable(name: "optstring", scope: !1288, file: !102, line: 113, type: !6)
!1300 = !DILocalVariable(name: "authors", scope: !1301, file: !102, line: 125, type: !1265)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !102, line: 124, column: 11)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !102, line: 118, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !102, line: 116, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1288, file: !102, line: 115, column: 7)
!1305 = !DILocation(line: 0, scope: !1288)
!1306 = !DILocation(line: 108, column: 22, scope: !1288)
!1307 = !DILocation(line: 111, column: 10, scope: !1288)
!1308 = !DILocation(line: 113, column: 27, scope: !1288)
!1309 = !DILocation(line: 115, column: 12, scope: !1304)
!1310 = !DILocation(line: 115, column: 7, scope: !1288)
!1311 = !DILocation(line: 125, column: 13, scope: !1301)
!1312 = !DILocation(line: 125, column: 21, scope: !1301)
!1313 = !DILocation(line: 126, column: 13, scope: !1301)
!1314 = !DILocation(line: 127, column: 29, scope: !1301)
!1315 = !DILocation(line: 127, column: 13, scope: !1301)
!1316 = !DILocation(line: 128, column: 13, scope: !1301)
!1317 = !DILocation(line: 132, column: 26, scope: !1302)
!1318 = !DILocation(line: 133, column: 11, scope: !1302)
!1319 = !DILocation(line: 0, scope: !1302)
!1320 = !DILocation(line: 138, column: 10, scope: !1288)
!1321 = !DILocation(line: 139, column: 1, scope: !1288)
!1322 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !400, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "argv0", arg: 1, scope: !1322, file: !170, line: 39, type: !6)
!1325 = !DILocalVariable(name: "slash", scope: !1322, file: !170, line: 46, type: !6)
!1326 = !DILocalVariable(name: "base", scope: !1322, file: !170, line: 47, type: !6)
!1327 = !DILocation(line: 0, scope: !1322)
!1328 = !DILocation(line: 51, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !170, line: 51, column: 7)
!1330 = !DILocation(line: 51, column: 7, scope: !1322)
!1331 = !DILocation(line: 55, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !170, line: 52, column: 5)
!1333 = !DILocation(line: 54, column: 7, scope: !1332)
!1334 = !DILocation(line: 56, column: 7, scope: !1332)
!1335 = !DILocation(line: 59, column: 11, scope: !1322)
!1336 = !DILocation(line: 60, column: 17, scope: !1322)
!1337 = !DILocation(line: 60, column: 11, scope: !1322)
!1338 = !DILocation(line: 61, column: 12, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1322, file: !170, line: 61, column: 7)
!1340 = !DILocation(line: 61, column: 20, scope: !1339)
!1341 = !DILocation(line: 61, column: 25, scope: !1339)
!1342 = !DILocation(line: 61, column: 42, scope: !1339)
!1343 = !DILocation(line: 61, column: 28, scope: !1339)
!1344 = !DILocation(line: 61, column: 61, scope: !1339)
!1345 = !DILocation(line: 61, column: 7, scope: !1322)
!1346 = !DILocation(line: 64, column: 11, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !170, line: 64, column: 11)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !170, line: 62, column: 5)
!1349 = !DILocation(line: 64, column: 36, scope: !1347)
!1350 = !DILocation(line: 64, column: 11, scope: !1348)
!1351 = !DILocation(line: 66, column: 24, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !170, line: 65, column: 9)
!1353 = !DILocation(line: 70, column: 41, scope: !1352)
!1354 = !DILocation(line: 72, column: 9, scope: !1352)
!1355 = !DILocation(line: 84, column: 16, scope: !1322)
!1356 = !DILocation(line: 90, column: 27, scope: !1322)
!1357 = !DILocation(line: 92, column: 1, scope: !1322)
!1358 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1359, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1362)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1361, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "o", arg: 1, scope: !1358, file: !212, line: 122, type: !1361)
!1364 = !DILocalVariable(name: "e", scope: !1358, file: !212, line: 124, type: !18)
!1365 = !DILocalVariable(name: "p", scope: !1358, file: !212, line: 125, type: !1361)
!1366 = !DILocation(line: 0, scope: !1358)
!1367 = !DILocation(line: 124, column: 11, scope: !1358)
!1368 = !DILocation(line: 125, column: 40, scope: !1358)
!1369 = !DILocation(line: 125, column: 31, scope: !1358)
!1370 = !DILocation(line: 127, column: 9, scope: !1358)
!1371 = !DILocation(line: 128, column: 3, scope: !1358)
!1372 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1373, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!214, !258}
!1375 = !{!1376}
!1376 = !DILocalVariable(name: "o", arg: 1, scope: !1372, file: !212, line: 133, type: !258)
!1377 = !DILocation(line: 0, scope: !1372)
!1378 = !DILocation(line: 135, column: 11, scope: !1372)
!1379 = !DILocation(line: 135, column: 46, scope: !1372)
!1380 = !{!1381, !1125, i64 0}
!1381 = !{!"quoting_options", !1125, i64 0, !1181, i64 4, !1125, i64 8, !1124, i64 40, !1124, i64 48}
!1382 = !DILocation(line: 135, column: 3, scope: !1372)
!1383 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1384, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1361, !214}
!1386 = !{!1387, !1388}
!1387 = !DILocalVariable(name: "o", arg: 1, scope: !1383, file: !212, line: 141, type: !1361)
!1388 = !DILocalVariable(name: "s", arg: 2, scope: !1383, file: !212, line: 141, type: !214)
!1389 = !DILocation(line: 0, scope: !1383)
!1390 = !DILocation(line: 143, column: 4, scope: !1383)
!1391 = !DILocation(line: 143, column: 39, scope: !1383)
!1392 = !DILocation(line: 143, column: 45, scope: !1383)
!1393 = !DILocation(line: 144, column: 1, scope: !1383)
!1394 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1395, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!18, !1361, !8, !18}
!1397 = !{!1398, !1399, !1400, !1401, !1403, !1405, !1406}
!1398 = !DILocalVariable(name: "o", arg: 1, scope: !1394, file: !212, line: 152, type: !1361)
!1399 = !DILocalVariable(name: "c", arg: 2, scope: !1394, file: !212, line: 152, type: !8)
!1400 = !DILocalVariable(name: "i", arg: 3, scope: !1394, file: !212, line: 152, type: !18)
!1401 = !DILocalVariable(name: "uc", scope: !1394, file: !212, line: 154, type: !1402)
!1402 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1403 = !DILocalVariable(name: "p", scope: !1394, file: !212, line: 155, type: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1405 = !DILocalVariable(name: "shift", scope: !1394, file: !212, line: 157, type: !18)
!1406 = !DILocalVariable(name: "r", scope: !1394, file: !212, line: 158, type: !18)
!1407 = !DILocation(line: 0, scope: !1394)
!1408 = !DILocation(line: 156, column: 6, scope: !1394)
!1409 = !DILocation(line: 156, column: 62, scope: !1394)
!1410 = !DILocation(line: 156, column: 57, scope: !1394)
!1411 = !DILocation(line: 157, column: 15, scope: !1394)
!1412 = !DILocation(line: 158, column: 12, scope: !1394)
!1413 = !DILocation(line: 158, column: 15, scope: !1394)
!1414 = !DILocation(line: 158, column: 25, scope: !1394)
!1415 = !DILocation(line: 159, column: 13, scope: !1394)
!1416 = !DILocation(line: 159, column: 18, scope: !1394)
!1417 = !DILocation(line: 159, column: 23, scope: !1394)
!1418 = !DILocation(line: 159, column: 6, scope: !1394)
!1419 = !DILocation(line: 160, column: 3, scope: !1394)
!1420 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1421, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!18, !1361, !18}
!1423 = !{!1424, !1425, !1426}
!1424 = !DILocalVariable(name: "o", arg: 1, scope: !1420, file: !212, line: 168, type: !1361)
!1425 = !DILocalVariable(name: "i", arg: 2, scope: !1420, file: !212, line: 168, type: !18)
!1426 = !DILocalVariable(name: "r", scope: !1420, file: !212, line: 170, type: !18)
!1427 = !DILocation(line: 0, scope: !1420)
!1428 = !DILocation(line: 171, column: 8, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1420, file: !212, line: 171, column: 7)
!1430 = !DILocation(line: 171, column: 7, scope: !1420)
!1431 = !DILocation(line: 173, column: 10, scope: !1420)
!1432 = !{!1381, !1181, i64 4}
!1433 = !DILocation(line: 174, column: 12, scope: !1420)
!1434 = !DILocation(line: 175, column: 3, scope: !1420)
!1435 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1436, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1361, !6, !6}
!1438 = !{!1439, !1440, !1441}
!1439 = !DILocalVariable(name: "o", arg: 1, scope: !1435, file: !212, line: 179, type: !1361)
!1440 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1435, file: !212, line: 180, type: !6)
!1441 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1435, file: !212, line: 180, type: !6)
!1442 = !DILocation(line: 0, scope: !1435)
!1443 = !DILocation(line: 182, column: 8, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1435, file: !212, line: 182, column: 7)
!1445 = !DILocation(line: 182, column: 7, scope: !1435)
!1446 = !DILocation(line: 184, column: 6, scope: !1435)
!1447 = !DILocation(line: 184, column: 12, scope: !1435)
!1448 = !DILocation(line: 185, column: 8, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1435, file: !212, line: 185, column: 7)
!1450 = !DILocation(line: 185, column: 23, scope: !1449)
!1451 = !DILocation(line: 185, column: 19, scope: !1449)
!1452 = !DILocation(line: 186, column: 5, scope: !1449)
!1453 = !DILocation(line: 187, column: 6, scope: !1435)
!1454 = !DILocation(line: 187, column: 17, scope: !1435)
!1455 = !{!1381, !1124, i64 40}
!1456 = !DILocation(line: 188, column: 6, scope: !1435)
!1457 = !DILocation(line: 188, column: 18, scope: !1435)
!1458 = !{!1381, !1124, i64 48}
!1459 = !DILocation(line: 189, column: 1, scope: !1435)
!1460 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1461, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!69, !25, !69, !6, !69, !258}
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471}
!1464 = !DILocalVariable(name: "buffer", arg: 1, scope: !1460, file: !212, line: 784, type: !25)
!1465 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1460, file: !212, line: 784, type: !69)
!1466 = !DILocalVariable(name: "arg", arg: 3, scope: !1460, file: !212, line: 785, type: !6)
!1467 = !DILocalVariable(name: "argsize", arg: 4, scope: !1460, file: !212, line: 785, type: !69)
!1468 = !DILocalVariable(name: "o", arg: 5, scope: !1460, file: !212, line: 786, type: !258)
!1469 = !DILocalVariable(name: "p", scope: !1460, file: !212, line: 788, type: !258)
!1470 = !DILocalVariable(name: "e", scope: !1460, file: !212, line: 789, type: !18)
!1471 = !DILocalVariable(name: "r", scope: !1460, file: !212, line: 790, type: !69)
!1472 = !DILocation(line: 0, scope: !1460)
!1473 = !DILocation(line: 788, column: 37, scope: !1460)
!1474 = !DILocation(line: 789, column: 11, scope: !1460)
!1475 = !DILocation(line: 791, column: 43, scope: !1460)
!1476 = !DILocation(line: 791, column: 53, scope: !1460)
!1477 = !DILocation(line: 791, column: 60, scope: !1460)
!1478 = !DILocation(line: 792, column: 43, scope: !1460)
!1479 = !DILocation(line: 792, column: 58, scope: !1460)
!1480 = !DILocation(line: 790, column: 14, scope: !1460)
!1481 = !DILocation(line: 793, column: 9, scope: !1460)
!1482 = !DILocation(line: 794, column: 3, scope: !1460)
!1483 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1484, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!69, !25, !69, !6, !69, !214, !18, !1486, !6, !6}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1513, !1514, !1515, !1516, !1517, !1520, !1521, !1527, !1530, !1531, !1538, !1541, !1542, !1543, !1544, !1545, !1546}
!1489 = !DILocalVariable(name: "buffer", arg: 1, scope: !1483, file: !212, line: 256, type: !25)
!1490 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1483, file: !212, line: 256, type: !69)
!1491 = !DILocalVariable(name: "arg", arg: 3, scope: !1483, file: !212, line: 257, type: !6)
!1492 = !DILocalVariable(name: "argsize", arg: 4, scope: !1483, file: !212, line: 257, type: !69)
!1493 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1483, file: !212, line: 258, type: !214)
!1494 = !DILocalVariable(name: "flags", arg: 6, scope: !1483, file: !212, line: 258, type: !18)
!1495 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1483, file: !212, line: 259, type: !1486)
!1496 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1483, file: !212, line: 260, type: !6)
!1497 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1483, file: !212, line: 261, type: !6)
!1498 = !DILocalVariable(name: "i", scope: !1483, file: !212, line: 263, type: !69)
!1499 = !DILocalVariable(name: "len", scope: !1483, file: !212, line: 264, type: !69)
!1500 = !DILocalVariable(name: "orig_buffersize", scope: !1483, file: !212, line: 265, type: !69)
!1501 = !DILocalVariable(name: "quote_string", scope: !1483, file: !212, line: 266, type: !6)
!1502 = !DILocalVariable(name: "quote_string_len", scope: !1483, file: !212, line: 267, type: !69)
!1503 = !DILocalVariable(name: "backslash_escapes", scope: !1483, file: !212, line: 268, type: !92)
!1504 = !DILocalVariable(name: "unibyte_locale", scope: !1483, file: !212, line: 269, type: !92)
!1505 = !DILocalVariable(name: "elide_outer_quotes", scope: !1483, file: !212, line: 270, type: !92)
!1506 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1483, file: !212, line: 271, type: !92)
!1507 = !DILocalVariable(name: "encountered_single_quote", scope: !1483, file: !212, line: 272, type: !92)
!1508 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1483, file: !212, line: 273, type: !92)
!1509 = !DILocalVariable(name: "c", scope: !1510, file: !212, line: 402, type: !1402)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !212, line: 401, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !212, line: 400, column: 3)
!1512 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 400, column: 3)
!1513 = !DILocalVariable(name: "esc", scope: !1510, file: !212, line: 403, type: !1402)
!1514 = !DILocalVariable(name: "is_right_quote", scope: !1510, file: !212, line: 404, type: !92)
!1515 = !DILocalVariable(name: "escaping", scope: !1510, file: !212, line: 405, type: !92)
!1516 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1510, file: !212, line: 406, type: !92)
!1517 = !DILocalVariable(name: "m", scope: !1518, file: !212, line: 610, type: !69)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 608, column: 11)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 426, column: 9)
!1520 = !DILocalVariable(name: "printable", scope: !1518, file: !212, line: 612, type: !92)
!1521 = !DILocalVariable(name: "mbstate", scope: !1522, file: !212, line: 621, type: !1524)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !212, line: 620, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !212, line: 614, column: 17)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1525, line: 6, baseType: !1526)
!1525 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1527 = !DILocalVariable(name: "w", scope: !1528, file: !212, line: 631, type: !1529)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !212, line: 630, column: 19)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1530 = !DILocalVariable(name: "bytes", scope: !1528, file: !212, line: 632, type: !69)
!1531 = !DILocalVariable(name: "j", scope: !1532, file: !212, line: 657, type: !69)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !212, line: 656, column: 27)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !212, line: 654, column: 29)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !212, line: 649, column: 23)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 641, column: 30)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !212, line: 636, column: 30)
!1537 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 634, column: 25)
!1538 = !DILocalVariable(name: "ilim", scope: !1539, file: !212, line: 684, type: !69)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 681, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1518, file: !212, line: 680, column: 17)
!1541 = !DILabel(scope: !1483, name: "process_input", file: !212, line: 314)
!1542 = !DILabel(scope: !1519, name: "c_and_shell_escape", file: !212, line: 512)
!1543 = !DILabel(scope: !1519, name: "c_escape", file: !212, line: 517)
!1544 = !DILabel(scope: !1510, name: "store_escape", file: !212, line: 719)
!1545 = !DILabel(scope: !1510, name: "store_c", file: !212, line: 722)
!1546 = !DILabel(scope: !1483, name: "force_outer_quoting_style", file: !212, line: 763)
!1547 = !DILocation(line: 0, scope: !1483)
!1548 = !DILocation(line: 269, column: 25, scope: !1483)
!1549 = !DILocation(line: 269, column: 36, scope: !1483)
!1550 = !DILocation(line: 270, column: 8, scope: !1483)
!1551 = !DILocation(line: 0, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 526, column: 15)
!1553 = !DILocation(line: 0, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !212, line: 462, column: 19)
!1555 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 455, column: 13)
!1556 = !DILocation(line: 0, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !212, line: 449, column: 20)
!1558 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 428, column: 15)
!1559 = !DILocation(line: 0, scope: !1522)
!1560 = !DILocation(line: 0, scope: !1528)
!1561 = !DILocation(line: 0, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 712, column: 11)
!1563 = !DILocation(line: 273, column: 3, scope: !1483)
!1564 = !DILocation(line: 265, column: 10, scope: !1483)
!1565 = !DILocation(line: 266, column: 15, scope: !1483)
!1566 = !DILocation(line: 267, column: 10, scope: !1483)
!1567 = !DILocation(line: 268, column: 8, scope: !1483)
!1568 = !DILocation(line: 271, column: 8, scope: !1483)
!1569 = !DILocation(line: 272, column: 8, scope: !1483)
!1570 = !DILocation(line: 273, column: 8, scope: !1483)
!1571 = !DILocation(line: 314, column: 2, scope: !1483)
!1572 = !DILocation(line: 316, column: 3, scope: !1483)
!1573 = !DILocation(line: 323, column: 11, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 317, column: 5)
!1575 = !DILocation(line: 323, column: 12, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !212, line: 323, column: 11)
!1577 = !DILocation(line: 324, column: 9, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !212, line: 324, column: 9)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !212, line: 324, column: 9)
!1580 = !DILocation(line: 324, column: 9, scope: !1579)
!1581 = !{!1125, !1125, i64 0}
!1582 = !DILocation(line: 362, column: 26, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !212, line: 340, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !212, line: 339, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1574, file: !212, line: 338, column: 7)
!1586 = !DILocation(line: 363, column: 27, scope: !1583)
!1587 = !DILocation(line: 364, column: 11, scope: !1583)
!1588 = !DILocation(line: 365, column: 14, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !212, line: 365, column: 13)
!1590 = !DILocation(line: 365, column: 13, scope: !1585)
!1591 = !DILocation(line: 366, column: 43, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !212, line: 366, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !212, line: 366, column: 11)
!1594 = !DILocation(line: 366, column: 11, scope: !1593)
!1595 = !DILocation(line: 367, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !212, line: 367, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !212, line: 367, column: 13)
!1598 = !DILocation(line: 367, column: 13, scope: !1597)
!1599 = !DILocation(line: 366, column: 70, scope: !1592)
!1600 = distinct !{!1600, !1594, !1601}
!1601 = !DILocation(line: 367, column: 13, scope: !1593)
!1602 = !DILocation(line: 264, column: 10, scope: !1483)
!1603 = !DILocation(line: 370, column: 28, scope: !1585)
!1604 = !DILocation(line: 372, column: 7, scope: !1574)
!1605 = !DILocation(line: 376, column: 7, scope: !1574)
!1606 = !DILocation(line: 379, column: 7, scope: !1574)
!1607 = !DILocation(line: 381, column: 12, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1574, file: !212, line: 381, column: 11)
!1609 = !DILocation(line: 381, column: 11, scope: !1574)
!1610 = !DILocation(line: 386, column: 12, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1574, file: !212, line: 386, column: 11)
!1612 = !DILocation(line: 386, column: 11, scope: !1574)
!1613 = !DILocation(line: 387, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !212, line: 387, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !212, line: 387, column: 9)
!1616 = !DILocation(line: 387, column: 9, scope: !1615)
!1617 = !DILocation(line: 394, column: 7, scope: !1574)
!1618 = !DILocation(line: 397, column: 7, scope: !1574)
!1619 = !DILocation(line: 0, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 408, column: 11)
!1621 = !DILocation(line: 0, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !212, line: 419, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !212, line: 418, column: 9)
!1624 = !DILocation(line: 0, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 556, column: 15)
!1626 = !DILocation(line: 0, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 548, column: 15)
!1628 = !DILocation(line: 0, scope: !1533)
!1629 = !DILocation(line: 0, scope: !1540)
!1630 = !DILocation(line: 0, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 509, column: 15)
!1632 = !DILocation(line: 400, column: 8, scope: !1512)
!1633 = !DILocation(line: 0, scope: !1512)
!1634 = !DILocation(line: 400, column: 27, scope: !1511)
!1635 = !DILocation(line: 400, column: 19, scope: !1511)
!1636 = !DILocation(line: 400, column: 41, scope: !1511)
!1637 = !DILocation(line: 400, column: 48, scope: !1511)
!1638 = !DILocation(line: 400, column: 3, scope: !1512)
!1639 = !DILocation(line: 400, column: 60, scope: !1511)
!1640 = !DILocation(line: 0, scope: !1510)
!1641 = !DILocation(line: 409, column: 11, scope: !1620)
!1642 = !DILocation(line: 411, column: 17, scope: !1620)
!1643 = !DILocation(line: 412, column: 39, scope: !1620)
!1644 = !DILocation(line: 416, column: 32, scope: !1620)
!1645 = !DILocation(line: 412, column: 19, scope: !1620)
!1646 = !DILocation(line: 412, column: 15, scope: !1620)
!1647 = !DILocation(line: 417, column: 11, scope: !1620)
!1648 = !DILocation(line: 417, column: 26, scope: !1620)
!1649 = !DILocation(line: 417, column: 14, scope: !1620)
!1650 = !DILocation(line: 417, column: 63, scope: !1620)
!1651 = !DILocation(line: 408, column: 11, scope: !1510)
!1652 = !DILocation(line: 424, column: 11, scope: !1510)
!1653 = !DILocation(line: 425, column: 7, scope: !1510)
!1654 = !DILocation(line: 428, column: 15, scope: !1519)
!1655 = !DILocation(line: 430, column: 15, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !212, line: 430, column: 15)
!1657 = distinct !DILexicalBlock(scope: !1558, file: !212, line: 429, column: 13)
!1658 = !DILocation(line: 430, column: 15, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1656, file: !212, line: 430, column: 15)
!1660 = !DILocation(line: 430, column: 15, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !212, line: 430, column: 15)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !212, line: 430, column: 15)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !212, line: 430, column: 15)
!1664 = !DILocation(line: 430, column: 15, scope: !1662)
!1665 = !DILocation(line: 430, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !212, line: 430, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !212, line: 430, column: 15)
!1668 = !DILocation(line: 430, column: 15, scope: !1667)
!1669 = !DILocation(line: 430, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !212, line: 430, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1663, file: !212, line: 430, column: 15)
!1672 = !DILocation(line: 430, column: 15, scope: !1671)
!1673 = !DILocation(line: 430, column: 15, scope: !1663)
!1674 = !DILocation(line: 430, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !212, line: 430, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1656, file: !212, line: 430, column: 15)
!1677 = !DILocation(line: 430, column: 15, scope: !1676)
!1678 = !DILocation(line: 438, column: 19, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1657, file: !212, line: 437, column: 19)
!1680 = !DILocation(line: 438, column: 24, scope: !1679)
!1681 = !DILocation(line: 438, column: 28, scope: !1679)
!1682 = !DILocation(line: 438, column: 38, scope: !1679)
!1683 = !DILocation(line: 438, column: 48, scope: !1679)
!1684 = !DILocation(line: 438, column: 59, scope: !1679)
!1685 = !DILocation(line: 440, column: 19, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !212, line: 440, column: 19)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !212, line: 440, column: 19)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !212, line: 439, column: 17)
!1689 = !DILocation(line: 440, column: 19, scope: !1687)
!1690 = !DILocation(line: 441, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !212, line: 441, column: 19)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !212, line: 441, column: 19)
!1693 = !DILocation(line: 441, column: 19, scope: !1692)
!1694 = !DILocation(line: 442, column: 17, scope: !1688)
!1695 = !DILocation(line: 449, column: 20, scope: !1558)
!1696 = !DILocation(line: 454, column: 11, scope: !1519)
!1697 = !DILocation(line: 457, column: 19, scope: !1555)
!1698 = !DILocation(line: 463, column: 19, scope: !1554)
!1699 = !DILocation(line: 463, column: 24, scope: !1554)
!1700 = !DILocation(line: 463, column: 28, scope: !1554)
!1701 = !DILocation(line: 463, column: 38, scope: !1554)
!1702 = !DILocation(line: 463, column: 47, scope: !1554)
!1703 = !DILocation(line: 463, column: 41, scope: !1554)
!1704 = !DILocation(line: 463, column: 52, scope: !1554)
!1705 = !DILocation(line: 462, column: 19, scope: !1555)
!1706 = !DILocation(line: 464, column: 25, scope: !1554)
!1707 = !DILocation(line: 464, column: 17, scope: !1554)
!1708 = !DILocation(line: 471, column: 25, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1554, file: !212, line: 465, column: 19)
!1710 = !DILocation(line: 475, column: 21, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !212, line: 475, column: 21)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 475, column: 21)
!1713 = !DILocation(line: 475, column: 21, scope: !1712)
!1714 = !DILocation(line: 476, column: 21, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !212, line: 476, column: 21)
!1716 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 476, column: 21)
!1717 = !DILocation(line: 476, column: 21, scope: !1716)
!1718 = !DILocation(line: 477, column: 21, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !212, line: 477, column: 21)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 477, column: 21)
!1721 = !DILocation(line: 477, column: 21, scope: !1720)
!1722 = !DILocation(line: 478, column: 21, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !212, line: 478, column: 21)
!1724 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 478, column: 21)
!1725 = !DILocation(line: 478, column: 21, scope: !1724)
!1726 = !DILocation(line: 479, column: 21, scope: !1709)
!1727 = !DILocation(line: 492, column: 31, scope: !1519)
!1728 = !DILocation(line: 493, column: 31, scope: !1519)
!1729 = !DILocation(line: 495, column: 31, scope: !1519)
!1730 = !DILocation(line: 496, column: 31, scope: !1519)
!1731 = !DILocation(line: 497, column: 31, scope: !1519)
!1732 = !DILocation(line: 500, column: 15, scope: !1519)
!1733 = !DILocation(line: 502, column: 19, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !212, line: 501, column: 13)
!1735 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 500, column: 15)
!1736 = !DILocation(line: 509, column: 33, scope: !1631)
!1737 = !DILocation(line: 0, scope: !1519)
!1738 = !DILocation(line: 512, column: 9, scope: !1519)
!1739 = !DILocation(line: 514, column: 15, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 513, column: 15)
!1741 = !DILocation(line: 517, column: 9, scope: !1519)
!1742 = !DILocation(line: 518, column: 15, scope: !1519)
!1743 = !DILocation(line: 526, column: 15, scope: !1519)
!1744 = !DILocation(line: 526, column: 40, scope: !1552)
!1745 = !DILocation(line: 526, column: 47, scope: !1552)
!1746 = !DILocation(line: 526, column: 18, scope: !1552)
!1747 = !DILocation(line: 530, column: 17, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 530, column: 15)
!1749 = !DILocation(line: 530, column: 15, scope: !1519)
!1750 = !DILocation(line: 535, column: 11, scope: !1519)
!1751 = !DILocation(line: 549, column: 15, scope: !1627)
!1752 = !DILocation(line: 556, column: 15, scope: !1519)
!1753 = !DILocation(line: 558, column: 19, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 557, column: 13)
!1755 = !DILocation(line: 561, column: 19, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 561, column: 19)
!1757 = !DILocation(line: 561, column: 35, scope: !1756)
!1758 = !DILocation(line: 561, column: 30, scope: !1756)
!1759 = !DILocation(line: 570, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !212, line: 570, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 570, column: 15)
!1762 = !DILocation(line: 570, column: 15, scope: !1761)
!1763 = !DILocation(line: 571, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !212, line: 571, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 571, column: 15)
!1766 = !DILocation(line: 571, column: 15, scope: !1765)
!1767 = !DILocation(line: 572, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !212, line: 572, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 572, column: 15)
!1770 = !DILocation(line: 572, column: 15, scope: !1769)
!1771 = !DILocation(line: 574, column: 13, scope: !1754)
!1772 = !DILocation(line: 614, column: 17, scope: !1518)
!1773 = !DILocation(line: 0, scope: !1518)
!1774 = !DILocation(line: 617, column: 29, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1523, file: !212, line: 615, column: 15)
!1776 = !{!1777, !1777, i64 0}
!1777 = !{!"short", !1125, i64 0}
!1778 = !DILocation(line: 617, column: 27, scope: !1775)
!1779 = !DILocation(line: 618, column: 15, scope: !1775)
!1780 = !DILocation(line: 621, column: 17, scope: !1522)
!1781 = !DILocation(line: 621, column: 27, scope: !1522)
!1782 = !DILocalVariable(name: "__dest", arg: 1, scope: !1783, file: !1784, line: 59, type: !67)
!1783 = distinct !DISubprogram(name: "memset", scope: !1784, file: !1784, line: 59, type: !1785, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1787)
!1784 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!67, !67, !18, !69}
!1787 = !{!1782, !1788, !1789}
!1788 = !DILocalVariable(name: "__ch", arg: 2, scope: !1783, file: !1784, line: 59, type: !18)
!1789 = !DILocalVariable(name: "__len", arg: 3, scope: !1783, file: !1784, line: 59, type: !69)
!1790 = !DILocation(line: 0, scope: !1783, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 622, column: 17, scope: !1522)
!1792 = !DILocation(line: 71, column: 10, scope: !1783, inlinedAt: !1791)
!1793 = !DILocation(line: 626, column: 29, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1522, file: !212, line: 626, column: 21)
!1795 = !DILocation(line: 626, column: 21, scope: !1522)
!1796 = !DILocation(line: 627, column: 29, scope: !1794)
!1797 = !DILocation(line: 627, column: 19, scope: !1794)
!1798 = !DILocation(line: 629, column: 17, scope: !1522)
!1799 = !DILocation(line: 624, column: 19, scope: !1522)
!1800 = !DILocation(line: 625, column: 27, scope: !1522)
!1801 = !DILocation(line: 631, column: 21, scope: !1528)
!1802 = !DILocation(line: 632, column: 56, scope: !1528)
!1803 = !DILocation(line: 632, column: 50, scope: !1528)
!1804 = !DILocation(line: 633, column: 53, scope: !1528)
!1805 = !DILocation(line: 632, column: 36, scope: !1528)
!1806 = !DILocation(line: 634, column: 25, scope: !1528)
!1807 = !DILocation(line: 644, column: 38, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1535, file: !212, line: 642, column: 23)
!1809 = !DILocation(line: 644, column: 48, scope: !1808)
!1810 = !DILocation(line: 644, column: 25, scope: !1808)
!1811 = !DILocation(line: 644, column: 51, scope: !1808)
!1812 = !DILocation(line: 645, column: 28, scope: !1808)
!1813 = !DILocation(line: 644, column: 34, scope: !1808)
!1814 = distinct !{!1814, !1810, !1812}
!1815 = !DILocation(line: 658, column: 43, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !212, line: 658, column: 29)
!1817 = distinct !DILexicalBlock(scope: !1532, file: !212, line: 658, column: 29)
!1818 = !DILocation(line: 655, column: 29, scope: !1533)
!1819 = !DILocation(line: 0, scope: !1532)
!1820 = !DILocation(line: 659, column: 49, scope: !1816)
!1821 = !DILocation(line: 659, column: 39, scope: !1816)
!1822 = !DILocation(line: 659, column: 31, scope: !1816)
!1823 = !DILocation(line: 658, column: 53, scope: !1816)
!1824 = !DILocation(line: 658, column: 29, scope: !1817)
!1825 = distinct !{!1825, !1824, !1826}
!1826 = !DILocation(line: 667, column: 33, scope: !1817)
!1827 = !DILocation(line: 674, column: 19, scope: !1522)
!1828 = !DILocation(line: 670, column: 41, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1534, file: !212, line: 670, column: 29)
!1830 = !DILocation(line: 670, column: 31, scope: !1829)
!1831 = !DILocation(line: 670, column: 29, scope: !1534)
!1832 = !DILocation(line: 672, column: 27, scope: !1534)
!1833 = !DILocation(line: 675, column: 26, scope: !1522)
!1834 = !DILocation(line: 675, column: 24, scope: !1522)
!1835 = !DILocation(line: 674, column: 19, scope: !1528)
!1836 = distinct !{!1836, !1798, !1837}
!1837 = !DILocation(line: 675, column: 44, scope: !1522)
!1838 = !DILocation(line: 676, column: 15, scope: !1523)
!1839 = !DILocation(line: 0, scope: !1523)
!1840 = !DILocation(line: 678, column: 40, scope: !1518)
!1841 = !DILocation(line: 680, column: 19, scope: !1540)
!1842 = !DILocation(line: 680, column: 45, scope: !1540)
!1843 = !DILocation(line: 680, column: 23, scope: !1540)
!1844 = !DILocation(line: 684, column: 33, scope: !1539)
!1845 = !DILocation(line: 0, scope: !1539)
!1846 = !DILocation(line: 686, column: 17, scope: !1539)
!1847 = !DILocation(line: 405, column: 12, scope: !1510)
!1848 = !DILocation(line: 688, column: 43, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 688, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !212, line: 687, column: 19)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !212, line: 686, column: 17)
!1852 = distinct !DILexicalBlock(scope: !1539, file: !212, line: 686, column: 17)
!1853 = !DILocation(line: 690, column: 25, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 690, column: 25)
!1855 = distinct !DILexicalBlock(scope: !1849, file: !212, line: 689, column: 23)
!1856 = !DILocation(line: 690, column: 25, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !212, line: 690, column: 25)
!1858 = !DILocation(line: 690, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !212, line: 690, column: 25)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 690, column: 25)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !212, line: 690, column: 25)
!1862 = !DILocation(line: 690, column: 25, scope: !1860)
!1863 = !DILocation(line: 690, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !212, line: 690, column: 25)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 690, column: 25)
!1866 = !DILocation(line: 690, column: 25, scope: !1865)
!1867 = !DILocation(line: 690, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !212, line: 690, column: 25)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 690, column: 25)
!1870 = !DILocation(line: 690, column: 25, scope: !1869)
!1871 = !DILocation(line: 690, column: 25, scope: !1861)
!1872 = !DILocation(line: 690, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 690, column: 25)
!1874 = distinct !DILexicalBlock(scope: !1854, file: !212, line: 690, column: 25)
!1875 = !DILocation(line: 690, column: 25, scope: !1874)
!1876 = !DILocation(line: 691, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 691, column: 25)
!1878 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 691, column: 25)
!1879 = !DILocation(line: 691, column: 25, scope: !1878)
!1880 = !DILocation(line: 692, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !212, line: 692, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1855, file: !212, line: 692, column: 25)
!1883 = !DILocation(line: 692, column: 25, scope: !1882)
!1884 = !DILocation(line: 693, column: 38, scope: !1855)
!1885 = !DILocation(line: 693, column: 33, scope: !1855)
!1886 = !DILocation(line: 694, column: 23, scope: !1855)
!1887 = !DILocation(line: 695, column: 30, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1849, file: !212, line: 695, column: 30)
!1889 = !DILocation(line: 695, column: 30, scope: !1849)
!1890 = !DILocation(line: 697, column: 25, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !212, line: 697, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !212, line: 697, column: 25)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !212, line: 696, column: 23)
!1894 = !DILocation(line: 697, column: 25, scope: !1892)
!1895 = !DILocation(line: 699, column: 23, scope: !1893)
!1896 = !DILocation(line: 700, column: 35, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 700, column: 25)
!1898 = !DILocation(line: 700, column: 30, scope: !1897)
!1899 = !DILocation(line: 700, column: 25, scope: !1850)
!1900 = !DILocation(line: 702, column: 21, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !212, line: 702, column: 21)
!1902 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 702, column: 21)
!1903 = !DILocation(line: 702, column: 21, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !212, line: 702, column: 21)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !212, line: 702, column: 21)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !212, line: 702, column: 21)
!1907 = !DILocation(line: 702, column: 21, scope: !1905)
!1908 = !DILocation(line: 702, column: 21, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !212, line: 702, column: 21)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !212, line: 702, column: 21)
!1911 = !DILocation(line: 702, column: 21, scope: !1910)
!1912 = !DILocation(line: 702, column: 21, scope: !1906)
!1913 = !DILocation(line: 0, scope: !1850)
!1914 = !DILocation(line: 703, column: 21, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !212, line: 703, column: 21)
!1916 = distinct !DILexicalBlock(scope: !1850, file: !212, line: 703, column: 21)
!1917 = !DILocation(line: 703, column: 21, scope: !1916)
!1918 = !DILocation(line: 704, column: 25, scope: !1850)
!1919 = !DILocation(line: 686, column: 17, scope: !1851)
!1920 = distinct !{!1920, !1921, !1922}
!1921 = !DILocation(line: 686, column: 17, scope: !1852)
!1922 = !DILocation(line: 705, column: 19, scope: !1852)
!1923 = !DILocation(line: 416, column: 30, scope: !1620)
!1924 = !DILocation(line: 712, column: 34, scope: !1562)
!1925 = !DILocation(line: 715, column: 35, scope: !1562)
!1926 = !DILocation(line: 715, column: 17, scope: !1562)
!1927 = !DILocation(line: 715, column: 47, scope: !1562)
!1928 = !DILocation(line: 715, column: 65, scope: !1562)
!1929 = !DILocation(line: 716, column: 15, scope: !1562)
!1930 = !DILocation(line: 716, column: 11, scope: !1562)
!1931 = !DILocation(line: 712, column: 11, scope: !1510)
!1932 = !DILocation(line: 400, column: 10, scope: !1512)
!1933 = !DILocation(line: 719, column: 5, scope: !1510)
!1934 = !DILocation(line: 720, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 720, column: 7)
!1936 = !DILocation(line: 720, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1935, file: !212, line: 720, column: 7)
!1938 = !DILocation(line: 720, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !212, line: 720, column: 7)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !212, line: 720, column: 7)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !212, line: 720, column: 7)
!1942 = !DILocation(line: 720, column: 7, scope: !1940)
!1943 = !DILocation(line: 720, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !212, line: 720, column: 7)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !212, line: 720, column: 7)
!1946 = !DILocation(line: 720, column: 7, scope: !1945)
!1947 = !DILocation(line: 720, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !212, line: 720, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !212, line: 720, column: 7)
!1950 = !DILocation(line: 720, column: 7, scope: !1949)
!1951 = !DILocation(line: 720, column: 7, scope: !1941)
!1952 = !DILocation(line: 720, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !212, line: 720, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1935, file: !212, line: 720, column: 7)
!1955 = !DILocation(line: 720, column: 7, scope: !1954)
!1956 = !DILocation(line: 722, column: 5, scope: !1510)
!1957 = !DILocation(line: 723, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !212, line: 723, column: 7)
!1959 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 723, column: 7)
!1960 = !DILocation(line: 424, column: 9, scope: !1510)
!1961 = !DILocation(line: 723, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 723, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !212, line: 723, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1958, file: !212, line: 723, column: 7)
!1965 = !DILocation(line: 723, column: 7, scope: !1963)
!1966 = !DILocation(line: 723, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 723, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !212, line: 723, column: 7)
!1969 = !DILocation(line: 723, column: 7, scope: !1968)
!1970 = !DILocation(line: 723, column: 7, scope: !1964)
!1971 = !DILocation(line: 724, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !212, line: 724, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 724, column: 7)
!1974 = !DILocation(line: 724, column: 7, scope: !1973)
!1975 = !DILocation(line: 726, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1510, file: !212, line: 726, column: 11)
!1977 = !DILocation(line: 726, column: 11, scope: !1510)
!1978 = !DILocation(line: 728, column: 5, scope: !1511)
!1979 = !DILocation(line: 400, column: 75, scope: !1511)
!1980 = !DILocation(line: 400, column: 3, scope: !1511)
!1981 = distinct !{!1981, !1638, !1982}
!1982 = !DILocation(line: 728, column: 5, scope: !1512)
!1983 = !DILocation(line: 730, column: 11, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 730, column: 7)
!1985 = !DILocation(line: 730, column: 16, scope: !1984)
!1986 = !DILocation(line: 738, column: 51, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 738, column: 7)
!1988 = !DILocation(line: 739, column: 10, scope: !1987)
!1989 = !DILocation(line: 741, column: 11, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !212, line: 741, column: 11)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !212, line: 740, column: 5)
!1992 = !DILocation(line: 741, column: 11, scope: !1991)
!1993 = !DILocation(line: 742, column: 16, scope: !1990)
!1994 = !DILocation(line: 742, column: 9, scope: !1990)
!1995 = !DILocation(line: 746, column: 18, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1990, file: !212, line: 746, column: 16)
!1997 = !DILocation(line: 746, column: 32, scope: !1996)
!1998 = !DILocation(line: 746, column: 29, scope: !1996)
!1999 = !DILocation(line: 755, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 755, column: 7)
!2001 = !DILocation(line: 755, column: 20, scope: !2000)
!2002 = !DILocation(line: 756, column: 12, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !212, line: 756, column: 5)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !212, line: 756, column: 5)
!2005 = !DILocation(line: 756, column: 5, scope: !2004)
!2006 = !DILocation(line: 757, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !212, line: 757, column: 7)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !212, line: 757, column: 7)
!2009 = !DILocation(line: 757, column: 7, scope: !2008)
!2010 = !DILocation(line: 756, column: 39, scope: !2003)
!2011 = distinct !{!2011, !2005, !2012}
!2012 = !DILocation(line: 757, column: 7, scope: !2004)
!2013 = !DILocation(line: 759, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 759, column: 7)
!2015 = !DILocation(line: 759, column: 7, scope: !1483)
!2016 = !DILocation(line: 760, column: 5, scope: !2014)
!2017 = !DILocation(line: 760, column: 17, scope: !2014)
!2018 = !DILocation(line: 763, column: 2, scope: !1483)
!2019 = !DILocation(line: 766, column: 51, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1483, file: !212, line: 766, column: 7)
!2021 = !DILocation(line: 766, column: 21, scope: !2020)
!2022 = !DILocation(line: 770, column: 42, scope: !1483)
!2023 = !DILocation(line: 768, column: 10, scope: !1483)
!2024 = !DILocation(line: 768, column: 3, scope: !1483)
!2025 = !DILocation(line: 772, column: 1, scope: !1483)
!2026 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2027, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!6, !6, !214}
!2029 = !{!2030, !2031, !2032, !2033}
!2030 = !DILocalVariable(name: "msgid", arg: 1, scope: !2026, file: !212, line: 207, type: !6)
!2031 = !DILocalVariable(name: "s", arg: 2, scope: !2026, file: !212, line: 207, type: !214)
!2032 = !DILocalVariable(name: "translation", scope: !2026, file: !212, line: 209, type: !6)
!2033 = !DILocalVariable(name: "locale_code", scope: !2026, file: !212, line: 210, type: !6)
!2034 = !DILocation(line: 0, scope: !2026)
!2035 = !DILocation(line: 209, column: 29, scope: !2026)
!2036 = !DILocation(line: 212, column: 19, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2026, file: !212, line: 212, column: 7)
!2038 = !DILocation(line: 212, column: 7, scope: !2026)
!2039 = !DILocation(line: 233, column: 17, scope: !2026)
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !2042, line: 160, type: !6)
!2041 = distinct !DISubprogram(name: "strcaseeq0", scope: !2042, file: !2042, line: 160, type: !2043, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2045)
!2042 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2045 = !{!2040, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2046 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !2042, line: 160, type: !6)
!2047 = !DILocalVariable(name: "s20", arg: 3, scope: !2041, file: !2042, line: 160, type: !8)
!2048 = !DILocalVariable(name: "s21", arg: 4, scope: !2041, file: !2042, line: 160, type: !8)
!2049 = !DILocalVariable(name: "s22", arg: 5, scope: !2041, file: !2042, line: 160, type: !8)
!2050 = !DILocalVariable(name: "s23", arg: 6, scope: !2041, file: !2042, line: 160, type: !8)
!2051 = !DILocalVariable(name: "s24", arg: 7, scope: !2041, file: !2042, line: 160, type: !8)
!2052 = !DILocalVariable(name: "s25", arg: 8, scope: !2041, file: !2042, line: 160, type: !8)
!2053 = !DILocalVariable(name: "s26", arg: 9, scope: !2041, file: !2042, line: 160, type: !8)
!2054 = !DILocalVariable(name: "s27", arg: 10, scope: !2041, file: !2042, line: 160, type: !8)
!2055 = !DILocalVariable(name: "s28", arg: 11, scope: !2041, file: !2042, line: 160, type: !8)
!2056 = !DILocation(line: 0, scope: !2041, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 234, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2026, file: !212, line: 234, column: 7)
!2059 = !DILocation(line: 162, column: 7, scope: !2060, inlinedAt: !2057)
!2060 = distinct !DILexicalBlock(scope: !2041, file: !2042, line: 162, column: 7)
!2061 = !DILocalVariable(name: "s1", arg: 1, scope: !2062, file: !2042, line: 146, type: !6)
!2062 = distinct !DISubprogram(name: "strcaseeq1", scope: !2042, file: !2042, line: 146, type: !2063, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2065 = !{!2061, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2066 = !DILocalVariable(name: "s2", arg: 2, scope: !2062, file: !2042, line: 146, type: !6)
!2067 = !DILocalVariable(name: "s21", arg: 3, scope: !2062, file: !2042, line: 146, type: !8)
!2068 = !DILocalVariable(name: "s22", arg: 4, scope: !2062, file: !2042, line: 146, type: !8)
!2069 = !DILocalVariable(name: "s23", arg: 5, scope: !2062, file: !2042, line: 146, type: !8)
!2070 = !DILocalVariable(name: "s24", arg: 6, scope: !2062, file: !2042, line: 146, type: !8)
!2071 = !DILocalVariable(name: "s25", arg: 7, scope: !2062, file: !2042, line: 146, type: !8)
!2072 = !DILocalVariable(name: "s26", arg: 8, scope: !2062, file: !2042, line: 146, type: !8)
!2073 = !DILocalVariable(name: "s27", arg: 9, scope: !2062, file: !2042, line: 146, type: !8)
!2074 = !DILocalVariable(name: "s28", arg: 10, scope: !2062, file: !2042, line: 146, type: !8)
!2075 = !DILocation(line: 0, scope: !2062, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 167, column: 16, scope: !2077, inlinedAt: !2057)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !2042, line: 164, column: 11)
!2078 = distinct !DILexicalBlock(scope: !2060, file: !2042, line: 163, column: 5)
!2079 = !DILocation(line: 148, column: 7, scope: !2080, inlinedAt: !2076)
!2080 = distinct !DILexicalBlock(scope: !2062, file: !2042, line: 148, column: 7)
!2081 = !DILocalVariable(name: "s1", arg: 1, scope: !2082, file: !2042, line: 132, type: !6)
!2082 = distinct !DISubprogram(name: "strcaseeq2", scope: !2042, file: !2042, line: 132, type: !2083, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2085 = !{!2081, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2086 = !DILocalVariable(name: "s2", arg: 2, scope: !2082, file: !2042, line: 132, type: !6)
!2087 = !DILocalVariable(name: "s22", arg: 3, scope: !2082, file: !2042, line: 132, type: !8)
!2088 = !DILocalVariable(name: "s23", arg: 4, scope: !2082, file: !2042, line: 132, type: !8)
!2089 = !DILocalVariable(name: "s24", arg: 5, scope: !2082, file: !2042, line: 132, type: !8)
!2090 = !DILocalVariable(name: "s25", arg: 6, scope: !2082, file: !2042, line: 132, type: !8)
!2091 = !DILocalVariable(name: "s26", arg: 7, scope: !2082, file: !2042, line: 132, type: !8)
!2092 = !DILocalVariable(name: "s27", arg: 8, scope: !2082, file: !2042, line: 132, type: !8)
!2093 = !DILocalVariable(name: "s28", arg: 9, scope: !2082, file: !2042, line: 132, type: !8)
!2094 = !DILocation(line: 0, scope: !2082, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 153, column: 16, scope: !2096, inlinedAt: !2076)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !2042, line: 150, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2080, file: !2042, line: 149, column: 5)
!2098 = !DILocation(line: 134, column: 7, scope: !2099, inlinedAt: !2095)
!2099 = distinct !DILexicalBlock(scope: !2082, file: !2042, line: 134, column: 7)
!2100 = !DILocalVariable(name: "s1", arg: 1, scope: !2101, file: !2042, line: 118, type: !6)
!2101 = distinct !DISubprogram(name: "strcaseeq3", scope: !2042, file: !2042, line: 118, type: !2102, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2104 = !{!2100, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2105 = !DILocalVariable(name: "s2", arg: 2, scope: !2101, file: !2042, line: 118, type: !6)
!2106 = !DILocalVariable(name: "s23", arg: 3, scope: !2101, file: !2042, line: 118, type: !8)
!2107 = !DILocalVariable(name: "s24", arg: 4, scope: !2101, file: !2042, line: 118, type: !8)
!2108 = !DILocalVariable(name: "s25", arg: 5, scope: !2101, file: !2042, line: 118, type: !8)
!2109 = !DILocalVariable(name: "s26", arg: 6, scope: !2101, file: !2042, line: 118, type: !8)
!2110 = !DILocalVariable(name: "s27", arg: 7, scope: !2101, file: !2042, line: 118, type: !8)
!2111 = !DILocalVariable(name: "s28", arg: 8, scope: !2101, file: !2042, line: 118, type: !8)
!2112 = !DILocation(line: 0, scope: !2101, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 139, column: 16, scope: !2114, inlinedAt: !2095)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !2042, line: 136, column: 11)
!2115 = distinct !DILexicalBlock(scope: !2099, file: !2042, line: 135, column: 5)
!2116 = !DILocation(line: 120, column: 7, scope: !2117, inlinedAt: !2113)
!2117 = distinct !DILexicalBlock(scope: !2101, file: !2042, line: 120, column: 7)
!2118 = !DILocation(line: 120, column: 7, scope: !2101, inlinedAt: !2113)
!2119 = !DILocalVariable(name: "s1", arg: 1, scope: !2120, file: !2042, line: 104, type: !6)
!2120 = distinct !DISubprogram(name: "strcaseeq4", scope: !2042, file: !2042, line: 104, type: !2121, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2123 = !{!2119, !2124, !2125, !2126, !2127, !2128, !2129}
!2124 = !DILocalVariable(name: "s2", arg: 2, scope: !2120, file: !2042, line: 104, type: !6)
!2125 = !DILocalVariable(name: "s24", arg: 3, scope: !2120, file: !2042, line: 104, type: !8)
!2126 = !DILocalVariable(name: "s25", arg: 4, scope: !2120, file: !2042, line: 104, type: !8)
!2127 = !DILocalVariable(name: "s26", arg: 5, scope: !2120, file: !2042, line: 104, type: !8)
!2128 = !DILocalVariable(name: "s27", arg: 6, scope: !2120, file: !2042, line: 104, type: !8)
!2129 = !DILocalVariable(name: "s28", arg: 7, scope: !2120, file: !2042, line: 104, type: !8)
!2130 = !DILocation(line: 0, scope: !2120, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 125, column: 16, scope: !2132, inlinedAt: !2113)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !2042, line: 122, column: 11)
!2133 = distinct !DILexicalBlock(scope: !2117, file: !2042, line: 121, column: 5)
!2134 = !DILocation(line: 106, column: 7, scope: !2135, inlinedAt: !2131)
!2135 = distinct !DILexicalBlock(scope: !2120, file: !2042, line: 106, column: 7)
!2136 = !DILocation(line: 106, column: 7, scope: !2120, inlinedAt: !2131)
!2137 = !DILocalVariable(name: "s1", arg: 1, scope: !2138, file: !2042, line: 90, type: !6)
!2138 = distinct !DISubprogram(name: "strcaseeq5", scope: !2042, file: !2042, line: 90, type: !2139, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2141)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!18, !6, !6, !8, !8, !8, !8}
!2141 = !{!2137, !2142, !2143, !2144, !2145, !2146}
!2142 = !DILocalVariable(name: "s2", arg: 2, scope: !2138, file: !2042, line: 90, type: !6)
!2143 = !DILocalVariable(name: "s25", arg: 3, scope: !2138, file: !2042, line: 90, type: !8)
!2144 = !DILocalVariable(name: "s26", arg: 4, scope: !2138, file: !2042, line: 90, type: !8)
!2145 = !DILocalVariable(name: "s27", arg: 5, scope: !2138, file: !2042, line: 90, type: !8)
!2146 = !DILocalVariable(name: "s28", arg: 6, scope: !2138, file: !2042, line: 90, type: !8)
!2147 = !DILocation(line: 0, scope: !2138, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 111, column: 16, scope: !2149, inlinedAt: !2131)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !2042, line: 108, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2135, file: !2042, line: 107, column: 5)
!2151 = !DILocation(line: 92, column: 7, scope: !2152, inlinedAt: !2148)
!2152 = distinct !DILexicalBlock(scope: !2138, file: !2042, line: 92, column: 7)
!2153 = !DILocation(line: 92, column: 7, scope: !2138, inlinedAt: !2148)
!2154 = !DILocation(line: 235, column: 12, scope: !2058)
!2155 = !DILocation(line: 235, column: 21, scope: !2058)
!2156 = !DILocation(line: 235, column: 5, scope: !2058)
!2157 = !DILocation(line: 0, scope: !2062, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 167, column: 16, scope: !2077, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 236, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2026, file: !212, line: 236, column: 7)
!2161 = !DILocation(line: 148, column: 7, scope: !2080, inlinedAt: !2158)
!2162 = !DILocation(line: 0, scope: !2082, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 153, column: 16, scope: !2096, inlinedAt: !2158)
!2164 = !DILocation(line: 134, column: 7, scope: !2099, inlinedAt: !2163)
!2165 = !DILocation(line: 134, column: 7, scope: !2082, inlinedAt: !2163)
!2166 = !DILocation(line: 0, scope: !2101, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 139, column: 16, scope: !2114, inlinedAt: !2163)
!2168 = !DILocation(line: 120, column: 7, scope: !2117, inlinedAt: !2167)
!2169 = !DILocation(line: 120, column: 7, scope: !2101, inlinedAt: !2167)
!2170 = !DILocation(line: 0, scope: !2120, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 125, column: 16, scope: !2132, inlinedAt: !2167)
!2172 = !DILocation(line: 106, column: 7, scope: !2135, inlinedAt: !2171)
!2173 = !DILocation(line: 106, column: 7, scope: !2120, inlinedAt: !2171)
!2174 = !DILocation(line: 0, scope: !2138, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 111, column: 16, scope: !2149, inlinedAt: !2171)
!2176 = !DILocation(line: 92, column: 7, scope: !2152, inlinedAt: !2175)
!2177 = !DILocation(line: 92, column: 7, scope: !2138, inlinedAt: !2175)
!2178 = !DILocalVariable(name: "s1", arg: 1, scope: !2179, file: !2042, line: 76, type: !6)
!2179 = distinct !DISubprogram(name: "strcaseeq6", scope: !2042, file: !2042, line: 76, type: !2180, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!18, !6, !6, !8, !8, !8}
!2182 = !{!2178, !2183, !2184, !2185, !2186}
!2183 = !DILocalVariable(name: "s2", arg: 2, scope: !2179, file: !2042, line: 76, type: !6)
!2184 = !DILocalVariable(name: "s26", arg: 3, scope: !2179, file: !2042, line: 76, type: !8)
!2185 = !DILocalVariable(name: "s27", arg: 4, scope: !2179, file: !2042, line: 76, type: !8)
!2186 = !DILocalVariable(name: "s28", arg: 5, scope: !2179, file: !2042, line: 76, type: !8)
!2187 = !DILocation(line: 0, scope: !2179, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 97, column: 16, scope: !2189, inlinedAt: !2175)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2042, line: 94, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2152, file: !2042, line: 93, column: 5)
!2191 = !DILocation(line: 78, column: 7, scope: !2192, inlinedAt: !2188)
!2192 = distinct !DILexicalBlock(scope: !2179, file: !2042, line: 78, column: 7)
!2193 = !DILocation(line: 78, column: 7, scope: !2179, inlinedAt: !2188)
!2194 = !DILocalVariable(name: "s1", arg: 1, scope: !2195, file: !2042, line: 62, type: !6)
!2195 = distinct !DISubprogram(name: "strcaseeq7", scope: !2042, file: !2042, line: 62, type: !2196, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!18, !6, !6, !8, !8}
!2198 = !{!2194, !2199, !2200, !2201}
!2199 = !DILocalVariable(name: "s2", arg: 2, scope: !2195, file: !2042, line: 62, type: !6)
!2200 = !DILocalVariable(name: "s27", arg: 3, scope: !2195, file: !2042, line: 62, type: !8)
!2201 = !DILocalVariable(name: "s28", arg: 4, scope: !2195, file: !2042, line: 62, type: !8)
!2202 = !DILocation(line: 0, scope: !2195, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 83, column: 16, scope: !2204, inlinedAt: !2188)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !2042, line: 80, column: 11)
!2205 = distinct !DILexicalBlock(scope: !2192, file: !2042, line: 79, column: 5)
!2206 = !DILocation(line: 64, column: 7, scope: !2207, inlinedAt: !2203)
!2207 = distinct !DILexicalBlock(scope: !2195, file: !2042, line: 64, column: 7)
!2208 = !DILocation(line: 236, column: 7, scope: !2026)
!2209 = !DILocation(line: 237, column: 12, scope: !2160)
!2210 = !DILocation(line: 237, column: 21, scope: !2160)
!2211 = !DILocation(line: 237, column: 5, scope: !2160)
!2212 = !DILocation(line: 239, column: 13, scope: !2026)
!2213 = !DILocation(line: 239, column: 11, scope: !2026)
!2214 = !DILocation(line: 239, column: 3, scope: !2026)
!2215 = !DILocation(line: 240, column: 1, scope: !2026)
!2216 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2217, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!25, !6, !69, !258}
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "arg", arg: 1, scope: !2216, file: !212, line: 799, type: !6)
!2221 = !DILocalVariable(name: "argsize", arg: 2, scope: !2216, file: !212, line: 799, type: !69)
!2222 = !DILocalVariable(name: "o", arg: 3, scope: !2216, file: !212, line: 800, type: !258)
!2223 = !DILocation(line: 0, scope: !2216)
!2224 = !DILocalVariable(name: "arg", arg: 1, scope: !2225, file: !212, line: 812, type: !6)
!2225 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2226, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!25, !6, !69, !482, !258}
!2228 = !{!2224, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236}
!2229 = !DILocalVariable(name: "argsize", arg: 2, scope: !2225, file: !212, line: 812, type: !69)
!2230 = !DILocalVariable(name: "size", arg: 3, scope: !2225, file: !212, line: 812, type: !482)
!2231 = !DILocalVariable(name: "o", arg: 4, scope: !2225, file: !212, line: 813, type: !258)
!2232 = !DILocalVariable(name: "p", scope: !2225, file: !212, line: 815, type: !258)
!2233 = !DILocalVariable(name: "e", scope: !2225, file: !212, line: 816, type: !18)
!2234 = !DILocalVariable(name: "flags", scope: !2225, file: !212, line: 818, type: !18)
!2235 = !DILocalVariable(name: "bufsize", scope: !2225, file: !212, line: 819, type: !69)
!2236 = !DILocalVariable(name: "buf", scope: !2225, file: !212, line: 823, type: !25)
!2237 = !DILocation(line: 0, scope: !2225, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 802, column: 10, scope: !2216)
!2239 = !DILocation(line: 815, column: 37, scope: !2225, inlinedAt: !2238)
!2240 = !DILocation(line: 816, column: 11, scope: !2225, inlinedAt: !2238)
!2241 = !DILocation(line: 818, column: 18, scope: !2225, inlinedAt: !2238)
!2242 = !DILocation(line: 818, column: 24, scope: !2225, inlinedAt: !2238)
!2243 = !DILocation(line: 819, column: 69, scope: !2225, inlinedAt: !2238)
!2244 = !DILocation(line: 820, column: 53, scope: !2225, inlinedAt: !2238)
!2245 = !DILocation(line: 821, column: 49, scope: !2225, inlinedAt: !2238)
!2246 = !DILocation(line: 822, column: 49, scope: !2225, inlinedAt: !2238)
!2247 = !DILocation(line: 819, column: 20, scope: !2225, inlinedAt: !2238)
!2248 = !DILocation(line: 822, column: 62, scope: !2225, inlinedAt: !2238)
!2249 = !DILocalVariable(name: "n", arg: 1, scope: !2250, file: !249, line: 216, type: !69)
!2250 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2251, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!25, !69}
!2253 = !{!2249}
!2254 = !DILocation(line: 0, scope: !2250, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 823, column: 15, scope: !2225, inlinedAt: !2238)
!2256 = !DILocation(line: 218, column: 10, scope: !2250, inlinedAt: !2255)
!2257 = !DILocation(line: 824, column: 60, scope: !2225, inlinedAt: !2238)
!2258 = !DILocation(line: 826, column: 32, scope: !2225, inlinedAt: !2238)
!2259 = !DILocation(line: 826, column: 47, scope: !2225, inlinedAt: !2238)
!2260 = !DILocation(line: 824, column: 3, scope: !2225, inlinedAt: !2238)
!2261 = !DILocation(line: 827, column: 9, scope: !2225, inlinedAt: !2238)
!2262 = !DILocation(line: 802, column: 3, scope: !2216)
!2263 = !DILocation(line: 0, scope: !2225)
!2264 = !DILocation(line: 815, column: 37, scope: !2225)
!2265 = !DILocation(line: 816, column: 11, scope: !2225)
!2266 = !DILocation(line: 818, column: 18, scope: !2225)
!2267 = !DILocation(line: 818, column: 27, scope: !2225)
!2268 = !DILocation(line: 818, column: 24, scope: !2225)
!2269 = !DILocation(line: 819, column: 69, scope: !2225)
!2270 = !DILocation(line: 820, column: 53, scope: !2225)
!2271 = !DILocation(line: 821, column: 49, scope: !2225)
!2272 = !DILocation(line: 822, column: 49, scope: !2225)
!2273 = !DILocation(line: 819, column: 20, scope: !2225)
!2274 = !DILocation(line: 822, column: 62, scope: !2225)
!2275 = !DILocation(line: 0, scope: !2250, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 823, column: 15, scope: !2225)
!2277 = !DILocation(line: 218, column: 10, scope: !2250, inlinedAt: !2276)
!2278 = !DILocation(line: 824, column: 60, scope: !2225)
!2279 = !DILocation(line: 826, column: 32, scope: !2225)
!2280 = !DILocation(line: 826, column: 47, scope: !2225)
!2281 = !DILocation(line: 824, column: 3, scope: !2225)
!2282 = !DILocation(line: 827, column: 9, scope: !2225)
!2283 = !DILocation(line: 828, column: 7, scope: !2225)
!2284 = !DILocation(line: 829, column: 11, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2225, file: !212, line: 828, column: 7)
!2286 = !{!2287, !2287, i64 0}
!2287 = !{!"long", !1125, i64 0}
!2288 = !DILocation(line: 829, column: 5, scope: !2285)
!2289 = !DILocation(line: 830, column: 3, scope: !2225)
!2290 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2291)
!2291 = !{!2292, !2293}
!2292 = !DILocalVariable(name: "sv", scope: !2290, file: !212, line: 850, type: !339)
!2293 = !DILocalVariable(name: "i", scope: !2290, file: !212, line: 851, type: !18)
!2294 = !DILocation(line: 850, column: 24, scope: !2290)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 852, column: 19, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !212, line: 852, column: 3)
!2298 = distinct !DILexicalBlock(scope: !2290, file: !212, line: 852, column: 3)
!2299 = !DILocation(line: 852, column: 17, scope: !2297)
!2300 = !DILocation(line: 852, column: 3, scope: !2298)
!2301 = !DILocation(line: 853, column: 17, scope: !2297)
!2302 = !{!2303, !1124, i64 8}
!2303 = !{!"slotvec", !2287, i64 0, !1124, i64 8}
!2304 = !DILocation(line: 853, column: 5, scope: !2297)
!2305 = !DILocation(line: 852, column: 28, scope: !2297)
!2306 = distinct !{!2306, !2300, !2307}
!2307 = !DILocation(line: 853, column: 20, scope: !2298)
!2308 = !DILocation(line: 854, column: 13, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2290, file: !212, line: 854, column: 7)
!2310 = !DILocation(line: 854, column: 17, scope: !2309)
!2311 = !DILocation(line: 854, column: 7, scope: !2290)
!2312 = !DILocation(line: 856, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !212, line: 855, column: 5)
!2314 = !DILocation(line: 857, column: 21, scope: !2313)
!2315 = !{!2303, !2287, i64 0}
!2316 = !DILocation(line: 858, column: 20, scope: !2313)
!2317 = !DILocation(line: 859, column: 5, scope: !2313)
!2318 = !DILocation(line: 860, column: 10, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2290, file: !212, line: 860, column: 7)
!2320 = !DILocation(line: 860, column: 7, scope: !2290)
!2321 = !DILocation(line: 862, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !212, line: 861, column: 5)
!2323 = !DILocation(line: 862, column: 7, scope: !2322)
!2324 = !DILocation(line: 863, column: 15, scope: !2322)
!2325 = !DILocation(line: 864, column: 5, scope: !2322)
!2326 = !DILocation(line: 865, column: 10, scope: !2290)
!2327 = !DILocation(line: 866, column: 1, scope: !2290)
!2328 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !404, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "n", arg: 1, scope: !2328, file: !212, line: 931, type: !18)
!2331 = !DILocalVariable(name: "arg", arg: 2, scope: !2328, file: !212, line: 931, type: !6)
!2332 = !DILocation(line: 0, scope: !2328)
!2333 = !DILocation(line: 933, column: 10, scope: !2328)
!2334 = !DILocation(line: 933, column: 3, scope: !2328)
!2335 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2336, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!25, !18, !6, !69, !258}
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2348, !2349, !2351, !2352, !2353}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2335, file: !212, line: 877, type: !18)
!2340 = !DILocalVariable(name: "arg", arg: 2, scope: !2335, file: !212, line: 877, type: !6)
!2341 = !DILocalVariable(name: "argsize", arg: 3, scope: !2335, file: !212, line: 877, type: !69)
!2342 = !DILocalVariable(name: "options", arg: 4, scope: !2335, file: !212, line: 878, type: !258)
!2343 = !DILocalVariable(name: "e", scope: !2335, file: !212, line: 880, type: !18)
!2344 = !DILocalVariable(name: "sv", scope: !2335, file: !212, line: 882, type: !339)
!2345 = !DILocalVariable(name: "preallocated", scope: !2346, file: !212, line: 889, type: !92)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !212, line: 888, column: 5)
!2347 = distinct !DILexicalBlock(scope: !2335, file: !212, line: 887, column: 7)
!2348 = !DILocalVariable(name: "nmax", scope: !2346, file: !212, line: 890, type: !18)
!2349 = !DILocalVariable(name: "size", scope: !2350, file: !212, line: 903, type: !69)
!2350 = distinct !DILexicalBlock(scope: !2335, file: !212, line: 902, column: 3)
!2351 = !DILocalVariable(name: "val", scope: !2350, file: !212, line: 904, type: !25)
!2352 = !DILocalVariable(name: "flags", scope: !2350, file: !212, line: 906, type: !18)
!2353 = !DILocalVariable(name: "qsize", scope: !2350, file: !212, line: 907, type: !69)
!2354 = !DILocation(line: 0, scope: !2335)
!2355 = !DILocation(line: 880, column: 11, scope: !2335)
!2356 = !DILocation(line: 882, column: 24, scope: !2335)
!2357 = !DILocation(line: 884, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2335, file: !212, line: 884, column: 7)
!2359 = !DILocation(line: 884, column: 7, scope: !2335)
!2360 = !DILocation(line: 885, column: 5, scope: !2358)
!2361 = !DILocation(line: 887, column: 7, scope: !2347)
!2362 = !DILocation(line: 887, column: 14, scope: !2347)
!2363 = !DILocation(line: 887, column: 7, scope: !2335)
!2364 = !DILocation(line: 889, column: 31, scope: !2346)
!2365 = !DILocation(line: 0, scope: !2346)
!2366 = !DILocation(line: 892, column: 16, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2346, file: !212, line: 892, column: 11)
!2368 = !DILocation(line: 892, column: 11, scope: !2346)
!2369 = !DILocation(line: 893, column: 9, scope: !2367)
!2370 = !DILocation(line: 895, column: 32, scope: !2346)
!2371 = !DILocation(line: 895, column: 61, scope: !2346)
!2372 = !DILocation(line: 895, column: 58, scope: !2346)
!2373 = !DILocation(line: 895, column: 66, scope: !2346)
!2374 = !DILocation(line: 895, column: 22, scope: !2346)
!2375 = !DILocation(line: 895, column: 15, scope: !2346)
!2376 = !DILocation(line: 896, column: 11, scope: !2346)
!2377 = !DILocation(line: 897, column: 15, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2346, file: !212, line: 896, column: 11)
!2379 = !{i64 0, i64 8, !2286, i64 8, i64 8, !1123}
!2380 = !DILocation(line: 897, column: 9, scope: !2378)
!2381 = !DILocation(line: 898, column: 20, scope: !2346)
!2382 = !DILocation(line: 898, column: 18, scope: !2346)
!2383 = !DILocation(line: 898, column: 15, scope: !2346)
!2384 = !DILocation(line: 898, column: 38, scope: !2346)
!2385 = !DILocation(line: 898, column: 31, scope: !2346)
!2386 = !DILocation(line: 898, column: 48, scope: !2346)
!2387 = !DILocation(line: 0, scope: !1783, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 898, column: 7, scope: !2346)
!2389 = !DILocation(line: 71, column: 10, scope: !1783, inlinedAt: !2388)
!2390 = !DILocation(line: 899, column: 14, scope: !2346)
!2391 = !DILocation(line: 900, column: 5, scope: !2346)
!2392 = !DILocation(line: 903, column: 19, scope: !2350)
!2393 = !DILocation(line: 903, column: 25, scope: !2350)
!2394 = !DILocation(line: 0, scope: !2350)
!2395 = !DILocation(line: 904, column: 23, scope: !2350)
!2396 = !DILocation(line: 906, column: 26, scope: !2350)
!2397 = !DILocation(line: 906, column: 32, scope: !2350)
!2398 = !DILocation(line: 908, column: 55, scope: !2350)
!2399 = !DILocation(line: 909, column: 46, scope: !2350)
!2400 = !DILocation(line: 910, column: 55, scope: !2350)
!2401 = !DILocation(line: 911, column: 55, scope: !2350)
!2402 = !DILocation(line: 907, column: 20, scope: !2350)
!2403 = !DILocation(line: 913, column: 14, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2350, file: !212, line: 913, column: 9)
!2405 = !DILocation(line: 913, column: 9, scope: !2350)
!2406 = !DILocation(line: 915, column: 35, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !212, line: 914, column: 7)
!2408 = !DILocation(line: 915, column: 20, scope: !2407)
!2409 = !DILocation(line: 916, column: 17, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !212, line: 916, column: 13)
!2411 = !DILocation(line: 916, column: 13, scope: !2407)
!2412 = !DILocation(line: 917, column: 11, scope: !2410)
!2413 = !DILocation(line: 0, scope: !2250, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 918, column: 27, scope: !2407)
!2415 = !DILocation(line: 218, column: 10, scope: !2250, inlinedAt: !2414)
!2416 = !DILocation(line: 918, column: 19, scope: !2407)
!2417 = !DILocation(line: 919, column: 69, scope: !2407)
!2418 = !DILocation(line: 921, column: 44, scope: !2407)
!2419 = !DILocation(line: 922, column: 44, scope: !2407)
!2420 = !DILocation(line: 919, column: 9, scope: !2407)
!2421 = !DILocation(line: 923, column: 7, scope: !2407)
!2422 = !DILocation(line: 925, column: 11, scope: !2350)
!2423 = !DILocation(line: 926, column: 5, scope: !2350)
!2424 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2425, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!25, !18, !6, !69}
!2427 = !{!2428, !2429, !2430}
!2428 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !212, line: 937, type: !18)
!2429 = !DILocalVariable(name: "arg", arg: 2, scope: !2424, file: !212, line: 937, type: !6)
!2430 = !DILocalVariable(name: "argsize", arg: 3, scope: !2424, file: !212, line: 937, type: !69)
!2431 = !DILocation(line: 0, scope: !2424)
!2432 = !DILocation(line: 939, column: 10, scope: !2424)
!2433 = !DILocation(line: 939, column: 3, scope: !2424)
!2434 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2435)
!2435 = !{!2436}
!2436 = !DILocalVariable(name: "arg", arg: 1, scope: !2434, file: !212, line: 943, type: !6)
!2437 = !DILocation(line: 0, scope: !2434)
!2438 = !DILocation(line: 0, scope: !2328, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 945, column: 10, scope: !2434)
!2440 = !DILocation(line: 933, column: 10, scope: !2328, inlinedAt: !2439)
!2441 = !DILocation(line: 945, column: 3, scope: !2434)
!2442 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2443, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!25, !6, !69}
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !212, line: 949, type: !6)
!2447 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !212, line: 949, type: !69)
!2448 = !DILocation(line: 0, scope: !2442)
!2449 = !DILocation(line: 0, scope: !2424, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 951, column: 10, scope: !2442)
!2451 = !DILocation(line: 939, column: 10, scope: !2424, inlinedAt: !2450)
!2452 = !DILocation(line: 951, column: 3, scope: !2442)
!2453 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2454, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!25, !18, !214, !6}
!2456 = !{!2457, !2458, !2459, !2460}
!2457 = !DILocalVariable(name: "n", arg: 1, scope: !2453, file: !212, line: 955, type: !18)
!2458 = !DILocalVariable(name: "s", arg: 2, scope: !2453, file: !212, line: 955, type: !214)
!2459 = !DILocalVariable(name: "arg", arg: 3, scope: !2453, file: !212, line: 955, type: !6)
!2460 = !DILocalVariable(name: "o", scope: !2453, file: !212, line: 957, type: !259)
!2461 = !DILocation(line: 0, scope: !2453)
!2462 = !DILocation(line: 957, column: 3, scope: !2453)
!2463 = !DILocation(line: 957, column: 32, scope: !2453)
!2464 = !DILocalVariable(name: "style", arg: 1, scope: !2465, file: !212, line: 193, type: !214)
!2465 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2466, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!260, !214}
!2468 = !{!2464, !2469}
!2469 = !DILocalVariable(name: "o", scope: !2465, file: !212, line: 195, type: !260)
!2470 = !DILocation(line: 0, scope: !2465, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 957, column: 36, scope: !2453)
!2472 = !DILocation(line: 195, column: 26, scope: !2465, inlinedAt: !2471)
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"quoting_options_from_style: argument 0"}
!2475 = distinct !{!2475, !"quoting_options_from_style"}
!2476 = !DILocation(line: 196, column: 13, scope: !2477, inlinedAt: !2471)
!2477 = distinct !DILexicalBlock(scope: !2465, file: !212, line: 196, column: 7)
!2478 = !DILocation(line: 196, column: 7, scope: !2465, inlinedAt: !2471)
!2479 = !DILocation(line: 197, column: 5, scope: !2477, inlinedAt: !2471)
!2480 = !DILocation(line: 198, column: 5, scope: !2465, inlinedAt: !2471)
!2481 = !DILocation(line: 198, column: 11, scope: !2465, inlinedAt: !2471)
!2482 = !DILocation(line: 958, column: 10, scope: !2453)
!2483 = !DILocation(line: 959, column: 1, scope: !2453)
!2484 = !DILocation(line: 958, column: 3, scope: !2453)
!2485 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2486, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!25, !18, !214, !6, !69}
!2488 = !{!2489, !2490, !2491, !2492, !2493}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !212, line: 962, type: !18)
!2490 = !DILocalVariable(name: "s", arg: 2, scope: !2485, file: !212, line: 962, type: !214)
!2491 = !DILocalVariable(name: "arg", arg: 3, scope: !2485, file: !212, line: 963, type: !6)
!2492 = !DILocalVariable(name: "argsize", arg: 4, scope: !2485, file: !212, line: 963, type: !69)
!2493 = !DILocalVariable(name: "o", scope: !2485, file: !212, line: 965, type: !259)
!2494 = !DILocation(line: 0, scope: !2485)
!2495 = !DILocation(line: 965, column: 3, scope: !2485)
!2496 = !DILocation(line: 965, column: 32, scope: !2485)
!2497 = !DILocation(line: 0, scope: !2465, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 965, column: 36, scope: !2485)
!2499 = !DILocation(line: 195, column: 26, scope: !2465, inlinedAt: !2498)
!2500 = !{!2501}
!2501 = distinct !{!2501, !2502, !"quoting_options_from_style: argument 0"}
!2502 = distinct !{!2502, !"quoting_options_from_style"}
!2503 = !DILocation(line: 196, column: 13, scope: !2477, inlinedAt: !2498)
!2504 = !DILocation(line: 196, column: 7, scope: !2465, inlinedAt: !2498)
!2505 = !DILocation(line: 197, column: 5, scope: !2477, inlinedAt: !2498)
!2506 = !DILocation(line: 198, column: 5, scope: !2465, inlinedAt: !2498)
!2507 = !DILocation(line: 198, column: 11, scope: !2465, inlinedAt: !2498)
!2508 = !DILocation(line: 966, column: 10, scope: !2485)
!2509 = !DILocation(line: 967, column: 1, scope: !2485)
!2510 = !DILocation(line: 966, column: 3, scope: !2485)
!2511 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2512, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!25, !214, !6}
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "s", arg: 1, scope: !2511, file: !212, line: 970, type: !214)
!2516 = !DILocalVariable(name: "arg", arg: 2, scope: !2511, file: !212, line: 970, type: !6)
!2517 = !DILocation(line: 195, column: 26, scope: !2465, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 957, column: 36, scope: !2453, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 972, column: 10, scope: !2511)
!2520 = !DILocation(line: 957, column: 32, scope: !2453, inlinedAt: !2519)
!2521 = !DILocation(line: 0, scope: !2511)
!2522 = !DILocation(line: 0, scope: !2453, inlinedAt: !2519)
!2523 = !DILocation(line: 957, column: 3, scope: !2453, inlinedAt: !2519)
!2524 = !DILocation(line: 0, scope: !2465, inlinedAt: !2518)
!2525 = !{!2526}
!2526 = distinct !{!2526, !2527, !"quoting_options_from_style: argument 0"}
!2527 = distinct !{!2527, !"quoting_options_from_style"}
!2528 = !DILocation(line: 196, column: 13, scope: !2477, inlinedAt: !2518)
!2529 = !DILocation(line: 196, column: 7, scope: !2465, inlinedAt: !2518)
!2530 = !DILocation(line: 197, column: 5, scope: !2477, inlinedAt: !2518)
!2531 = !DILocation(line: 198, column: 5, scope: !2465, inlinedAt: !2518)
!2532 = !DILocation(line: 198, column: 11, scope: !2465, inlinedAt: !2518)
!2533 = !DILocation(line: 958, column: 10, scope: !2453, inlinedAt: !2519)
!2534 = !DILocation(line: 959, column: 1, scope: !2453, inlinedAt: !2519)
!2535 = !DILocation(line: 972, column: 3, scope: !2511)
!2536 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2537, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!25, !214, !6, !69}
!2539 = !{!2540, !2541, !2542}
!2540 = !DILocalVariable(name: "s", arg: 1, scope: !2536, file: !212, line: 976, type: !214)
!2541 = !DILocalVariable(name: "arg", arg: 2, scope: !2536, file: !212, line: 976, type: !6)
!2542 = !DILocalVariable(name: "argsize", arg: 3, scope: !2536, file: !212, line: 976, type: !69)
!2543 = !DILocation(line: 195, column: 26, scope: !2465, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 965, column: 36, scope: !2485, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 978, column: 10, scope: !2536)
!2546 = !DILocation(line: 965, column: 32, scope: !2485, inlinedAt: !2545)
!2547 = !DILocation(line: 0, scope: !2536)
!2548 = !DILocation(line: 0, scope: !2485, inlinedAt: !2545)
!2549 = !DILocation(line: 965, column: 3, scope: !2485, inlinedAt: !2545)
!2550 = !DILocation(line: 0, scope: !2465, inlinedAt: !2544)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 196, column: 13, scope: !2477, inlinedAt: !2544)
!2555 = !DILocation(line: 196, column: 7, scope: !2465, inlinedAt: !2544)
!2556 = !DILocation(line: 197, column: 5, scope: !2477, inlinedAt: !2544)
!2557 = !DILocation(line: 198, column: 5, scope: !2465, inlinedAt: !2544)
!2558 = !DILocation(line: 198, column: 11, scope: !2465, inlinedAt: !2544)
!2559 = !DILocation(line: 966, column: 10, scope: !2485, inlinedAt: !2545)
!2560 = !DILocation(line: 967, column: 1, scope: !2485, inlinedAt: !2545)
!2561 = !DILocation(line: 978, column: 3, scope: !2536)
!2562 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2563, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!25, !6, !69, !8}
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2562, file: !212, line: 982, type: !6)
!2567 = !DILocalVariable(name: "argsize", arg: 2, scope: !2562, file: !212, line: 982, type: !69)
!2568 = !DILocalVariable(name: "ch", arg: 3, scope: !2562, file: !212, line: 982, type: !8)
!2569 = !DILocalVariable(name: "options", scope: !2562, file: !212, line: 984, type: !260)
!2570 = !DILocation(line: 0, scope: !2562)
!2571 = !DILocation(line: 984, column: 3, scope: !2562)
!2572 = !DILocation(line: 984, column: 26, scope: !2562)
!2573 = !DILocation(line: 985, column: 13, scope: !2562)
!2574 = !{i64 0, i64 4, !1581, i64 4, i64 4, !1180, i64 8, i64 32, !1581, i64 40, i64 8, !1123, i64 48, i64 8, !1123}
!2575 = !DILocation(line: 0, scope: !1394, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 986, column: 3, scope: !2562)
!2577 = !DILocation(line: 156, column: 62, scope: !1394, inlinedAt: !2576)
!2578 = !DILocation(line: 156, column: 57, scope: !1394, inlinedAt: !2576)
!2579 = !DILocation(line: 157, column: 15, scope: !1394, inlinedAt: !2576)
!2580 = !DILocation(line: 158, column: 12, scope: !1394, inlinedAt: !2576)
!2581 = !DILocation(line: 158, column: 15, scope: !1394, inlinedAt: !2576)
!2582 = !DILocation(line: 158, column: 25, scope: !1394, inlinedAt: !2576)
!2583 = !DILocation(line: 159, column: 18, scope: !1394, inlinedAt: !2576)
!2584 = !DILocation(line: 159, column: 23, scope: !1394, inlinedAt: !2576)
!2585 = !DILocation(line: 159, column: 6, scope: !1394, inlinedAt: !2576)
!2586 = !DILocation(line: 987, column: 10, scope: !2562)
!2587 = !DILocation(line: 988, column: 1, scope: !2562)
!2588 = !DILocation(line: 987, column: 3, scope: !2562)
!2589 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2590, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!25, !6, !8}
!2592 = !{!2593, !2594}
!2593 = !DILocalVariable(name: "arg", arg: 1, scope: !2589, file: !212, line: 991, type: !6)
!2594 = !DILocalVariable(name: "ch", arg: 2, scope: !2589, file: !212, line: 991, type: !8)
!2595 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 993, column: 10, scope: !2589)
!2597 = !DILocation(line: 0, scope: !2589)
!2598 = !DILocation(line: 0, scope: !2562, inlinedAt: !2596)
!2599 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2596)
!2600 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2596)
!2601 = !DILocation(line: 0, scope: !1394, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2596)
!2603 = !DILocation(line: 156, column: 62, scope: !1394, inlinedAt: !2602)
!2604 = !DILocation(line: 156, column: 57, scope: !1394, inlinedAt: !2602)
!2605 = !DILocation(line: 157, column: 15, scope: !1394, inlinedAt: !2602)
!2606 = !DILocation(line: 158, column: 12, scope: !1394, inlinedAt: !2602)
!2607 = !DILocation(line: 158, column: 15, scope: !1394, inlinedAt: !2602)
!2608 = !DILocation(line: 158, column: 25, scope: !1394, inlinedAt: !2602)
!2609 = !DILocation(line: 159, column: 18, scope: !1394, inlinedAt: !2602)
!2610 = !DILocation(line: 159, column: 23, scope: !1394, inlinedAt: !2602)
!2611 = !DILocation(line: 159, column: 6, scope: !1394, inlinedAt: !2602)
!2612 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2596)
!2613 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2596)
!2614 = !DILocation(line: 993, column: 3, scope: !2589)
!2615 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2616)
!2616 = !{!2617}
!2617 = !DILocalVariable(name: "arg", arg: 1, scope: !2615, file: !212, line: 997, type: !6)
!2618 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 993, column: 10, scope: !2589, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 999, column: 10, scope: !2615)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 0, scope: !2589, inlinedAt: !2620)
!2623 = !DILocation(line: 0, scope: !2562, inlinedAt: !2619)
!2624 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2619)
!2625 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2619)
!2626 = !DILocation(line: 0, scope: !1394, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2619)
!2628 = !DILocation(line: 156, column: 57, scope: !1394, inlinedAt: !2627)
!2629 = !DILocation(line: 158, column: 12, scope: !1394, inlinedAt: !2627)
!2630 = !DILocation(line: 159, column: 6, scope: !1394, inlinedAt: !2627)
!2631 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2619)
!2632 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2619)
!2633 = !DILocation(line: 999, column: 3, scope: !2615)
!2634 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2443, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2635)
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "arg", arg: 1, scope: !2634, file: !212, line: 1003, type: !6)
!2637 = !DILocalVariable(name: "argsize", arg: 2, scope: !2634, file: !212, line: 1003, type: !69)
!2638 = !DILocation(line: 984, column: 26, scope: !2562, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1005, column: 10, scope: !2634)
!2640 = !DILocation(line: 0, scope: !2634)
!2641 = !DILocation(line: 0, scope: !2562, inlinedAt: !2639)
!2642 = !DILocation(line: 984, column: 3, scope: !2562, inlinedAt: !2639)
!2643 = !DILocation(line: 985, column: 13, scope: !2562, inlinedAt: !2639)
!2644 = !DILocation(line: 0, scope: !1394, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 986, column: 3, scope: !2562, inlinedAt: !2639)
!2646 = !DILocation(line: 156, column: 57, scope: !1394, inlinedAt: !2645)
!2647 = !DILocation(line: 158, column: 12, scope: !1394, inlinedAt: !2645)
!2648 = !DILocation(line: 159, column: 6, scope: !1394, inlinedAt: !2645)
!2649 = !DILocation(line: 987, column: 10, scope: !2562, inlinedAt: !2639)
!2650 = !DILocation(line: 988, column: 1, scope: !2562, inlinedAt: !2639)
!2651 = !DILocation(line: 1005, column: 3, scope: !2634)
!2652 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2454, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2653)
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "n", arg: 1, scope: !2652, file: !212, line: 1009, type: !18)
!2655 = !DILocalVariable(name: "s", arg: 2, scope: !2652, file: !212, line: 1009, type: !214)
!2656 = !DILocalVariable(name: "arg", arg: 3, scope: !2652, file: !212, line: 1009, type: !6)
!2657 = !DILocalVariable(name: "options", scope: !2652, file: !212, line: 1011, type: !260)
!2658 = !DILocation(line: 195, column: 26, scope: !2465, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1012, column: 13, scope: !2652)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 1011, column: 3, scope: !2652)
!2662 = !DILocation(line: 1011, column: 26, scope: !2652)
!2663 = !DILocation(line: 1012, column: 13, scope: !2652)
!2664 = !DILocation(line: 0, scope: !2465, inlinedAt: !2659)
!2665 = !{!2666}
!2666 = distinct !{!2666, !2667, !"quoting_options_from_style: argument 0"}
!2667 = distinct !{!2667, !"quoting_options_from_style"}
!2668 = !DILocation(line: 196, column: 13, scope: !2477, inlinedAt: !2659)
!2669 = !DILocation(line: 196, column: 7, scope: !2465, inlinedAt: !2659)
!2670 = !DILocation(line: 197, column: 5, scope: !2477, inlinedAt: !2659)
!2671 = !DILocation(line: 0, scope: !1394, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1013, column: 3, scope: !2652)
!2673 = !DILocation(line: 156, column: 57, scope: !1394, inlinedAt: !2672)
!2674 = !DILocation(line: 158, column: 12, scope: !1394, inlinedAt: !2672)
!2675 = !DILocation(line: 159, column: 6, scope: !1394, inlinedAt: !2672)
!2676 = !DILocation(line: 1014, column: 10, scope: !2652)
!2677 = !DILocation(line: 1015, column: 1, scope: !2652)
!2678 = !DILocation(line: 1014, column: 3, scope: !2652)
!2679 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2680, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!25, !18, !6, !6, !6}
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "n", arg: 1, scope: !2679, file: !212, line: 1018, type: !18)
!2684 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2679, file: !212, line: 1018, type: !6)
!2685 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2679, file: !212, line: 1019, type: !6)
!2686 = !DILocalVariable(name: "arg", arg: 4, scope: !2679, file: !212, line: 1019, type: !6)
!2687 = !DILocalVariable(name: "o", scope: !2688, file: !212, line: 1030, type: !260)
!2688 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2689, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!25, !18, !6, !6, !6, !69}
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2687}
!2692 = !DILocalVariable(name: "n", arg: 1, scope: !2688, file: !212, line: 1026, type: !18)
!2693 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2688, file: !212, line: 1026, type: !6)
!2694 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2688, file: !212, line: 1027, type: !6)
!2695 = !DILocalVariable(name: "arg", arg: 4, scope: !2688, file: !212, line: 1028, type: !6)
!2696 = !DILocalVariable(name: "argsize", arg: 5, scope: !2688, file: !212, line: 1028, type: !69)
!2697 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2698)
!2698 = distinct !DILocation(line: 1021, column: 10, scope: !2679)
!2699 = !DILocation(line: 0, scope: !2679)
!2700 = !DILocation(line: 0, scope: !2688, inlinedAt: !2698)
!2701 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2698)
!2702 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2698)
!2703 = !DILocation(line: 0, scope: !1435, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2698)
!2705 = !DILocation(line: 184, column: 6, scope: !1435, inlinedAt: !2704)
!2706 = !DILocation(line: 184, column: 12, scope: !1435, inlinedAt: !2704)
!2707 = !DILocation(line: 185, column: 8, scope: !1449, inlinedAt: !2704)
!2708 = !DILocation(line: 185, column: 23, scope: !1449, inlinedAt: !2704)
!2709 = !DILocation(line: 185, column: 19, scope: !1449, inlinedAt: !2704)
!2710 = !DILocation(line: 186, column: 5, scope: !1449, inlinedAt: !2704)
!2711 = !DILocation(line: 187, column: 6, scope: !1435, inlinedAt: !2704)
!2712 = !DILocation(line: 187, column: 17, scope: !1435, inlinedAt: !2704)
!2713 = !DILocation(line: 188, column: 6, scope: !1435, inlinedAt: !2704)
!2714 = !DILocation(line: 188, column: 18, scope: !1435, inlinedAt: !2704)
!2715 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2698)
!2716 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2698)
!2717 = !DILocation(line: 1021, column: 3, scope: !2679)
!2718 = !DILocation(line: 0, scope: !2688)
!2719 = !DILocation(line: 1030, column: 3, scope: !2688)
!2720 = !DILocation(line: 1030, column: 26, scope: !2688)
!2721 = !DILocation(line: 1030, column: 30, scope: !2688)
!2722 = !DILocation(line: 0, scope: !1435, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1031, column: 3, scope: !2688)
!2724 = !DILocation(line: 184, column: 6, scope: !1435, inlinedAt: !2723)
!2725 = !DILocation(line: 184, column: 12, scope: !1435, inlinedAt: !2723)
!2726 = !DILocation(line: 185, column: 8, scope: !1449, inlinedAt: !2723)
!2727 = !DILocation(line: 185, column: 23, scope: !1449, inlinedAt: !2723)
!2728 = !DILocation(line: 185, column: 19, scope: !1449, inlinedAt: !2723)
!2729 = !DILocation(line: 186, column: 5, scope: !1449, inlinedAt: !2723)
!2730 = !DILocation(line: 187, column: 6, scope: !1435, inlinedAt: !2723)
!2731 = !DILocation(line: 187, column: 17, scope: !1435, inlinedAt: !2723)
!2732 = !DILocation(line: 188, column: 6, scope: !1435, inlinedAt: !2723)
!2733 = !DILocation(line: 188, column: 18, scope: !1435, inlinedAt: !2723)
!2734 = !DILocation(line: 1032, column: 10, scope: !2688)
!2735 = !DILocation(line: 1033, column: 1, scope: !2688)
!2736 = !DILocation(line: 1032, column: 3, scope: !2688)
!2737 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2738, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!25, !6, !6, !6}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2737, file: !212, line: 1036, type: !6)
!2742 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2737, file: !212, line: 1036, type: !6)
!2743 = !DILocalVariable(name: "arg", arg: 3, scope: !2737, file: !212, line: 1037, type: !6)
!2744 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1021, column: 10, scope: !2679, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1039, column: 10, scope: !2737)
!2747 = !DILocation(line: 0, scope: !2737)
!2748 = !DILocation(line: 0, scope: !2679, inlinedAt: !2746)
!2749 = !DILocation(line: 0, scope: !2688, inlinedAt: !2745)
!2750 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2745)
!2751 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2745)
!2752 = !DILocation(line: 0, scope: !1435, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2745)
!2754 = !DILocation(line: 184, column: 6, scope: !1435, inlinedAt: !2753)
!2755 = !DILocation(line: 184, column: 12, scope: !1435, inlinedAt: !2753)
!2756 = !DILocation(line: 185, column: 8, scope: !1449, inlinedAt: !2753)
!2757 = !DILocation(line: 185, column: 23, scope: !1449, inlinedAt: !2753)
!2758 = !DILocation(line: 185, column: 19, scope: !1449, inlinedAt: !2753)
!2759 = !DILocation(line: 186, column: 5, scope: !1449, inlinedAt: !2753)
!2760 = !DILocation(line: 187, column: 6, scope: !1435, inlinedAt: !2753)
!2761 = !DILocation(line: 187, column: 17, scope: !1435, inlinedAt: !2753)
!2762 = !DILocation(line: 188, column: 6, scope: !1435, inlinedAt: !2753)
!2763 = !DILocation(line: 188, column: 18, scope: !1435, inlinedAt: !2753)
!2764 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2745)
!2765 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2745)
!2766 = !DILocation(line: 1039, column: 3, scope: !2737)
!2767 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2768, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!25, !6, !6, !6, !69}
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2767, file: !212, line: 1043, type: !6)
!2772 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2767, file: !212, line: 1043, type: !6)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2767, file: !212, line: 1044, type: !6)
!2774 = !DILocalVariable(name: "argsize", arg: 4, scope: !2767, file: !212, line: 1044, type: !69)
!2775 = !DILocation(line: 1030, column: 26, scope: !2688, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1046, column: 10, scope: !2767)
!2777 = !DILocation(line: 0, scope: !2767)
!2778 = !DILocation(line: 0, scope: !2688, inlinedAt: !2776)
!2779 = !DILocation(line: 1030, column: 3, scope: !2688, inlinedAt: !2776)
!2780 = !DILocation(line: 1030, column: 30, scope: !2688, inlinedAt: !2776)
!2781 = !DILocation(line: 0, scope: !1435, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1031, column: 3, scope: !2688, inlinedAt: !2776)
!2783 = !DILocation(line: 184, column: 6, scope: !1435, inlinedAt: !2782)
!2784 = !DILocation(line: 184, column: 12, scope: !1435, inlinedAt: !2782)
!2785 = !DILocation(line: 185, column: 8, scope: !1449, inlinedAt: !2782)
!2786 = !DILocation(line: 185, column: 23, scope: !1449, inlinedAt: !2782)
!2787 = !DILocation(line: 185, column: 19, scope: !1449, inlinedAt: !2782)
!2788 = !DILocation(line: 186, column: 5, scope: !1449, inlinedAt: !2782)
!2789 = !DILocation(line: 187, column: 6, scope: !1435, inlinedAt: !2782)
!2790 = !DILocation(line: 187, column: 17, scope: !1435, inlinedAt: !2782)
!2791 = !DILocation(line: 188, column: 6, scope: !1435, inlinedAt: !2782)
!2792 = !DILocation(line: 188, column: 18, scope: !1435, inlinedAt: !2782)
!2793 = !DILocation(line: 1032, column: 10, scope: !2688, inlinedAt: !2776)
!2794 = !DILocation(line: 1033, column: 1, scope: !2688, inlinedAt: !2776)
!2795 = !DILocation(line: 1046, column: 3, scope: !2767)
!2796 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2797, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!6, !18, !6, !69}
!2799 = !{!2800, !2801, !2802}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !212, line: 1061, type: !18)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !212, line: 1061, type: !6)
!2802 = !DILocalVariable(name: "argsize", arg: 3, scope: !2796, file: !212, line: 1061, type: !69)
!2803 = !DILocation(line: 0, scope: !2796)
!2804 = !DILocation(line: 1063, column: 10, scope: !2796)
!2805 = !DILocation(line: 1063, column: 3, scope: !2796)
!2806 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2807, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!6, !6, !69}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "arg", arg: 1, scope: !2806, file: !212, line: 1067, type: !6)
!2811 = !DILocalVariable(name: "argsize", arg: 2, scope: !2806, file: !212, line: 1067, type: !69)
!2812 = !DILocation(line: 0, scope: !2806)
!2813 = !DILocation(line: 0, scope: !2796, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1069, column: 10, scope: !2806)
!2815 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2814)
!2816 = !DILocation(line: 1069, column: 3, scope: !2806)
!2817 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2818, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2820)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!6, !18, !6}
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "n", arg: 1, scope: !2817, file: !212, line: 1073, type: !18)
!2822 = !DILocalVariable(name: "arg", arg: 2, scope: !2817, file: !212, line: 1073, type: !6)
!2823 = !DILocation(line: 0, scope: !2817)
!2824 = !DILocation(line: 0, scope: !2796, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1075, column: 10, scope: !2817)
!2826 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2825)
!2827 = !DILocation(line: 1075, column: 3, scope: !2817)
!2828 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !424, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2829)
!2829 = !{!2830}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !212, line: 1079, type: !6)
!2831 = !DILocation(line: 0, scope: !2828)
!2832 = !DILocation(line: 0, scope: !2817, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1081, column: 10, scope: !2828)
!2834 = !DILocation(line: 0, scope: !2796, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1075, column: 10, scope: !2817, inlinedAt: !2833)
!2836 = !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2835)
!2837 = !DILocation(line: 1081, column: 3, scope: !2828)
!2838 = distinct !DISubprogram(name: "version_etc_arn", scope: !434, file: !434, line: 61, type: !2839, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2845)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2841, !6, !6, !6, !2844, !69}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2843, line: 7, baseType: !444)
!2843 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851}
!2846 = !DILocalVariable(name: "stream", arg: 1, scope: !2838, file: !434, line: 61, type: !2841)
!2847 = !DILocalVariable(name: "command_name", arg: 2, scope: !2838, file: !434, line: 62, type: !6)
!2848 = !DILocalVariable(name: "package", arg: 3, scope: !2838, file: !434, line: 62, type: !6)
!2849 = !DILocalVariable(name: "version", arg: 4, scope: !2838, file: !434, line: 63, type: !6)
!2850 = !DILocalVariable(name: "authors", arg: 5, scope: !2838, file: !434, line: 64, type: !2844)
!2851 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2838, file: !434, line: 64, type: !69)
!2852 = !DILocation(line: 0, scope: !2838)
!2853 = !DILocation(line: 66, column: 7, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2838, file: !434, line: 66, column: 7)
!2855 = !DILocation(line: 66, column: 7, scope: !2838)
!2856 = !DILocation(line: 67, column: 5, scope: !2854)
!2857 = !DILocation(line: 69, column: 5, scope: !2854)
!2858 = !DILocation(line: 83, column: 3, scope: !2838)
!2859 = !DILocation(line: 85, column: 3, scope: !2838)
!2860 = !DILocation(line: 88, column: 3, scope: !2838)
!2861 = !DILocation(line: 95, column: 3, scope: !2838)
!2862 = !DILocation(line: 97, column: 3, scope: !2838)
!2863 = !DILocation(line: 105, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2838, file: !434, line: 98, column: 5)
!2865 = !DILocation(line: 106, column: 7, scope: !2864)
!2866 = !DILocation(line: 109, column: 7, scope: !2864)
!2867 = !DILocation(line: 110, column: 7, scope: !2864)
!2868 = !DILocation(line: 113, column: 7, scope: !2864)
!2869 = !DILocation(line: 115, column: 7, scope: !2864)
!2870 = !DILocation(line: 120, column: 7, scope: !2864)
!2871 = !DILocation(line: 122, column: 7, scope: !2864)
!2872 = !DILocation(line: 127, column: 7, scope: !2864)
!2873 = !DILocation(line: 129, column: 7, scope: !2864)
!2874 = !DILocation(line: 134, column: 7, scope: !2864)
!2875 = !DILocation(line: 137, column: 7, scope: !2864)
!2876 = !DILocation(line: 142, column: 7, scope: !2864)
!2877 = !DILocation(line: 145, column: 7, scope: !2864)
!2878 = !DILocation(line: 150, column: 7, scope: !2864)
!2879 = !DILocation(line: 154, column: 7, scope: !2864)
!2880 = !DILocation(line: 159, column: 7, scope: !2864)
!2881 = !DILocation(line: 163, column: 7, scope: !2864)
!2882 = !DILocation(line: 170, column: 7, scope: !2864)
!2883 = !DILocation(line: 174, column: 7, scope: !2864)
!2884 = !DILocation(line: 176, column: 1, scope: !2838)
!2885 = distinct !DISubprogram(name: "version_etc_ar", scope: !434, file: !434, line: 183, type: !2886, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !2841, !6, !6, !6, !2844}
!2888 = !{!2889, !2890, !2891, !2892, !2893, !2894}
!2889 = !DILocalVariable(name: "stream", arg: 1, scope: !2885, file: !434, line: 183, type: !2841)
!2890 = !DILocalVariable(name: "command_name", arg: 2, scope: !2885, file: !434, line: 184, type: !6)
!2891 = !DILocalVariable(name: "package", arg: 3, scope: !2885, file: !434, line: 184, type: !6)
!2892 = !DILocalVariable(name: "version", arg: 4, scope: !2885, file: !434, line: 185, type: !6)
!2893 = !DILocalVariable(name: "authors", arg: 5, scope: !2885, file: !434, line: 185, type: !2844)
!2894 = !DILocalVariable(name: "n_authors", scope: !2885, file: !434, line: 187, type: !69)
!2895 = !DILocation(line: 0, scope: !2885)
!2896 = !DILocation(line: 189, column: 8, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2885, file: !434, line: 189, column: 3)
!2898 = !DILocation(line: 0, scope: !2897)
!2899 = !DILocation(line: 189, column: 23, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2897, file: !434, line: 189, column: 3)
!2901 = !DILocation(line: 189, column: 3, scope: !2897)
!2902 = !DILocation(line: 189, column: 52, scope: !2900)
!2903 = distinct !{!2903, !2901, !2904}
!2904 = !DILocation(line: 190, column: 5, scope: !2897)
!2905 = !DILocation(line: 191, column: 3, scope: !2885)
!2906 = !DILocation(line: 192, column: 1, scope: !2885)
!2907 = distinct !DISubprogram(name: "version_etc_va", scope: !434, file: !434, line: 199, type: !2908, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2917)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2841, !6, !6, !6, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !434, line: 192, size: 192, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2911, file: !434, line: 192, baseType: !159, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2911, file: !434, line: 192, baseType: !159, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2911, file: !434, line: 192, baseType: !67, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2911, file: !434, line: 192, baseType: !67, size: 64, offset: 128)
!2917 = !{!2918, !2919, !2920, !2921, !2922, !2923, !2924}
!2918 = !DILocalVariable(name: "stream", arg: 1, scope: !2907, file: !434, line: 199, type: !2841)
!2919 = !DILocalVariable(name: "command_name", arg: 2, scope: !2907, file: !434, line: 200, type: !6)
!2920 = !DILocalVariable(name: "package", arg: 3, scope: !2907, file: !434, line: 200, type: !6)
!2921 = !DILocalVariable(name: "version", arg: 4, scope: !2907, file: !434, line: 201, type: !6)
!2922 = !DILocalVariable(name: "authors", arg: 5, scope: !2907, file: !434, line: 201, type: !2910)
!2923 = !DILocalVariable(name: "n_authors", scope: !2907, file: !434, line: 203, type: !69)
!2924 = !DILocalVariable(name: "authtab", scope: !2907, file: !434, line: 204, type: !2925)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!2926 = !DILocation(line: 0, scope: !2907)
!2927 = !DILocation(line: 204, column: 3, scope: !2907)
!2928 = !DILocation(line: 204, column: 15, scope: !2907)
!2929 = !DILocation(line: 0, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !434, line: 206, column: 3)
!2931 = distinct !DILexicalBlock(scope: !2907, file: !434, line: 206, column: 3)
!2932 = !DILocation(line: 208, column: 35, scope: !2930)
!2933 = !DILocation(line: 208, column: 14, scope: !2930)
!2934 = !DILocation(line: 208, column: 33, scope: !2930)
!2935 = !DILocation(line: 208, column: 67, scope: !2930)
!2936 = !DILocation(line: 206, column: 3, scope: !2931)
!2937 = !DILocation(line: 0, scope: !2931)
!2938 = !DILocation(line: 211, column: 3, scope: !2907)
!2939 = !DILocation(line: 213, column: 1, scope: !2907)
!2940 = distinct !DISubprogram(name: "version_etc", scope: !434, file: !434, line: 230, type: !2941, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2841, !6, !6, !6, null}
!2943 = !{!2944, !2945, !2946, !2947, !2948}
!2944 = !DILocalVariable(name: "stream", arg: 1, scope: !2940, file: !434, line: 230, type: !2841)
!2945 = !DILocalVariable(name: "command_name", arg: 2, scope: !2940, file: !434, line: 231, type: !6)
!2946 = !DILocalVariable(name: "package", arg: 3, scope: !2940, file: !434, line: 231, type: !6)
!2947 = !DILocalVariable(name: "version", arg: 4, scope: !2940, file: !434, line: 232, type: !6)
!2948 = !DILocalVariable(name: "authors", scope: !2940, file: !434, line: 234, type: !2949)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !2950)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1267, line: 32, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !434, line: 234, baseType: !2952)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2911, size: 192, elements: !52)
!2953 = !DILocation(line: 0, scope: !2940)
!2954 = !DILocation(line: 234, column: 3, scope: !2940)
!2955 = !DILocation(line: 234, column: 11, scope: !2940)
!2956 = !DILocation(line: 236, column: 3, scope: !2940)
!2957 = !DILocation(line: 237, column: 3, scope: !2940)
!2958 = !DILocation(line: 238, column: 3, scope: !2940)
!2959 = !DILocation(line: 239, column: 1, scope: !2940)
!2960 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !434, file: !434, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !4)
!2961 = !DILocation(line: 244, column: 3, scope: !2960)
!2962 = !DILocation(line: 249, column: 3, scope: !2960)
!2963 = !DILocation(line: 255, column: 3, scope: !2960)
!2964 = !DILocation(line: 260, column: 3, scope: !2960)
!2965 = !DILocation(line: 262, column: 1, scope: !2960)
!2966 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !2967, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!67, !69, !69}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !249, line: 99, type: !69)
!2971 = !DILocalVariable(name: "s", arg: 2, scope: !2966, file: !249, line: 99, type: !69)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 101, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2966, file: !249, line: 101, column: 7)
!2975 = !DILocation(line: 101, column: 7, scope: !2966)
!2976 = !DILocation(line: 102, column: 5, scope: !2974)
!2977 = !DILocation(line: 103, column: 21, scope: !2966)
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !476, line: 39, type: !69)
!2979 = distinct !DISubprogram(name: "xmalloc", scope: !476, file: !476, line: 39, type: !2980, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!67, !69}
!2982 = !{!2978, !2983}
!2983 = !DILocalVariable(name: "p", scope: !2979, file: !476, line: 41, type: !67)
!2984 = !DILocation(line: 0, scope: !2979, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 103, column: 10, scope: !2966)
!2986 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !2985)
!2987 = !DILocation(line: 42, column: 8, scope: !2988, inlinedAt: !2985)
!2988 = distinct !DILexicalBlock(scope: !2979, file: !476, line: 42, column: 7)
!2989 = !DILocation(line: 42, column: 15, scope: !2988, inlinedAt: !2985)
!2990 = !DILocation(line: 42, column: 10, scope: !2988, inlinedAt: !2985)
!2991 = !DILocation(line: 43, column: 5, scope: !2988, inlinedAt: !2985)
!2992 = !DILocation(line: 103, column: 3, scope: !2966)
!2993 = !DILocation(line: 0, scope: !2979)
!2994 = !DILocation(line: 41, column: 13, scope: !2979)
!2995 = !DILocation(line: 42, column: 8, scope: !2988)
!2996 = !DILocation(line: 42, column: 15, scope: !2988)
!2997 = !DILocation(line: 42, column: 10, scope: !2988)
!2998 = !DILocation(line: 43, column: 5, scope: !2988)
!2999 = !DILocation(line: 44, column: 3, scope: !2979)
!3000 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3001, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!67, !67, !69, !69}
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !249, line: 112, type: !67)
!3005 = !DILocalVariable(name: "n", arg: 2, scope: !3000, file: !249, line: 112, type: !69)
!3006 = !DILocalVariable(name: "s", arg: 3, scope: !3000, file: !249, line: 112, type: !69)
!3007 = !DILocation(line: 0, scope: !3000)
!3008 = !DILocation(line: 114, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3000, file: !249, line: 114, column: 7)
!3010 = !DILocation(line: 114, column: 7, scope: !3000)
!3011 = !DILocation(line: 115, column: 5, scope: !3009)
!3012 = !DILocation(line: 116, column: 25, scope: !3000)
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !476, line: 51, type: !67)
!3014 = distinct !DISubprogram(name: "xrealloc", scope: !476, file: !476, line: 51, type: !3015, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!67, !67, !69}
!3017 = !{!3013, !3018}
!3018 = !DILocalVariable(name: "n", arg: 2, scope: !3014, file: !476, line: 51, type: !69)
!3019 = !DILocation(line: 0, scope: !3014, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 116, column: 10, scope: !3000)
!3021 = !DILocation(line: 53, column: 8, scope: !3022, inlinedAt: !3020)
!3022 = distinct !DILexicalBlock(scope: !3014, file: !476, line: 53, column: 7)
!3023 = !DILocation(line: 53, column: 13, scope: !3022, inlinedAt: !3020)
!3024 = !DILocation(line: 53, column: 10, scope: !3022, inlinedAt: !3020)
!3025 = !DILocation(line: 57, column: 7, scope: !3026, inlinedAt: !3020)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !476, line: 54, column: 5)
!3027 = !DILocation(line: 58, column: 7, scope: !3026, inlinedAt: !3020)
!3028 = !DILocation(line: 61, column: 7, scope: !3014, inlinedAt: !3020)
!3029 = !DILocation(line: 62, column: 8, scope: !3030, inlinedAt: !3020)
!3030 = distinct !DILexicalBlock(scope: !3014, file: !476, line: 62, column: 7)
!3031 = !DILocation(line: 62, column: 13, scope: !3030, inlinedAt: !3020)
!3032 = !DILocation(line: 62, column: 10, scope: !3030, inlinedAt: !3020)
!3033 = !DILocation(line: 63, column: 5, scope: !3030, inlinedAt: !3020)
!3034 = !DILocation(line: 116, column: 3, scope: !3000)
!3035 = !DILocation(line: 0, scope: !3014)
!3036 = !DILocation(line: 53, column: 8, scope: !3022)
!3037 = !DILocation(line: 53, column: 13, scope: !3022)
!3038 = !DILocation(line: 53, column: 10, scope: !3022)
!3039 = !DILocation(line: 57, column: 7, scope: !3026)
!3040 = !DILocation(line: 58, column: 7, scope: !3026)
!3041 = !DILocation(line: 61, column: 7, scope: !3014)
!3042 = !DILocation(line: 62, column: 8, scope: !3030)
!3043 = !DILocation(line: 62, column: 13, scope: !3030)
!3044 = !DILocation(line: 62, column: 10, scope: !3030)
!3045 = !DILocation(line: 63, column: 5, scope: !3030)
!3046 = !DILocation(line: 65, column: 1, scope: !3014)
!3047 = !DILocation(line: 0, scope: !479)
!3048 = !DILocation(line: 176, column: 14, scope: !479)
!3049 = !DILocation(line: 178, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !479, file: !249, line: 178, column: 7)
!3051 = !DILocation(line: 178, column: 7, scope: !479)
!3052 = !DILocation(line: 180, column: 13, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !249, line: 180, column: 11)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !249, line: 179, column: 5)
!3055 = !DILocation(line: 180, column: 11, scope: !3054)
!3056 = !DILocation(line: 188, column: 30, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3053, file: !249, line: 181, column: 9)
!3058 = !DILocation(line: 189, column: 16, scope: !3057)
!3059 = !DILocation(line: 189, column: 13, scope: !3057)
!3060 = !DILocation(line: 190, column: 9, scope: !3057)
!3061 = !DILocation(line: 191, column: 11, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3054, file: !249, line: 191, column: 11)
!3063 = !DILocation(line: 191, column: 11, scope: !3054)
!3064 = !DILocation(line: 206, column: 7, scope: !479)
!3065 = !DILocation(line: 207, column: 25, scope: !479)
!3066 = !DILocation(line: 0, scope: !3014, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 207, column: 10, scope: !479)
!3068 = !DILocation(line: 53, column: 10, scope: !3022, inlinedAt: !3067)
!3069 = !DILocation(line: 192, column: 9, scope: !3062)
!3070 = !DILocation(line: 200, column: 69, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !249, line: 200, column: 11)
!3072 = distinct !DILexicalBlock(scope: !3050, file: !249, line: 195, column: 5)
!3073 = !DILocation(line: 201, column: 11, scope: !3071)
!3074 = !DILocation(line: 200, column: 11, scope: !3072)
!3075 = !DILocation(line: 202, column: 9, scope: !3071)
!3076 = !DILocation(line: 203, column: 14, scope: !3072)
!3077 = !DILocation(line: 203, column: 18, scope: !3072)
!3078 = !DILocation(line: 203, column: 9, scope: !3072)
!3079 = !DILocation(line: 53, column: 8, scope: !3022, inlinedAt: !3067)
!3080 = !DILocation(line: 57, column: 7, scope: !3026, inlinedAt: !3067)
!3081 = !DILocation(line: 58, column: 7, scope: !3026, inlinedAt: !3067)
!3082 = !DILocation(line: 61, column: 7, scope: !3014, inlinedAt: !3067)
!3083 = !DILocation(line: 62, column: 8, scope: !3030, inlinedAt: !3067)
!3084 = !DILocation(line: 62, column: 13, scope: !3030, inlinedAt: !3067)
!3085 = !DILocation(line: 62, column: 10, scope: !3030, inlinedAt: !3067)
!3086 = !DILocation(line: 63, column: 5, scope: !3030, inlinedAt: !3067)
!3087 = !DILocation(line: 207, column: 3, scope: !479)
!3088 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2251, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3089)
!3089 = !{!3090}
!3090 = !DILocalVariable(name: "n", arg: 1, scope: !3088, file: !249, line: 216, type: !69)
!3091 = !DILocation(line: 0, scope: !3088)
!3092 = !DILocation(line: 0, scope: !2979, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 218, column: 10, scope: !3088)
!3094 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3093)
!3095 = !DILocation(line: 42, column: 8, scope: !2988, inlinedAt: !3093)
!3096 = !DILocation(line: 42, column: 15, scope: !2988, inlinedAt: !3093)
!3097 = !DILocation(line: 42, column: 10, scope: !2988, inlinedAt: !3093)
!3098 = !DILocation(line: 43, column: 5, scope: !2988, inlinedAt: !3093)
!3099 = !DILocation(line: 218, column: 3, scope: !3088)
!3100 = distinct !DISubprogram(name: "x2realloc", scope: !476, file: !476, line: 74, type: !3101, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!67, !67, !482}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "p", arg: 1, scope: !3100, file: !476, line: 74, type: !67)
!3105 = !DILocalVariable(name: "pn", arg: 2, scope: !3100, file: !476, line: 74, type: !482)
!3106 = !DILocation(line: 0, scope: !3100)
!3107 = !DILocation(line: 0, scope: !479, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 76, column: 10, scope: !3100)
!3109 = !DILocation(line: 176, column: 14, scope: !479, inlinedAt: !3108)
!3110 = !DILocation(line: 178, column: 9, scope: !3050, inlinedAt: !3108)
!3111 = !DILocation(line: 178, column: 7, scope: !479, inlinedAt: !3108)
!3112 = !DILocation(line: 180, column: 13, scope: !3053, inlinedAt: !3108)
!3113 = !DILocation(line: 180, column: 11, scope: !3054, inlinedAt: !3108)
!3114 = !DILocation(line: 191, column: 11, scope: !3062, inlinedAt: !3108)
!3115 = !DILocation(line: 191, column: 11, scope: !3054, inlinedAt: !3108)
!3116 = !DILocation(line: 206, column: 7, scope: !479, inlinedAt: !3108)
!3117 = !DILocation(line: 0, scope: !3014, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 207, column: 10, scope: !479, inlinedAt: !3108)
!3119 = !DILocation(line: 53, column: 10, scope: !3022, inlinedAt: !3118)
!3120 = !DILocation(line: 192, column: 9, scope: !3062, inlinedAt: !3108)
!3121 = !DILocation(line: 201, column: 11, scope: !3071, inlinedAt: !3108)
!3122 = !DILocation(line: 200, column: 11, scope: !3072, inlinedAt: !3108)
!3123 = !DILocation(line: 202, column: 9, scope: !3071, inlinedAt: !3108)
!3124 = !DILocation(line: 203, column: 14, scope: !3072, inlinedAt: !3108)
!3125 = !DILocation(line: 203, column: 18, scope: !3072, inlinedAt: !3108)
!3126 = !DILocation(line: 203, column: 9, scope: !3072, inlinedAt: !3108)
!3127 = !DILocation(line: 53, column: 8, scope: !3022, inlinedAt: !3118)
!3128 = !DILocation(line: 57, column: 7, scope: !3026, inlinedAt: !3118)
!3129 = !DILocation(line: 58, column: 7, scope: !3026, inlinedAt: !3118)
!3130 = !DILocation(line: 61, column: 7, scope: !3014, inlinedAt: !3118)
!3131 = !DILocation(line: 62, column: 8, scope: !3030, inlinedAt: !3118)
!3132 = !DILocation(line: 62, column: 13, scope: !3030, inlinedAt: !3118)
!3133 = !DILocation(line: 62, column: 10, scope: !3030, inlinedAt: !3118)
!3134 = !DILocation(line: 63, column: 5, scope: !3030, inlinedAt: !3118)
!3135 = !DILocation(line: 76, column: 3, scope: !3100)
!3136 = distinct !DISubprogram(name: "xzalloc", scope: !476, file: !476, line: 84, type: !2980, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3137)
!3137 = !{!3138}
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !476, line: 84, type: !69)
!3139 = !DILocation(line: 0, scope: !3136)
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !476, line: 93, type: !69)
!3141 = distinct !DISubprogram(name: "xcalloc", scope: !476, file: !476, line: 93, type: !2967, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3142)
!3142 = !{!3140, !3143, !3144}
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3141, file: !476, line: 93, type: !69)
!3144 = !DILocalVariable(name: "p", scope: !3141, file: !476, line: 95, type: !67)
!3145 = !DILocation(line: 0, scope: !3141, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 86, column: 10, scope: !3136)
!3147 = !DILocation(line: 100, column: 7, scope: !3148, inlinedAt: !3146)
!3148 = distinct !DILexicalBlock(scope: !3141, file: !476, line: 100, column: 7)
!3149 = !DILocation(line: 101, column: 7, scope: !3148, inlinedAt: !3146)
!3150 = !DILocation(line: 101, column: 18, scope: !3148, inlinedAt: !3146)
!3151 = !DILocation(line: 101, column: 16, scope: !3148, inlinedAt: !3146)
!3152 = !DILocation(line: 100, column: 7, scope: !3141, inlinedAt: !3146)
!3153 = !DILocation(line: 102, column: 5, scope: !3148, inlinedAt: !3146)
!3154 = !DILocation(line: 86, column: 3, scope: !3136)
!3155 = !DILocation(line: 0, scope: !3141)
!3156 = !DILocation(line: 100, column: 7, scope: !3148)
!3157 = !DILocation(line: 101, column: 7, scope: !3148)
!3158 = !DILocation(line: 101, column: 18, scope: !3148)
!3159 = !DILocation(line: 101, column: 16, scope: !3148)
!3160 = !DILocation(line: 100, column: 7, scope: !3141)
!3161 = !DILocation(line: 102, column: 5, scope: !3148)
!3162 = !DILocation(line: 103, column: 3, scope: !3141)
!3163 = distinct !DISubprogram(name: "xmemdup", scope: !476, file: !476, line: 111, type: !3164, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!67, !252, !69}
!3166 = !{!3167, !3168}
!3167 = !DILocalVariable(name: "p", arg: 1, scope: !3163, file: !476, line: 111, type: !252)
!3168 = !DILocalVariable(name: "s", arg: 2, scope: !3163, file: !476, line: 111, type: !69)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 0, scope: !2979, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 113, column: 18, scope: !3163)
!3172 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3171)
!3173 = !DILocation(line: 42, column: 8, scope: !2988, inlinedAt: !3171)
!3174 = !DILocation(line: 42, column: 15, scope: !2988, inlinedAt: !3171)
!3175 = !DILocation(line: 42, column: 10, scope: !2988, inlinedAt: !3171)
!3176 = !DILocation(line: 43, column: 5, scope: !2988, inlinedAt: !3171)
!3177 = !DILocalVariable(name: "__dest", arg: 1, scope: !3178, file: !1784, line: 31, type: !3181)
!3178 = distinct !DISubprogram(name: "memcpy", scope: !1784, file: !1784, line: 31, type: !3179, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3183)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!67, !3181, !3182, !69}
!3181 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3182 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3183 = !{!3177, !3184, !3185}
!3184 = !DILocalVariable(name: "__src", arg: 2, scope: !3178, file: !1784, line: 31, type: !3182)
!3185 = !DILocalVariable(name: "__len", arg: 3, scope: !3178, file: !1784, line: 31, type: !69)
!3186 = !DILocation(line: 0, scope: !3178, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 113, column: 10, scope: !3163)
!3188 = !DILocation(line: 34, column: 10, scope: !3178, inlinedAt: !3187)
!3189 = !DILocation(line: 113, column: 3, scope: !3163)
!3190 = distinct !DISubprogram(name: "xstrdup", scope: !476, file: !476, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3191)
!3191 = !{!3192}
!3192 = !DILocalVariable(name: "string", arg: 1, scope: !3190, file: !476, line: 119, type: !6)
!3193 = !DILocation(line: 0, scope: !3190)
!3194 = !DILocation(line: 121, column: 27, scope: !3190)
!3195 = !DILocation(line: 121, column: 43, scope: !3190)
!3196 = !DILocation(line: 0, scope: !3163, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 121, column: 10, scope: !3190)
!3198 = !DILocation(line: 0, scope: !2979, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 113, column: 18, scope: !3163, inlinedAt: !3197)
!3200 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3199)
!3201 = !DILocation(line: 42, column: 8, scope: !2988, inlinedAt: !3199)
!3202 = !DILocation(line: 42, column: 15, scope: !2988, inlinedAt: !3199)
!3203 = !DILocation(line: 42, column: 10, scope: !2988, inlinedAt: !3199)
!3204 = !DILocation(line: 43, column: 5, scope: !2988, inlinedAt: !3199)
!3205 = !DILocation(line: 0, scope: !3178, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 113, column: 10, scope: !3163, inlinedAt: !3197)
!3207 = !DILocation(line: 34, column: 10, scope: !3178, inlinedAt: !3206)
!3208 = !DILocation(line: 121, column: 3, scope: !3190)
!3209 = distinct !DISubprogram(name: "xalloc_die", scope: !497, file: !497, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !496, retainedNodes: !4)
!3210 = !DILocation(line: 34, column: 10, scope: !3209)
!3211 = !DILocation(line: 34, column: 33, scope: !3209)
!3212 = !DILocation(line: 34, column: 3, scope: !3209)
!3213 = !DILocation(line: 40, column: 3, scope: !3209)
!3214 = distinct !DISubprogram(name: "rpl_calloc", scope: !500, file: !500, line: 42, type: !2967, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !499, retainedNodes: !3215)
!3215 = !{!3216, !3217, !3218, !3219}
!3216 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !500, line: 42, type: !69)
!3217 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !500, line: 42, type: !69)
!3218 = !DILocalVariable(name: "result", scope: !3214, file: !500, line: 44, type: !67)
!3219 = !DILocalVariable(name: "bytes", scope: !3220, file: !500, line: 56, type: !69)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !500, line: 53, column: 5)
!3221 = distinct !DILexicalBlock(scope: !3214, file: !500, line: 47, column: 7)
!3222 = !DILocation(line: 0, scope: !3214)
!3223 = !DILocation(line: 47, column: 9, scope: !3221)
!3224 = !DILocation(line: 47, column: 19, scope: !3221)
!3225 = !DILocation(line: 47, column: 14, scope: !3221)
!3226 = !DILocation(line: 0, scope: !3220)
!3227 = !DILocation(line: 57, column: 21, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3220, file: !500, line: 57, column: 11)
!3229 = !DILocation(line: 57, column: 11, scope: !3220)
!3230 = !DILocation(line: 59, column: 11, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3228, file: !500, line: 58, column: 9)
!3232 = !DILocation(line: 59, column: 17, scope: !3231)
!3233 = !DILocation(line: 65, column: 12, scope: !3214)
!3234 = !DILocation(line: 72, column: 3, scope: !3214)
!3235 = !DILocation(line: 73, column: 1, scope: !3214)
!3236 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !503, file: !503, line: 86, type: !3237, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !3243)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!69, !3239, !6, !69, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1525, line: 6, baseType: !3242)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !509)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3244 = !DILocalVariable(name: "pwc", arg: 1, scope: !3236, file: !503, line: 86, type: !3239)
!3245 = !DILocalVariable(name: "s", arg: 2, scope: !3236, file: !503, line: 86, type: !6)
!3246 = !DILocalVariable(name: "n", arg: 3, scope: !3236, file: !503, line: 86, type: !69)
!3247 = !DILocalVariable(name: "ps", arg: 4, scope: !3236, file: !503, line: 86, type: !3240)
!3248 = !DILocalVariable(name: "ret", scope: !3236, file: !503, line: 88, type: !69)
!3249 = !DILocalVariable(name: "wc", scope: !3236, file: !503, line: 89, type: !1529)
!3250 = !DILocalVariable(name: "uc", scope: !3251, file: !503, line: 156, type: !1402)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !503, line: 155, column: 5)
!3252 = distinct !DILexicalBlock(scope: !3236, file: !503, line: 154, column: 7)
!3253 = !DILocation(line: 0, scope: !3236)
!3254 = !DILocation(line: 89, column: 3, scope: !3236)
!3255 = !DILocation(line: 105, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3236, file: !503, line: 105, column: 7)
!3257 = !DILocation(line: 105, column: 7, scope: !3236)
!3258 = !DILocation(line: 145, column: 9, scope: !3236)
!3259 = !DILocation(line: 154, column: 19, scope: !3252)
!3260 = !DILocation(line: 154, column: 31, scope: !3252)
!3261 = !DILocation(line: 154, column: 26, scope: !3252)
!3262 = !DILocation(line: 154, column: 41, scope: !3252)
!3263 = !DILocation(line: 154, column: 7, scope: !3236)
!3264 = !DILocation(line: 156, column: 26, scope: !3251)
!3265 = !DILocation(line: 0, scope: !3251)
!3266 = !DILocation(line: 157, column: 14, scope: !3251)
!3267 = !DILocation(line: 157, column: 12, scope: !3251)
!3268 = !DILocation(line: 163, column: 1, scope: !3236)
!3269 = distinct !DISubprogram(name: "close_stream", scope: !522, file: !522, line: 56, type: !3270, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !3274)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!18, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2843, line: 7, baseType: !529)
!3274 = !{!3275, !3276, !3278, !3279}
!3275 = !DILocalVariable(name: "stream", arg: 1, scope: !3269, file: !522, line: 56, type: !3272)
!3276 = !DILocalVariable(name: "some_pending", scope: !3269, file: !522, line: 58, type: !3277)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3278 = !DILocalVariable(name: "prev_fail", scope: !3269, file: !522, line: 59, type: !3277)
!3279 = !DILocalVariable(name: "fclose_fail", scope: !3269, file: !522, line: 60, type: !3277)
!3280 = !DILocation(line: 0, scope: !3269)
!3281 = !DILocation(line: 58, column: 30, scope: !3269)
!3282 = !DILocalVariable(name: "__stream", arg: 1, scope: !3283, file: !3284, line: 135, type: !3272)
!3283 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3284, file: !3284, line: 135, type: !3270, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !521, retainedNodes: !3285)
!3284 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3285 = !{!3282}
!3286 = !DILocation(line: 0, scope: !3283, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 59, column: 27, scope: !3269)
!3288 = !DILocation(line: 137, column: 10, scope: !3283, inlinedAt: !3287)
!3289 = !{!3290, !1181, i64 0}
!3290 = !{!"_IO_FILE", !1181, i64 0, !1124, i64 8, !1124, i64 16, !1124, i64 24, !1124, i64 32, !1124, i64 40, !1124, i64 48, !1124, i64 56, !1124, i64 64, !1124, i64 72, !1124, i64 80, !1124, i64 88, !1124, i64 96, !1124, i64 104, !1181, i64 112, !1181, i64 116, !2287, i64 120, !1777, i64 128, !1125, i64 130, !1125, i64 131, !1124, i64 136, !2287, i64 144, !1124, i64 152, !1124, i64 160, !1124, i64 168, !1124, i64 176, !2287, i64 184, !1181, i64 192, !1125, i64 196}
!3291 = !DILocation(line: 59, column: 43, scope: !3269)
!3292 = !DILocation(line: 60, column: 29, scope: !3269)
!3293 = !DILocation(line: 60, column: 45, scope: !3269)
!3294 = !DILocation(line: 70, column: 17, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3269, file: !522, line: 70, column: 7)
!3296 = !DILocation(line: 58, column: 50, scope: !3269)
!3297 = !DILocation(line: 70, column: 33, scope: !3295)
!3298 = !DILocation(line: 70, column: 53, scope: !3295)
!3299 = !DILocation(line: 70, column: 59, scope: !3295)
!3300 = !DILocation(line: 70, column: 7, scope: !3269)
!3301 = !DILocation(line: 72, column: 11, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3295, file: !522, line: 71, column: 5)
!3303 = !DILocation(line: 73, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3302, file: !522, line: 72, column: 11)
!3305 = !DILocation(line: 73, column: 15, scope: !3304)
!3306 = !DILocation(line: 78, column: 1, scope: !3269)
!3307 = distinct !DISubprogram(name: "hard_locale", scope: !561, file: !561, line: 27, type: !519, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !560, retainedNodes: !3308)
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "category", arg: 1, scope: !3307, file: !561, line: 27, type: !18)
!3310 = !DILocalVariable(name: "locale", scope: !3307, file: !561, line: 29, type: !3311)
!3311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3312)
!3312 = !{!3313}
!3313 = !DISubrange(count: 257)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 29, column: 3, scope: !3307)
!3316 = !DILocation(line: 29, column: 8, scope: !3307)
!3317 = !DILocation(line: 31, column: 7, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3307, file: !561, line: 31, column: 7)
!3319 = !DILocation(line: 31, column: 7, scope: !3307)
!3320 = !DILocation(line: 34, column: 12, scope: !3307)
!3321 = !DILocation(line: 34, column: 38, scope: !3307)
!3322 = !DILocation(line: 34, column: 41, scope: !3307)
!3323 = !DILocation(line: 34, column: 66, scope: !3307)
!3324 = !DILocation(line: 35, column: 1, scope: !3307)
!3325 = distinct !DISubprogram(name: "locale_charset", scope: !568, file: !568, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !567, retainedNodes: !3326)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "codeset", scope: !3325, file: !568, line: 833, type: !6)
!3328 = !DILocation(line: 847, column: 13, scope: !3325)
!3329 = !DILocation(line: 0, scope: !3325)
!3330 = !DILocation(line: 911, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3325, file: !568, line: 911, column: 7)
!3332 = !DILocation(line: 911, column: 7, scope: !3325)
!3333 = !DILocation(line: 1070, column: 13, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !568, line: 1070, column: 13)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !568, line: 1060, column: 7)
!3336 = distinct !DILexicalBlock(scope: !3325, file: !568, line: 1019, column: 3)
!3337 = !DILocation(line: 1070, column: 24, scope: !3334)
!3338 = !DILocation(line: 1070, column: 13, scope: !3335)
!3339 = !DILocation(line: 1158, column: 3, scope: !3325)
!3340 = distinct !DISubprogram(name: "setlocale_null_r", scope: !961, file: !961, line: 269, type: !3341, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!18, !18, !25, !69}
!3343 = !{!3344, !3345, !3346}
!3344 = !DILocalVariable(name: "category", arg: 1, scope: !3340, file: !961, line: 269, type: !18)
!3345 = !DILocalVariable(name: "buf", arg: 2, scope: !3340, file: !961, line: 269, type: !25)
!3346 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3340, file: !961, line: 269, type: !69)
!3347 = !DILocation(line: 0, scope: !3340)
!3348 = !DILocalVariable(name: "category", arg: 1, scope: !3349, file: !961, line: 91, type: !18)
!3349 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !961, file: !961, line: 91, type: !3341, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3350)
!3350 = !{!3348, !3351, !3352, !3353, !3354}
!3351 = !DILocalVariable(name: "buf", arg: 2, scope: !3349, file: !961, line: 91, type: !25)
!3352 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3349, file: !961, line: 91, type: !69)
!3353 = !DILocalVariable(name: "result", scope: !3349, file: !961, line: 140, type: !6)
!3354 = !DILocalVariable(name: "length", scope: !3355, file: !961, line: 154, type: !69)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !961, line: 153, column: 5)
!3356 = distinct !DILexicalBlock(scope: !3349, file: !961, line: 142, column: 7)
!3357 = !DILocation(line: 0, scope: !3349, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 274, column: 10, scope: !3340)
!3359 = !DILocalVariable(name: "category", arg: 1, scope: !3360, file: !961, line: 60, type: !18)
!3360 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !961, file: !961, line: 60, type: !3361, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!6, !18}
!3363 = !{!3359, !3364}
!3364 = !DILocalVariable(name: "result", scope: !3360, file: !961, line: 62, type: !6)
!3365 = !DILocation(line: 0, scope: !3360, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 140, column: 24, scope: !3349, inlinedAt: !3358)
!3367 = !DILocation(line: 62, column: 24, scope: !3360, inlinedAt: !3366)
!3368 = !DILocation(line: 142, column: 14, scope: !3356, inlinedAt: !3358)
!3369 = !DILocation(line: 142, column: 7, scope: !3349, inlinedAt: !3358)
!3370 = !DILocation(line: 145, column: 19, scope: !3371, inlinedAt: !3358)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !961, line: 145, column: 11)
!3372 = distinct !DILexicalBlock(scope: !3356, file: !961, line: 143, column: 5)
!3373 = !DILocation(line: 145, column: 11, scope: !3372, inlinedAt: !3358)
!3374 = !DILocation(line: 149, column: 16, scope: !3371, inlinedAt: !3358)
!3375 = !DILocation(line: 149, column: 9, scope: !3371, inlinedAt: !3358)
!3376 = !DILocation(line: 154, column: 23, scope: !3355, inlinedAt: !3358)
!3377 = !DILocation(line: 0, scope: !3355, inlinedAt: !3358)
!3378 = !DILocation(line: 155, column: 18, scope: !3379, inlinedAt: !3358)
!3379 = distinct !DILexicalBlock(scope: !3355, file: !961, line: 155, column: 11)
!3380 = !DILocation(line: 155, column: 11, scope: !3355, inlinedAt: !3358)
!3381 = !DILocation(line: 157, column: 39, scope: !3382, inlinedAt: !3358)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !961, line: 156, column: 9)
!3383 = !DILocalVariable(name: "__dest", arg: 1, scope: !3384, file: !1784, line: 31, type: !3181)
!3384 = distinct !DISubprogram(name: "memcpy", scope: !1784, file: !1784, line: 31, type: !3179, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3385)
!3385 = !{!3383, !3386, !3387}
!3386 = !DILocalVariable(name: "__src", arg: 2, scope: !3384, file: !1784, line: 31, type: !3182)
!3387 = !DILocalVariable(name: "__len", arg: 3, scope: !3384, file: !1784, line: 31, type: !69)
!3388 = !DILocation(line: 0, scope: !3384, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 157, column: 11, scope: !3382, inlinedAt: !3358)
!3390 = !DILocation(line: 34, column: 10, scope: !3384, inlinedAt: !3389)
!3391 = !DILocation(line: 158, column: 11, scope: !3382, inlinedAt: !3358)
!3392 = !DILocation(line: 162, column: 23, scope: !3393, inlinedAt: !3358)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !961, line: 162, column: 15)
!3394 = distinct !DILexicalBlock(scope: !3379, file: !961, line: 161, column: 9)
!3395 = !DILocation(line: 162, column: 15, scope: !3394, inlinedAt: !3358)
!3396 = !DILocation(line: 167, column: 44, scope: !3397, inlinedAt: !3358)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !961, line: 163, column: 13)
!3398 = !DILocation(line: 0, scope: !3384, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 167, column: 15, scope: !3397, inlinedAt: !3358)
!3400 = !DILocation(line: 34, column: 10, scope: !3384, inlinedAt: !3399)
!3401 = !DILocation(line: 168, column: 15, scope: !3397, inlinedAt: !3358)
!3402 = !DILocation(line: 168, column: 32, scope: !3397, inlinedAt: !3358)
!3403 = !DILocation(line: 169, column: 13, scope: !3397, inlinedAt: !3358)
!3404 = !DILocation(line: 0, scope: !3356, inlinedAt: !3358)
!3405 = !DILocation(line: 274, column: 3, scope: !3340)
!3406 = distinct !DISubprogram(name: "setlocale_null", scope: !961, file: !961, line: 301, type: !3361, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !960, retainedNodes: !3407)
!3407 = !{!3408}
!3408 = !DILocalVariable(name: "category", arg: 1, scope: !3406, file: !961, line: 301, type: !18)
!3409 = !DILocation(line: 0, scope: !3406)
!3410 = !DILocation(line: 0, scope: !3360, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 304, column: 10, scope: !3406)
!3412 = !DILocation(line: 62, column: 24, scope: !3360, inlinedAt: !3411)
!3413 = !DILocation(line: 304, column: 3, scope: !3406)
!3414 = distinct !DISubprogram(name: "rpl_fclose", scope: !964, file: !964, line: 58, type: !3415, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !963, retainedNodes: !3419)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!18, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2843, line: 7, baseType: !970)
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DILocalVariable(name: "fp", arg: 1, scope: !3414, file: !964, line: 58, type: !3417)
!3421 = !DILocalVariable(name: "saved_errno", scope: !3414, file: !964, line: 60, type: !18)
!3422 = !DILocalVariable(name: "fd", scope: !3414, file: !964, line: 61, type: !18)
!3423 = !DILocalVariable(name: "result", scope: !3414, file: !964, line: 62, type: !18)
!3424 = !DILocation(line: 0, scope: !3414)
!3425 = !DILocation(line: 65, column: 8, scope: !3414)
!3426 = !DILocation(line: 66, column: 10, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3414, file: !964, line: 66, column: 7)
!3428 = !DILocation(line: 66, column: 7, scope: !3414)
!3429 = !DILocation(line: 67, column: 12, scope: !3427)
!3430 = !DILocation(line: 67, column: 5, scope: !3427)
!3431 = !DILocation(line: 72, column: 9, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3414, file: !964, line: 72, column: 7)
!3433 = !DILocation(line: 72, column: 23, scope: !3432)
!3434 = !DILocation(line: 72, column: 33, scope: !3432)
!3435 = !DILocation(line: 72, column: 26, scope: !3432)
!3436 = !DILocation(line: 72, column: 59, scope: !3432)
!3437 = !DILocation(line: 73, column: 7, scope: !3432)
!3438 = !DILocation(line: 73, column: 10, scope: !3432)
!3439 = !DILocation(line: 72, column: 7, scope: !3414)
!3440 = !DILocation(line: 100, column: 12, scope: !3414)
!3441 = !DILocation(line: 105, column: 7, scope: !3414)
!3442 = !DILocation(line: 74, column: 19, scope: !3432)
!3443 = !DILocation(line: 105, column: 19, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3414, file: !964, line: 105, column: 7)
!3445 = !DILocation(line: 107, column: 13, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !964, line: 106, column: 5)
!3447 = !DILocation(line: 109, column: 5, scope: !3446)
!3448 = !DILocation(line: 112, column: 1, scope: !3414)
!3449 = distinct !DISubprogram(name: "rpl_fflush", scope: !1007, file: !1007, line: 129, type: !3450, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !3454)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!18, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2843, line: 7, baseType: !1013)
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "stream", arg: 1, scope: !3449, file: !1007, line: 129, type: !3452)
!3456 = !DILocation(line: 0, scope: !3449)
!3457 = !DILocation(line: 150, column: 14, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3449, file: !1007, line: 150, column: 7)
!3459 = !DILocation(line: 150, column: 22, scope: !3458)
!3460 = !DILocation(line: 150, column: 27, scope: !3458)
!3461 = !DILocation(line: 150, column: 7, scope: !3449)
!3462 = !DILocation(line: 151, column: 12, scope: !3458)
!3463 = !DILocation(line: 151, column: 5, scope: !3458)
!3464 = !DILocalVariable(name: "fp", arg: 1, scope: !3465, file: !1007, line: 41, type: !3452)
!3465 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1007, file: !1007, line: 41, type: !3466, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1006, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3452}
!3468 = !{!3464}
!3469 = !DILocation(line: 0, scope: !3465, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 156, column: 3, scope: !3449)
!3471 = !DILocation(line: 43, column: 11, scope: !3472, inlinedAt: !3470)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !1007, line: 43, column: 7)
!3473 = !DILocation(line: 43, column: 18, scope: !3472, inlinedAt: !3470)
!3474 = !DILocation(line: 43, column: 7, scope: !3465, inlinedAt: !3470)
!3475 = !DILocation(line: 45, column: 5, scope: !3472, inlinedAt: !3470)
!3476 = !DILocation(line: 158, column: 10, scope: !3449)
!3477 = !DILocation(line: 158, column: 3, scope: !3449)
!3478 = !DILocation(line: 235, column: 1, scope: !3449)
!3479 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1048, file: !1048, line: 28, type: !3480, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !3485)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!18, !3482, !3484, !18}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2843, line: 7, baseType: !1054)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DILocalVariable(name: "fp", arg: 1, scope: !3479, file: !1048, line: 28, type: !3482)
!3487 = !DILocalVariable(name: "offset", arg: 2, scope: !3479, file: !1048, line: 28, type: !3484)
!3488 = !DILocalVariable(name: "whence", arg: 3, scope: !3479, file: !1048, line: 28, type: !18)
!3489 = !DILocalVariable(name: "pos", scope: !3490, file: !1048, line: 117, type: !3484)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !1048, line: 113, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3479, file: !1048, line: 52, column: 7)
!3492 = !DILocation(line: 0, scope: !3479)
!3493 = !DILocation(line: 52, column: 11, scope: !3491)
!3494 = !{!3290, !1124, i64 16}
!3495 = !DILocation(line: 52, column: 31, scope: !3491)
!3496 = !{!3290, !1124, i64 8}
!3497 = !DILocation(line: 52, column: 24, scope: !3491)
!3498 = !DILocation(line: 53, column: 7, scope: !3491)
!3499 = !DILocation(line: 53, column: 14, scope: !3491)
!3500 = !{!3290, !1124, i64 40}
!3501 = !DILocation(line: 53, column: 35, scope: !3491)
!3502 = !{!3290, !1124, i64 32}
!3503 = !DILocation(line: 53, column: 28, scope: !3491)
!3504 = !DILocation(line: 54, column: 7, scope: !3491)
!3505 = !DILocation(line: 54, column: 14, scope: !3491)
!3506 = !{!3290, !1124, i64 72}
!3507 = !DILocation(line: 54, column: 28, scope: !3491)
!3508 = !DILocation(line: 52, column: 7, scope: !3479)
!3509 = !DILocation(line: 117, column: 26, scope: !3490)
!3510 = !DILocation(line: 117, column: 19, scope: !3490)
!3511 = !DILocation(line: 0, scope: !3490)
!3512 = !DILocation(line: 118, column: 15, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3490, file: !1048, line: 118, column: 11)
!3514 = !DILocation(line: 118, column: 11, scope: !3490)
!3515 = !DILocation(line: 129, column: 11, scope: !3490)
!3516 = !DILocation(line: 129, column: 18, scope: !3490)
!3517 = !DILocation(line: 130, column: 11, scope: !3490)
!3518 = !DILocation(line: 130, column: 19, scope: !3490)
!3519 = !{!3290, !2287, i64 144}
!3520 = !DILocation(line: 161, column: 7, scope: !3490)
!3521 = !DILocation(line: 163, column: 10, scope: !3479)
!3522 = !DILocation(line: 163, column: 3, scope: !3479)
!3523 = !DILocation(line: 164, column: 1, scope: !3479)
