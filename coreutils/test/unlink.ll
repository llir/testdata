; ModuleID = 'coreutils-8.32/src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
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
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !0
@.str.29 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.38, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.39, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.47 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.49 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.53, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.54, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.59, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.50 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.51 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.52 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.53 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.54 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.55 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.56 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.57 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.58 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.59 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.60 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.61 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.62 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.63 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.64 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.65 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.66 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.91 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.93 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.96 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.97 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.108 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.118 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1095 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1098, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i32 %0, metadata !1097, metadata !DIExpression()), !dbg !1119
  %3 = icmp eq i32 %0, 0, !dbg !1120
  br i1 %3, label %9, label %4, !dbg !1121

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1122, !tbaa !1124
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1122
  %7 = load i8*, i8** @program_name, align 8, !dbg !1122, !tbaa !1124
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1122
  br label %58, !dbg !1122

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1128
  %11 = load i8*, i8** @program_name, align 8, !dbg !1128, !tbaa !1124
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !1128
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1129
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !1124
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1129
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1130
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1130, !tbaa !1124
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1130
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !1131
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1131, !tbaa !1124
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1131
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1102, metadata !DIExpression()) #12, !dbg !1132
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1133
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1115
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1103, metadata !DIExpression()) #12, !dbg !1132
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1134
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  br label %24, !dbg !1135

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1136
  %28 = icmp eq i32 %27, 0, !dbg !1136
  br i1 %28, label %34, label %29, !dbg !1135

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1137
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1138
  %32 = load i8*, i8** %31, align 8, !dbg !1138, !tbaa !1139
  %33 = icmp eq i8* %32, null, !dbg !1141
  br i1 %33, label %34, label %24, !dbg !1142, !llvm.loop !1143

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1104, metadata !DIExpression()) #12, !dbg !1132
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1144
  %37 = load i8*, i8** %36, align 8, !dbg !1144, !tbaa !1146
  %38 = icmp eq i8* %37, null, !dbg !1147
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %39, metadata !1103, metadata !DIExpression()) #12, !dbg !1132
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #12, !dbg !1149
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !1149
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %42, metadata !1111, metadata !DIExpression()) #12, !dbg !1132
  %43 = icmp eq i8* %42, null, !dbg !1151
  br i1 %43, label %51, label %44, !dbg !1153

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #21, !dbg !1154
  %46 = icmp eq i32 %45, 0, !dbg !1154
  br i1 %46, label %51, label %47, !dbg !1155

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1156
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !1124
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !1156
  br label %51, !dbg !1158

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1159
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1159
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1160
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1160
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1160
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #12, !dbg !1160
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1161
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1162
  unreachable, !dbg !1162
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
declare !dbg !364 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !403 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1167, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8** %1, metadata !1168, metadata !DIExpression()), !dbg !1169
  %3 = load i8*, i8** %1, align 8, !dbg !1170, !tbaa !1124
  tail call void @set_program_name(i8* %3) #12, !dbg !1171
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1172
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1173
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1174
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1175
  %8 = load i8*, i8** @Version, align 8, !dbg !1176, !tbaa !1124
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #12, !dbg !1177
  %9 = load i32, i32* @optind, align 4, !dbg !1178, !tbaa !1180
  %10 = icmp slt i32 %9, %0, !dbg !1182
  br i1 %10, label %13, label %11, !dbg !1183

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !1184
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12) #12, !dbg !1186
  tail call void @usage(i32 1) #23, !dbg !1187
  unreachable, !dbg !1187

13:                                               ; preds = %2
  %14 = add nsw i32 %9, 1, !dbg !1188
  %15 = icmp slt i32 %14, %0, !dbg !1189
  br i1 %15, label %16, label %24, !dbg !1191

16:                                               ; preds = %13
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !1192
  %18 = load i32, i32* @optind, align 4, !dbg !1194, !tbaa !1180
  %19 = add nsw i32 %18, 1, !dbg !1195
  %20 = sext i32 %19 to i64, !dbg !1196
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !1196
  %22 = load i8*, i8** %21, align 8, !dbg !1196, !tbaa !1124
  %23 = tail call i8* @quote(i8* %22) #12, !dbg !1197
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #12, !dbg !1198
  tail call void @usage(i32 1) #23, !dbg !1199
  unreachable, !dbg !1199

24:                                               ; preds = %13
  %25 = sext i32 %9 to i64, !dbg !1200
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !1200
  %27 = load i8*, i8** %26, align 8, !dbg !1200, !tbaa !1124
  %28 = tail call i32 @unlink(i8* %27) #12, !dbg !1202
  %29 = icmp eq i32 %28, 0, !dbg !1203
  br i1 %29, label %39, label %30, !dbg !1204

30:                                               ; preds = %24
  %31 = tail call i32* @__errno_location() #24, !dbg !1205
  %32 = load i32, i32* %31, align 4, !dbg !1205, !tbaa !1180
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !1205
  %34 = load i32, i32* @optind, align 4, !dbg !1205, !tbaa !1180
  %35 = sext i32 %34 to i64, !dbg !1205
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35, !dbg !1205
  %37 = load i8*, i8** %36, align 8, !dbg !1205, !tbaa !1124
  %38 = tail call i8* @quotearg_style(i32 4, i8* %37) #12, !dbg !1205
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* %33, i8* %38) #12, !dbg !1205
  unreachable, !dbg !1205

39:                                               ; preds = %24
  ret i32 0, !dbg !1206
}

; Function Attrs: nounwind
declare !dbg !407 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !411 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !427 i32 @unlink(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8* %0, i8** @file_name, align 8, !dbg !1211, !tbaa !1124
  ret void, !dbg !1212
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1213 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1217, metadata !DIExpression()), !dbg !1218
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1219, !tbaa !1220
  ret void, !dbg !1222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1223 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1228, !tbaa !1124
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1229
  %3 = icmp eq i32 %2, 0, !dbg !1230
  br i1 %3, label %22, label %4, !dbg !1231

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1232, !tbaa !1220, !range !1233
  %6 = icmp eq i8 %5, 0, !dbg !1232
  br i1 %6, label %11, label %7, !dbg !1234

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1235
  %9 = load i32, i32* %8, align 4, !dbg !1235, !tbaa !1180
  %10 = icmp eq i32 %9, 32, !dbg !1236
  br i1 %10, label %22, label %11, !dbg !1237

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %12, metadata !1225, metadata !DIExpression()), !dbg !1239
  %13 = load i8*, i8** @file_name, align 8, !dbg !1240, !tbaa !1124
  %14 = icmp eq i8* %13, null, !dbg !1240
  %15 = tail call i32* @__errno_location() #24, !dbg !1242
  %16 = load i32, i32* %15, align 4, !dbg !1242, !tbaa !1180
  br i1 %14, label %19, label %17, !dbg !1243

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1244
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1245
  br label %20, !dbg !1245

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #12, !dbg !1246
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1247, !tbaa !1180
  tail call void @_exit(i32 %21) #22, !dbg !1248
  unreachable, !dbg !1248

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1249, !tbaa !1124
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1251
  %25 = icmp eq i32 %24, 0, !dbg !1252
  br i1 %25, label %28, label %26, !dbg !1253

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1254, !tbaa !1180
  tail call void @_exit(i32 %27) #22, !dbg !1255
  unreachable, !dbg !1255

28:                                               ; preds = %22
  ret void, !dbg !1256
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1257 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1261, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8** %1, metadata !1262, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %2, metadata !1263, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %3, metadata !1264, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %4, metadata !1265, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1266, metadata !DIExpression()), !dbg !1279
  %8 = load i32, i32* @opterr, align 4, !dbg !1280, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %8, metadata !1268, metadata !DIExpression()), !dbg !1279
  store i32 0, i32* @opterr, align 4, !dbg !1281, !tbaa !1180
  %9 = icmp eq i32 %0, 2, !dbg !1282
  br i1 %9, label %10, label %17, !dbg !1283

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %11, metadata !1267, metadata !DIExpression()), !dbg !1279
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1285

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1286
  br label %17, !dbg !1287

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1288
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1288
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1269, metadata !DIExpression()), !dbg !1289
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1290
  call void @llvm.va_start(i8* nonnull %14), !dbg !1290
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1291, !tbaa !1124
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1292
  call void @exit(i32 0) #22, !dbg !1293
  unreachable, !dbg !1293

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1294, !tbaa !1180
  store i32 0, i32* @optind, align 4, !dbg !1295, !tbaa !1180
  ret void, !dbg !1296
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1297 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1299, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8** %1, metadata !1300, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %2, metadata !1301, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %3, metadata !1302, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i8* %4, metadata !1303, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i1 %5, metadata !1304, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1305, metadata !DIExpression()), !dbg !1314
  %9 = load i32, i32* @opterr, align 4, !dbg !1315, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %9, metadata !1307, metadata !DIExpression()), !dbg !1314
  store i32 1, i32* @opterr, align 4, !dbg !1316, !tbaa !1180
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.42, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %10, metadata !1308, metadata !DIExpression()), !dbg !1314
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %11, metadata !1306, metadata !DIExpression()), !dbg !1314
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1319

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1320
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1320
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1309, metadata !DIExpression()), !dbg !1321
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1322
  call void @llvm.va_start(i8* nonnull %13), !dbg !1322
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1323, !tbaa !1124
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1324
  call void @exit(i32 0) #22, !dbg !1325
  unreachable, !dbg !1325

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1326, !tbaa !1180
  br label %18, !dbg !1327

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1328
  br label %20, !dbg !1329

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1329, !tbaa !1180
  ret void, !dbg !1330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1331 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1333, metadata !DIExpression()), !dbg !1336
  %2 = icmp eq i8* %0, null, !dbg !1337
  br i1 %2, label %3, label %6, !dbg !1339

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1340, !tbaa !1124
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1342
  tail call void @abort() #22, !dbg !1343
  unreachable, !dbg !1343

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %7, metadata !1334, metadata !DIExpression()), !dbg !1336
  %8 = icmp eq i8* %7, null, !dbg !1345
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1346
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %10, metadata !1335, metadata !DIExpression()), !dbg !1336
  %11 = ptrtoint i8* %10 to i64, !dbg !1347
  %12 = ptrtoint i8* %0 to i64, !dbg !1347
  %13 = sub i64 %11, %12, !dbg !1347
  %14 = icmp sgt i64 %13, 6, !dbg !1349
  br i1 %14, label %15, label %24, !dbg !1350

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1351
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.48, i64 0, i64 0), i64 7) #21, !dbg !1352
  %18 = icmp eq i32 %17, 0, !dbg !1353
  br i1 %18, label %19, label %24, !dbg !1354

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1333, metadata !DIExpression()), !dbg !1336
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.49, i64 0, i64 0), i64 3) #21, !dbg !1355
  %21 = icmp eq i32 %20, 0, !dbg !1358
  br i1 %21, label %22, label %24, !dbg !1359

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %23, metadata !1333, metadata !DIExpression()), !dbg !1336
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1362, !tbaa !1124
  br label %24, !dbg !1363

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1333, metadata !DIExpression()), !dbg !1336
  store i8* %25, i8** @program_name, align 8, !dbg !1364, !tbaa !1124
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1365, !tbaa !1124
  ret void, !dbg !1366
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1367 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1372, metadata !DIExpression()), !dbg !1375
  %2 = tail call i32* @__errno_location() #24, !dbg !1376
  %3 = load i32, i32* %2, align 4, !dbg !1376, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %3, metadata !1373, metadata !DIExpression()), !dbg !1375
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1377
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1377
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1377
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1378
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1374, metadata !DIExpression()), !dbg !1375
  store i32 %3, i32* %2, align 4, !dbg !1379, !tbaa !1180
  ret %struct.quoting_options* %8, !dbg !1380
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1381 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1385, metadata !DIExpression()), !dbg !1386
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1387
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1387
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1388
  %5 = load i32, i32* %4, align 8, !dbg !1388, !tbaa !1389
  ret i32 %5, !dbg !1391
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1392 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1396, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %1, metadata !1397, metadata !DIExpression()), !dbg !1398
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1399
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1399
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1400
  store i32 %1, i32* %5, align 8, !dbg !1401, !tbaa !1389
  ret void, !dbg !1402
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1403 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1407, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %1, metadata !1408, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 %2, metadata !1409, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8 %1, metadata !1410, metadata !DIExpression()), !dbg !1416
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1417
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1417
  %6 = lshr i8 %1, 5, !dbg !1418
  %7 = zext i8 %6 to i64, !dbg !1418
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1419
  call void @llvm.dbg.value(metadata i32* %8, metadata !1412, metadata !DIExpression()), !dbg !1416
  %9 = and i8 %1, 31, !dbg !1420
  %10 = zext i8 %9 to i32, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %10, metadata !1414, metadata !DIExpression()), !dbg !1416
  %11 = load i32, i32* %8, align 4, !dbg !1421, !tbaa !1180
  %12 = lshr i32 %11, %10, !dbg !1422
  %13 = and i32 %12, 1, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %13, metadata !1415, metadata !DIExpression()), !dbg !1416
  %14 = and i32 %2, 1, !dbg !1424
  %15 = xor i32 %13, %14, !dbg !1425
  %16 = shl i32 %15, %10, !dbg !1426
  %17 = xor i32 %16, %11, !dbg !1427
  store i32 %17, i32* %8, align 4, !dbg !1427, !tbaa !1180
  ret i32 %13, !dbg !1428
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1429 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1433, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i32 %1, metadata !1434, metadata !DIExpression()), !dbg !1436
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1437
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1433, metadata !DIExpression()), !dbg !1436
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1440
  %6 = load i32, i32* %5, align 4, !dbg !1440, !tbaa !1441
  call void @llvm.dbg.value(metadata i32 %6, metadata !1435, metadata !DIExpression()), !dbg !1436
  store i32 %1, i32* %5, align 4, !dbg !1442, !tbaa !1441
  ret i32 %6, !dbg !1443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1444 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1448, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8* %1, metadata !1449, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8* %2, metadata !1450, metadata !DIExpression()), !dbg !1451
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1452
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1448, metadata !DIExpression()), !dbg !1451
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1455
  store i32 10, i32* %6, align 8, !dbg !1456, !tbaa !1389
  %7 = icmp ne i8* %1, null, !dbg !1457
  %8 = icmp ne i8* %2, null, !dbg !1459
  %9 = and i1 %7, %8, !dbg !1460
  br i1 %9, label %11, label %10, !dbg !1460

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1461
  unreachable, !dbg !1461

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1462
  store i8* %1, i8** %12, align 8, !dbg !1463, !tbaa !1464
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1465
  store i8* %2, i8** %13, align 8, !dbg !1466, !tbaa !1467
  ret void, !dbg !1468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1473, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %1, metadata !1474, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i8* %2, metadata !1475, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i64 %3, metadata !1476, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1477, metadata !DIExpression()), !dbg !1481
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1482
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1478, metadata !DIExpression()), !dbg !1481
  %8 = tail call i32* @__errno_location() #24, !dbg !1483
  %9 = load i32, i32* %8, align 4, !dbg !1483, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %9, metadata !1479, metadata !DIExpression()), !dbg !1481
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1484
  %11 = load i32, i32* %10, align 8, !dbg !1484, !tbaa !1389
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1485
  %13 = load i32, i32* %12, align 4, !dbg !1485, !tbaa !1441
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1486
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1487
  %16 = load i8*, i8** %15, align 8, !dbg !1487, !tbaa !1464
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1488
  %18 = load i8*, i8** %17, align 8, !dbg !1488, !tbaa !1467
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %19, metadata !1480, metadata !DIExpression()), !dbg !1481
  store i32 %9, i32* %8, align 4, !dbg !1490, !tbaa !1180
  ret i64 %19, !dbg !1491
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1492 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1498, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %1, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %2, metadata !1500, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %3, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %4, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %5, metadata !1503, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32* %6, metadata !1504, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %7, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %8, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* null, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1511, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1512, metadata !DIExpression()), !dbg !1556
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1557
  %14 = icmp eq i64 %13, 1, !dbg !1558
  call void @llvm.dbg.value(metadata i1 %14, metadata !1513, metadata !DIExpression()), !dbg !1556
  %15 = lshr i32 %5, 1, !dbg !1559
  %16 = trunc i32 %15 to i8, !dbg !1559
  %17 = and i8 %16, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i8 %17, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1517, metadata !DIExpression()), !dbg !1556
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1560
  %19 = and i32 %5, 4, !dbg !1562
  %20 = icmp eq i32 %19, 0, !dbg !1562
  %21 = and i32 %5, 1, !dbg !1565
  %22 = icmp eq i32 %21, 0, !dbg !1565
  %23 = bitcast i64* %10 to i8*, !dbg !1568
  %24 = bitcast i32* %12 to i8*, !dbg !1569
  %25 = icmp eq i32* %6, null, !dbg !1570
  br label %26, !dbg !1572

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1573
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1574
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1575
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1576
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1556
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1577
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1578
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1579
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %38, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %37, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %36, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %35, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %34, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %33, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %32, metadata !1511, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %31, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %30, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %29, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %28, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %27, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1550), !dbg !1580
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
  ], !dbg !1581

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %35, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 5, metadata !1502, metadata !DIExpression()), !dbg !1556
  br label %92, !dbg !1582

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 5, metadata !1502, metadata !DIExpression()), !dbg !1556
  %42 = and i8 %35, 1, !dbg !1584
  %43 = icmp eq i8 %42, 0, !dbg !1584
  br i1 %43, label %44, label %92, !dbg !1582

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1586
  br i1 %45, label %92, label %46, !dbg !1589

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1586, !tbaa !1590
  br label %92, !dbg !1586

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.60, i64 0, i64 0), i32 %27), !dbg !1591
  call void @llvm.dbg.value(metadata i8* %48, metadata !1505, metadata !DIExpression()), !dbg !1556
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), i32 %27), !dbg !1595
  call void @llvm.dbg.value(metadata i8* %49, metadata !1506, metadata !DIExpression()), !dbg !1556
  br label %50, !dbg !1596

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %51, metadata !1505, metadata !DIExpression()), !dbg !1556
  %53 = and i8 %35, 1, !dbg !1597
  %54 = icmp eq i8 %53, 0, !dbg !1597
  br i1 %54, label %55, label %70, !dbg !1599

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1508, metadata !DIExpression()), !dbg !1556
  %56 = load i8, i8* %51, align 1, !dbg !1600, !tbaa !1590
  %57 = icmp eq i8 %56, 0, !dbg !1603
  br i1 %57, label %70, label %58, !dbg !1603

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %61, metadata !1508, metadata !DIExpression()), !dbg !1556
  %62 = icmp ult i64 %61, %39, !dbg !1604
  br i1 %62, label %63, label %65, !dbg !1607

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1604
  store i8 %59, i8* %64, align 1, !dbg !1604, !tbaa !1590
  br label %65, !dbg !1604

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %66, metadata !1508, metadata !DIExpression()), !dbg !1556
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %67, metadata !1510, metadata !DIExpression()), !dbg !1556
  %68 = load i8, i8* %67, align 1, !dbg !1600, !tbaa !1590
  %69 = icmp eq i8 %68, 0, !dbg !1603
  br i1 %69, label %70, label %58, !dbg !1603, !llvm.loop !1609

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %71, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %52, metadata !1510, metadata !DIExpression()), !dbg !1556
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1612
  call void @llvm.dbg.value(metadata i64 %72, metadata !1511, metadata !DIExpression()), !dbg !1556
  br label %92, !dbg !1613

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1512, metadata !DIExpression()), !dbg !1556
  br label %74, !dbg !1614

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %75, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1514, metadata !DIExpression()), !dbg !1556
  br label %76, !dbg !1615

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1576
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %78, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %77, metadata !1512, metadata !DIExpression()), !dbg !1556
  %79 = and i8 %78, 1, !dbg !1616
  %80 = icmp eq i8 %79, 0, !dbg !1616
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1618
  br label %82, !dbg !1618

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1556
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1559
  call void @llvm.dbg.value(metadata i8 %84, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %83, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  %85 = and i8 %84, 1, !dbg !1619
  %86 = icmp eq i8 %85, 0, !dbg !1619
  br i1 %86, label %87, label %92, !dbg !1621

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1622
  br i1 %88, label %92, label %89, !dbg !1625

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1622, !tbaa !1590
  br label %92, !dbg !1622

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1556
  br label %92, !dbg !1626

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1627
  unreachable, !dbg !1627

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1611
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %40 ], !dbg !1556
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1556
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1556
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %100, metadata !1514, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %98, metadata !1511, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %96, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %93, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 0, metadata !1507, metadata !DIExpression()), !dbg !1556
  %101 = and i8 %99, 1, !dbg !1628
  %102 = icmp ne i8 %101, 0, !dbg !1628
  %103 = icmp ne i32 %93, 2, !dbg !1628
  %104 = and i1 %103, %102, !dbg !1628
  %105 = icmp ne i64 %98, 0, !dbg !1628
  %106 = and i1 %105, %104, !dbg !1628
  %107 = icmp ugt i64 %98, 1, !dbg !1628
  %108 = and i8 %100, 1, !dbg !1630
  %109 = icmp eq i8 %108, 0, !dbg !1630
  %110 = icmp eq i32 %93, 2, !dbg !1633
  %111 = or i1 %103, %109, !dbg !1635
  %112 = icmp ne i8 %108, 0, !dbg !1637
  %113 = and i1 %110, %112, !dbg !1637
  %114 = xor i1 %102, true, !dbg !1638
  %115 = xor i1 %104, true, !dbg !1570
  %116 = and i1 %109, %115, !dbg !1570
  %117 = or i1 %25, %116, !dbg !1570
  %118 = and i8 %99, %100, !dbg !1639
  %119 = and i8 %118, 1, !dbg !1639
  %120 = icmp ne i8 %119, 0, !dbg !1639
  %121 = and i1 %120, %105, !dbg !1639
  br label %122, !dbg !1641

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1642
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1611
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1573
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1577
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1578
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1579
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %126, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %123, metadata !1507, metadata !DIExpression()), !dbg !1556
  %131 = icmp eq i64 %126, -1, !dbg !1643
  br i1 %131, label %132, label %136, !dbg !1644

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1645
  %134 = load i8, i8* %133, align 1, !dbg !1645, !tbaa !1590
  %135 = icmp eq i8 %134, 0, !dbg !1646
  br i1 %135, label %581, label %138, !dbg !1647

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1648
  br i1 %137, label %581, label %138, !dbg !1647

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1525, metadata !DIExpression()), !dbg !1649
  br i1 %106, label %139, label %154, !dbg !1650

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1651
  %141 = and i1 %107, %131, !dbg !1652
  br i1 %141, label %142, label %144, !dbg !1652

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %143, metadata !1501, metadata !DIExpression()), !dbg !1556
  br label %144, !dbg !1654

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1501, metadata !DIExpression()), !dbg !1556
  %146 = icmp ugt i64 %140, %145, !dbg !1655
  br i1 %146, label %154, label %147, !dbg !1656

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1657
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1658
  %150 = icmp ne i32 %149, 0, !dbg !1659
  %151 = or i1 %150, %109, !dbg !1660
  %152 = xor i1 %150, true, !dbg !1660
  %153 = zext i1 %152 to i8, !dbg !1660
  br i1 %151, label %154, label %639, !dbg !1660

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1649
  call void @llvm.dbg.value(metadata i8 %156, metadata !1523, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %155, metadata !1501, metadata !DIExpression()), !dbg !1556
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1661
  %158 = load i8, i8* %157, align 1, !dbg !1661, !tbaa !1590
  call void @llvm.dbg.value(metadata i8 %158, metadata !1518, metadata !DIExpression()), !dbg !1649
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
  ], !dbg !1662

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1663

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1664

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1524, metadata !DIExpression()), !dbg !1649
  %162 = and i8 %127, 1, !dbg !1667
  %163 = icmp eq i8 %162, 0, !dbg !1667
  %164 = and i1 %110, %163, !dbg !1667
  br i1 %164, label %165, label %181, !dbg !1667

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1669
  br i1 %166, label %167, label %169, !dbg !1673

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1669
  store i8 39, i8* %168, align 1, !dbg !1669, !tbaa !1590
  br label %169, !dbg !1669

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %170, metadata !1508, metadata !DIExpression()), !dbg !1556
  %171 = icmp ult i64 %170, %130, !dbg !1674
  br i1 %171, label %172, label %174, !dbg !1677

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1674
  store i8 36, i8* %173, align 1, !dbg !1674, !tbaa !1590
  br label %174, !dbg !1674

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %175, metadata !1508, metadata !DIExpression()), !dbg !1556
  %176 = icmp ult i64 %175, %130, !dbg !1678
  br i1 %176, label %177, label %179, !dbg !1681

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1678
  store i8 39, i8* %178, align 1, !dbg !1678, !tbaa !1590
  br label %179, !dbg !1678

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %180, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %181, !dbg !1682

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1556
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %183, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %182, metadata !1508, metadata !DIExpression()), !dbg !1556
  %184 = icmp ult i64 %182, %130, !dbg !1683
  br i1 %184, label %185, label %187, !dbg !1686

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1683
  store i8 92, i8* %186, align 1, !dbg !1683, !tbaa !1590
  br label %187, !dbg !1683

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %188, metadata !1508, metadata !DIExpression()), !dbg !1556
  br i1 %103, label %189, label %463, !dbg !1687

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1689
  %191 = icmp ult i64 %190, %155, !dbg !1690
  br i1 %191, label %192, label %463, !dbg !1691

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1692
  %194 = load i8, i8* %193, align 1, !dbg !1692, !tbaa !1590
  %195 = add i8 %194, -48, !dbg !1693
  %196 = icmp ult i8 %195, 10, !dbg !1693
  br i1 %196, label %197, label %463, !dbg !1693

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1694
  br i1 %198, label %199, label %201, !dbg !1698

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1694
  store i8 48, i8* %200, align 1, !dbg !1694, !tbaa !1590
  br label %201, !dbg !1694

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %202, metadata !1508, metadata !DIExpression()), !dbg !1556
  %203 = icmp ult i64 %202, %130, !dbg !1699
  br i1 %203, label %204, label %206, !dbg !1702

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1699
  store i8 48, i8* %205, align 1, !dbg !1699, !tbaa !1590
  br label %206, !dbg !1699

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %207, metadata !1508, metadata !DIExpression()), !dbg !1556
  br label %463, !dbg !1703

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1704

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1705

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1706

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1707

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1708
  %214 = icmp ult i64 %213, %155, !dbg !1709
  br i1 %214, label %215, label %463, !dbg !1710

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1711
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1712
  %218 = load i8, i8* %217, align 1, !dbg !1712, !tbaa !1590
  %219 = icmp eq i8 %218, 63, !dbg !1713
  br i1 %219, label %220, label %463, !dbg !1714

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1715
  %222 = load i8, i8* %221, align 1, !dbg !1715, !tbaa !1590
  %223 = sext i8 %222 to i32, !dbg !1715
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
  ], !dbg !1716

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1717

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i64 %213, metadata !1507, metadata !DIExpression()), !dbg !1556
  %226 = icmp ult i64 %124, %130, !dbg !1719
  br i1 %226, label %227, label %229, !dbg !1722

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1719
  store i8 63, i8* %228, align 1, !dbg !1719, !tbaa !1590
  br label %229, !dbg !1719

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %230, metadata !1508, metadata !DIExpression()), !dbg !1556
  %231 = icmp ult i64 %230, %130, !dbg !1723
  br i1 %231, label %232, label %234, !dbg !1726

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1723
  store i8 34, i8* %233, align 1, !dbg !1723, !tbaa !1590
  br label %234, !dbg !1723

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %235, metadata !1508, metadata !DIExpression()), !dbg !1556
  %236 = icmp ult i64 %235, %130, !dbg !1727
  br i1 %236, label %237, label %239, !dbg !1730

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1727
  store i8 34, i8* %238, align 1, !dbg !1727, !tbaa !1590
  br label %239, !dbg !1727

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %240, metadata !1508, metadata !DIExpression()), !dbg !1556
  %241 = icmp ult i64 %240, %130, !dbg !1731
  br i1 %241, label %242, label %244, !dbg !1734

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1731
  store i8 63, i8* %243, align 1, !dbg !1731, !tbaa !1590
  br label %244, !dbg !1731

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %245, metadata !1508, metadata !DIExpression()), !dbg !1556
  br label %463, !dbg !1735

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1522, metadata !DIExpression()), !dbg !1649
  br label %256, !dbg !1736

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1522, metadata !DIExpression()), !dbg !1649
  br label %256, !dbg !1737

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1522, metadata !DIExpression()), !dbg !1649
  br label %254, !dbg !1738

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1522, metadata !DIExpression()), !dbg !1649
  br label %254, !dbg !1739

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1522, metadata !DIExpression()), !dbg !1649
  br label %256, !dbg !1740

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1522, metadata !DIExpression()), !dbg !1649
  br i1 %110, label %252, label %253, !dbg !1741

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1742

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1745

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8 %255, metadata !1522, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1551), !dbg !1747
  br i1 %111, label %256, label %625, !dbg !1748

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8 %257, metadata !1522, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1552), !dbg !1750
  br i1 %102, label %488, label %463, !dbg !1751

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1752

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1753, !tbaa !1590
  %261 = icmp eq i8 %260, 0, !dbg !1754
  br i1 %261, label %262, label %463, !dbg !1755

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1756
  br i1 %263, label %264, label %463, !dbg !1758

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1525, metadata !DIExpression()), !dbg !1649
  br label %265, !dbg !1759

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1649
  call void @llvm.dbg.value(metadata i8 %266, metadata !1525, metadata !DIExpression()), !dbg !1649
  br i1 %111, label %463, label %625, !dbg !1760

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1525, metadata !DIExpression()), !dbg !1649
  br i1 %110, label %268, label %463, !dbg !1761

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1762

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1764
  %271 = icmp ne i64 %125, 0, !dbg !1766
  %272 = or i1 %271, %270, !dbg !1767
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1767
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %274, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %273, metadata !1509, metadata !DIExpression()), !dbg !1556
  %275 = icmp ult i64 %124, %274, !dbg !1768
  br i1 %275, label %276, label %278, !dbg !1771

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1768
  store i8 39, i8* %277, align 1, !dbg !1768, !tbaa !1590
  br label %278, !dbg !1768

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %279, metadata !1508, metadata !DIExpression()), !dbg !1556
  %280 = icmp ult i64 %279, %274, !dbg !1772
  br i1 %280, label %281, label %283, !dbg !1775

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1772
  store i8 92, i8* %282, align 1, !dbg !1772, !tbaa !1590
  br label %283, !dbg !1772

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %284, metadata !1508, metadata !DIExpression()), !dbg !1556
  %285 = icmp ult i64 %284, %274, !dbg !1776
  br i1 %285, label %286, label %288, !dbg !1779

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1776
  store i8 39, i8* %287, align 1, !dbg !1776, !tbaa !1590
  br label %288, !dbg !1776

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %289, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %463, !dbg !1780

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1781

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1526, metadata !DIExpression()), !dbg !1782
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1783
  %293 = load i16*, i16** %292, align 8, !dbg !1783, !tbaa !1124
  %294 = zext i8 %158 to i64, !dbg !1783
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1783
  %296 = load i16, i16* %295, align 2, !dbg !1783, !tbaa !1785
  %297 = lshr i16 %296, 14, !dbg !1787
  %298 = trunc i16 %297 to i8, !dbg !1787
  %299 = and i8 %298, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i8 %299, metadata !1529, metadata !DIExpression()), !dbg !1782
  br label %355, !dbg !1788

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1789
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1530, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8* %23, metadata !1791, metadata !DIExpression()) #12, !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1797, metadata !DIExpression()) #12, !dbg !1799
  call void @llvm.dbg.value(metadata i64 8, metadata !1798, metadata !DIExpression()) #12, !dbg !1799
  store i64 0, i64* %10, align 8, !dbg !1801
  call void @llvm.dbg.value(metadata i64 0, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 1, metadata !1529, metadata !DIExpression()), !dbg !1782
  %301 = icmp eq i64 %155, -1, !dbg !1802
  br i1 %301, label %302, label %304, !dbg !1804

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %303, metadata !1501, metadata !DIExpression()), !dbg !1556
  br label %304, !dbg !1806

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1649
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  br label %306, !dbg !1807

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1808
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1809
  call void @llvm.dbg.value(metadata i8 %308, metadata !1529, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1810
  %309 = add i64 %307, %123, !dbg !1811
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1812
  %311 = sub i64 %305, %309, !dbg !1813
  call void @llvm.dbg.value(metadata i32* %12, metadata !1536, metadata !DIExpression(DW_OP_deref)), !dbg !1569
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %312, metadata !1539, metadata !DIExpression()), !dbg !1569
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1815

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  %314 = icmp ugt i64 %305, %309, !dbg !1816
  br i1 %314, label %315, label %340, !dbg !1818

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1819
  br label %317, !dbg !1819

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1526, metadata !DIExpression()), !dbg !1782
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1820
  %321 = load i8, i8* %320, align 1, !dbg !1820, !tbaa !1590
  %322 = icmp eq i8 %321, 0, !dbg !1818
  br i1 %322, label %340, label %323, !dbg !1819

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %324, metadata !1526, metadata !DIExpression()), !dbg !1782
  %325 = add i64 %324, %123, !dbg !1822
  %326 = icmp ult i64 %325, %305, !dbg !1816
  br i1 %326, label %317, label %340, !dbg !1818, !llvm.loop !1823

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1824
  %329 = and i1 %113, %328, !dbg !1827
  call void @llvm.dbg.value(metadata i64 1, metadata !1540, metadata !DIExpression()), !dbg !1828
  br i1 %329, label %330, label %343, !dbg !1827

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1540, metadata !DIExpression()), !dbg !1828
  %332 = add i64 %331, %309, !dbg !1829
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1830
  %334 = load i8, i8* %333, align 1, !dbg !1830, !tbaa !1590
  %335 = sext i8 %334 to i32, !dbg !1830
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1831

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %337, metadata !1540, metadata !DIExpression()), !dbg !1828
  %338 = icmp eq i64 %337, %312, !dbg !1824
  br i1 %338, label %343, label %330, !dbg !1833, !llvm.loop !1834

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %308, metadata !1529, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %307, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %308, metadata !1529, metadata !DIExpression()), !dbg !1782
  br label %340, !dbg !1836

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1836
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1837, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %344, metadata !1536, metadata !DIExpression()), !dbg !1569
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !1839
  %346 = icmp eq i32 %345, 0, !dbg !1839
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1840
  call void @llvm.dbg.value(metadata i8 %347, metadata !1529, metadata !DIExpression()), !dbg !1782
  %348 = add i64 %312, %307, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %348, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 %347, metadata !1529, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %348, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1836
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1842
  %350 = icmp eq i32 %349, 0, !dbg !1843
  br i1 %350, label %306, label %351, !dbg !1844, !llvm.loop !1845

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1847
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i32 2, metadata !1502, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %99, metadata !1512, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %305, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1836
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1847
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1649
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1848
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1848
  call void @llvm.dbg.value(metadata i8 %358, metadata !1529, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %357, metadata !1526, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i64 %356, metadata !1501, metadata !DIExpression()), !dbg !1556
  %359 = and i8 %358, 1, !dbg !1849
  %360 = icmp ne i8 %359, 0, !dbg !1849
  call void @llvm.dbg.value(metadata i8 %359, metadata !1525, metadata !DIExpression()), !dbg !1649
  %361 = icmp ult i64 %357, 2, !dbg !1850
  %362 = or i1 %360, %114, !dbg !1851
  %363 = and i1 %361, %362, !dbg !1852
  br i1 %363, label %463, label %364, !dbg !1852

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %365, metadata !1547, metadata !DIExpression()), !dbg !1854
  br label %366, !dbg !1855

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1642
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1556
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1577
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1649
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1649
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %372, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %371, metadata !1523, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %370, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %369, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %368, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %367, metadata !1507, metadata !DIExpression()), !dbg !1556
  br i1 %362, label %419, label %373, !dbg !1857

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1862

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1524, metadata !DIExpression()), !dbg !1649
  %375 = and i8 %369, 1, !dbg !1865
  %376 = icmp eq i8 %375, 0, !dbg !1865
  %377 = and i1 %110, %376, !dbg !1865
  br i1 %377, label %378, label %394, !dbg !1865

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1867
  br i1 %379, label %380, label %382, !dbg !1871

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1867
  store i8 39, i8* %381, align 1, !dbg !1867, !tbaa !1590
  br label %382, !dbg !1867

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %383, metadata !1508, metadata !DIExpression()), !dbg !1556
  %384 = icmp ult i64 %383, %130, !dbg !1872
  br i1 %384, label %385, label %387, !dbg !1875

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1872
  store i8 36, i8* %386, align 1, !dbg !1872, !tbaa !1590
  br label %387, !dbg !1872

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %388, metadata !1508, metadata !DIExpression()), !dbg !1556
  %389 = icmp ult i64 %388, %130, !dbg !1876
  br i1 %389, label %390, label %392, !dbg !1879

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1876
  store i8 39, i8* %391, align 1, !dbg !1876, !tbaa !1590
  br label %392, !dbg !1876

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %393, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %394, !dbg !1880

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1556
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %396, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %395, metadata !1508, metadata !DIExpression()), !dbg !1556
  %397 = icmp ult i64 %395, %130, !dbg !1881
  br i1 %397, label %398, label %400, !dbg !1884

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1881
  store i8 92, i8* %399, align 1, !dbg !1881, !tbaa !1590
  br label %400, !dbg !1881

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %401, metadata !1508, metadata !DIExpression()), !dbg !1556
  %402 = icmp ult i64 %401, %130, !dbg !1885
  br i1 %402, label %403, label %407, !dbg !1888

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1885
  %405 = or i8 %404, 48, !dbg !1885
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1885
  store i8 %405, i8* %406, align 1, !dbg !1885, !tbaa !1590
  br label %407, !dbg !1885

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %408, metadata !1508, metadata !DIExpression()), !dbg !1556
  %409 = icmp ult i64 %408, %130, !dbg !1889
  br i1 %409, label %410, label %415, !dbg !1892

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1889
  %412 = and i8 %411, 7, !dbg !1889
  %413 = or i8 %412, 48, !dbg !1889
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1889
  store i8 %413, i8* %414, align 1, !dbg !1889, !tbaa !1590
  br label %415, !dbg !1889

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %416, metadata !1508, metadata !DIExpression()), !dbg !1556
  %417 = and i8 %370, 7, !dbg !1893
  %418 = or i8 %417, 48, !dbg !1894
  call void @llvm.dbg.value(metadata i8 %418, metadata !1518, metadata !DIExpression()), !dbg !1649
  br label %428, !dbg !1895

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1896
  %421 = icmp eq i8 %420, 0, !dbg !1896
  br i1 %421, label %428, label %422, !dbg !1898

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1899
  br i1 %423, label %424, label %426, !dbg !1903

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1899
  store i8 92, i8* %425, align 1, !dbg !1899, !tbaa !1590
  br label %426, !dbg !1899

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %427, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1649
  br label %428, !dbg !1904

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1556
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1577
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1649
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1649
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1649
  call void @llvm.dbg.value(metadata i8 %433, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %432, metadata !1523, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %431, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %430, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %429, metadata !1508, metadata !DIExpression()), !dbg !1556
  %434 = add i64 %367, 1, !dbg !1905
  %435 = icmp ugt i64 %365, %434, !dbg !1907
  br i1 %435, label %436, label %526, !dbg !1908

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1909
  %438 = icmp ne i8 %437, 0, !dbg !1909
  %439 = and i8 %433, 1, !dbg !1909
  %440 = icmp eq i8 %439, 0, !dbg !1909
  %441 = and i1 %438, %440, !dbg !1909
  br i1 %441, label %442, label %453, !dbg !1909

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1912
  br i1 %443, label %444, label %446, !dbg !1916

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1912
  store i8 39, i8* %445, align 1, !dbg !1912, !tbaa !1590
  br label %446, !dbg !1912

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %447, metadata !1508, metadata !DIExpression()), !dbg !1556
  %448 = icmp ult i64 %447, %130, !dbg !1917
  br i1 %448, label %449, label %451, !dbg !1920

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1917
  store i8 39, i8* %450, align 1, !dbg !1917, !tbaa !1590
  br label %451, !dbg !1917

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %452, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %453, !dbg !1921

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1922
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %455, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %454, metadata !1508, metadata !DIExpression()), !dbg !1556
  %456 = icmp ult i64 %454, %130, !dbg !1923
  br i1 %456, label %457, label %459, !dbg !1926

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1923
  store i8 %431, i8* %458, align 1, !dbg !1923, !tbaa !1590
  br label %459, !dbg !1923

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %460, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %434, metadata !1507, metadata !DIExpression()), !dbg !1556
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1927
  %462 = load i8, i8* %461, align 1, !dbg !1927, !tbaa !1590
  call void @llvm.dbg.value(metadata i8 %462, metadata !1518, metadata !DIExpression()), !dbg !1649
  br label %366, !dbg !1928, !llvm.loop !1929

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1642
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1556
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1573
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1932
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1556
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1556
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1649
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1649
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1649
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %472, metadata !1525, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %471, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %156, metadata !1523, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %470, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %469, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %468, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %467, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %466, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %465, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %464, metadata !1507, metadata !DIExpression()), !dbg !1556
  br i1 %117, label %486, label %474, !dbg !1933

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1934
  %476 = zext i8 %475 to i64, !dbg !1934
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1935
  %478 = load i32, i32* %477, align 4, !dbg !1935, !tbaa !1180
  %479 = and i8 %470, 31, !dbg !1936
  %480 = zext i8 %479 to i32, !dbg !1936
  %481 = shl nuw i32 1, %480, !dbg !1937
  %482 = and i32 %478, %481, !dbg !1937
  %483 = icmp eq i32 %482, 0, !dbg !1937
  %484 = icmp eq i8 %156, 0, !dbg !1938
  %485 = and i1 %484, %483, !dbg !1939
  br i1 %485, label %526, label %488, !dbg !1939

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1938
  br i1 %487, label %526, label %488, !dbg !1940

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1941
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1556
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1573
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1932
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1577
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1578
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1649
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1649
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %496, metadata !1525, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %495, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %494, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %493, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %492, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %491, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %490, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %489, metadata !1507, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1553), !dbg !1942
  br i1 %109, label %498, label %629, !dbg !1943

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1524, metadata !DIExpression()), !dbg !1649
  %499 = and i8 %493, 1, !dbg !1945
  %500 = icmp eq i8 %499, 0, !dbg !1945
  %501 = and i1 %110, %500, !dbg !1945
  br i1 %501, label %502, label %518, !dbg !1945

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1947
  br i1 %503, label %504, label %506, !dbg !1951

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1947
  store i8 39, i8* %505, align 1, !dbg !1947, !tbaa !1590
  br label %506, !dbg !1947

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %507, metadata !1508, metadata !DIExpression()), !dbg !1556
  %508 = icmp ult i64 %507, %497, !dbg !1952
  br i1 %508, label %509, label %511, !dbg !1955

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1952
  store i8 36, i8* %510, align 1, !dbg !1952, !tbaa !1590
  br label %511, !dbg !1952

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %512, metadata !1508, metadata !DIExpression()), !dbg !1556
  %513 = icmp ult i64 %512, %497, !dbg !1956
  br i1 %513, label %514, label %516, !dbg !1959

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1956
  store i8 39, i8* %515, align 1, !dbg !1956, !tbaa !1590
  br label %516, !dbg !1956

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %517, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 1, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %518, !dbg !1960

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1649
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %520, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %519, metadata !1508, metadata !DIExpression()), !dbg !1556
  %521 = icmp ult i64 %519, %497, !dbg !1961
  br i1 %521, label %522, label %524, !dbg !1964

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1961
  store i8 92, i8* %523, align 1, !dbg !1961, !tbaa !1590
  br label %524, !dbg !1961

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %525, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %536, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %535, metadata !1525, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %534, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %533, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %532, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %531, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %530, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %529, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %528, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %527, metadata !1507, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1554), !dbg !1965
  br label %553, !dbg !1966

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1941
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1556
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1573
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1932
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1577
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1578
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1969
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1649
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1649
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %535, metadata !1525, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %534, metadata !1524, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %533, metadata !1518, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 %532, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %531, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %530, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %529, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %528, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %527, metadata !1507, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1554), !dbg !1965
  %537 = and i8 %531, 1, !dbg !1966
  %538 = icmp ne i8 %537, 0, !dbg !1966
  %539 = and i8 %534, 1, !dbg !1966
  %540 = icmp eq i8 %539, 0, !dbg !1966
  %541 = and i1 %538, %540, !dbg !1966
  br i1 %541, label %542, label %553, !dbg !1966

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1970
  br i1 %543, label %544, label %546, !dbg !1974

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1970
  store i8 39, i8* %545, align 1, !dbg !1970, !tbaa !1590
  br label %546, !dbg !1970

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %547, metadata !1508, metadata !DIExpression()), !dbg !1556
  %548 = icmp ult i64 %547, %536, !dbg !1975
  br i1 %548, label %549, label %551, !dbg !1978

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1975
  store i8 39, i8* %550, align 1, !dbg !1975, !tbaa !1590
  br label %551, !dbg !1975

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %552, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 0, metadata !1515, metadata !DIExpression()), !dbg !1556
  br label %553, !dbg !1979

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1649
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %562, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %561, metadata !1508, metadata !DIExpression()), !dbg !1556
  %563 = icmp ult i64 %561, %554, !dbg !1980
  br i1 %563, label %564, label %566, !dbg !1983

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1980
  store i8 %556, i8* %565, align 1, !dbg !1980, !tbaa !1590
  br label %566, !dbg !1980

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %567, metadata !1508, metadata !DIExpression()), !dbg !1556
  %568 = and i8 %555, 1, !dbg !1984
  %569 = icmp eq i8 %568, 0, !dbg !1984
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1986
  call void @llvm.dbg.value(metadata i8 %570, metadata !1517, metadata !DIExpression()), !dbg !1556
  br label %571, !dbg !1987

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1941
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1556
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1573
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1932
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1577
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1556
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1579
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %578, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %577, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %576, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %575, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %574, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %573, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %572, metadata !1507, metadata !DIExpression()), !dbg !1556
  %580 = add i64 %572, 1, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %580, metadata !1507, metadata !DIExpression()), !dbg !1556
  br label %122, !dbg !1989, !llvm.loop !1990

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %127, metadata !1515, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %128, metadata !1516, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8 %129, metadata !1517, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  %583 = icmp eq i64 %124, 0, !dbg !1992
  %584 = and i1 %110, %583, !dbg !1994
  %585 = xor i1 %584, true, !dbg !1994
  %586 = or i1 %109, %585, !dbg !1994
  br i1 %586, label %587, label %629, !dbg !1994

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !1995
  %589 = xor i1 %588, true, !dbg !1995
  %590 = and i8 %128, 1, !dbg !1997
  %591 = icmp eq i8 %590, 0, !dbg !1997
  %592 = or i1 %591, %589, !dbg !1995
  br i1 %592, label %602, label %593, !dbg !1995

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !1998
  %595 = icmp eq i8 %594, 0, !dbg !1998
  br i1 %595, label %598, label %596, !dbg !2001

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %94, metadata !1505, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %95, metadata !1506, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %125, metadata !1509, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %582, metadata !1501, metadata !DIExpression()), !dbg !1556
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2002
  br label %645, !dbg !2003

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2004
  %600 = icmp ne i64 %125, 0, !dbg !2006
  %601 = and i1 %600, %599, !dbg !2007
  br i1 %601, label %26, label %602, !dbg !2007

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %130, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  %603 = icmp ne i8* %97, null, !dbg !2008
  %604 = and i1 %603, %109, !dbg !2010
  br i1 %604, label %605, label %620, !dbg !2010

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %124, metadata !1508, metadata !DIExpression()), !dbg !1556
  %606 = load i8, i8* %97, align 1, !dbg !2011, !tbaa !1590
  %607 = icmp eq i8 %606, 0, !dbg !2014
  br i1 %607, label %620, label %608, !dbg !2014

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1510, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %611, metadata !1508, metadata !DIExpression()), !dbg !1556
  %612 = icmp ult i64 %611, %130, !dbg !2015
  br i1 %612, label %613, label %615, !dbg !2018

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2015
  store i8 %609, i8* %614, align 1, !dbg !2015, !tbaa !1590
  br label %615, !dbg !2015

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %616, metadata !1508, metadata !DIExpression()), !dbg !1556
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2019
  call void @llvm.dbg.value(metadata i8* %617, metadata !1510, metadata !DIExpression()), !dbg !1556
  %618 = load i8, i8* %617, align 1, !dbg !2011, !tbaa !1590
  %619 = icmp eq i8 %618, 0, !dbg !2014
  br i1 %619, label %620, label %608, !dbg !2014, !llvm.loop !2020

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1611
  call void @llvm.dbg.value(metadata i64 %621, metadata !1508, metadata !DIExpression()), !dbg !1556
  %622 = icmp ult i64 %621, %130, !dbg !2022
  br i1 %622, label %623, label %645, !dbg !2024

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2025
  store i8 0, i8* %624, align 1, !dbg !2026, !tbaa !1590
  br label %645, !dbg !2025

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %630, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1555), !dbg !2027
  %627 = icmp eq i8 %101, 0, !dbg !2028
  %628 = select i1 %627, i32 2, i32 4, !dbg !2028
  br label %635, !dbg !2028

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1499, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.value(metadata i64 %630, metadata !1501, metadata !DIExpression()), !dbg !1556
  call void @llvm.dbg.label(metadata !1555), !dbg !2027
  %632 = icmp eq i32 %93, 2, !dbg !2030
  %633 = icmp eq i8 %101, 0, !dbg !2028
  %634 = select i1 %633, i32 2, i32 4, !dbg !2028
  br i1 %632, label %635, label %639, !dbg !2028

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2028

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1502, metadata !DIExpression()), !dbg !1556
  %643 = and i32 %5, -3, !dbg !2031
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2032
  br label %645, !dbg !2033

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2034
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2035 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2039, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %1, metadata !2040, metadata !DIExpression()), !dbg !2043
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2044
  call void @llvm.dbg.value(metadata i8* %3, metadata !2041, metadata !DIExpression()), !dbg !2043
  %4 = icmp eq i8* %3, %0, !dbg !2045
  br i1 %4, label %5, label %71, !dbg !2047

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2048
  call void @llvm.dbg.value(metadata i8* %6, metadata !2042, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %6, metadata !2049, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8* undef, metadata !2055, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 85, metadata !2056, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 84, metadata !2057, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 70, metadata !2058, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 45, metadata !2059, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 56, metadata !2060, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2061, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i8 0, metadata !2064, metadata !DIExpression()), !dbg !2065
  %7 = load i8, i8* %6, align 1, !dbg !2068, !tbaa !1590
  %8 = and i8 %7, -33, !dbg !2068
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2068

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* undef, metadata !2075, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 84, metadata !2076, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 70, metadata !2077, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 45, metadata !2078, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 56, metadata !2079, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2080, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2081, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2084
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2088
  %11 = load i8, i8* %10, align 1, !dbg !2088, !tbaa !1590
  %12 = and i8 %11, -33, !dbg !2088
  %13 = icmp eq i8 %12, 84, !dbg !2088
  br i1 %13, label %14, label %68, !dbg !2088

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2090, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* undef, metadata !2095, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 70, metadata !2096, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 45, metadata !2097, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 56, metadata !2098, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2099, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2103
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2107
  %16 = load i8, i8* %15, align 1, !dbg !2107, !tbaa !1590
  %17 = and i8 %16, -33, !dbg !2107
  %18 = icmp eq i8 %17, 70, !dbg !2107
  br i1 %18, label %19, label %68, !dbg !2107

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2109, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8* undef, metadata !2114, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 45, metadata !2115, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 56, metadata !2116, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2117, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2119, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2125
  %21 = load i8, i8* %20, align 1, !dbg !2125, !tbaa !1590
  %22 = icmp eq i8 %21, 45, !dbg !2125
  br i1 %22, label %23, label %68, !dbg !2127

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2128, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* undef, metadata !2133, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 56, metadata !2134, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 0, metadata !2138, metadata !DIExpression()), !dbg !2139
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2143
  %25 = load i8, i8* %24, align 1, !dbg !2143, !tbaa !1590
  %26 = icmp eq i8 %25, 56, !dbg !2143
  br i1 %26, label %27, label %68, !dbg !2145

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2146, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8* undef, metadata !2151, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2156
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2160
  %29 = load i8, i8* %28, align 1, !dbg !2160, !tbaa !1590
  %30 = icmp eq i8 %29, 0, !dbg !2160
  br i1 %30, label %31, label %68, !dbg !2162

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2163, !tbaa !1590
  %33 = icmp eq i8 %32, 96, !dbg !2164
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.64, i64 0, i64 0), !dbg !2163
  br label %71, !dbg !2165

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8* undef, metadata !2075, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 66, metadata !2076, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 49, metadata !2077, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 56, metadata !2078, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2079, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 51, metadata !2080, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 48, metadata !2081, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2082, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2166
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2170
  %37 = load i8, i8* %36, align 1, !dbg !2170, !tbaa !1590
  %38 = and i8 %37, -33, !dbg !2170
  %39 = icmp eq i8 %38, 66, !dbg !2170
  br i1 %39, label %40, label %68, !dbg !2170

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2090, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8* undef, metadata !2095, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 49, metadata !2096, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 56, metadata !2097, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 48, metadata !2098, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 51, metadata !2099, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 48, metadata !2100, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2171
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2173
  %42 = load i8, i8* %41, align 1, !dbg !2173, !tbaa !1590
  %43 = icmp eq i8 %42, 49, !dbg !2173
  br i1 %43, label %44, label %68, !dbg !2174

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2109, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8* undef, metadata !2114, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 56, metadata !2115, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 48, metadata !2116, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 51, metadata !2117, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 48, metadata !2118, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 0, metadata !2119, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2175
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2177
  %46 = load i8, i8* %45, align 1, !dbg !2177, !tbaa !1590
  %47 = icmp eq i8 %46, 56, !dbg !2177
  br i1 %47, label %48, label %68, !dbg !2178

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2128, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* undef, metadata !2133, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 48, metadata !2134, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 51, metadata !2135, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 48, metadata !2136, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2137, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2138, metadata !DIExpression()), !dbg !2179
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2181
  %50 = load i8, i8* %49, align 1, !dbg !2181, !tbaa !1590
  %51 = icmp eq i8 %50, 48, !dbg !2181
  br i1 %51, label %52, label %68, !dbg !2182

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2146, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* undef, metadata !2151, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 51, metadata !2152, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 48, metadata !2153, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2154, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2183
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2185
  %54 = load i8, i8* %53, align 1, !dbg !2185, !tbaa !1590
  %55 = icmp eq i8 %54, 51, !dbg !2185
  br i1 %55, label %56, label %68, !dbg !2186

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2187, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* undef, metadata !2192, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 48, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2196
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2200
  %58 = load i8, i8* %57, align 1, !dbg !2200, !tbaa !1590
  %59 = icmp eq i8 %58, 48, !dbg !2200
  br i1 %59, label %60, label %68, !dbg !2202

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2203, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* undef, metadata !2208, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8 0, metadata !2210, metadata !DIExpression()), !dbg !2211
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2215
  %62 = load i8, i8* %61, align 1, !dbg !2215, !tbaa !1590
  %63 = icmp eq i8 %62, 0, !dbg !2215
  br i1 %63, label %64, label %68, !dbg !2217

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2218, !tbaa !1590
  %66 = icmp eq i8 %65, 96, !dbg !2219
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.66, i64 0, i64 0), !dbg !2218
  br label %71, !dbg !2220

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2221
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), !dbg !2222
  br label %71, !dbg !2223

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2043
  ret i8* %72, !dbg !2224
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
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i64 %1, metadata !2230, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2231, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* %0, metadata !2233, metadata !DIExpression()) #12, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %1, metadata !2238, metadata !DIExpression()) #12, !dbg !2246
  call void @llvm.dbg.value(metadata i64* null, metadata !2239, metadata !DIExpression()) #12, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2240, metadata !DIExpression()) #12, !dbg !2246
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2248
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2241, metadata !DIExpression()) #12, !dbg !2246
  %6 = tail call i32* @__errno_location() #24, !dbg !2249
  %7 = load i32, i32* %6, align 4, !dbg !2249, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %7, metadata !2242, metadata !DIExpression()) #12, !dbg !2246
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2250
  %9 = load i32, i32* %8, align 4, !dbg !2250, !tbaa !1441
  %10 = or i32 %9, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %10, metadata !2243, metadata !DIExpression()) #12, !dbg !2246
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2252
  %12 = load i32, i32* %11, align 8, !dbg !2252, !tbaa !1389
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2253
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2254
  %15 = load i8*, i8** %14, align 8, !dbg !2254, !tbaa !1464
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2255
  %17 = load i8*, i8** %16, align 8, !dbg !2255, !tbaa !1467
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2256
  %19 = add i64 %18, 1, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %19, metadata !2244, metadata !DIExpression()) #12, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %19, metadata !2258, metadata !DIExpression()) #12, !dbg !2263
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %20, metadata !2245, metadata !DIExpression()) #12, !dbg !2246
  %21 = load i32, i32* %11, align 8, !dbg !2266, !tbaa !1389
  %22 = load i8*, i8** %14, align 8, !dbg !2267, !tbaa !1464
  %23 = load i8*, i8** %16, align 8, !dbg !2268, !tbaa !1467
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2269
  store i32 %7, i32* %6, align 4, !dbg !2270, !tbaa !1180
  ret i8* %20, !dbg !2271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2234 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2233, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %1, metadata !2238, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64* %2, metadata !2239, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2240, metadata !DIExpression()), !dbg !2272
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2273
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2273
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2241, metadata !DIExpression()), !dbg !2272
  %7 = tail call i32* @__errno_location() #24, !dbg !2274
  %8 = load i32, i32* %7, align 4, !dbg !2274, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %8, metadata !2242, metadata !DIExpression()), !dbg !2272
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2275
  %10 = load i32, i32* %9, align 4, !dbg !2275, !tbaa !1441
  %11 = icmp ne i64* %2, null, !dbg !2276
  %12 = xor i1 %11, true, !dbg !2276
  %13 = zext i1 %12 to i32, !dbg !2276
  %14 = or i32 %10, %13, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %14, metadata !2243, metadata !DIExpression()), !dbg !2272
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2278
  %16 = load i32, i32* %15, align 8, !dbg !2278, !tbaa !1389
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2279
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2280
  %19 = load i8*, i8** %18, align 8, !dbg !2280, !tbaa !1464
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2281
  %21 = load i8*, i8** %20, align 8, !dbg !2281, !tbaa !1467
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2282
  %23 = add i64 %22, 1, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %23, metadata !2244, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %23, metadata !2258, metadata !DIExpression()) #12, !dbg !2284
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %24, metadata !2245, metadata !DIExpression()), !dbg !2272
  %25 = load i32, i32* %15, align 8, !dbg !2287, !tbaa !1389
  %26 = load i8*, i8** %18, align 8, !dbg !2288, !tbaa !1464
  %27 = load i8*, i8** %20, align 8, !dbg !2289, !tbaa !1467
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2290
  store i32 %8, i32* %7, align 4, !dbg !2291, !tbaa !1180
  br i1 %11, label %29, label %30, !dbg !2292

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2293, !tbaa !2295
  br label %30, !dbg !2297

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2299 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2303, !tbaa !1124
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 1, metadata !2302, metadata !DIExpression()), !dbg !2304
  %2 = load i32, i32* @nslots, align 4, !dbg !2305, !tbaa !1180
  %3 = icmp sgt i32 %2, 1, !dbg !2308
  br i1 %3, label %4, label %12, !dbg !2309

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2302, metadata !DIExpression()), !dbg !2304
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2310
  %7 = load i8*, i8** %6, align 8, !dbg !2310, !tbaa !2311
  tail call void @free(i8* %7) #12, !dbg !2313
  %8 = add nuw nsw i64 %5, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %8, metadata !2302, metadata !DIExpression()), !dbg !2304
  %9 = load i32, i32* @nslots, align 4, !dbg !2305, !tbaa !1180
  %10 = sext i32 %9 to i64, !dbg !2308
  %11 = icmp slt i64 %8, %10, !dbg !2308
  br i1 %11, label %4, label %12, !dbg !2309, !llvm.loop !2315

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2317
  %14 = load i8*, i8** %13, align 8, !dbg !2317, !tbaa !2311
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2319
  br i1 %15, label %17, label %16, !dbg !2320

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2321
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2323, !tbaa !2324
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2325, !tbaa !2311
  br label %17, !dbg !2326

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2327
  br i1 %18, label %21, label %19, !dbg !2329

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2330
  tail call void @free(i8* %20) #12, !dbg !2332
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2333, !tbaa !1124
  br label %21, !dbg !2334

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2335, !tbaa !1180
  ret void, !dbg !2336
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2342
  ret i8* %3, !dbg !2343
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2344 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i8* %1, metadata !2349, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %2, metadata !2350, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2351, metadata !DIExpression()), !dbg !2363
  %5 = tail call i32* @__errno_location() #24, !dbg !2364
  %6 = load i32, i32* %5, align 4, !dbg !2364, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %6, metadata !2352, metadata !DIExpression()), !dbg !2363
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2365, !tbaa !1124
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2353, metadata !DIExpression()), !dbg !2363
  %8 = icmp slt i32 %0, 0, !dbg !2366
  br i1 %8, label %9, label %10, !dbg !2368

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2369
  unreachable, !dbg !2369

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2370, !tbaa !1180
  %12 = icmp sgt i32 %11, %0, !dbg !2371
  br i1 %12, label %34, label %13, !dbg !2372

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2373
  call void @llvm.dbg.value(metadata i1 %14, metadata !2354, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2357, metadata !DIExpression()), !dbg !2374
  %15 = icmp eq i32 %0, 2147483647, !dbg !2375
  br i1 %15, label %16, label %17, !dbg !2377

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2378
  unreachable, !dbg !2378

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2379
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2379
  %20 = add nuw nsw i32 %0, 1, !dbg !2380
  %21 = sext i32 %20 to i64, !dbg !2381
  %22 = shl nuw nsw i64 %21, 4, !dbg !2382
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2383
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2383
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2353, metadata !DIExpression()), !dbg !2363
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2384, !tbaa !1124
  br i1 %14, label %25, label %26, !dbg !2385

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2386, !tbaa.struct !2388
  br label %26, !dbg !2389

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2390, !tbaa !1180
  %28 = sext i32 %27 to i64, !dbg !2391
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2391
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2392
  %31 = sub nsw i32 %20, %27, !dbg !2393
  %32 = sext i32 %31 to i64, !dbg !2394
  %33 = shl nsw i64 %32, 4, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %30, metadata !1791, metadata !DIExpression()) #12, !dbg !2396
  call void @llvm.dbg.value(metadata i32 0, metadata !1797, metadata !DIExpression()) #12, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %33, metadata !1798, metadata !DIExpression()) #12, !dbg !2396
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2398
  store i32 %20, i32* @nslots, align 4, !dbg !2399, !tbaa !1180
  br label %34, !dbg !2400

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2363
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2353, metadata !DIExpression()), !dbg !2363
  %36 = zext i32 %0 to i64, !dbg !2401
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2402
  %38 = load i64, i64* %37, align 8, !dbg !2402, !tbaa !2324
  call void @llvm.dbg.value(metadata i64 %38, metadata !2358, metadata !DIExpression()), !dbg !2403
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2404
  %40 = load i8*, i8** %39, align 8, !dbg !2404, !tbaa !2311
  call void @llvm.dbg.value(metadata i8* %40, metadata !2360, metadata !DIExpression()), !dbg !2403
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2405
  %42 = load i32, i32* %41, align 4, !dbg !2405, !tbaa !1441
  %43 = or i32 %42, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %43, metadata !2361, metadata !DIExpression()), !dbg !2403
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2407
  %45 = load i32, i32* %44, align 8, !dbg !2407, !tbaa !1389
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2408
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2409
  %48 = load i8*, i8** %47, align 8, !dbg !2409, !tbaa !1464
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2410
  %50 = load i8*, i8** %49, align 8, !dbg !2410, !tbaa !1467
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2411
  call void @llvm.dbg.value(metadata i64 %51, metadata !2362, metadata !DIExpression()), !dbg !2403
  %52 = icmp ugt i64 %38, %51, !dbg !2412
  br i1 %52, label %63, label %53, !dbg !2414

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2415
  call void @llvm.dbg.value(metadata i64 %54, metadata !2358, metadata !DIExpression()), !dbg !2403
  store i64 %54, i64* %37, align 8, !dbg !2417, !tbaa !2324
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2418
  br i1 %55, label %57, label %56, !dbg !2420

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2421
  br label %57, !dbg !2421

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2258, metadata !DIExpression()) #12, !dbg !2422
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %58, metadata !2360, metadata !DIExpression()), !dbg !2403
  store i8* %58, i8** %39, align 8, !dbg !2425, !tbaa !2311
  %59 = load i32, i32* %44, align 8, !dbg !2426, !tbaa !1389
  %60 = load i8*, i8** %47, align 8, !dbg !2427, !tbaa !1464
  %61 = load i8*, i8** %49, align 8, !dbg !2428, !tbaa !1467
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2429
  br label %63, !dbg !2430

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8* %64, metadata !2360, metadata !DIExpression()), !dbg !2403
  store i32 %6, i32* %5, align 4, !dbg !2431, !tbaa !1180
  ret i8* %64, !dbg !2432
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* %1, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %2, metadata !2439, metadata !DIExpression()), !dbg !2440
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2441
  ret i8* %4, !dbg !2442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2339, metadata !DIExpression()) #12, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %0, metadata !2340, metadata !DIExpression()) #12, !dbg !2447
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2449
  ret i8* %2, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %1, metadata !2456, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2437, metadata !DIExpression()) #12, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %0, metadata !2438, metadata !DIExpression()) #12, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %1, metadata !2439, metadata !DIExpression()) #12, !dbg !2458
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2460
  ret i8* %3, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2462 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %1, metadata !2467, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %2, metadata !2468, metadata !DIExpression()), !dbg !2470
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2471
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2471
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()) #12, !dbg !2479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression()) #12, !dbg !2481
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2481, !alias.scope !2482
  %6 = icmp eq i32 %1, 10, !dbg !2485
  br i1 %6, label %7, label %8, !dbg !2487

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2488, !noalias !2482
  unreachable, !dbg !2488

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2489
  store i32 %1, i32* %9, align 8, !dbg !2490, !tbaa !1389, !alias.scope !2482
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2492
  ret i8* %10, !dbg !2493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2494 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2498, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %1, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %2, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %3, metadata !2501, metadata !DIExpression()), !dbg !2503
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2504
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2504
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()) #12, !dbg !2506
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2478, metadata !DIExpression()) #12, !dbg !2508
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2508, !alias.scope !2509
  %7 = icmp eq i32 %1, 10, !dbg !2512
  br i1 %7, label %8, label %9, !dbg !2513

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2514, !noalias !2509
  unreachable, !dbg !2514

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2515
  store i32 %1, i32* %10, align 8, !dbg !2516, !tbaa !1389, !alias.scope !2509
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2517
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2518
  ret i8* %11, !dbg !2519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2520 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2478, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2469, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2523, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2466, metadata !DIExpression()) #12, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()) #12, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %1, metadata !2468, metadata !DIExpression()) #12, !dbg !2529
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2530
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()) #12, !dbg !2531
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2524, !alias.scope !2532
  %5 = icmp eq i32 %0, 10, !dbg !2535
  br i1 %5, label %6, label %7, !dbg !2536

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2537, !noalias !2532
  unreachable, !dbg !2537

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2538
  store i32 %0, i32* %8, align 8, !dbg !2539, !tbaa !1389, !alias.scope !2532
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2541
  ret i8* %9, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2543 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2502, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %0, metadata !2547, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %2, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()) #12, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()) #12, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()) #12, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %2, metadata !2501, metadata !DIExpression()) #12, !dbg !2555
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2556
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()) #12, !dbg !2557
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2550, !alias.scope !2558
  %6 = icmp eq i32 %0, 10, !dbg !2561
  br i1 %6, label %7, label %8, !dbg !2562

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2563, !noalias !2558
  unreachable, !dbg !2563

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2564
  store i32 %0, i32* %9, align 8, !dbg !2565, !tbaa !1389, !alias.scope !2558
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2566
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2567
  ret i8* %10, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2569 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %2, metadata !2575, metadata !DIExpression()), !dbg !2577
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2578
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2576, metadata !DIExpression()), !dbg !2579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2580, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1407, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %2, metadata !1408, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 %2, metadata !1410, metadata !DIExpression()), !dbg !2582
  %6 = lshr i8 %2, 5, !dbg !2584
  %7 = zext i8 %6 to i64, !dbg !2584
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2585
  call void @llvm.dbg.value(metadata i32* %8, metadata !1412, metadata !DIExpression()), !dbg !2582
  %9 = and i8 %2, 31, !dbg !2586
  %10 = zext i8 %9 to i32, !dbg !2586
  call void @llvm.dbg.value(metadata i32 %10, metadata !1414, metadata !DIExpression()), !dbg !2582
  %11 = load i32, i32* %8, align 4, !dbg !2587, !tbaa !1180
  %12 = lshr i32 %11, %10, !dbg !2588
  %13 = and i32 %12, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %13, metadata !1415, metadata !DIExpression()), !dbg !2582
  %14 = xor i32 %13, 1, !dbg !2590
  %15 = shl i32 %14, %10, !dbg !2591
  %16 = xor i32 %15, %11, !dbg !2592
  store i32 %16, i32* %8, align 4, !dbg !2592, !tbaa !1180
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2593
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2594
  ret i8* %17, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2596 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %0, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 %1, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #12, !dbg !2605
  call void @llvm.dbg.value(metadata i64 -1, metadata !2574, metadata !DIExpression()) #12, !dbg !2605
  call void @llvm.dbg.value(metadata i8 %1, metadata !2575, metadata !DIExpression()) #12, !dbg !2605
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2606
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2607, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1407, metadata !DIExpression()) #12, !dbg !2608
  call void @llvm.dbg.value(metadata i8 %1, metadata !1408, metadata !DIExpression()) #12, !dbg !2608
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()) #12, !dbg !2608
  call void @llvm.dbg.value(metadata i8 %1, metadata !1410, metadata !DIExpression()) #12, !dbg !2608
  %5 = lshr i8 %1, 5, !dbg !2610
  %6 = zext i8 %5 to i64, !dbg !2610
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2611
  call void @llvm.dbg.value(metadata i32* %7, metadata !1412, metadata !DIExpression()) #12, !dbg !2608
  %8 = and i8 %1, 31, !dbg !2612
  %9 = zext i8 %8 to i32, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %9, metadata !1414, metadata !DIExpression()) #12, !dbg !2608
  %10 = load i32, i32* %7, align 4, !dbg !2613, !tbaa !1180
  %11 = lshr i32 %10, %9, !dbg !2614
  %12 = and i32 %11, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %12, metadata !1415, metadata !DIExpression()) #12, !dbg !2608
  %13 = xor i32 %12, 1, !dbg !2616
  %14 = shl i32 %13, %9, !dbg !2617
  %15 = xor i32 %14, %10, !dbg !2618
  store i32 %15, i32* %7, align 4, !dbg !2618, !tbaa !1180
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2619
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2620
  ret i8* %16, !dbg !2621
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2622 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2576, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8* %0, metadata !2600, metadata !DIExpression()) #12, !dbg !2629
  call void @llvm.dbg.value(metadata i8 58, metadata !2601, metadata !DIExpression()) #12, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #12, !dbg !2630
  call void @llvm.dbg.value(metadata i64 -1, metadata !2574, metadata !DIExpression()) #12, !dbg !2630
  call void @llvm.dbg.value(metadata i8 58, metadata !2575, metadata !DIExpression()) #12, !dbg !2630
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2631
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2632, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1407, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1408, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1410, metadata !DIExpression()) #12, !dbg !2633
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2635
  call void @llvm.dbg.value(metadata i32* %4, metadata !1412, metadata !DIExpression()) #12, !dbg !2633
  call void @llvm.dbg.value(metadata i32 26, metadata !1414, metadata !DIExpression()) #12, !dbg !2633
  %5 = load i32, i32* %4, align 4, !dbg !2636, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %5, metadata !1415, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2633
  %6 = or i32 %5, 67108864, !dbg !2637
  store i32 %6, i32* %4, align 4, !dbg !2637, !tbaa !1180
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2638
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2639
  ret i8* %7, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2641 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8* %0, metadata !2643, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8* %0, metadata !2573, metadata !DIExpression()) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()) #12, !dbg !2648
  call void @llvm.dbg.value(metadata i8 58, metadata !2575, metadata !DIExpression()) #12, !dbg !2648
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2650, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1407, metadata !DIExpression()) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i8 58, metadata !1408, metadata !DIExpression()) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i8 58, metadata !1410, metadata !DIExpression()) #12, !dbg !2651
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2653
  call void @llvm.dbg.value(metadata i32* %5, metadata !1412, metadata !DIExpression()) #12, !dbg !2651
  call void @llvm.dbg.value(metadata i32 26, metadata !1414, metadata !DIExpression()) #12, !dbg !2651
  %6 = load i32, i32* %5, align 4, !dbg !2654, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %6, metadata !1415, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2651
  %7 = or i32 %6, 67108864, !dbg !2655
  store i32 %7, i32* %5, align 4, !dbg !2655, !tbaa !1180
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2657
  ret i8* %8, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2659 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2665
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %1, metadata !2662, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %2, metadata !2663, metadata !DIExpression()), !dbg !2667
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2668
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2668
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2664, metadata !DIExpression()), !dbg !2669
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2670
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()) #12, !dbg !2671
  call void @llvm.dbg.value(metadata i32 0, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2671
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2665, !alias.scope !2672
  %8 = icmp eq i32 %1, 10, !dbg !2675
  br i1 %8, label %9, label %10, !dbg !2676

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2677, !noalias !2672
  unreachable, !dbg !2677

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2478, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2671
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2670
  store i32 %1, i32* %11, align 8, !dbg !2670, !tbaa.struct !2581
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2670
  %13 = bitcast i32* %12 to i8*, !dbg !2670
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2670, !tbaa.struct !2581
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1407, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 58, metadata !1408, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 1, metadata !1409, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 58, metadata !1410, metadata !DIExpression()), !dbg !2678
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2680
  call void @llvm.dbg.value(metadata i32* %14, metadata !1412, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 26, metadata !1414, metadata !DIExpression()), !dbg !2678
  %15 = load i32, i32* %14, align 4, !dbg !2681, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %15, metadata !1415, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2678
  %16 = or i32 %15, 67108864, !dbg !2682
  store i32 %16, i32* %14, align 4, !dbg !2682, !tbaa !1180
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2683
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2684
  ret i8* %17, !dbg !2685
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2686 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2694, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %1, metadata !2691, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %2, metadata !2692, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %3, metadata !2693, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %0, metadata !2699, metadata !DIExpression()) #12, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2700, metadata !DIExpression()) #12, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %2, metadata !2701, metadata !DIExpression()) #12, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %3, metadata !2702, metadata !DIExpression()) #12, !dbg !2707
  call void @llvm.dbg.value(metadata i64 -1, metadata !2703, metadata !DIExpression()) #12, !dbg !2707
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2708
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2709, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1448, metadata !DIExpression()) #12, !dbg !2710
  call void @llvm.dbg.value(metadata i8* %1, metadata !1449, metadata !DIExpression()) #12, !dbg !2710
  call void @llvm.dbg.value(metadata i8* %2, metadata !1450, metadata !DIExpression()) #12, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1448, metadata !DIExpression()) #12, !dbg !2710
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2712
  store i32 10, i32* %7, align 8, !dbg !2713, !tbaa !1389
  %8 = icmp ne i8* %1, null, !dbg !2714
  %9 = icmp ne i8* %2, null, !dbg !2715
  %10 = and i1 %8, %9, !dbg !2716
  br i1 %10, label %12, label %11, !dbg !2716

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2717
  unreachable, !dbg !2717

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2718
  store i8* %1, i8** %13, align 8, !dbg !2719, !tbaa !1464
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2720
  store i8* %2, i8** %14, align 8, !dbg !2721, !tbaa !1467
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2722
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2723
  ret i8* %15, !dbg !2724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2695 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2699, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %1, metadata !2700, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %2, metadata !2701, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %3, metadata !2702, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %4, metadata !2703, metadata !DIExpression()), !dbg !2725
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2726
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2726
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2694, metadata !DIExpression()), !dbg !2727
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2728, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1448, metadata !DIExpression()) #12, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %1, metadata !1449, metadata !DIExpression()) #12, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %2, metadata !1450, metadata !DIExpression()) #12, !dbg !2729
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1448, metadata !DIExpression()) #12, !dbg !2729
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2731
  store i32 10, i32* %8, align 8, !dbg !2732, !tbaa !1389
  %9 = icmp ne i8* %1, null, !dbg !2733
  %10 = icmp ne i8* %2, null, !dbg !2734
  %11 = and i1 %9, %10, !dbg !2735
  br i1 %11, label %13, label %12, !dbg !2735

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2736
  unreachable, !dbg !2736

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2737
  store i8* %1, i8** %14, align 8, !dbg !2738, !tbaa !1464
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2739
  store i8* %2, i8** %15, align 8, !dbg !2740, !tbaa !1467
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2741
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2742
  ret i8* %16, !dbg !2743
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2744 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2694, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %0, metadata !2748, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2749, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !2750, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2690, metadata !DIExpression()) #12, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %0, metadata !2691, metadata !DIExpression()) #12, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %1, metadata !2692, metadata !DIExpression()) #12, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2693, metadata !DIExpression()) #12, !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()) #12, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #12, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()) #12, !dbg !2756
  call void @llvm.dbg.value(metadata i8* %2, metadata !2702, metadata !DIExpression()) #12, !dbg !2756
  call void @llvm.dbg.value(metadata i64 -1, metadata !2703, metadata !DIExpression()) #12, !dbg !2756
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2758, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1448, metadata !DIExpression()) #12, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !1449, metadata !DIExpression()) #12, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !1450, metadata !DIExpression()) #12, !dbg !2759
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1448, metadata !DIExpression()) #12, !dbg !2759
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2761
  store i32 10, i32* %6, align 8, !dbg !2762, !tbaa !1389
  %7 = icmp ne i8* %0, null, !dbg !2763
  %8 = icmp ne i8* %1, null, !dbg !2764
  %9 = and i1 %7, %8, !dbg !2765
  br i1 %9, label %11, label %10, !dbg !2765

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2766
  unreachable, !dbg !2766

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2767
  store i8* %0, i8** %12, align 8, !dbg !2768, !tbaa !1464
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2769
  store i8* %1, i8** %13, align 8, !dbg !2770, !tbaa !1467
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2771
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2772
  ret i8* %14, !dbg !2773
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2774 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2694, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %0, metadata !2778, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* %1, metadata !2779, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* %2, metadata !2780, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %3, metadata !2781, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()) #12, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #12, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()) #12, !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2702, metadata !DIExpression()) #12, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %3, metadata !2703, metadata !DIExpression()) #12, !dbg !2785
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2787, !tbaa.struct !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1448, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %0, metadata !1449, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !1450, metadata !DIExpression()) #12, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1448, metadata !DIExpression()) #12, !dbg !2788
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2790
  store i32 10, i32* %7, align 8, !dbg !2791, !tbaa !1389
  %8 = icmp ne i8* %0, null, !dbg !2792
  %9 = icmp ne i8* %1, null, !dbg !2793
  %10 = and i1 %8, %9, !dbg !2794
  br i1 %10, label %12, label %11, !dbg !2794

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2795
  unreachable, !dbg !2795

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2796
  store i8* %0, i8** %13, align 8, !dbg !2797, !tbaa !1464
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2798
  store i8* %1, i8** %14, align 8, !dbg !2799, !tbaa !1467
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2801
  ret i8* %15, !dbg !2802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2803 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %2, metadata !2809, metadata !DIExpression()), !dbg !2810
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2811
  ret i8* %4, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 %1, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 0, metadata !2807, metadata !DIExpression()) #12, !dbg !2820
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()) #12, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()) #12, !dbg !2820
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2822
  ret i8* %3, !dbg !2823
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2828, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %0, metadata !2807, metadata !DIExpression()) #12, !dbg !2831
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()) #12, !dbg !2831
  call void @llvm.dbg.value(metadata i64 -1, metadata !2809, metadata !DIExpression()) #12, !dbg !2831
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2833
  ret i8* %3, !dbg !2834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2835 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 0, metadata !2828, metadata !DIExpression()) #12, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !2829, metadata !DIExpression()) #12, !dbg !2839
  call void @llvm.dbg.value(metadata i32 0, metadata !2807, metadata !DIExpression()) #12, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()) #12, !dbg !2841
  call void @llvm.dbg.value(metadata i64 -1, metadata !2809, metadata !DIExpression()) #12, !dbg !2841
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2843
  ret i8* %2, !dbg !2844
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2845 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %1, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %2, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %3, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8** %4, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 %5, metadata !2858, metadata !DIExpression()), !dbg !2859
  %7 = icmp eq i8* %1, null, !dbg !2860
  br i1 %7, label %10, label %8, !dbg !2862

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2863
  br label %12, !dbg !2863

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2864
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #12, !dbg !2865
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !2865
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2866
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #12, !dbg !2867
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.78, i64 0, i64 0)) #12, !dbg !2867
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2868
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
  ], !dbg !2869

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #12, !dbg !2870
  %21 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !1124
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !2870
  br label %147, !dbg !2872

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #12, !dbg !2873
  %25 = load i8*, i8** %4, align 8, !dbg !2873, !tbaa !1124
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2873
  %27 = load i8*, i8** %26, align 8, !dbg !2873, !tbaa !1124
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !2873
  br label %147, !dbg !2874

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #12, !dbg !2875
  %31 = load i8*, i8** %4, align 8, !dbg !2875, !tbaa !1124
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2875
  %33 = load i8*, i8** %32, align 8, !dbg !2875, !tbaa !1124
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2875
  %35 = load i8*, i8** %34, align 8, !dbg !2875, !tbaa !1124
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !2875
  br label %147, !dbg !2876

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #12, !dbg !2877
  %39 = load i8*, i8** %4, align 8, !dbg !2877, !tbaa !1124
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2877
  %41 = load i8*, i8** %40, align 8, !dbg !2877, !tbaa !1124
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2877
  %43 = load i8*, i8** %42, align 8, !dbg !2877, !tbaa !1124
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2877
  %45 = load i8*, i8** %44, align 8, !dbg !2877, !tbaa !1124
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !2877
  br label %147, !dbg !2878

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #12, !dbg !2879
  %49 = load i8*, i8** %4, align 8, !dbg !2879, !tbaa !1124
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2879
  %51 = load i8*, i8** %50, align 8, !dbg !2879, !tbaa !1124
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2879
  %53 = load i8*, i8** %52, align 8, !dbg !2879, !tbaa !1124
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2879
  %55 = load i8*, i8** %54, align 8, !dbg !2879, !tbaa !1124
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2879
  %57 = load i8*, i8** %56, align 8, !dbg !2879, !tbaa !1124
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !2879
  br label %147, !dbg !2880

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #12, !dbg !2881
  %61 = load i8*, i8** %4, align 8, !dbg !2881, !tbaa !1124
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2881
  %63 = load i8*, i8** %62, align 8, !dbg !2881, !tbaa !1124
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2881
  %65 = load i8*, i8** %64, align 8, !dbg !2881, !tbaa !1124
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2881
  %67 = load i8*, i8** %66, align 8, !dbg !2881, !tbaa !1124
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2881
  %69 = load i8*, i8** %68, align 8, !dbg !2881, !tbaa !1124
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2881
  %71 = load i8*, i8** %70, align 8, !dbg !2881, !tbaa !1124
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !2881
  br label %147, !dbg !2882

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #12, !dbg !2883
  %75 = load i8*, i8** %4, align 8, !dbg !2883, !tbaa !1124
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2883
  %77 = load i8*, i8** %76, align 8, !dbg !2883, !tbaa !1124
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2883
  %79 = load i8*, i8** %78, align 8, !dbg !2883, !tbaa !1124
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2883
  %81 = load i8*, i8** %80, align 8, !dbg !2883, !tbaa !1124
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2883
  %83 = load i8*, i8** %82, align 8, !dbg !2883, !tbaa !1124
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2883
  %85 = load i8*, i8** %84, align 8, !dbg !2883, !tbaa !1124
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2883
  %87 = load i8*, i8** %86, align 8, !dbg !2883, !tbaa !1124
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !2883
  br label %147, !dbg !2884

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #12, !dbg !2885
  %91 = load i8*, i8** %4, align 8, !dbg !2885, !tbaa !1124
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2885
  %93 = load i8*, i8** %92, align 8, !dbg !2885, !tbaa !1124
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2885
  %95 = load i8*, i8** %94, align 8, !dbg !2885, !tbaa !1124
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2885
  %97 = load i8*, i8** %96, align 8, !dbg !2885, !tbaa !1124
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2885
  %99 = load i8*, i8** %98, align 8, !dbg !2885, !tbaa !1124
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2885
  %101 = load i8*, i8** %100, align 8, !dbg !2885, !tbaa !1124
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2885
  %103 = load i8*, i8** %102, align 8, !dbg !2885, !tbaa !1124
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2885
  %105 = load i8*, i8** %104, align 8, !dbg !2885, !tbaa !1124
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !2885
  br label %147, !dbg !2886

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.87, i64 0, i64 0), i32 5) #12, !dbg !2887
  %109 = load i8*, i8** %4, align 8, !dbg !2887, !tbaa !1124
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2887
  %111 = load i8*, i8** %110, align 8, !dbg !2887, !tbaa !1124
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2887
  %113 = load i8*, i8** %112, align 8, !dbg !2887, !tbaa !1124
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2887
  %115 = load i8*, i8** %114, align 8, !dbg !2887, !tbaa !1124
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2887
  %117 = load i8*, i8** %116, align 8, !dbg !2887, !tbaa !1124
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2887
  %119 = load i8*, i8** %118, align 8, !dbg !2887, !tbaa !1124
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2887
  %121 = load i8*, i8** %120, align 8, !dbg !2887, !tbaa !1124
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2887
  %123 = load i8*, i8** %122, align 8, !dbg !2887, !tbaa !1124
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2887
  %125 = load i8*, i8** %124, align 8, !dbg !2887, !tbaa !1124
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !2887
  br label %147, !dbg !2888

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.88, i64 0, i64 0), i32 5) #12, !dbg !2889
  %129 = load i8*, i8** %4, align 8, !dbg !2889, !tbaa !1124
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2889
  %131 = load i8*, i8** %130, align 8, !dbg !2889, !tbaa !1124
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2889
  %133 = load i8*, i8** %132, align 8, !dbg !2889, !tbaa !1124
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2889
  %135 = load i8*, i8** %134, align 8, !dbg !2889, !tbaa !1124
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2889
  %137 = load i8*, i8** %136, align 8, !dbg !2889, !tbaa !1124
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2889
  %139 = load i8*, i8** %138, align 8, !dbg !2889, !tbaa !1124
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2889
  %141 = load i8*, i8** %140, align 8, !dbg !2889, !tbaa !1124
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2889
  %143 = load i8*, i8** %142, align 8, !dbg !2889, !tbaa !1124
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2889
  %145 = load i8*, i8** %144, align 8, !dbg !2889, !tbaa !1124
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !2889
  br label %147, !dbg !2890

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2892 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2896, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %1, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %3, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8** %4, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 0, metadata !2901, metadata !DIExpression()), !dbg !2902
  br label %6, !dbg !2903

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2905
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2906
  %9 = load i8*, i8** %8, align 8, !dbg !2906, !tbaa !1124
  %10 = icmp eq i8* %9, null, !dbg !2908
  %11 = add i64 %7, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %11, metadata !2901, metadata !DIExpression()), !dbg !2902
  br i1 %10, label %12, label %6, !dbg !2908, !llvm.loop !2910

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %7, metadata !2901, metadata !DIExpression()), !dbg !2902
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2914 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2925, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2926, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %2, metadata !2927, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i8* %3, metadata !2928, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2929, metadata !DIExpression()), !dbg !2933
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2934
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2934
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2931, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 0, metadata !2930, metadata !DIExpression()), !dbg !2933
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2936
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2936
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2936
  %11 = load i32, i32* %8, align 8, !dbg !2939
  %12 = icmp ult i32 %11, 41, !dbg !2939
  br i1 %12, label %13, label %18, !dbg !2939

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2939
  %15 = zext i32 %11 to i64, !dbg !2939
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2939
  %17 = add nuw nsw i32 %11, 8, !dbg !2939
  store i32 %17, i32* %8, align 8, !dbg !2939
  br label %21, !dbg !2939

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2939
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2939
  store i8* %20, i8** %9, align 8, !dbg !2939
  br label %21, !dbg !2939

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2939
  %25 = load i8*, i8** %24, align 8, !dbg !2939
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2940
  store i8* %25, i8** %26, align 16, !dbg !2941, !tbaa !1124
  %27 = icmp eq i8* %25, null, !dbg !2942
  br i1 %27, label %30, label %28, !dbg !2943

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2930, metadata !DIExpression()), !dbg !2933
  %29 = icmp ult i32 %22, 41, !dbg !2939
  br i1 %29, label %35, label %32, !dbg !2939

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2944
  call void @llvm.dbg.value(metadata i64 %31, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %31, metadata !2930, metadata !DIExpression()), !dbg !2933
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2945
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2946
  ret void, !dbg !2946

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2939
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2939
  store i8* %34, i8** %9, align 8, !dbg !2939
  br label %40, !dbg !2939

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2939
  %37 = zext i32 %22 to i64, !dbg !2939
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2939
  %39 = add nuw nsw i32 %22, 8, !dbg !2939
  store i32 %39, i32* %8, align 8, !dbg !2939
  br label %40, !dbg !2939

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2939
  %44 = load i8*, i8** %43, align 8, !dbg !2939
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2940
  store i8* %44, i8** %45, align 8, !dbg !2941, !tbaa !1124
  %46 = icmp eq i8* %44, null, !dbg !2942
  br i1 %46, label %30, label %47, !dbg !2943

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2930, metadata !DIExpression()), !dbg !2933
  %48 = icmp ult i32 %41, 41, !dbg !2939
  br i1 %48, label %52, label %49, !dbg !2939

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2939
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2939
  store i8* %51, i8** %9, align 8, !dbg !2939
  br label %57, !dbg !2939

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2939
  %54 = zext i32 %41 to i64, !dbg !2939
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2939
  %56 = add nuw nsw i32 %41, 8, !dbg !2939
  store i32 %56, i32* %8, align 8, !dbg !2939
  br label %57, !dbg !2939

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2939
  %61 = load i8*, i8** %60, align 8, !dbg !2939
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2940
  store i8* %61, i8** %62, align 16, !dbg !2941, !tbaa !1124
  %63 = icmp eq i8* %61, null, !dbg !2942
  br i1 %63, label %30, label %64, !dbg !2943

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2930, metadata !DIExpression()), !dbg !2933
  %65 = icmp ult i32 %58, 41, !dbg !2939
  br i1 %65, label %69, label %66, !dbg !2939

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2939
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2939
  store i8* %68, i8** %9, align 8, !dbg !2939
  br label %74, !dbg !2939

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2939
  %71 = zext i32 %58 to i64, !dbg !2939
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2939
  %73 = add nuw nsw i32 %58, 8, !dbg !2939
  store i32 %73, i32* %8, align 8, !dbg !2939
  br label %74, !dbg !2939

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2939
  %78 = load i8*, i8** %77, align 8, !dbg !2939
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2940
  store i8* %78, i8** %79, align 8, !dbg !2941, !tbaa !1124
  %80 = icmp eq i8* %78, null, !dbg !2942
  br i1 %80, label %30, label %81, !dbg !2943

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2930, metadata !DIExpression()), !dbg !2933
  %82 = icmp ult i32 %75, 41, !dbg !2939
  br i1 %82, label %86, label %83, !dbg !2939

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2939
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2939
  store i8* %85, i8** %9, align 8, !dbg !2939
  br label %91, !dbg !2939

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2939
  %88 = zext i32 %75 to i64, !dbg !2939
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2939
  %90 = add nuw nsw i32 %75, 8, !dbg !2939
  store i32 %90, i32* %8, align 8, !dbg !2939
  br label %91, !dbg !2939

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2939
  %95 = load i8*, i8** %94, align 8, !dbg !2939
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2940
  store i8* %95, i8** %96, align 16, !dbg !2941, !tbaa !1124
  %97 = icmp eq i8* %95, null, !dbg !2942
  br i1 %97, label %30, label %98, !dbg !2943

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2930, metadata !DIExpression()), !dbg !2933
  %99 = icmp ult i32 %92, 41, !dbg !2939
  br i1 %99, label %103, label %100, !dbg !2939

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2939
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2939
  store i8* %102, i8** %9, align 8, !dbg !2939
  br label %108, !dbg !2939

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2939
  %105 = zext i32 %92 to i64, !dbg !2939
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2939
  %107 = add nuw nsw i32 %92, 8, !dbg !2939
  store i32 %107, i32* %8, align 8, !dbg !2939
  br label %108, !dbg !2939

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2939
  %111 = load i8*, i8** %110, align 8, !dbg !2939
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2940
  store i8* %111, i8** %112, align 8, !dbg !2941, !tbaa !1124
  %113 = icmp eq i8* %111, null, !dbg !2942
  br i1 %113, label %30, label %114, !dbg !2943

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2930, metadata !DIExpression()), !dbg !2933
  %115 = load i8*, i8** %9, align 8, !dbg !2939
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2939
  store i8* %116, i8** %9, align 8, !dbg !2939
  %117 = bitcast i8* %115 to i8**, !dbg !2939
  %118 = load i8*, i8** %117, align 8, !dbg !2939
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2940
  store i8* %118, i8** %119, align 16, !dbg !2941, !tbaa !1124
  %120 = icmp eq i8* %118, null, !dbg !2942
  br i1 %120, label %30, label %121, !dbg !2943

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2930, metadata !DIExpression()), !dbg !2933
  %122 = load i8*, i8** %9, align 8, !dbg !2939
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2939
  store i8* %123, i8** %9, align 8, !dbg !2939
  %124 = bitcast i8* %122 to i8**, !dbg !2939
  %125 = load i8*, i8** %124, align 8, !dbg !2939
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2940
  store i8* %125, i8** %126, align 8, !dbg !2941, !tbaa !1124
  %127 = icmp eq i8* %125, null, !dbg !2942
  br i1 %127, label %30, label %128, !dbg !2943

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2930, metadata !DIExpression()), !dbg !2933
  %129 = load i8*, i8** %9, align 8, !dbg !2939
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2939
  store i8* %130, i8** %9, align 8, !dbg !2939
  %131 = bitcast i8* %129 to i8**, !dbg !2939
  %132 = load i8*, i8** %131, align 8, !dbg !2939
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2940
  store i8* %132, i8** %133, align 16, !dbg !2941, !tbaa !1124
  %134 = icmp eq i8* %132, null, !dbg !2942
  br i1 %134, label %30, label %135, !dbg !2943

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2930, metadata !DIExpression()), !dbg !2933
  %136 = load i8*, i8** %9, align 8, !dbg !2939
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2939
  store i8* %137, i8** %9, align 8, !dbg !2939
  %138 = bitcast i8* %136 to i8**, !dbg !2939
  %139 = load i8*, i8** %138, align 8, !dbg !2939
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2940
  store i8* %139, i8** %140, align 8, !dbg !2941, !tbaa !1124
  %141 = icmp eq i8* %139, null, !dbg !2942
  %142 = select i1 %141, i64 9, i64 10, !dbg !2943
  br label %30, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2947 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2951, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2952, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %2, metadata !2953, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %3, metadata !2954, metadata !DIExpression()), !dbg !2960
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2961
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2955, metadata !DIExpression()), !dbg !2962
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2963
  call void @llvm.va_start(i8* nonnull %6), !dbg !2963
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2964
  call void @llvm.va_end(i8* nonnull %6), !dbg !2965
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2966
  ret void, !dbg !2966
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2967 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2968, !tbaa !1124
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2968
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #12, !dbg !2969
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.92, i64 0, i64 0)) #12, !dbg !2969
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.93, i64 0, i64 0), i32 5) #12, !dbg !2970
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.95, i64 0, i64 0)) #12, !dbg !2970
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.96, i64 0, i64 0), i32 5) #12, !dbg !2971
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.97, i64 0, i64 0)) #12, !dbg !2971
  ret void, !dbg !2972
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2973 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !2979
  %3 = udiv i64 9223372036854775807, %1, !dbg !2980
  %4 = icmp ult i64 %3, %0, !dbg !2980
  br i1 %4, label %5, label %6, !dbg !2982

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2983
  unreachable, !dbg !2983

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %7, metadata !2985, metadata !DIExpression()) #12, !dbg !2991
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %8, metadata !2990, metadata !DIExpression()) #12, !dbg !2991
  %9 = icmp eq i8* %8, null, !dbg !2994
  %10 = icmp ne i64 %7, 0, !dbg !2996
  %11 = and i1 %10, %9, !dbg !2997
  br i1 %11, label %12, label %13, !dbg !2997

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !2998
  unreachable, !dbg !2998

13:                                               ; preds = %6
  ret i8* %8, !dbg !2999
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2986 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !3000
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()), !dbg !3000
  %3 = icmp eq i8* %2, null, !dbg !3002
  %4 = icmp ne i64 %0, 0, !dbg !3003
  %5 = and i1 %4, %3, !dbg !3004
  br i1 %5, label %6, label %7, !dbg !3004

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3005
  unreachable, !dbg !3005

7:                                                ; preds = %1
  ret i8* %2, !dbg !3006
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3007 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  %4 = udiv i64 9223372036854775807, %2, !dbg !3015
  %5 = icmp ult i64 %4, %1, !dbg !3015
  br i1 %5, label %6, label %7, !dbg !3017

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3018
  unreachable, !dbg !3018

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #12, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %8, metadata !3025, metadata !DIExpression()) #12, !dbg !3026
  %9 = icmp eq i64 %8, 0, !dbg !3028
  %10 = icmp ne i8* %0, null, !dbg !3030
  %11 = and i1 %10, %9, !dbg !3031
  br i1 %11, label %12, label %13, !dbg !3031

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3032
  br label %19, !dbg !3034

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %14, metadata !3020, metadata !DIExpression()) #12, !dbg !3026
  %15 = icmp eq i8* %14, null, !dbg !3036
  %16 = icmp ne i64 %8, 0, !dbg !3038
  %17 = and i1 %16, %15, !dbg !3039
  br i1 %17, label %18, label %19, !dbg !3039

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3040
  unreachable, !dbg !3040

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3026
  ret i8* %20, !dbg !3041
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3042
  %3 = icmp eq i64 %1, 0, !dbg !3043
  %4 = icmp ne i8* %0, null, !dbg !3044
  %5 = and i1 %4, %3, !dbg !3045
  br i1 %5, label %6, label %7, !dbg !3045

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3046
  br label %13, !dbg !3047

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %8, metadata !3020, metadata !DIExpression()), !dbg !3042
  %9 = icmp eq i8* %8, null, !dbg !3049
  %10 = icmp ne i64 %1, 0, !dbg !3050
  %11 = and i1 %10, %9, !dbg !3051
  br i1 %11, label %12, label %13, !dbg !3051

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3052
  unreachable, !dbg !3052

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3042
  ret i8* %14, !dbg !3053
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !480 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !485, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64* %1, metadata !486, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %2, metadata !487, metadata !DIExpression()), !dbg !3054
  %4 = load i64, i64* %1, align 8, !dbg !3055, !tbaa !2295
  call void @llvm.dbg.value(metadata i64 %4, metadata !488, metadata !DIExpression()), !dbg !3054
  %5 = icmp eq i8* %0, null, !dbg !3056
  br i1 %5, label %6, label %20, !dbg !3058

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3059
  br i1 %7, label %8, label %13, !dbg !3062

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %9, metadata !488, metadata !DIExpression()), !dbg !3054
  %10 = icmp ugt i64 %2, 128, !dbg !3065
  %11 = zext i1 %10 to i64, !dbg !3065
  %12 = add nuw nsw i64 %9, %11, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %12, metadata !488, metadata !DIExpression()), !dbg !3054
  br label %13, !dbg !3067

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3054
  call void @llvm.dbg.value(metadata i64 %14, metadata !488, metadata !DIExpression()), !dbg !3054
  %15 = udiv i64 9223372036854775807, %2, !dbg !3068
  %16 = icmp ult i64 %15, %14, !dbg !3068
  br i1 %16, label %19, label %17, !dbg !3070

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !3054
  store i64 %14, i64* %1, align 8, !dbg !3071, !tbaa !2295
  %18 = mul i64 %14, %2, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #12, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %28, metadata !3025, metadata !DIExpression()) #12, !dbg !3073
  br label %31, !dbg !3075

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3076
  unreachable, !dbg !3076

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3077
  %22 = icmp ugt i64 %21, %4, !dbg !3080
  br i1 %22, label %24, label %23, !dbg !3081

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3082
  unreachable, !dbg !3082

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3083
  %26 = add nuw i64 %4, 1, !dbg !3084
  %27 = add i64 %26, %25, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %27, metadata !488, metadata !DIExpression()), !dbg !3054
  store i64 %27, i64* %1, align 8, !dbg !3071, !tbaa !2295
  %28 = mul i64 %27, %2, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #12, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %28, metadata !3025, metadata !DIExpression()) #12, !dbg !3073
  %29 = icmp eq i64 %28, 0, !dbg !3086
  br i1 %29, label %30, label %31, !dbg !3075

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3087
  br label %38, !dbg !3088

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %33, metadata !3020, metadata !DIExpression()) #12, !dbg !3073
  %34 = icmp eq i8* %33, null, !dbg !3090
  %35 = icmp ne i64 %32, 0, !dbg !3091
  %36 = and i1 %35, %34, !dbg !3092
  br i1 %36, label %37, label %38, !dbg !3092

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3093
  unreachable, !dbg !3093

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3073
  ret i8* %39, !dbg !3094
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()) #12, !dbg !3099
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()) #12, !dbg !3099
  %3 = icmp eq i8* %2, null, !dbg !3102
  %4 = icmp ne i64 %0, 0, !dbg !3103
  %5 = and i1 %4, %3, !dbg !3104
  br i1 %5, label %6, label %7, !dbg !3104

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3105
  unreachable, !dbg !3105

7:                                                ; preds = %1
  ret i8* %2, !dbg !3106
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3107 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64* %1, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %0, metadata !485, metadata !DIExpression()) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i64* %1, metadata !486, metadata !DIExpression()) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i64 1, metadata !487, metadata !DIExpression()) #12, !dbg !3114
  %3 = load i64, i64* %1, align 8, !dbg !3116, !tbaa !2295
  call void @llvm.dbg.value(metadata i64 %3, metadata !488, metadata !DIExpression()) #12, !dbg !3114
  %4 = icmp eq i8* %0, null, !dbg !3117
  br i1 %4, label %5, label %12, !dbg !3118

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3119
  br i1 %6, label %9, label %7, !dbg !3120

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !488, metadata !DIExpression()) #12, !dbg !3114
  %8 = icmp slt i64 %3, 0, !dbg !3121
  br i1 %8, label %11, label %9, !dbg !3122

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #12, !dbg !3114
  store i64 %10, i64* %1, align 8, !dbg !3123, !tbaa !2295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %18, metadata !3025, metadata !DIExpression()) #12, !dbg !3124
  br label %21, !dbg !3126

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3127
  unreachable, !dbg !3127

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3128
  br i1 %13, label %15, label %14, !dbg !3129

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3130
  unreachable, !dbg !3130

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3131
  %17 = add nuw nsw i64 %3, 1, !dbg !3132
  %18 = add nuw nsw i64 %17, %16, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #12, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %18, metadata !488, metadata !DIExpression()) #12, !dbg !3114
  store i64 %18, i64* %1, align 8, !dbg !3123, !tbaa !2295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %18, metadata !3025, metadata !DIExpression()) #12, !dbg !3124
  %19 = icmp eq i64 %18, 0, !dbg !3134
  br i1 %19, label %20, label %21, !dbg !3126

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3135
  br label %28, !dbg !3136

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %23, metadata !3020, metadata !DIExpression()) #12, !dbg !3124
  %24 = icmp eq i8* %23, null, !dbg !3138
  %25 = icmp ne i64 %22, 0, !dbg !3139
  %26 = and i1 %25, %24, !dbg !3140
  br i1 %26, label %27, label %28, !dbg !3140

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3141
  unreachable, !dbg !3141

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3124
  ret i8* %29, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3143 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3145, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %0, metadata !3147, metadata !DIExpression()) #12, !dbg !3152
  call void @llvm.dbg.value(metadata i64 1, metadata !3150, metadata !DIExpression()) #12, !dbg !3152
  %2 = icmp slt i64 %0, 0, !dbg !3154
  br i1 %2, label %6, label %3, !dbg !3156

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %4, metadata !3151, metadata !DIExpression()) #12, !dbg !3152
  %5 = icmp eq i8* %4, null, !dbg !3158
  br i1 %5, label %6, label %7, !dbg !3159

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3160
  unreachable, !dbg !3160

7:                                                ; preds = %3
  ret i8* %4, !dbg !3161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3148 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3147, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3162
  %3 = udiv i64 9223372036854775807, %1, !dbg !3163
  %4 = icmp ult i64 %3, %0, !dbg !3163
  br i1 %4, label %8, label %5, !dbg !3164

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %6, metadata !3151, metadata !DIExpression()), !dbg !3162
  %7 = icmp eq i8* %6, null, !dbg !3166
  br i1 %7, label %8, label %9, !dbg !3167

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3168
  unreachable, !dbg !3168

9:                                                ; preds = %5
  ret i8* %6, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3170 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()) #12, !dbg !3177
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %3, metadata !2990, metadata !DIExpression()) #12, !dbg !3177
  %4 = icmp eq i8* %3, null, !dbg !3180
  %5 = icmp ne i64 %1, 0, !dbg !3181
  %6 = and i1 %5, %4, !dbg !3182
  br i1 %6, label %7, label %8, !dbg !3182

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3183
  unreachable, !dbg !3183

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3184, metadata !DIExpression()) #12, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()) #12, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3192, metadata !DIExpression()) #12, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3195
  ret i8* %3, !dbg !3196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()), !dbg !3200
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3201
  %3 = add i64 %2, 1, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %0, metadata !3174, metadata !DIExpression()) #12, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %3, metadata !3175, metadata !DIExpression()) #12, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %3, metadata !2985, metadata !DIExpression()) #12, !dbg !3205
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %4, metadata !2990, metadata !DIExpression()) #12, !dbg !3205
  %5 = icmp eq i8* %4, null, !dbg !3208
  %6 = icmp ne i64 %3, 0, !dbg !3209
  %7 = and i1 %6, %5, !dbg !3210
  br i1 %7, label %8, label %9, !dbg !3210

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3211
  unreachable, !dbg !3211

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3184, metadata !DIExpression()) #12, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %0, metadata !3191, metadata !DIExpression()) #12, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !3192, metadata !DIExpression()) #12, !dbg !3212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3214
  ret i8* %4, !dbg !3215
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3216 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3217, !tbaa !1180
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.108, i64 0, i64 0), i32 5) #12, !dbg !3218
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), i8* %2) #12, !dbg !3219
  tail call void @abort() #22, !dbg !3220
  unreachable, !dbg !3220
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3221 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3223, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3229
  %3 = icmp eq i64 %0, 0, !dbg !3230
  %4 = icmp eq i64 %1, 0, !dbg !3231
  %5 = or i1 %3, %4, !dbg !3232
  br i1 %5, label %11, label %6, !dbg !3232

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3226, metadata !DIExpression()), !dbg !3233
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3234
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3234
  br i1 %8, label %9, label %11, !dbg !3236

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3237
  store i32 12, i32* %10, align 4, !dbg !3239, !tbaa !1180
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3223, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %12, metadata !3224, metadata !DIExpression()), !dbg !3229
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %14, metadata !3225, metadata !DIExpression()), !dbg !3229
  br label %15, !dbg !3241

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3229
  ret i8* %16, !dbg !3242
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3243 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3251, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3252, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %2, metadata !3253, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3254, metadata !DIExpression()), !dbg !3260
  %6 = bitcast i32* %5 to i8*, !dbg !3261
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3261
  %7 = icmp eq i32* %0, null, !dbg !3262
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3264
  call void @llvm.dbg.value(metadata i32* %8, metadata !3251, metadata !DIExpression()), !dbg !3260
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %9, metadata !3255, metadata !DIExpression()), !dbg !3260
  %10 = icmp ugt i64 %9, -3, !dbg !3266
  %11 = icmp ne i64 %2, 0, !dbg !3267
  %12 = and i1 %11, %10, !dbg !3268
  br i1 %12, label %13, label %18, !dbg !3268

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3269
  br i1 %14, label %18, label %15, !dbg !3270

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3271, !tbaa !1590
  call void @llvm.dbg.value(metadata i8 %16, metadata !3257, metadata !DIExpression()), !dbg !3272
  %17 = zext i8 %16 to i32, !dbg !3273
  store i32 %17, i32* %8, align 4, !dbg !3274, !tbaa !1180
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3260
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3275
  ret i64 %19, !dbg !3275
}

; Function Attrs: nounwind
declare !dbg !506 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3276 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3282, metadata !DIExpression()), !dbg !3287
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3288
  call void @llvm.dbg.value(metadata i1 undef, metadata !3283, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3289, metadata !DIExpression()), !dbg !3293
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3295
  %4 = load i32, i32* %3, align 8, !dbg !3295, !tbaa !3296
  %5 = and i32 %4, 32, !dbg !3295
  %6 = icmp eq i32 %5, 0, !dbg !3298
  call void @llvm.dbg.value(metadata i1 %6, metadata !3285, metadata !DIExpression()), !dbg !3287
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3299
  %8 = icmp ne i32 %7, 0, !dbg !3300
  call void @llvm.dbg.value(metadata i1 %8, metadata !3286, metadata !DIExpression()), !dbg !3287
  br i1 %6, label %9, label %19, !dbg !3301

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3303
  call void @llvm.dbg.value(metadata i1 %10, metadata !3283, metadata !DIExpression()), !dbg !3287
  %11 = xor i1 %8, true, !dbg !3304
  %12 = or i1 %10, %11, !dbg !3304
  %13 = sext i1 %8 to i32, !dbg !3304
  br i1 %12, label %22, label %14, !dbg !3304

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3305
  %16 = load i32, i32* %15, align 4, !dbg !3305, !tbaa !1180
  %17 = icmp ne i32 %16, 9, !dbg !3306
  %18 = sext i1 %17 to i32, !dbg !3307
  br label %22, !dbg !3307

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3308

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3310
  store i32 0, i32* %21, align 4, !dbg !3312, !tbaa !1180
  br label %22, !dbg !3310

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3287
  ret i32 %23, !dbg !3313
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3314 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3316, metadata !DIExpression()), !dbg !3321
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3322
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3322
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3317, metadata !DIExpression()), !dbg !3323
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3324
  %5 = icmp eq i32 %4, 0, !dbg !3324
  br i1 %5, label %6, label %13, !dbg !3326

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3327
  %8 = load i16, i16* %7, align 16, !dbg !3327
  %9 = icmp eq i16 %8, 67, !dbg !3327
  br i1 %9, label %13, label %10, !dbg !3328

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.118, i64 0, i64 0), i64 6), !dbg !3329
  %12 = icmp ne i32 %11, 0, !dbg !3330
  br label %13, !dbg !3328

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3321
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3331
  ret i1 %14, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3332 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3334, metadata !DIExpression()), !dbg !3336
  %2 = icmp eq i8* %1, null, !dbg !3337
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.121, i64 0, i64 0), i8* %1, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()), !dbg !3336
  %4 = load i8, i8* %3, align 1, !dbg !3340, !tbaa !1590
  %5 = icmp eq i8 %4, 0, !dbg !3344
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0), i8* %3, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %6, metadata !3334, metadata !DIExpression()), !dbg !3336
  ret i8* %6, !dbg !3346
}

; Function Attrs: nounwind
declare !dbg !958 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3358, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %2, metadata !3359, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()) #12, !dbg !3372
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %4, metadata !3371, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %4, metadata !3360, metadata !DIExpression()) #12, !dbg !3364
  %5 = icmp eq i8* %4, null, !dbg !3375
  br i1 %5, label %6, label %9, !dbg !3376

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3377
  br i1 %7, label %19, label %8, !dbg !3380

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3381, !tbaa !1590
  br label %19, !dbg !3382

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %10, metadata !3361, metadata !DIExpression()) #12, !dbg !3384
  %11 = icmp ult i64 %10, %2, !dbg !3385
  br i1 %11, label %12, label %14, !dbg !3387

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.dbg.value(metadata i8* %4, metadata !3393, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %13, metadata !3394, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3397
  br label %19, !dbg !3398

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3399
  br i1 %15, label %19, label %16, !dbg !3402

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3403
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()) #12, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %4, metadata !3393, metadata !DIExpression()) #12, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %17, metadata !3394, metadata !DIExpression()) #12, !dbg !3405
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3407
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3408
  store i8 0, i8* %18, align 1, !dbg !3409, !tbaa !1590
  br label %19, !dbg !3410

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3411
  ret i32 %20, !dbg !3412
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 %0, metadata !3366, metadata !DIExpression()) #12, !dbg !3417
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %2, metadata !3371, metadata !DIExpression()) #12, !dbg !3417
  ret i8* %2, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3421 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 0, metadata !3430, metadata !DIExpression()), !dbg !3431
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %2, metadata !3429, metadata !DIExpression()), !dbg !3431
  %3 = icmp slt i32 %2, 0, !dbg !3433
  br i1 %3, label %4, label %6, !dbg !3435

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3436
  br label %24, !dbg !3437

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3438
  %8 = icmp eq i32 %7, 0, !dbg !3438
  br i1 %8, label %13, label %9, !dbg !3440

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3441
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3442
  %12 = icmp eq i64 %11, -1, !dbg !3443
  br i1 %12, label %16, label %13, !dbg !3444

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3445
  %15 = icmp eq i32 %14, 0, !dbg !3445
  br i1 %15, label %16, label %18, !dbg !3446

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3428, metadata !DIExpression()), !dbg !3431
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %21, metadata !3430, metadata !DIExpression()), !dbg !3431
  br label %24, !dbg !3448

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3449
  %20 = load i32, i32* %19, align 4, !dbg !3449, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 %20, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32 %20, metadata !3428, metadata !DIExpression()), !dbg !3431
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %21, metadata !3430, metadata !DIExpression()), !dbg !3431
  %22 = icmp eq i32 %20, 0, !dbg !3450
  br i1 %22, label %24, label %23, !dbg !3448

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3452, !tbaa !1180
  call void @llvm.dbg.value(metadata i32 -1, metadata !3430, metadata !DIExpression()), !dbg !3431
  br label %24, !dbg !3454

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3431
  ret i32 %25, !dbg !3455
}

; Function Attrs: nofree nounwind
declare !dbg !967 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1002 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1003 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3456 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3462, metadata !DIExpression()), !dbg !3463
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3464
  br i1 %2, label %6, label %3, !dbg !3466

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3467
  %5 = icmp eq i32 %4, 0, !dbg !3467
  br i1 %5, label %6, label %8, !dbg !3468

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3469
  br label %17, !dbg !3470

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3471, metadata !DIExpression()) #12, !dbg !3476
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3478
  %10 = load i32, i32* %9, align 8, !dbg !3478, !tbaa !3296
  %11 = and i32 %10, 256, !dbg !3480
  %12 = icmp eq i32 %11, 0, !dbg !3480
  br i1 %12, label %15, label %13, !dbg !3481

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3482
  br label %15, !dbg !3482

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3483
  br label %17, !dbg !3484

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3463
  ret i32 %18, !dbg !3485
}

; Function Attrs: nofree nounwind
declare !dbg !1010 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3486 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3493, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3494, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %2, metadata !3495, metadata !DIExpression()), !dbg !3499
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3500
  %5 = load i8*, i8** %4, align 8, !dbg !3500, !tbaa !3501
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3502
  %7 = load i8*, i8** %6, align 8, !dbg !3502, !tbaa !3503
  %8 = icmp eq i8* %5, %7, !dbg !3504
  br i1 %8, label %9, label %28, !dbg !3505

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3506
  %11 = load i8*, i8** %10, align 8, !dbg !3506, !tbaa !3507
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3508
  %13 = load i8*, i8** %12, align 8, !dbg !3508, !tbaa !3509
  %14 = icmp eq i8* %11, %13, !dbg !3510
  br i1 %14, label %15, label %28, !dbg !3511

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3512
  %17 = load i8*, i8** %16, align 8, !dbg !3512, !tbaa !3513
  %18 = icmp eq i8* %17, null, !dbg !3514
  br i1 %18, label %19, label %28, !dbg !3515

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3516
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3517
  call void @llvm.dbg.value(metadata i64 %21, metadata !3496, metadata !DIExpression()), !dbg !3518
  %22 = icmp eq i64 %21, -1, !dbg !3519
  br i1 %22, label %30, label %23, !dbg !3521

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3522
  %25 = load i32, i32* %24, align 8, !dbg !3523, !tbaa !3296
  %26 = and i32 %25, -17, !dbg !3523
  store i32 %26, i32* %24, align 8, !dbg !3523, !tbaa !3296
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3524
  store i64 %21, i64* %27, align 8, !dbg !3525, !tbaa !3526
  br label %30, !dbg !3527

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3528
  br label %30, !dbg !3529

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3499
  ret i32 %31, !dbg !3530
}

; Function Attrs: nofree nounwind
declare !dbg !1086 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !434, !354, !476, !497, !500, !503, !522, !561, !568, !961, !964, !1007, !1048}
!llvm.ident = !{!1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089, !1089}
!llvm.module.flags = !{!1090, !1091, !1092, !1093, !1094}

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
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "src/unlink.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!214}
!363 = !{!77, !364, !399, !403, !407, !410, !411, !6, !67, !415, !85, !423, !427, !431}
!364 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!365 = !DISubroutineType(types: !366)
!366 = !{!18, !6, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !368, file: !21, line: 51, baseType: !18, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !368, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !368, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !368, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !368, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !368, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !368, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !368, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !368, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !368, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !368, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !368, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !368, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !368, file: !21, line: 70, baseType: !367, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !368, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !368, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !368, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !368, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !368, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !368, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !368, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !368, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !368, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !368, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !368, file: !21, line: 93, baseType: !367, size: 64, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !368, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !368, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !368, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !368, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!399 = !DISubprogram(name: "set_program_name", scope: !400, file: !400, line: 37, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!400 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!401 = !DISubroutineType(types: !402)
!402 = !{null, !6}
!403 = !DISubprogram(name: "setlocale", scope: !404, file: !404, line: 122, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!404 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!405 = !DISubroutineType(types: !406)
!406 = !{!25, !18, !6}
!407 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{!25, !6, !6}
!410 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!411 = !DISubprogram(name: "atexit", scope: !271, file: !271, line: 595, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{!18, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!415 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !416, file: !416, line: 33, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!416 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!417 = !DISubroutineType(types: !418)
!418 = !{null, !18, !419, !6, !6, !6, !92, !420, null}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !18}
!423 = !DISubprogram(name: "quote", scope: !424, file: !424, line: 44, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!424 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!425 = !DISubroutineType(types: !426)
!426 = !{!6, !6}
!427 = !DISubprogram(name: "unlink", scope: !428, file: !428, line: 825, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!428 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!429 = !DISubroutineType(types: !430)
!430 = !{!18, !6}
!431 = !DISubprogram(name: "quotearg_style", scope: !82, file: !82, line: 377, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!432 = !DISubroutineType(types: !433)
!433 = !{!25, !214, !6}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !436, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!437}
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !435, line: 40, baseType: !159, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!440 = !{!77, !441, !67}
!441 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !6, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !445, file: !21, line: 51, baseType: !18, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !445, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !445, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !445, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !445, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !445, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !445, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !445, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !445, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !445, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !445, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !445, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !445, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !445, file: !21, line: 70, baseType: !444, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !445, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !445, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !445, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !445, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !445, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !445, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !445, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !445, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !445, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !445, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !445, file: !21, line: 93, baseType: !444, size: 64, offset: 1344)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !445, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !445, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !445, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !445, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!476 = distinct !DICompileUnit(language: DW_LANG_C99, file: !477, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !491, splitDebugInlining: false, nameTableKind: None)
!477 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!478 = !{!479}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !480, file: !249, line: 186, baseType: !159, size: 32, elements: !489)
!480 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !481, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !484)
!481 = !DISubroutineType(types: !482)
!482 = !{!67, !67, !483, !69}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!484 = !{!485, !486, !487, !488}
!485 = !DILocalVariable(name: "p", arg: 1, scope: !480, file: !249, line: 174, type: !67)
!486 = !DILocalVariable(name: "pn", arg: 2, scope: !480, file: !249, line: 174, type: !483)
!487 = !DILocalVariable(name: "s", arg: 3, scope: !480, file: !249, line: 174, type: !69)
!488 = !DILocalVariable(name: "n", scope: !480, file: !249, line: 176, type: !69)
!489 = !{!490}
!490 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!491 = !{!69, !315, !312, !318, !25, !270, !67, !492, !495}
!492 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!493 = !DISubroutineType(types: !494)
!494 = !{!67, !71, !71}
!495 = !DISubprogram(name: "rpl_calloc", scope: !496, file: !496, line: 688, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!496 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!77, !85}
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !502, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !{!67}
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!506, !69, !518}
!506 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!507 = !DISubroutineType(types: !508)
!508 = !{!71, !117, !6, !71, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !510, file: !283, line: 15, baseType: !18, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !510, file: !283, line: 20, baseType: !514, size: 32, offset: 32)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !283, line: 16, size: 32, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !514, file: !283, line: 18, baseType: !159, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !514, file: !283, line: 19, baseType: !291, size: 32)
!518 = !DISubprogram(name: "hard_locale", scope: !519, file: !519, line: 26, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!519 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!520 = !DISubroutineType(types: !521)
!521 = !{!92, !18}
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !524, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!524 = !{!525}
!525 = !DISubprogram(name: "rpl_fclose", scope: !526, file: !526, line: 672, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!526 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!527 = !DISubroutineType(types: !528)
!528 = !{!18, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !530, file: !21, line: 51, baseType: !18, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !530, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !530, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !530, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !530, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !530, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !530, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !530, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !530, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !530, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !530, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !530, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !530, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !530, file: !21, line: 70, baseType: !529, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !530, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !530, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !530, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !530, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !530, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !530, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !530, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !530, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !530, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !530, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !530, file: !21, line: 93, baseType: !529, size: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !530, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !530, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !530, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !530, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !563, splitDebugInlining: false, nameTableKind: None)
!562 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!563 = !{!564}
!564 = !DISubprogram(name: "setlocale_null_r", scope: !565, file: !565, line: 64, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!565 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!566 = !DISubroutineType(types: !567)
!567 = !{!18, !18, !25, !71}
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !570, retainedTypes: !957, splitDebugInlining: false, nameTableKind: None)
!569 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!570 = !{!571}
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 41, baseType: !159, size: 32, elements: !573)
!572 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956}
!574 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!575 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!576 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!577 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!578 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!579 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!580 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!581 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!582 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!583 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!584 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!585 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!586 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!587 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!588 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!589 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!590 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!596 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!599 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!600 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!601 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!602 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!608 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!611 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!612 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!613 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!614 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!615 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!616 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!617 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!618 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!619 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!620 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!621 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!622 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!623 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!682 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!685 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!686 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!687 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!693 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!696 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!769 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!842 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!843 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!844 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!845 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!846 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!847 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!848 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!849 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!850 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!851 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!852 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!853 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!854 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!855 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!856 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!859 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!860 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!861 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!862 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!863 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!889 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!890 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!891 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!892 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!893 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!898 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!899 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!900 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!901 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!957 = !{!958, !67}
!958 = !DISubprogram(name: "nl_langinfo", scope: !572, file: !572, line: 661, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!959 = !DISubroutineType(types: !960)
!960 = !{!25, !18}
!961 = distinct !DICompileUnit(language: DW_LANG_C99, file: !962, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !963, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!963 = !{!67, !403}
!964 = distinct !DICompileUnit(language: DW_LANG_C99, file: !965, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!966 = !{!967, !1002, !1003, !1006}
!967 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!968 = !DISubroutineType(types: !969)
!969 = !{!18, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !972)
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !971, file: !21, line: 51, baseType: !18, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !971, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !971, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !971, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !971, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !971, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !971, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !971, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !971, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !971, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !971, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !971, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !971, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !971, file: !21, line: 70, baseType: !970, size: 64, offset: 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !971, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !971, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !971, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !971, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !971, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !971, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !971, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !971, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !971, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !971, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !971, file: !21, line: 93, baseType: !970, size: 64, offset: 1344)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !971, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !971, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !971, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !971, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1002 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1003 = !DISubprogram(name: "lseek", scope: !428, file: !428, line: 334, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!45, !18, !45, !18}
!1006 = !DISubprogram(name: "rpl_fflush", scope: !526, file: !526, line: 718, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1007 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1008, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1009, splitDebugInlining: false, nameTableKind: None)
!1008 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1009 = !{!67, !1010, !1045}
!1010 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!18, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1014, file: !21, line: 51, baseType: !18, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1014, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1014, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1014, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1014, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1014, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1014, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1014, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1014, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1014, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1014, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1014, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1014, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1014, file: !21, line: 70, baseType: !1013, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1014, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1014, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1014, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1014, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1014, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1014, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1014, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1014, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1014, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1014, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1014, file: !21, line: 93, baseType: !1013, size: 64, offset: 1344)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1014, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1014, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1014, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1014, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1045 = !DISubprogram(name: "rpl_fseeko", scope: !526, file: !526, line: 1034, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!18, !1013, !45, !18}
!1048 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1049, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1050, splitDebugInlining: false, nameTableKind: None)
!1049 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1050 = !{!67, !1051, !1003, !1086}
!1051 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!18, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1055, file: !21, line: 51, baseType: !18, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1055, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1055, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1055, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1055, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1055, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1055, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1055, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1055, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1055, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1055, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1055, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1055, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1055, file: !21, line: 70, baseType: !1054, size: 64, offset: 832)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1055, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1055, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1055, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1055, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1055, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1055, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1055, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1055, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1055, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1055, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1055, file: !21, line: 93, baseType: !1054, size: 64, offset: 1344)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1055, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1055, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1055, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1055, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1086 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!18, !1054, !45, !18}
!1089 = !{!"clang version 10.0.0 "}
!1090 = !{i32 7, !"Dwarf Version", i32 4}
!1091 = !{i32 2, !"Debug Info Version", i32 3}
!1092 = !{i32 1, !"wchar_size", i32 4}
!1093 = !{i32 7, !"PIC Level", i32 2}
!1094 = !{i32 7, !"PIE Level", i32 2}
!1095 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 39, type: !421, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1096)
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "status", arg: 1, scope: !1095, file: !361, line: 39, type: !18)
!1098 = !DILocalVariable(name: "infomap", scope: !1099, file: !1100, line: 636, type: !1112)
!1099 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1100, file: !1100, line: 634, type: !401, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1101)
!1100 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1101 = !{!1102, !1098, !1103, !1104, !1111}
!1102 = !DILocalVariable(name: "program", arg: 1, scope: !1099, file: !1100, line: 634, type: !6)
!1103 = !DILocalVariable(name: "node", scope: !1099, file: !1100, line: 646, type: !6)
!1104 = !DILocalVariable(name: "map_prog", scope: !1099, file: !1100, line: 647, type: !1105)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1099, file: !1100, line: 636, size: 128, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1107, file: !1100, line: 636, baseType: !6, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1107, file: !1100, line: 636, baseType: !6, size: 64, offset: 64)
!1111 = !DILocalVariable(name: "lc_messages", scope: !1099, file: !1100, line: 659, type: !6)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1106, size: 896, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 7)
!1115 = !DILocation(line: 636, column: 67, scope: !1099, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 52, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !361, line: 44, column: 5)
!1118 = distinct !DILexicalBlock(scope: !1095, file: !361, line: 41, column: 7)
!1119 = !DILocation(line: 0, scope: !1095)
!1120 = !DILocation(line: 41, column: 14, scope: !1118)
!1121 = !DILocation(line: 41, column: 7, scope: !1095)
!1122 = !DILocation(line: 42, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !361, line: 42, column: 5)
!1124 = !{!1125, !1125, i64 0}
!1125 = !{!"any pointer", !1126, i64 0}
!1126 = !{!"omnipotent char", !1127, i64 0}
!1127 = !{!"Simple C/C++ TBAA"}
!1128 = !DILocation(line: 45, column: 7, scope: !1117)
!1129 = !DILocation(line: 48, column: 7, scope: !1117)
!1130 = !DILocation(line: 50, column: 7, scope: !1117)
!1131 = !DILocation(line: 51, column: 7, scope: !1117)
!1132 = !DILocation(line: 0, scope: !1099, inlinedAt: !1116)
!1133 = !DILocation(line: 636, column: 3, scope: !1099, inlinedAt: !1116)
!1134 = !DILocation(line: 647, column: 36, scope: !1099, inlinedAt: !1116)
!1135 = !DILocation(line: 649, column: 3, scope: !1099, inlinedAt: !1116)
!1136 = !DILocation(line: 649, column: 33, scope: !1099, inlinedAt: !1116)
!1137 = !DILocation(line: 650, column: 13, scope: !1099, inlinedAt: !1116)
!1138 = !DILocation(line: 649, column: 20, scope: !1099, inlinedAt: !1116)
!1139 = !{!1140, !1125, i64 0}
!1140 = !{!"infomap", !1125, i64 0, !1125, i64 8}
!1141 = !DILocation(line: 649, column: 10, scope: !1099, inlinedAt: !1116)
!1142 = !DILocation(line: 649, column: 28, scope: !1099, inlinedAt: !1116)
!1143 = distinct !{!1143, !1135, !1137}
!1144 = !DILocation(line: 652, column: 17, scope: !1145, inlinedAt: !1116)
!1145 = distinct !DILexicalBlock(scope: !1099, file: !1100, line: 652, column: 7)
!1146 = !{!1140, !1125, i64 8}
!1147 = !DILocation(line: 652, column: 7, scope: !1145, inlinedAt: !1116)
!1148 = !DILocation(line: 652, column: 7, scope: !1099, inlinedAt: !1116)
!1149 = !DILocation(line: 655, column: 3, scope: !1099, inlinedAt: !1116)
!1150 = !DILocation(line: 659, column: 29, scope: !1099, inlinedAt: !1116)
!1151 = !DILocation(line: 660, column: 7, scope: !1152, inlinedAt: !1116)
!1152 = distinct !DILexicalBlock(scope: !1099, file: !1100, line: 660, column: 7)
!1153 = !DILocation(line: 660, column: 19, scope: !1152, inlinedAt: !1116)
!1154 = !DILocation(line: 660, column: 22, scope: !1152, inlinedAt: !1116)
!1155 = !DILocation(line: 660, column: 7, scope: !1099, inlinedAt: !1116)
!1156 = !DILocation(line: 666, column: 7, scope: !1157, inlinedAt: !1116)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !1100, line: 661, column: 5)
!1158 = !DILocation(line: 668, column: 5, scope: !1157, inlinedAt: !1116)
!1159 = !DILocation(line: 669, column: 3, scope: !1099, inlinedAt: !1116)
!1160 = !DILocation(line: 671, column: 3, scope: !1099, inlinedAt: !1116)
!1161 = !DILocation(line: 673, column: 1, scope: !1099, inlinedAt: !1116)
!1162 = !DILocation(line: 54, column: 3, scope: !1095)
!1163 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 58, type: !1164, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!18, !18, !419}
!1166 = !{!1167, !1168}
!1167 = !DILocalVariable(name: "argc", arg: 1, scope: !1163, file: !361, line: 58, type: !18)
!1168 = !DILocalVariable(name: "argv", arg: 2, scope: !1163, file: !361, line: 58, type: !419)
!1169 = !DILocation(line: 0, scope: !1163)
!1170 = !DILocation(line: 61, column: 21, scope: !1163)
!1171 = !DILocation(line: 61, column: 3, scope: !1163)
!1172 = !DILocation(line: 62, column: 3, scope: !1163)
!1173 = !DILocation(line: 63, column: 3, scope: !1163)
!1174 = !DILocation(line: 64, column: 3, scope: !1163)
!1175 = !DILocation(line: 66, column: 3, scope: !1163)
!1176 = !DILocation(line: 69, column: 36, scope: !1163)
!1177 = !DILocation(line: 68, column: 3, scope: !1163)
!1178 = !DILocation(line: 72, column: 14, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !361, line: 72, column: 7)
!1180 = !{!1181, !1181, i64 0}
!1181 = !{!"int", !1126, i64 0}
!1182 = !DILocation(line: 72, column: 12, scope: !1179)
!1183 = !DILocation(line: 72, column: 7, scope: !1163)
!1184 = !DILocation(line: 74, column: 20, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !361, line: 73, column: 5)
!1186 = !DILocation(line: 74, column: 7, scope: !1185)
!1187 = !DILocation(line: 75, column: 7, scope: !1185)
!1188 = !DILocation(line: 72, column: 21, scope: !1179)
!1189 = !DILocation(line: 78, column: 18, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1163, file: !361, line: 78, column: 7)
!1191 = !DILocation(line: 78, column: 7, scope: !1163)
!1192 = !DILocation(line: 80, column: 20, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !361, line: 79, column: 5)
!1194 = !DILocation(line: 80, column: 55, scope: !1193)
!1195 = !DILocation(line: 80, column: 62, scope: !1193)
!1196 = !DILocation(line: 80, column: 50, scope: !1193)
!1197 = !DILocation(line: 80, column: 43, scope: !1193)
!1198 = !DILocation(line: 80, column: 7, scope: !1193)
!1199 = !DILocation(line: 81, column: 7, scope: !1193)
!1200 = !DILocation(line: 84, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1163, file: !361, line: 84, column: 7)
!1202 = !DILocation(line: 84, column: 7, scope: !1201)
!1203 = !DILocation(line: 84, column: 29, scope: !1201)
!1204 = !DILocation(line: 84, column: 7, scope: !1163)
!1205 = !DILocation(line: 85, column: 5, scope: !1201)
!1206 = !DILocation(line: 87, column: 3, scope: !1163)
!1207 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !401, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1208)
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "file", arg: 1, scope: !1207, file: !12, line: 51, type: !6)
!1210 = !DILocation(line: 0, scope: !1207)
!1211 = !DILocation(line: 53, column: 13, scope: !1207)
!1212 = !DILocation(line: 54, column: 1, scope: !1207)
!1213 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1214, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !92}
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "ignore", arg: 1, scope: !1213, file: !12, line: 88, type: !92)
!1218 = !DILocation(line: 0, scope: !1213)
!1219 = !DILocation(line: 90, column: 16, scope: !1213)
!1220 = !{!1221, !1221, i64 0}
!1221 = !{!"_Bool", !1126, i64 0}
!1222 = !DILocation(line: 91, column: 1, scope: !1213)
!1223 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1224)
!1224 = !{!1225}
!1225 = !DILocalVariable(name: "write_error", scope: !1226, file: !12, line: 122, type: !6)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !12, line: 121, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !12, line: 119, column: 7)
!1228 = !DILocation(line: 119, column: 21, scope: !1227)
!1229 = !DILocation(line: 119, column: 7, scope: !1227)
!1230 = !DILocation(line: 119, column: 29, scope: !1227)
!1231 = !DILocation(line: 120, column: 7, scope: !1227)
!1232 = !DILocation(line: 120, column: 12, scope: !1227)
!1233 = !{i8 0, i8 2}
!1234 = !DILocation(line: 120, column: 25, scope: !1227)
!1235 = !DILocation(line: 120, column: 28, scope: !1227)
!1236 = !DILocation(line: 120, column: 34, scope: !1227)
!1237 = !DILocation(line: 119, column: 7, scope: !1223)
!1238 = !DILocation(line: 122, column: 33, scope: !1226)
!1239 = !DILocation(line: 0, scope: !1226)
!1240 = !DILocation(line: 123, column: 11, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1226, file: !12, line: 123, column: 11)
!1242 = !DILocation(line: 0, scope: !1241)
!1243 = !DILocation(line: 123, column: 11, scope: !1226)
!1244 = !DILocation(line: 124, column: 36, scope: !1241)
!1245 = !DILocation(line: 124, column: 9, scope: !1241)
!1246 = !DILocation(line: 127, column: 9, scope: !1241)
!1247 = !DILocation(line: 129, column: 14, scope: !1226)
!1248 = !DILocation(line: 129, column: 7, scope: !1226)
!1249 = !DILocation(line: 134, column: 42, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1223, file: !12, line: 134, column: 7)
!1251 = !DILocation(line: 134, column: 28, scope: !1250)
!1252 = !DILocation(line: 134, column: 50, scope: !1250)
!1253 = !DILocation(line: 134, column: 7, scope: !1223)
!1254 = !DILocation(line: 135, column: 12, scope: !1250)
!1255 = !DILocation(line: 135, column: 5, scope: !1250)
!1256 = !DILocation(line: 136, column: 1, scope: !1223)
!1257 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1258, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1260)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !18, !419, !6, !6, !6, !420, null}
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1261 = !DILocalVariable(name: "argc", arg: 1, scope: !1257, file: !102, line: 45, type: !18)
!1262 = !DILocalVariable(name: "argv", arg: 2, scope: !1257, file: !102, line: 46, type: !419)
!1263 = !DILocalVariable(name: "command_name", arg: 3, scope: !1257, file: !102, line: 47, type: !6)
!1264 = !DILocalVariable(name: "package", arg: 4, scope: !1257, file: !102, line: 48, type: !6)
!1265 = !DILocalVariable(name: "version", arg: 5, scope: !1257, file: !102, line: 49, type: !6)
!1266 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1257, file: !102, line: 50, type: !420)
!1267 = !DILocalVariable(name: "c", scope: !1257, file: !102, line: 53, type: !18)
!1268 = !DILocalVariable(name: "saved_opterr", scope: !1257, file: !102, line: 54, type: !18)
!1269 = !DILocalVariable(name: "authors", scope: !1270, file: !102, line: 72, type: !1274)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !102, line: 71, column: 11)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !102, line: 65, column: 9)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !102, line: 63, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1257, file: !102, line: 61, column: 7)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1276, line: 32, baseType: !1277)
!1276 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1279 = !DILocation(line: 0, scope: !1257)
!1280 = !DILocation(line: 56, column: 18, scope: !1257)
!1281 = !DILocation(line: 59, column: 10, scope: !1257)
!1282 = !DILocation(line: 61, column: 12, scope: !1273)
!1283 = !DILocation(line: 62, column: 7, scope: !1273)
!1284 = !DILocation(line: 62, column: 15, scope: !1273)
!1285 = !DILocation(line: 61, column: 7, scope: !1257)
!1286 = !DILocation(line: 67, column: 11, scope: !1271)
!1287 = !DILocation(line: 68, column: 11, scope: !1271)
!1288 = !DILocation(line: 72, column: 13, scope: !1270)
!1289 = !DILocation(line: 72, column: 21, scope: !1270)
!1290 = !DILocation(line: 73, column: 13, scope: !1270)
!1291 = !DILocation(line: 74, column: 29, scope: !1270)
!1292 = !DILocation(line: 74, column: 13, scope: !1270)
!1293 = !DILocation(line: 75, column: 13, scope: !1270)
!1294 = !DILocation(line: 85, column: 10, scope: !1257)
!1295 = !DILocation(line: 89, column: 10, scope: !1257)
!1296 = !DILocation(line: 90, column: 1, scope: !1257)
!1297 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !417, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1299 = !DILocalVariable(name: "argc", arg: 1, scope: !1297, file: !102, line: 98, type: !18)
!1300 = !DILocalVariable(name: "argv", arg: 2, scope: !1297, file: !102, line: 99, type: !419)
!1301 = !DILocalVariable(name: "command_name", arg: 3, scope: !1297, file: !102, line: 100, type: !6)
!1302 = !DILocalVariable(name: "package", arg: 4, scope: !1297, file: !102, line: 101, type: !6)
!1303 = !DILocalVariable(name: "version", arg: 5, scope: !1297, file: !102, line: 102, type: !6)
!1304 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1297, file: !102, line: 103, type: !92)
!1305 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1297, file: !102, line: 104, type: !420)
!1306 = !DILocalVariable(name: "c", scope: !1297, file: !102, line: 107, type: !18)
!1307 = !DILocalVariable(name: "saved_opterr", scope: !1297, file: !102, line: 108, type: !18)
!1308 = !DILocalVariable(name: "optstring", scope: !1297, file: !102, line: 113, type: !6)
!1309 = !DILocalVariable(name: "authors", scope: !1310, file: !102, line: 125, type: !1274)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !102, line: 124, column: 11)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !102, line: 118, column: 9)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !102, line: 116, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1297, file: !102, line: 115, column: 7)
!1314 = !DILocation(line: 0, scope: !1297)
!1315 = !DILocation(line: 108, column: 22, scope: !1297)
!1316 = !DILocation(line: 111, column: 10, scope: !1297)
!1317 = !DILocation(line: 113, column: 27, scope: !1297)
!1318 = !DILocation(line: 115, column: 12, scope: !1313)
!1319 = !DILocation(line: 115, column: 7, scope: !1297)
!1320 = !DILocation(line: 125, column: 13, scope: !1310)
!1321 = !DILocation(line: 125, column: 21, scope: !1310)
!1322 = !DILocation(line: 126, column: 13, scope: !1310)
!1323 = !DILocation(line: 127, column: 29, scope: !1310)
!1324 = !DILocation(line: 127, column: 13, scope: !1310)
!1325 = !DILocation(line: 128, column: 13, scope: !1310)
!1326 = !DILocation(line: 132, column: 26, scope: !1311)
!1327 = !DILocation(line: 133, column: 11, scope: !1311)
!1328 = !DILocation(line: 0, scope: !1311)
!1329 = !DILocation(line: 138, column: 10, scope: !1297)
!1330 = !DILocation(line: 139, column: 1, scope: !1297)
!1331 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !401, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DILocalVariable(name: "argv0", arg: 1, scope: !1331, file: !170, line: 39, type: !6)
!1334 = !DILocalVariable(name: "slash", scope: !1331, file: !170, line: 46, type: !6)
!1335 = !DILocalVariable(name: "base", scope: !1331, file: !170, line: 47, type: !6)
!1336 = !DILocation(line: 0, scope: !1331)
!1337 = !DILocation(line: 51, column: 13, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1331, file: !170, line: 51, column: 7)
!1339 = !DILocation(line: 51, column: 7, scope: !1331)
!1340 = !DILocation(line: 55, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !170, line: 52, column: 5)
!1342 = !DILocation(line: 54, column: 7, scope: !1341)
!1343 = !DILocation(line: 56, column: 7, scope: !1341)
!1344 = !DILocation(line: 59, column: 11, scope: !1331)
!1345 = !DILocation(line: 60, column: 17, scope: !1331)
!1346 = !DILocation(line: 60, column: 11, scope: !1331)
!1347 = !DILocation(line: 61, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1331, file: !170, line: 61, column: 7)
!1349 = !DILocation(line: 61, column: 20, scope: !1348)
!1350 = !DILocation(line: 61, column: 25, scope: !1348)
!1351 = !DILocation(line: 61, column: 42, scope: !1348)
!1352 = !DILocation(line: 61, column: 28, scope: !1348)
!1353 = !DILocation(line: 61, column: 61, scope: !1348)
!1354 = !DILocation(line: 61, column: 7, scope: !1331)
!1355 = !DILocation(line: 64, column: 11, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !170, line: 64, column: 11)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !170, line: 62, column: 5)
!1358 = !DILocation(line: 64, column: 36, scope: !1356)
!1359 = !DILocation(line: 64, column: 11, scope: !1357)
!1360 = !DILocation(line: 66, column: 24, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !170, line: 65, column: 9)
!1362 = !DILocation(line: 70, column: 41, scope: !1361)
!1363 = !DILocation(line: 72, column: 9, scope: !1361)
!1364 = !DILocation(line: 84, column: 16, scope: !1331)
!1365 = !DILocation(line: 90, column: 27, scope: !1331)
!1366 = !DILocation(line: 92, column: 1, scope: !1331)
!1367 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1368, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1371)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!1370, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1371 = !{!1372, !1373, !1374}
!1372 = !DILocalVariable(name: "o", arg: 1, scope: !1367, file: !212, line: 122, type: !1370)
!1373 = !DILocalVariable(name: "e", scope: !1367, file: !212, line: 124, type: !18)
!1374 = !DILocalVariable(name: "p", scope: !1367, file: !212, line: 125, type: !1370)
!1375 = !DILocation(line: 0, scope: !1367)
!1376 = !DILocation(line: 124, column: 11, scope: !1367)
!1377 = !DILocation(line: 125, column: 40, scope: !1367)
!1378 = !DILocation(line: 125, column: 31, scope: !1367)
!1379 = !DILocation(line: 127, column: 9, scope: !1367)
!1380 = !DILocation(line: 128, column: 3, scope: !1367)
!1381 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1382, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!214, !258}
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "o", arg: 1, scope: !1381, file: !212, line: 133, type: !258)
!1386 = !DILocation(line: 0, scope: !1381)
!1387 = !DILocation(line: 135, column: 11, scope: !1381)
!1388 = !DILocation(line: 135, column: 46, scope: !1381)
!1389 = !{!1390, !1126, i64 0}
!1390 = !{!"quoting_options", !1126, i64 0, !1181, i64 4, !1126, i64 8, !1125, i64 40, !1125, i64 48}
!1391 = !DILocation(line: 135, column: 3, scope: !1381)
!1392 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1393, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !1370, !214}
!1395 = !{!1396, !1397}
!1396 = !DILocalVariable(name: "o", arg: 1, scope: !1392, file: !212, line: 141, type: !1370)
!1397 = !DILocalVariable(name: "s", arg: 2, scope: !1392, file: !212, line: 141, type: !214)
!1398 = !DILocation(line: 0, scope: !1392)
!1399 = !DILocation(line: 143, column: 4, scope: !1392)
!1400 = !DILocation(line: 143, column: 39, scope: !1392)
!1401 = !DILocation(line: 143, column: 45, scope: !1392)
!1402 = !DILocation(line: 144, column: 1, scope: !1392)
!1403 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1404, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!18, !1370, !8, !18}
!1406 = !{!1407, !1408, !1409, !1410, !1412, !1414, !1415}
!1407 = !DILocalVariable(name: "o", arg: 1, scope: !1403, file: !212, line: 152, type: !1370)
!1408 = !DILocalVariable(name: "c", arg: 2, scope: !1403, file: !212, line: 152, type: !8)
!1409 = !DILocalVariable(name: "i", arg: 3, scope: !1403, file: !212, line: 152, type: !18)
!1410 = !DILocalVariable(name: "uc", scope: !1403, file: !212, line: 154, type: !1411)
!1411 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1412 = !DILocalVariable(name: "p", scope: !1403, file: !212, line: 155, type: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1414 = !DILocalVariable(name: "shift", scope: !1403, file: !212, line: 157, type: !18)
!1415 = !DILocalVariable(name: "r", scope: !1403, file: !212, line: 158, type: !18)
!1416 = !DILocation(line: 0, scope: !1403)
!1417 = !DILocation(line: 156, column: 6, scope: !1403)
!1418 = !DILocation(line: 156, column: 62, scope: !1403)
!1419 = !DILocation(line: 156, column: 57, scope: !1403)
!1420 = !DILocation(line: 157, column: 15, scope: !1403)
!1421 = !DILocation(line: 158, column: 12, scope: !1403)
!1422 = !DILocation(line: 158, column: 15, scope: !1403)
!1423 = !DILocation(line: 158, column: 25, scope: !1403)
!1424 = !DILocation(line: 159, column: 13, scope: !1403)
!1425 = !DILocation(line: 159, column: 18, scope: !1403)
!1426 = !DILocation(line: 159, column: 23, scope: !1403)
!1427 = !DILocation(line: 159, column: 6, scope: !1403)
!1428 = !DILocation(line: 160, column: 3, scope: !1403)
!1429 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1430, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!18, !1370, !18}
!1432 = !{!1433, !1434, !1435}
!1433 = !DILocalVariable(name: "o", arg: 1, scope: !1429, file: !212, line: 168, type: !1370)
!1434 = !DILocalVariable(name: "i", arg: 2, scope: !1429, file: !212, line: 168, type: !18)
!1435 = !DILocalVariable(name: "r", scope: !1429, file: !212, line: 170, type: !18)
!1436 = !DILocation(line: 0, scope: !1429)
!1437 = !DILocation(line: 171, column: 8, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1429, file: !212, line: 171, column: 7)
!1439 = !DILocation(line: 171, column: 7, scope: !1429)
!1440 = !DILocation(line: 173, column: 10, scope: !1429)
!1441 = !{!1390, !1181, i64 4}
!1442 = !DILocation(line: 174, column: 12, scope: !1429)
!1443 = !DILocation(line: 175, column: 3, scope: !1429)
!1444 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1445, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{null, !1370, !6, !6}
!1447 = !{!1448, !1449, !1450}
!1448 = !DILocalVariable(name: "o", arg: 1, scope: !1444, file: !212, line: 179, type: !1370)
!1449 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1444, file: !212, line: 180, type: !6)
!1450 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1444, file: !212, line: 180, type: !6)
!1451 = !DILocation(line: 0, scope: !1444)
!1452 = !DILocation(line: 182, column: 8, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !212, line: 182, column: 7)
!1454 = !DILocation(line: 182, column: 7, scope: !1444)
!1455 = !DILocation(line: 184, column: 6, scope: !1444)
!1456 = !DILocation(line: 184, column: 12, scope: !1444)
!1457 = !DILocation(line: 185, column: 8, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1444, file: !212, line: 185, column: 7)
!1459 = !DILocation(line: 185, column: 23, scope: !1458)
!1460 = !DILocation(line: 185, column: 19, scope: !1458)
!1461 = !DILocation(line: 186, column: 5, scope: !1458)
!1462 = !DILocation(line: 187, column: 6, scope: !1444)
!1463 = !DILocation(line: 187, column: 17, scope: !1444)
!1464 = !{!1390, !1125, i64 40}
!1465 = !DILocation(line: 188, column: 6, scope: !1444)
!1466 = !DILocation(line: 188, column: 18, scope: !1444)
!1467 = !{!1390, !1125, i64 48}
!1468 = !DILocation(line: 189, column: 1, scope: !1444)
!1469 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1470, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!69, !25, !69, !6, !69, !258}
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1473 = !DILocalVariable(name: "buffer", arg: 1, scope: !1469, file: !212, line: 784, type: !25)
!1474 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1469, file: !212, line: 784, type: !69)
!1475 = !DILocalVariable(name: "arg", arg: 3, scope: !1469, file: !212, line: 785, type: !6)
!1476 = !DILocalVariable(name: "argsize", arg: 4, scope: !1469, file: !212, line: 785, type: !69)
!1477 = !DILocalVariable(name: "o", arg: 5, scope: !1469, file: !212, line: 786, type: !258)
!1478 = !DILocalVariable(name: "p", scope: !1469, file: !212, line: 788, type: !258)
!1479 = !DILocalVariable(name: "e", scope: !1469, file: !212, line: 789, type: !18)
!1480 = !DILocalVariable(name: "r", scope: !1469, file: !212, line: 790, type: !69)
!1481 = !DILocation(line: 0, scope: !1469)
!1482 = !DILocation(line: 788, column: 37, scope: !1469)
!1483 = !DILocation(line: 789, column: 11, scope: !1469)
!1484 = !DILocation(line: 791, column: 43, scope: !1469)
!1485 = !DILocation(line: 791, column: 53, scope: !1469)
!1486 = !DILocation(line: 791, column: 60, scope: !1469)
!1487 = !DILocation(line: 792, column: 43, scope: !1469)
!1488 = !DILocation(line: 792, column: 58, scope: !1469)
!1489 = !DILocation(line: 790, column: 14, scope: !1469)
!1490 = !DILocation(line: 793, column: 9, scope: !1469)
!1491 = !DILocation(line: 794, column: 3, scope: !1469)
!1492 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1493, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1497)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!69, !25, !69, !6, !69, !214, !18, !1495, !6, !6}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1497 = !{!1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1522, !1523, !1524, !1525, !1526, !1529, !1530, !1536, !1539, !1540, !1547, !1550, !1551, !1552, !1553, !1554, !1555}
!1498 = !DILocalVariable(name: "buffer", arg: 1, scope: !1492, file: !212, line: 256, type: !25)
!1499 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1492, file: !212, line: 256, type: !69)
!1500 = !DILocalVariable(name: "arg", arg: 3, scope: !1492, file: !212, line: 257, type: !6)
!1501 = !DILocalVariable(name: "argsize", arg: 4, scope: !1492, file: !212, line: 257, type: !69)
!1502 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1492, file: !212, line: 258, type: !214)
!1503 = !DILocalVariable(name: "flags", arg: 6, scope: !1492, file: !212, line: 258, type: !18)
!1504 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1492, file: !212, line: 259, type: !1495)
!1505 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1492, file: !212, line: 260, type: !6)
!1506 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1492, file: !212, line: 261, type: !6)
!1507 = !DILocalVariable(name: "i", scope: !1492, file: !212, line: 263, type: !69)
!1508 = !DILocalVariable(name: "len", scope: !1492, file: !212, line: 264, type: !69)
!1509 = !DILocalVariable(name: "orig_buffersize", scope: !1492, file: !212, line: 265, type: !69)
!1510 = !DILocalVariable(name: "quote_string", scope: !1492, file: !212, line: 266, type: !6)
!1511 = !DILocalVariable(name: "quote_string_len", scope: !1492, file: !212, line: 267, type: !69)
!1512 = !DILocalVariable(name: "backslash_escapes", scope: !1492, file: !212, line: 268, type: !92)
!1513 = !DILocalVariable(name: "unibyte_locale", scope: !1492, file: !212, line: 269, type: !92)
!1514 = !DILocalVariable(name: "elide_outer_quotes", scope: !1492, file: !212, line: 270, type: !92)
!1515 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1492, file: !212, line: 271, type: !92)
!1516 = !DILocalVariable(name: "encountered_single_quote", scope: !1492, file: !212, line: 272, type: !92)
!1517 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1492, file: !212, line: 273, type: !92)
!1518 = !DILocalVariable(name: "c", scope: !1519, file: !212, line: 402, type: !1411)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !212, line: 401, column: 5)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !212, line: 400, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 400, column: 3)
!1522 = !DILocalVariable(name: "esc", scope: !1519, file: !212, line: 403, type: !1411)
!1523 = !DILocalVariable(name: "is_right_quote", scope: !1519, file: !212, line: 404, type: !92)
!1524 = !DILocalVariable(name: "escaping", scope: !1519, file: !212, line: 405, type: !92)
!1525 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1519, file: !212, line: 406, type: !92)
!1526 = !DILocalVariable(name: "m", scope: !1527, file: !212, line: 610, type: !69)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 608, column: 11)
!1528 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 426, column: 9)
!1529 = !DILocalVariable(name: "printable", scope: !1527, file: !212, line: 612, type: !92)
!1530 = !DILocalVariable(name: "mbstate", scope: !1531, file: !212, line: 621, type: !1533)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !212, line: 620, column: 15)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 614, column: 17)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1534, line: 6, baseType: !1535)
!1534 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1536 = !DILocalVariable(name: "w", scope: !1537, file: !212, line: 631, type: !1538)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !212, line: 630, column: 19)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1539 = !DILocalVariable(name: "bytes", scope: !1537, file: !212, line: 632, type: !69)
!1540 = !DILocalVariable(name: "j", scope: !1541, file: !212, line: 657, type: !69)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !212, line: 656, column: 27)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !212, line: 654, column: 29)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !212, line: 649, column: 23)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !212, line: 641, column: 30)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !212, line: 636, column: 30)
!1546 = distinct !DILexicalBlock(scope: !1537, file: !212, line: 634, column: 25)
!1547 = !DILocalVariable(name: "ilim", scope: !1548, file: !212, line: 684, type: !69)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 681, column: 15)
!1549 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 680, column: 17)
!1550 = !DILabel(scope: !1492, name: "process_input", file: !212, line: 314)
!1551 = !DILabel(scope: !1528, name: "c_and_shell_escape", file: !212, line: 512)
!1552 = !DILabel(scope: !1528, name: "c_escape", file: !212, line: 517)
!1553 = !DILabel(scope: !1519, name: "store_escape", file: !212, line: 719)
!1554 = !DILabel(scope: !1519, name: "store_c", file: !212, line: 722)
!1555 = !DILabel(scope: !1492, name: "force_outer_quoting_style", file: !212, line: 763)
!1556 = !DILocation(line: 0, scope: !1492)
!1557 = !DILocation(line: 269, column: 25, scope: !1492)
!1558 = !DILocation(line: 269, column: 36, scope: !1492)
!1559 = !DILocation(line: 270, column: 8, scope: !1492)
!1560 = !DILocation(line: 0, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 526, column: 15)
!1562 = !DILocation(line: 0, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !212, line: 462, column: 19)
!1564 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 455, column: 13)
!1565 = !DILocation(line: 0, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !212, line: 449, column: 20)
!1567 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 428, column: 15)
!1568 = !DILocation(line: 0, scope: !1531)
!1569 = !DILocation(line: 0, scope: !1537)
!1570 = !DILocation(line: 0, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 712, column: 11)
!1572 = !DILocation(line: 273, column: 3, scope: !1492)
!1573 = !DILocation(line: 265, column: 10, scope: !1492)
!1574 = !DILocation(line: 266, column: 15, scope: !1492)
!1575 = !DILocation(line: 267, column: 10, scope: !1492)
!1576 = !DILocation(line: 268, column: 8, scope: !1492)
!1577 = !DILocation(line: 271, column: 8, scope: !1492)
!1578 = !DILocation(line: 272, column: 8, scope: !1492)
!1579 = !DILocation(line: 273, column: 8, scope: !1492)
!1580 = !DILocation(line: 314, column: 2, scope: !1492)
!1581 = !DILocation(line: 316, column: 3, scope: !1492)
!1582 = !DILocation(line: 323, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 317, column: 5)
!1584 = !DILocation(line: 323, column: 12, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !212, line: 323, column: 11)
!1586 = !DILocation(line: 324, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !212, line: 324, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !212, line: 324, column: 9)
!1589 = !DILocation(line: 324, column: 9, scope: !1588)
!1590 = !{!1126, !1126, i64 0}
!1591 = !DILocation(line: 362, column: 26, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !212, line: 340, column: 11)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !212, line: 339, column: 13)
!1594 = distinct !DILexicalBlock(scope: !1583, file: !212, line: 338, column: 7)
!1595 = !DILocation(line: 363, column: 27, scope: !1592)
!1596 = !DILocation(line: 364, column: 11, scope: !1592)
!1597 = !DILocation(line: 365, column: 14, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !212, line: 365, column: 13)
!1599 = !DILocation(line: 365, column: 13, scope: !1594)
!1600 = !DILocation(line: 366, column: 43, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !212, line: 366, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 366, column: 11)
!1603 = !DILocation(line: 366, column: 11, scope: !1602)
!1604 = !DILocation(line: 367, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !212, line: 367, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !212, line: 367, column: 13)
!1607 = !DILocation(line: 367, column: 13, scope: !1606)
!1608 = !DILocation(line: 366, column: 70, scope: !1601)
!1609 = distinct !{!1609, !1603, !1610}
!1610 = !DILocation(line: 367, column: 13, scope: !1602)
!1611 = !DILocation(line: 264, column: 10, scope: !1492)
!1612 = !DILocation(line: 370, column: 28, scope: !1594)
!1613 = !DILocation(line: 372, column: 7, scope: !1583)
!1614 = !DILocation(line: 376, column: 7, scope: !1583)
!1615 = !DILocation(line: 379, column: 7, scope: !1583)
!1616 = !DILocation(line: 381, column: 12, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1583, file: !212, line: 381, column: 11)
!1618 = !DILocation(line: 381, column: 11, scope: !1583)
!1619 = !DILocation(line: 386, column: 12, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1583, file: !212, line: 386, column: 11)
!1621 = !DILocation(line: 386, column: 11, scope: !1583)
!1622 = !DILocation(line: 387, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !212, line: 387, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !212, line: 387, column: 9)
!1625 = !DILocation(line: 387, column: 9, scope: !1624)
!1626 = !DILocation(line: 394, column: 7, scope: !1583)
!1627 = !DILocation(line: 397, column: 7, scope: !1583)
!1628 = !DILocation(line: 0, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 408, column: 11)
!1630 = !DILocation(line: 0, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !212, line: 419, column: 15)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !212, line: 418, column: 9)
!1633 = !DILocation(line: 0, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 556, column: 15)
!1635 = !DILocation(line: 0, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 548, column: 15)
!1637 = !DILocation(line: 0, scope: !1542)
!1638 = !DILocation(line: 0, scope: !1549)
!1639 = !DILocation(line: 0, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 509, column: 15)
!1641 = !DILocation(line: 400, column: 8, scope: !1521)
!1642 = !DILocation(line: 0, scope: !1521)
!1643 = !DILocation(line: 400, column: 27, scope: !1520)
!1644 = !DILocation(line: 400, column: 19, scope: !1520)
!1645 = !DILocation(line: 400, column: 41, scope: !1520)
!1646 = !DILocation(line: 400, column: 48, scope: !1520)
!1647 = !DILocation(line: 400, column: 3, scope: !1521)
!1648 = !DILocation(line: 400, column: 60, scope: !1520)
!1649 = !DILocation(line: 0, scope: !1519)
!1650 = !DILocation(line: 409, column: 11, scope: !1629)
!1651 = !DILocation(line: 411, column: 17, scope: !1629)
!1652 = !DILocation(line: 412, column: 39, scope: !1629)
!1653 = !DILocation(line: 416, column: 32, scope: !1629)
!1654 = !DILocation(line: 412, column: 19, scope: !1629)
!1655 = !DILocation(line: 412, column: 15, scope: !1629)
!1656 = !DILocation(line: 417, column: 11, scope: !1629)
!1657 = !DILocation(line: 417, column: 26, scope: !1629)
!1658 = !DILocation(line: 417, column: 14, scope: !1629)
!1659 = !DILocation(line: 417, column: 63, scope: !1629)
!1660 = !DILocation(line: 408, column: 11, scope: !1519)
!1661 = !DILocation(line: 424, column: 11, scope: !1519)
!1662 = !DILocation(line: 425, column: 7, scope: !1519)
!1663 = !DILocation(line: 428, column: 15, scope: !1528)
!1664 = !DILocation(line: 430, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !212, line: 430, column: 15)
!1666 = distinct !DILexicalBlock(scope: !1567, file: !212, line: 429, column: 13)
!1667 = !DILocation(line: 430, column: 15, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !212, line: 430, column: 15)
!1669 = !DILocation(line: 430, column: 15, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !212, line: 430, column: 15)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !212, line: 430, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !212, line: 430, column: 15)
!1673 = !DILocation(line: 430, column: 15, scope: !1671)
!1674 = !DILocation(line: 430, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !212, line: 430, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !212, line: 430, column: 15)
!1677 = !DILocation(line: 430, column: 15, scope: !1676)
!1678 = !DILocation(line: 430, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 430, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1672, file: !212, line: 430, column: 15)
!1681 = !DILocation(line: 430, column: 15, scope: !1680)
!1682 = !DILocation(line: 430, column: 15, scope: !1672)
!1683 = !DILocation(line: 430, column: 15, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !212, line: 430, column: 15)
!1685 = distinct !DILexicalBlock(scope: !1665, file: !212, line: 430, column: 15)
!1686 = !DILocation(line: 430, column: 15, scope: !1685)
!1687 = !DILocation(line: 438, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1666, file: !212, line: 437, column: 19)
!1689 = !DILocation(line: 438, column: 24, scope: !1688)
!1690 = !DILocation(line: 438, column: 28, scope: !1688)
!1691 = !DILocation(line: 438, column: 38, scope: !1688)
!1692 = !DILocation(line: 438, column: 48, scope: !1688)
!1693 = !DILocation(line: 438, column: 59, scope: !1688)
!1694 = !DILocation(line: 440, column: 19, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !212, line: 440, column: 19)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !212, line: 440, column: 19)
!1697 = distinct !DILexicalBlock(scope: !1688, file: !212, line: 439, column: 17)
!1698 = !DILocation(line: 440, column: 19, scope: !1696)
!1699 = !DILocation(line: 441, column: 19, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 441, column: 19)
!1701 = distinct !DILexicalBlock(scope: !1697, file: !212, line: 441, column: 19)
!1702 = !DILocation(line: 441, column: 19, scope: !1701)
!1703 = !DILocation(line: 442, column: 17, scope: !1697)
!1704 = !DILocation(line: 449, column: 20, scope: !1567)
!1705 = !DILocation(line: 454, column: 11, scope: !1528)
!1706 = !DILocation(line: 457, column: 19, scope: !1564)
!1707 = !DILocation(line: 463, column: 19, scope: !1563)
!1708 = !DILocation(line: 463, column: 24, scope: !1563)
!1709 = !DILocation(line: 463, column: 28, scope: !1563)
!1710 = !DILocation(line: 463, column: 38, scope: !1563)
!1711 = !DILocation(line: 463, column: 47, scope: !1563)
!1712 = !DILocation(line: 463, column: 41, scope: !1563)
!1713 = !DILocation(line: 463, column: 52, scope: !1563)
!1714 = !DILocation(line: 462, column: 19, scope: !1564)
!1715 = !DILocation(line: 464, column: 25, scope: !1563)
!1716 = !DILocation(line: 464, column: 17, scope: !1563)
!1717 = !DILocation(line: 471, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1563, file: !212, line: 465, column: 19)
!1719 = !DILocation(line: 475, column: 21, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !212, line: 475, column: 21)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 475, column: 21)
!1722 = !DILocation(line: 475, column: 21, scope: !1721)
!1723 = !DILocation(line: 476, column: 21, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !212, line: 476, column: 21)
!1725 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 476, column: 21)
!1726 = !DILocation(line: 476, column: 21, scope: !1725)
!1727 = !DILocation(line: 477, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 477, column: 21)
!1729 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 477, column: 21)
!1730 = !DILocation(line: 477, column: 21, scope: !1729)
!1731 = !DILocation(line: 478, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !212, line: 478, column: 21)
!1733 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 478, column: 21)
!1734 = !DILocation(line: 478, column: 21, scope: !1733)
!1735 = !DILocation(line: 479, column: 21, scope: !1718)
!1736 = !DILocation(line: 492, column: 31, scope: !1528)
!1737 = !DILocation(line: 493, column: 31, scope: !1528)
!1738 = !DILocation(line: 495, column: 31, scope: !1528)
!1739 = !DILocation(line: 496, column: 31, scope: !1528)
!1740 = !DILocation(line: 497, column: 31, scope: !1528)
!1741 = !DILocation(line: 500, column: 15, scope: !1528)
!1742 = !DILocation(line: 502, column: 19, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !212, line: 501, column: 13)
!1744 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 500, column: 15)
!1745 = !DILocation(line: 509, column: 33, scope: !1640)
!1746 = !DILocation(line: 0, scope: !1528)
!1747 = !DILocation(line: 512, column: 9, scope: !1528)
!1748 = !DILocation(line: 514, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 513, column: 15)
!1750 = !DILocation(line: 517, column: 9, scope: !1528)
!1751 = !DILocation(line: 518, column: 15, scope: !1528)
!1752 = !DILocation(line: 526, column: 15, scope: !1528)
!1753 = !DILocation(line: 526, column: 40, scope: !1561)
!1754 = !DILocation(line: 526, column: 47, scope: !1561)
!1755 = !DILocation(line: 526, column: 18, scope: !1561)
!1756 = !DILocation(line: 530, column: 17, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 530, column: 15)
!1758 = !DILocation(line: 530, column: 15, scope: !1528)
!1759 = !DILocation(line: 535, column: 11, scope: !1528)
!1760 = !DILocation(line: 549, column: 15, scope: !1636)
!1761 = !DILocation(line: 556, column: 15, scope: !1528)
!1762 = !DILocation(line: 558, column: 19, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 557, column: 13)
!1764 = !DILocation(line: 561, column: 19, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1763, file: !212, line: 561, column: 19)
!1766 = !DILocation(line: 561, column: 35, scope: !1765)
!1767 = !DILocation(line: 561, column: 30, scope: !1765)
!1768 = !DILocation(line: 570, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !212, line: 570, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !212, line: 570, column: 15)
!1771 = !DILocation(line: 570, column: 15, scope: !1770)
!1772 = !DILocation(line: 571, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 571, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1763, file: !212, line: 571, column: 15)
!1775 = !DILocation(line: 571, column: 15, scope: !1774)
!1776 = !DILocation(line: 572, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !212, line: 572, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1763, file: !212, line: 572, column: 15)
!1779 = !DILocation(line: 572, column: 15, scope: !1778)
!1780 = !DILocation(line: 574, column: 13, scope: !1763)
!1781 = !DILocation(line: 614, column: 17, scope: !1527)
!1782 = !DILocation(line: 0, scope: !1527)
!1783 = !DILocation(line: 617, column: 29, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1532, file: !212, line: 615, column: 15)
!1785 = !{!1786, !1786, i64 0}
!1786 = !{!"short", !1126, i64 0}
!1787 = !DILocation(line: 617, column: 27, scope: !1784)
!1788 = !DILocation(line: 618, column: 15, scope: !1784)
!1789 = !DILocation(line: 621, column: 17, scope: !1531)
!1790 = !DILocation(line: 621, column: 27, scope: !1531)
!1791 = !DILocalVariable(name: "__dest", arg: 1, scope: !1792, file: !1793, line: 59, type: !67)
!1792 = distinct !DISubprogram(name: "memset", scope: !1793, file: !1793, line: 59, type: !1794, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1796)
!1793 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!67, !67, !18, !69}
!1796 = !{!1791, !1797, !1798}
!1797 = !DILocalVariable(name: "__ch", arg: 2, scope: !1792, file: !1793, line: 59, type: !18)
!1798 = !DILocalVariable(name: "__len", arg: 3, scope: !1792, file: !1793, line: 59, type: !69)
!1799 = !DILocation(line: 0, scope: !1792, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 622, column: 17, scope: !1531)
!1801 = !DILocation(line: 71, column: 10, scope: !1792, inlinedAt: !1800)
!1802 = !DILocation(line: 626, column: 29, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1531, file: !212, line: 626, column: 21)
!1804 = !DILocation(line: 626, column: 21, scope: !1531)
!1805 = !DILocation(line: 627, column: 29, scope: !1803)
!1806 = !DILocation(line: 627, column: 19, scope: !1803)
!1807 = !DILocation(line: 629, column: 17, scope: !1531)
!1808 = !DILocation(line: 624, column: 19, scope: !1531)
!1809 = !DILocation(line: 625, column: 27, scope: !1531)
!1810 = !DILocation(line: 631, column: 21, scope: !1537)
!1811 = !DILocation(line: 632, column: 56, scope: !1537)
!1812 = !DILocation(line: 632, column: 50, scope: !1537)
!1813 = !DILocation(line: 633, column: 53, scope: !1537)
!1814 = !DILocation(line: 632, column: 36, scope: !1537)
!1815 = !DILocation(line: 634, column: 25, scope: !1537)
!1816 = !DILocation(line: 644, column: 38, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1544, file: !212, line: 642, column: 23)
!1818 = !DILocation(line: 644, column: 48, scope: !1817)
!1819 = !DILocation(line: 644, column: 25, scope: !1817)
!1820 = !DILocation(line: 644, column: 51, scope: !1817)
!1821 = !DILocation(line: 645, column: 28, scope: !1817)
!1822 = !DILocation(line: 644, column: 34, scope: !1817)
!1823 = distinct !{!1823, !1819, !1821}
!1824 = !DILocation(line: 658, column: 43, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 658, column: 29)
!1826 = distinct !DILexicalBlock(scope: !1541, file: !212, line: 658, column: 29)
!1827 = !DILocation(line: 655, column: 29, scope: !1542)
!1828 = !DILocation(line: 0, scope: !1541)
!1829 = !DILocation(line: 659, column: 49, scope: !1825)
!1830 = !DILocation(line: 659, column: 39, scope: !1825)
!1831 = !DILocation(line: 659, column: 31, scope: !1825)
!1832 = !DILocation(line: 658, column: 53, scope: !1825)
!1833 = !DILocation(line: 658, column: 29, scope: !1826)
!1834 = distinct !{!1834, !1833, !1835}
!1835 = !DILocation(line: 667, column: 33, scope: !1826)
!1836 = !DILocation(line: 674, column: 19, scope: !1531)
!1837 = !DILocation(line: 670, column: 41, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1543, file: !212, line: 670, column: 29)
!1839 = !DILocation(line: 670, column: 31, scope: !1838)
!1840 = !DILocation(line: 670, column: 29, scope: !1543)
!1841 = !DILocation(line: 672, column: 27, scope: !1543)
!1842 = !DILocation(line: 675, column: 26, scope: !1531)
!1843 = !DILocation(line: 675, column: 24, scope: !1531)
!1844 = !DILocation(line: 674, column: 19, scope: !1537)
!1845 = distinct !{!1845, !1807, !1846}
!1846 = !DILocation(line: 675, column: 44, scope: !1531)
!1847 = !DILocation(line: 676, column: 15, scope: !1532)
!1848 = !DILocation(line: 0, scope: !1532)
!1849 = !DILocation(line: 678, column: 40, scope: !1527)
!1850 = !DILocation(line: 680, column: 19, scope: !1549)
!1851 = !DILocation(line: 680, column: 45, scope: !1549)
!1852 = !DILocation(line: 680, column: 23, scope: !1549)
!1853 = !DILocation(line: 684, column: 33, scope: !1548)
!1854 = !DILocation(line: 0, scope: !1548)
!1855 = !DILocation(line: 686, column: 17, scope: !1548)
!1856 = !DILocation(line: 405, column: 12, scope: !1519)
!1857 = !DILocation(line: 688, column: 43, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !212, line: 688, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !212, line: 687, column: 19)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !212, line: 686, column: 17)
!1861 = distinct !DILexicalBlock(scope: !1548, file: !212, line: 686, column: 17)
!1862 = !DILocation(line: 690, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !212, line: 690, column: 25)
!1864 = distinct !DILexicalBlock(scope: !1858, file: !212, line: 689, column: 23)
!1865 = !DILocation(line: 690, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !212, line: 690, column: 25)
!1867 = !DILocation(line: 690, column: 25, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !212, line: 690, column: 25)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 690, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1866, file: !212, line: 690, column: 25)
!1871 = !DILocation(line: 690, column: 25, scope: !1869)
!1872 = !DILocation(line: 690, column: 25, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 690, column: 25)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 690, column: 25)
!1875 = !DILocation(line: 690, column: 25, scope: !1874)
!1876 = !DILocation(line: 690, column: 25, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 690, column: 25)
!1878 = distinct !DILexicalBlock(scope: !1870, file: !212, line: 690, column: 25)
!1879 = !DILocation(line: 690, column: 25, scope: !1878)
!1880 = !DILocation(line: 690, column: 25, scope: !1870)
!1881 = !DILocation(line: 690, column: 25, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !212, line: 690, column: 25)
!1883 = distinct !DILexicalBlock(scope: !1863, file: !212, line: 690, column: 25)
!1884 = !DILocation(line: 690, column: 25, scope: !1883)
!1885 = !DILocation(line: 691, column: 25, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !212, line: 691, column: 25)
!1887 = distinct !DILexicalBlock(scope: !1864, file: !212, line: 691, column: 25)
!1888 = !DILocation(line: 691, column: 25, scope: !1887)
!1889 = !DILocation(line: 692, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 692, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1864, file: !212, line: 692, column: 25)
!1892 = !DILocation(line: 692, column: 25, scope: !1891)
!1893 = !DILocation(line: 693, column: 38, scope: !1864)
!1894 = !DILocation(line: 693, column: 33, scope: !1864)
!1895 = !DILocation(line: 694, column: 23, scope: !1864)
!1896 = !DILocation(line: 695, column: 30, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1858, file: !212, line: 695, column: 30)
!1898 = !DILocation(line: 695, column: 30, scope: !1858)
!1899 = !DILocation(line: 697, column: 25, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !212, line: 697, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !212, line: 697, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1897, file: !212, line: 696, column: 23)
!1903 = !DILocation(line: 697, column: 25, scope: !1901)
!1904 = !DILocation(line: 699, column: 23, scope: !1902)
!1905 = !DILocation(line: 700, column: 35, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1859, file: !212, line: 700, column: 25)
!1907 = !DILocation(line: 700, column: 30, scope: !1906)
!1908 = !DILocation(line: 700, column: 25, scope: !1859)
!1909 = !DILocation(line: 702, column: 21, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !212, line: 702, column: 21)
!1911 = distinct !DILexicalBlock(scope: !1859, file: !212, line: 702, column: 21)
!1912 = !DILocation(line: 702, column: 21, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !212, line: 702, column: 21)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !212, line: 702, column: 21)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !212, line: 702, column: 21)
!1916 = !DILocation(line: 702, column: 21, scope: !1914)
!1917 = !DILocation(line: 702, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !212, line: 702, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !212, line: 702, column: 21)
!1920 = !DILocation(line: 702, column: 21, scope: !1919)
!1921 = !DILocation(line: 702, column: 21, scope: !1915)
!1922 = !DILocation(line: 0, scope: !1859)
!1923 = !DILocation(line: 703, column: 21, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !212, line: 703, column: 21)
!1925 = distinct !DILexicalBlock(scope: !1859, file: !212, line: 703, column: 21)
!1926 = !DILocation(line: 703, column: 21, scope: !1925)
!1927 = !DILocation(line: 704, column: 25, scope: !1859)
!1928 = !DILocation(line: 686, column: 17, scope: !1860)
!1929 = distinct !{!1929, !1930, !1931}
!1930 = !DILocation(line: 686, column: 17, scope: !1861)
!1931 = !DILocation(line: 705, column: 19, scope: !1861)
!1932 = !DILocation(line: 416, column: 30, scope: !1629)
!1933 = !DILocation(line: 712, column: 34, scope: !1571)
!1934 = !DILocation(line: 715, column: 35, scope: !1571)
!1935 = !DILocation(line: 715, column: 17, scope: !1571)
!1936 = !DILocation(line: 715, column: 47, scope: !1571)
!1937 = !DILocation(line: 715, column: 65, scope: !1571)
!1938 = !DILocation(line: 716, column: 15, scope: !1571)
!1939 = !DILocation(line: 716, column: 11, scope: !1571)
!1940 = !DILocation(line: 712, column: 11, scope: !1519)
!1941 = !DILocation(line: 400, column: 10, scope: !1521)
!1942 = !DILocation(line: 719, column: 5, scope: !1519)
!1943 = !DILocation(line: 720, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 720, column: 7)
!1945 = !DILocation(line: 720, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !212, line: 720, column: 7)
!1947 = !DILocation(line: 720, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !212, line: 720, column: 7)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !212, line: 720, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !212, line: 720, column: 7)
!1951 = !DILocation(line: 720, column: 7, scope: !1949)
!1952 = !DILocation(line: 720, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !212, line: 720, column: 7)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !212, line: 720, column: 7)
!1955 = !DILocation(line: 720, column: 7, scope: !1954)
!1956 = !DILocation(line: 720, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !212, line: 720, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1950, file: !212, line: 720, column: 7)
!1959 = !DILocation(line: 720, column: 7, scope: !1958)
!1960 = !DILocation(line: 720, column: 7, scope: !1950)
!1961 = !DILocation(line: 720, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 720, column: 7)
!1963 = distinct !DILexicalBlock(scope: !1944, file: !212, line: 720, column: 7)
!1964 = !DILocation(line: 720, column: 7, scope: !1963)
!1965 = !DILocation(line: 722, column: 5, scope: !1519)
!1966 = !DILocation(line: 723, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 723, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 723, column: 7)
!1969 = !DILocation(line: 424, column: 9, scope: !1519)
!1970 = !DILocation(line: 723, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 723, column: 7)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !212, line: 723, column: 7)
!1973 = distinct !DILexicalBlock(scope: !1967, file: !212, line: 723, column: 7)
!1974 = !DILocation(line: 723, column: 7, scope: !1972)
!1975 = !DILocation(line: 723, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !212, line: 723, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !212, line: 723, column: 7)
!1978 = !DILocation(line: 723, column: 7, scope: !1977)
!1979 = !DILocation(line: 723, column: 7, scope: !1973)
!1980 = !DILocation(line: 724, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !212, line: 724, column: 7)
!1982 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 724, column: 7)
!1983 = !DILocation(line: 724, column: 7, scope: !1982)
!1984 = !DILocation(line: 726, column: 13, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1519, file: !212, line: 726, column: 11)
!1986 = !DILocation(line: 726, column: 11, scope: !1519)
!1987 = !DILocation(line: 728, column: 5, scope: !1520)
!1988 = !DILocation(line: 400, column: 75, scope: !1520)
!1989 = !DILocation(line: 400, column: 3, scope: !1520)
!1990 = distinct !{!1990, !1647, !1991}
!1991 = !DILocation(line: 728, column: 5, scope: !1521)
!1992 = !DILocation(line: 730, column: 11, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 730, column: 7)
!1994 = !DILocation(line: 730, column: 16, scope: !1993)
!1995 = !DILocation(line: 738, column: 51, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 738, column: 7)
!1997 = !DILocation(line: 739, column: 10, scope: !1996)
!1998 = !DILocation(line: 741, column: 11, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !212, line: 741, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1996, file: !212, line: 740, column: 5)
!2001 = !DILocation(line: 741, column: 11, scope: !2000)
!2002 = !DILocation(line: 742, column: 16, scope: !1999)
!2003 = !DILocation(line: 742, column: 9, scope: !1999)
!2004 = !DILocation(line: 746, column: 18, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !212, line: 746, column: 16)
!2006 = !DILocation(line: 746, column: 32, scope: !2005)
!2007 = !DILocation(line: 746, column: 29, scope: !2005)
!2008 = !DILocation(line: 755, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 755, column: 7)
!2010 = !DILocation(line: 755, column: 20, scope: !2009)
!2011 = !DILocation(line: 756, column: 12, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !212, line: 756, column: 5)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !212, line: 756, column: 5)
!2014 = !DILocation(line: 756, column: 5, scope: !2013)
!2015 = !DILocation(line: 757, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !212, line: 757, column: 7)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !212, line: 757, column: 7)
!2018 = !DILocation(line: 757, column: 7, scope: !2017)
!2019 = !DILocation(line: 756, column: 39, scope: !2012)
!2020 = distinct !{!2020, !2014, !2021}
!2021 = !DILocation(line: 757, column: 7, scope: !2013)
!2022 = !DILocation(line: 759, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 759, column: 7)
!2024 = !DILocation(line: 759, column: 7, scope: !1492)
!2025 = !DILocation(line: 760, column: 5, scope: !2023)
!2026 = !DILocation(line: 760, column: 17, scope: !2023)
!2027 = !DILocation(line: 763, column: 2, scope: !1492)
!2028 = !DILocation(line: 766, column: 51, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1492, file: !212, line: 766, column: 7)
!2030 = !DILocation(line: 766, column: 21, scope: !2029)
!2031 = !DILocation(line: 770, column: 42, scope: !1492)
!2032 = !DILocation(line: 768, column: 10, scope: !1492)
!2033 = !DILocation(line: 768, column: 3, scope: !1492)
!2034 = !DILocation(line: 772, column: 1, scope: !1492)
!2035 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2036, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!6, !6, !214}
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DILocalVariable(name: "msgid", arg: 1, scope: !2035, file: !212, line: 207, type: !6)
!2040 = !DILocalVariable(name: "s", arg: 2, scope: !2035, file: !212, line: 207, type: !214)
!2041 = !DILocalVariable(name: "translation", scope: !2035, file: !212, line: 209, type: !6)
!2042 = !DILocalVariable(name: "locale_code", scope: !2035, file: !212, line: 210, type: !6)
!2043 = !DILocation(line: 0, scope: !2035)
!2044 = !DILocation(line: 209, column: 29, scope: !2035)
!2045 = !DILocation(line: 212, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !212, line: 212, column: 7)
!2047 = !DILocation(line: 212, column: 7, scope: !2035)
!2048 = !DILocation(line: 233, column: 17, scope: !2035)
!2049 = !DILocalVariable(name: "s1", arg: 1, scope: !2050, file: !2051, line: 160, type: !6)
!2050 = distinct !DISubprogram(name: "strcaseeq0", scope: !2051, file: !2051, line: 160, type: !2052, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2054)
!2051 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2054 = !{!2049, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064}
!2055 = !DILocalVariable(name: "s2", arg: 2, scope: !2050, file: !2051, line: 160, type: !6)
!2056 = !DILocalVariable(name: "s20", arg: 3, scope: !2050, file: !2051, line: 160, type: !8)
!2057 = !DILocalVariable(name: "s21", arg: 4, scope: !2050, file: !2051, line: 160, type: !8)
!2058 = !DILocalVariable(name: "s22", arg: 5, scope: !2050, file: !2051, line: 160, type: !8)
!2059 = !DILocalVariable(name: "s23", arg: 6, scope: !2050, file: !2051, line: 160, type: !8)
!2060 = !DILocalVariable(name: "s24", arg: 7, scope: !2050, file: !2051, line: 160, type: !8)
!2061 = !DILocalVariable(name: "s25", arg: 8, scope: !2050, file: !2051, line: 160, type: !8)
!2062 = !DILocalVariable(name: "s26", arg: 9, scope: !2050, file: !2051, line: 160, type: !8)
!2063 = !DILocalVariable(name: "s27", arg: 10, scope: !2050, file: !2051, line: 160, type: !8)
!2064 = !DILocalVariable(name: "s28", arg: 11, scope: !2050, file: !2051, line: 160, type: !8)
!2065 = !DILocation(line: 0, scope: !2050, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 234, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2035, file: !212, line: 234, column: 7)
!2068 = !DILocation(line: 162, column: 7, scope: !2069, inlinedAt: !2066)
!2069 = distinct !DILexicalBlock(scope: !2050, file: !2051, line: 162, column: 7)
!2070 = !DILocalVariable(name: "s1", arg: 1, scope: !2071, file: !2051, line: 146, type: !6)
!2071 = distinct !DISubprogram(name: "strcaseeq1", scope: !2051, file: !2051, line: 146, type: !2072, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2074 = !{!2070, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083}
!2075 = !DILocalVariable(name: "s2", arg: 2, scope: !2071, file: !2051, line: 146, type: !6)
!2076 = !DILocalVariable(name: "s21", arg: 3, scope: !2071, file: !2051, line: 146, type: !8)
!2077 = !DILocalVariable(name: "s22", arg: 4, scope: !2071, file: !2051, line: 146, type: !8)
!2078 = !DILocalVariable(name: "s23", arg: 5, scope: !2071, file: !2051, line: 146, type: !8)
!2079 = !DILocalVariable(name: "s24", arg: 6, scope: !2071, file: !2051, line: 146, type: !8)
!2080 = !DILocalVariable(name: "s25", arg: 7, scope: !2071, file: !2051, line: 146, type: !8)
!2081 = !DILocalVariable(name: "s26", arg: 8, scope: !2071, file: !2051, line: 146, type: !8)
!2082 = !DILocalVariable(name: "s27", arg: 9, scope: !2071, file: !2051, line: 146, type: !8)
!2083 = !DILocalVariable(name: "s28", arg: 10, scope: !2071, file: !2051, line: 146, type: !8)
!2084 = !DILocation(line: 0, scope: !2071, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 167, column: 16, scope: !2086, inlinedAt: !2066)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !2051, line: 164, column: 11)
!2087 = distinct !DILexicalBlock(scope: !2069, file: !2051, line: 163, column: 5)
!2088 = !DILocation(line: 148, column: 7, scope: !2089, inlinedAt: !2085)
!2089 = distinct !DILexicalBlock(scope: !2071, file: !2051, line: 148, column: 7)
!2090 = !DILocalVariable(name: "s1", arg: 1, scope: !2091, file: !2051, line: 132, type: !6)
!2091 = distinct !DISubprogram(name: "strcaseeq2", scope: !2051, file: !2051, line: 132, type: !2092, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2094 = !{!2090, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2095 = !DILocalVariable(name: "s2", arg: 2, scope: !2091, file: !2051, line: 132, type: !6)
!2096 = !DILocalVariable(name: "s22", arg: 3, scope: !2091, file: !2051, line: 132, type: !8)
!2097 = !DILocalVariable(name: "s23", arg: 4, scope: !2091, file: !2051, line: 132, type: !8)
!2098 = !DILocalVariable(name: "s24", arg: 5, scope: !2091, file: !2051, line: 132, type: !8)
!2099 = !DILocalVariable(name: "s25", arg: 6, scope: !2091, file: !2051, line: 132, type: !8)
!2100 = !DILocalVariable(name: "s26", arg: 7, scope: !2091, file: !2051, line: 132, type: !8)
!2101 = !DILocalVariable(name: "s27", arg: 8, scope: !2091, file: !2051, line: 132, type: !8)
!2102 = !DILocalVariable(name: "s28", arg: 9, scope: !2091, file: !2051, line: 132, type: !8)
!2103 = !DILocation(line: 0, scope: !2091, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 153, column: 16, scope: !2105, inlinedAt: !2085)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !2051, line: 150, column: 11)
!2106 = distinct !DILexicalBlock(scope: !2089, file: !2051, line: 149, column: 5)
!2107 = !DILocation(line: 134, column: 7, scope: !2108, inlinedAt: !2104)
!2108 = distinct !DILexicalBlock(scope: !2091, file: !2051, line: 134, column: 7)
!2109 = !DILocalVariable(name: "s1", arg: 1, scope: !2110, file: !2051, line: 118, type: !6)
!2110 = distinct !DISubprogram(name: "strcaseeq3", scope: !2051, file: !2051, line: 118, type: !2111, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2113 = !{!2109, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!2114 = !DILocalVariable(name: "s2", arg: 2, scope: !2110, file: !2051, line: 118, type: !6)
!2115 = !DILocalVariable(name: "s23", arg: 3, scope: !2110, file: !2051, line: 118, type: !8)
!2116 = !DILocalVariable(name: "s24", arg: 4, scope: !2110, file: !2051, line: 118, type: !8)
!2117 = !DILocalVariable(name: "s25", arg: 5, scope: !2110, file: !2051, line: 118, type: !8)
!2118 = !DILocalVariable(name: "s26", arg: 6, scope: !2110, file: !2051, line: 118, type: !8)
!2119 = !DILocalVariable(name: "s27", arg: 7, scope: !2110, file: !2051, line: 118, type: !8)
!2120 = !DILocalVariable(name: "s28", arg: 8, scope: !2110, file: !2051, line: 118, type: !8)
!2121 = !DILocation(line: 0, scope: !2110, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 139, column: 16, scope: !2123, inlinedAt: !2104)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !2051, line: 136, column: 11)
!2124 = distinct !DILexicalBlock(scope: !2108, file: !2051, line: 135, column: 5)
!2125 = !DILocation(line: 120, column: 7, scope: !2126, inlinedAt: !2122)
!2126 = distinct !DILexicalBlock(scope: !2110, file: !2051, line: 120, column: 7)
!2127 = !DILocation(line: 120, column: 7, scope: !2110, inlinedAt: !2122)
!2128 = !DILocalVariable(name: "s1", arg: 1, scope: !2129, file: !2051, line: 104, type: !6)
!2129 = distinct !DISubprogram(name: "strcaseeq4", scope: !2051, file: !2051, line: 104, type: !2130, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2132 = !{!2128, !2133, !2134, !2135, !2136, !2137, !2138}
!2133 = !DILocalVariable(name: "s2", arg: 2, scope: !2129, file: !2051, line: 104, type: !6)
!2134 = !DILocalVariable(name: "s24", arg: 3, scope: !2129, file: !2051, line: 104, type: !8)
!2135 = !DILocalVariable(name: "s25", arg: 4, scope: !2129, file: !2051, line: 104, type: !8)
!2136 = !DILocalVariable(name: "s26", arg: 5, scope: !2129, file: !2051, line: 104, type: !8)
!2137 = !DILocalVariable(name: "s27", arg: 6, scope: !2129, file: !2051, line: 104, type: !8)
!2138 = !DILocalVariable(name: "s28", arg: 7, scope: !2129, file: !2051, line: 104, type: !8)
!2139 = !DILocation(line: 0, scope: !2129, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 125, column: 16, scope: !2141, inlinedAt: !2122)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !2051, line: 122, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2126, file: !2051, line: 121, column: 5)
!2143 = !DILocation(line: 106, column: 7, scope: !2144, inlinedAt: !2140)
!2144 = distinct !DILexicalBlock(scope: !2129, file: !2051, line: 106, column: 7)
!2145 = !DILocation(line: 106, column: 7, scope: !2129, inlinedAt: !2140)
!2146 = !DILocalVariable(name: "s1", arg: 1, scope: !2147, file: !2051, line: 90, type: !6)
!2147 = distinct !DISubprogram(name: "strcaseeq5", scope: !2051, file: !2051, line: 90, type: !2148, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!18, !6, !6, !8, !8, !8, !8}
!2150 = !{!2146, !2151, !2152, !2153, !2154, !2155}
!2151 = !DILocalVariable(name: "s2", arg: 2, scope: !2147, file: !2051, line: 90, type: !6)
!2152 = !DILocalVariable(name: "s25", arg: 3, scope: !2147, file: !2051, line: 90, type: !8)
!2153 = !DILocalVariable(name: "s26", arg: 4, scope: !2147, file: !2051, line: 90, type: !8)
!2154 = !DILocalVariable(name: "s27", arg: 5, scope: !2147, file: !2051, line: 90, type: !8)
!2155 = !DILocalVariable(name: "s28", arg: 6, scope: !2147, file: !2051, line: 90, type: !8)
!2156 = !DILocation(line: 0, scope: !2147, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 111, column: 16, scope: !2158, inlinedAt: !2140)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !2051, line: 108, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2144, file: !2051, line: 107, column: 5)
!2160 = !DILocation(line: 92, column: 7, scope: !2161, inlinedAt: !2157)
!2161 = distinct !DILexicalBlock(scope: !2147, file: !2051, line: 92, column: 7)
!2162 = !DILocation(line: 92, column: 7, scope: !2147, inlinedAt: !2157)
!2163 = !DILocation(line: 235, column: 12, scope: !2067)
!2164 = !DILocation(line: 235, column: 21, scope: !2067)
!2165 = !DILocation(line: 235, column: 5, scope: !2067)
!2166 = !DILocation(line: 0, scope: !2071, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 167, column: 16, scope: !2086, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 236, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2035, file: !212, line: 236, column: 7)
!2170 = !DILocation(line: 148, column: 7, scope: !2089, inlinedAt: !2167)
!2171 = !DILocation(line: 0, scope: !2091, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 153, column: 16, scope: !2105, inlinedAt: !2167)
!2173 = !DILocation(line: 134, column: 7, scope: !2108, inlinedAt: !2172)
!2174 = !DILocation(line: 134, column: 7, scope: !2091, inlinedAt: !2172)
!2175 = !DILocation(line: 0, scope: !2110, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 139, column: 16, scope: !2123, inlinedAt: !2172)
!2177 = !DILocation(line: 120, column: 7, scope: !2126, inlinedAt: !2176)
!2178 = !DILocation(line: 120, column: 7, scope: !2110, inlinedAt: !2176)
!2179 = !DILocation(line: 0, scope: !2129, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 125, column: 16, scope: !2141, inlinedAt: !2176)
!2181 = !DILocation(line: 106, column: 7, scope: !2144, inlinedAt: !2180)
!2182 = !DILocation(line: 106, column: 7, scope: !2129, inlinedAt: !2180)
!2183 = !DILocation(line: 0, scope: !2147, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 111, column: 16, scope: !2158, inlinedAt: !2180)
!2185 = !DILocation(line: 92, column: 7, scope: !2161, inlinedAt: !2184)
!2186 = !DILocation(line: 92, column: 7, scope: !2147, inlinedAt: !2184)
!2187 = !DILocalVariable(name: "s1", arg: 1, scope: !2188, file: !2051, line: 76, type: !6)
!2188 = distinct !DISubprogram(name: "strcaseeq6", scope: !2051, file: !2051, line: 76, type: !2189, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!18, !6, !6, !8, !8, !8}
!2191 = !{!2187, !2192, !2193, !2194, !2195}
!2192 = !DILocalVariable(name: "s2", arg: 2, scope: !2188, file: !2051, line: 76, type: !6)
!2193 = !DILocalVariable(name: "s26", arg: 3, scope: !2188, file: !2051, line: 76, type: !8)
!2194 = !DILocalVariable(name: "s27", arg: 4, scope: !2188, file: !2051, line: 76, type: !8)
!2195 = !DILocalVariable(name: "s28", arg: 5, scope: !2188, file: !2051, line: 76, type: !8)
!2196 = !DILocation(line: 0, scope: !2188, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 97, column: 16, scope: !2198, inlinedAt: !2184)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !2051, line: 94, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2161, file: !2051, line: 93, column: 5)
!2200 = !DILocation(line: 78, column: 7, scope: !2201, inlinedAt: !2197)
!2201 = distinct !DILexicalBlock(scope: !2188, file: !2051, line: 78, column: 7)
!2202 = !DILocation(line: 78, column: 7, scope: !2188, inlinedAt: !2197)
!2203 = !DILocalVariable(name: "s1", arg: 1, scope: !2204, file: !2051, line: 62, type: !6)
!2204 = distinct !DISubprogram(name: "strcaseeq7", scope: !2051, file: !2051, line: 62, type: !2205, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!18, !6, !6, !8, !8}
!2207 = !{!2203, !2208, !2209, !2210}
!2208 = !DILocalVariable(name: "s2", arg: 2, scope: !2204, file: !2051, line: 62, type: !6)
!2209 = !DILocalVariable(name: "s27", arg: 3, scope: !2204, file: !2051, line: 62, type: !8)
!2210 = !DILocalVariable(name: "s28", arg: 4, scope: !2204, file: !2051, line: 62, type: !8)
!2211 = !DILocation(line: 0, scope: !2204, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 83, column: 16, scope: !2213, inlinedAt: !2197)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !2051, line: 80, column: 11)
!2214 = distinct !DILexicalBlock(scope: !2201, file: !2051, line: 79, column: 5)
!2215 = !DILocation(line: 64, column: 7, scope: !2216, inlinedAt: !2212)
!2216 = distinct !DILexicalBlock(scope: !2204, file: !2051, line: 64, column: 7)
!2217 = !DILocation(line: 236, column: 7, scope: !2035)
!2218 = !DILocation(line: 237, column: 12, scope: !2169)
!2219 = !DILocation(line: 237, column: 21, scope: !2169)
!2220 = !DILocation(line: 237, column: 5, scope: !2169)
!2221 = !DILocation(line: 239, column: 13, scope: !2035)
!2222 = !DILocation(line: 239, column: 11, scope: !2035)
!2223 = !DILocation(line: 239, column: 3, scope: !2035)
!2224 = !DILocation(line: 240, column: 1, scope: !2035)
!2225 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2226, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!25, !6, !69, !258}
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "arg", arg: 1, scope: !2225, file: !212, line: 799, type: !6)
!2230 = !DILocalVariable(name: "argsize", arg: 2, scope: !2225, file: !212, line: 799, type: !69)
!2231 = !DILocalVariable(name: "o", arg: 3, scope: !2225, file: !212, line: 800, type: !258)
!2232 = !DILocation(line: 0, scope: !2225)
!2233 = !DILocalVariable(name: "arg", arg: 1, scope: !2234, file: !212, line: 812, type: !6)
!2234 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2235, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!25, !6, !69, !483, !258}
!2237 = !{!2233, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2238 = !DILocalVariable(name: "argsize", arg: 2, scope: !2234, file: !212, line: 812, type: !69)
!2239 = !DILocalVariable(name: "size", arg: 3, scope: !2234, file: !212, line: 812, type: !483)
!2240 = !DILocalVariable(name: "o", arg: 4, scope: !2234, file: !212, line: 813, type: !258)
!2241 = !DILocalVariable(name: "p", scope: !2234, file: !212, line: 815, type: !258)
!2242 = !DILocalVariable(name: "e", scope: !2234, file: !212, line: 816, type: !18)
!2243 = !DILocalVariable(name: "flags", scope: !2234, file: !212, line: 818, type: !18)
!2244 = !DILocalVariable(name: "bufsize", scope: !2234, file: !212, line: 819, type: !69)
!2245 = !DILocalVariable(name: "buf", scope: !2234, file: !212, line: 823, type: !25)
!2246 = !DILocation(line: 0, scope: !2234, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 802, column: 10, scope: !2225)
!2248 = !DILocation(line: 815, column: 37, scope: !2234, inlinedAt: !2247)
!2249 = !DILocation(line: 816, column: 11, scope: !2234, inlinedAt: !2247)
!2250 = !DILocation(line: 818, column: 18, scope: !2234, inlinedAt: !2247)
!2251 = !DILocation(line: 818, column: 24, scope: !2234, inlinedAt: !2247)
!2252 = !DILocation(line: 819, column: 69, scope: !2234, inlinedAt: !2247)
!2253 = !DILocation(line: 820, column: 53, scope: !2234, inlinedAt: !2247)
!2254 = !DILocation(line: 821, column: 49, scope: !2234, inlinedAt: !2247)
!2255 = !DILocation(line: 822, column: 49, scope: !2234, inlinedAt: !2247)
!2256 = !DILocation(line: 819, column: 20, scope: !2234, inlinedAt: !2247)
!2257 = !DILocation(line: 822, column: 62, scope: !2234, inlinedAt: !2247)
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !249, line: 216, type: !69)
!2259 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2260, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!25, !69}
!2262 = !{!2258}
!2263 = !DILocation(line: 0, scope: !2259, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 823, column: 15, scope: !2234, inlinedAt: !2247)
!2265 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2264)
!2266 = !DILocation(line: 824, column: 60, scope: !2234, inlinedAt: !2247)
!2267 = !DILocation(line: 826, column: 32, scope: !2234, inlinedAt: !2247)
!2268 = !DILocation(line: 826, column: 47, scope: !2234, inlinedAt: !2247)
!2269 = !DILocation(line: 824, column: 3, scope: !2234, inlinedAt: !2247)
!2270 = !DILocation(line: 827, column: 9, scope: !2234, inlinedAt: !2247)
!2271 = !DILocation(line: 802, column: 3, scope: !2225)
!2272 = !DILocation(line: 0, scope: !2234)
!2273 = !DILocation(line: 815, column: 37, scope: !2234)
!2274 = !DILocation(line: 816, column: 11, scope: !2234)
!2275 = !DILocation(line: 818, column: 18, scope: !2234)
!2276 = !DILocation(line: 818, column: 27, scope: !2234)
!2277 = !DILocation(line: 818, column: 24, scope: !2234)
!2278 = !DILocation(line: 819, column: 69, scope: !2234)
!2279 = !DILocation(line: 820, column: 53, scope: !2234)
!2280 = !DILocation(line: 821, column: 49, scope: !2234)
!2281 = !DILocation(line: 822, column: 49, scope: !2234)
!2282 = !DILocation(line: 819, column: 20, scope: !2234)
!2283 = !DILocation(line: 822, column: 62, scope: !2234)
!2284 = !DILocation(line: 0, scope: !2259, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 823, column: 15, scope: !2234)
!2286 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2285)
!2287 = !DILocation(line: 824, column: 60, scope: !2234)
!2288 = !DILocation(line: 826, column: 32, scope: !2234)
!2289 = !DILocation(line: 826, column: 47, scope: !2234)
!2290 = !DILocation(line: 824, column: 3, scope: !2234)
!2291 = !DILocation(line: 827, column: 9, scope: !2234)
!2292 = !DILocation(line: 828, column: 7, scope: !2234)
!2293 = !DILocation(line: 829, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2234, file: !212, line: 828, column: 7)
!2295 = !{!2296, !2296, i64 0}
!2296 = !{!"long", !1126, i64 0}
!2297 = !DILocation(line: 829, column: 5, scope: !2294)
!2298 = !DILocation(line: 830, column: 3, scope: !2234)
!2299 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2300)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "sv", scope: !2299, file: !212, line: 850, type: !339)
!2302 = !DILocalVariable(name: "i", scope: !2299, file: !212, line: 851, type: !18)
!2303 = !DILocation(line: 850, column: 24, scope: !2299)
!2304 = !DILocation(line: 0, scope: !2299)
!2305 = !DILocation(line: 852, column: 19, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !212, line: 852, column: 3)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !212, line: 852, column: 3)
!2308 = !DILocation(line: 852, column: 17, scope: !2306)
!2309 = !DILocation(line: 852, column: 3, scope: !2307)
!2310 = !DILocation(line: 853, column: 17, scope: !2306)
!2311 = !{!2312, !1125, i64 8}
!2312 = !{!"slotvec", !2296, i64 0, !1125, i64 8}
!2313 = !DILocation(line: 853, column: 5, scope: !2306)
!2314 = !DILocation(line: 852, column: 28, scope: !2306)
!2315 = distinct !{!2315, !2309, !2316}
!2316 = !DILocation(line: 853, column: 20, scope: !2307)
!2317 = !DILocation(line: 854, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2299, file: !212, line: 854, column: 7)
!2319 = !DILocation(line: 854, column: 17, scope: !2318)
!2320 = !DILocation(line: 854, column: 7, scope: !2299)
!2321 = !DILocation(line: 856, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !212, line: 855, column: 5)
!2323 = !DILocation(line: 857, column: 21, scope: !2322)
!2324 = !{!2312, !2296, i64 0}
!2325 = !DILocation(line: 858, column: 20, scope: !2322)
!2326 = !DILocation(line: 859, column: 5, scope: !2322)
!2327 = !DILocation(line: 860, column: 10, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2299, file: !212, line: 860, column: 7)
!2329 = !DILocation(line: 860, column: 7, scope: !2299)
!2330 = !DILocation(line: 862, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !212, line: 861, column: 5)
!2332 = !DILocation(line: 862, column: 7, scope: !2331)
!2333 = !DILocation(line: 863, column: 15, scope: !2331)
!2334 = !DILocation(line: 864, column: 5, scope: !2331)
!2335 = !DILocation(line: 865, column: 10, scope: !2299)
!2336 = !DILocation(line: 866, column: 1, scope: !2299)
!2337 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !405, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2338)
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "n", arg: 1, scope: !2337, file: !212, line: 931, type: !18)
!2340 = !DILocalVariable(name: "arg", arg: 2, scope: !2337, file: !212, line: 931, type: !6)
!2341 = !DILocation(line: 0, scope: !2337)
!2342 = !DILocation(line: 933, column: 10, scope: !2337)
!2343 = !DILocation(line: 933, column: 3, scope: !2337)
!2344 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2345, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!25, !18, !6, !69, !258}
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2357, !2358, !2360, !2361, !2362}
!2348 = !DILocalVariable(name: "n", arg: 1, scope: !2344, file: !212, line: 877, type: !18)
!2349 = !DILocalVariable(name: "arg", arg: 2, scope: !2344, file: !212, line: 877, type: !6)
!2350 = !DILocalVariable(name: "argsize", arg: 3, scope: !2344, file: !212, line: 877, type: !69)
!2351 = !DILocalVariable(name: "options", arg: 4, scope: !2344, file: !212, line: 878, type: !258)
!2352 = !DILocalVariable(name: "e", scope: !2344, file: !212, line: 880, type: !18)
!2353 = !DILocalVariable(name: "sv", scope: !2344, file: !212, line: 882, type: !339)
!2354 = !DILocalVariable(name: "preallocated", scope: !2355, file: !212, line: 889, type: !92)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !212, line: 888, column: 5)
!2356 = distinct !DILexicalBlock(scope: !2344, file: !212, line: 887, column: 7)
!2357 = !DILocalVariable(name: "nmax", scope: !2355, file: !212, line: 890, type: !18)
!2358 = !DILocalVariable(name: "size", scope: !2359, file: !212, line: 903, type: !69)
!2359 = distinct !DILexicalBlock(scope: !2344, file: !212, line: 902, column: 3)
!2360 = !DILocalVariable(name: "val", scope: !2359, file: !212, line: 904, type: !25)
!2361 = !DILocalVariable(name: "flags", scope: !2359, file: !212, line: 906, type: !18)
!2362 = !DILocalVariable(name: "qsize", scope: !2359, file: !212, line: 907, type: !69)
!2363 = !DILocation(line: 0, scope: !2344)
!2364 = !DILocation(line: 880, column: 11, scope: !2344)
!2365 = !DILocation(line: 882, column: 24, scope: !2344)
!2366 = !DILocation(line: 884, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2344, file: !212, line: 884, column: 7)
!2368 = !DILocation(line: 884, column: 7, scope: !2344)
!2369 = !DILocation(line: 885, column: 5, scope: !2367)
!2370 = !DILocation(line: 887, column: 7, scope: !2356)
!2371 = !DILocation(line: 887, column: 14, scope: !2356)
!2372 = !DILocation(line: 887, column: 7, scope: !2344)
!2373 = !DILocation(line: 889, column: 31, scope: !2355)
!2374 = !DILocation(line: 0, scope: !2355)
!2375 = !DILocation(line: 892, column: 16, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2355, file: !212, line: 892, column: 11)
!2377 = !DILocation(line: 892, column: 11, scope: !2355)
!2378 = !DILocation(line: 893, column: 9, scope: !2376)
!2379 = !DILocation(line: 895, column: 32, scope: !2355)
!2380 = !DILocation(line: 895, column: 61, scope: !2355)
!2381 = !DILocation(line: 895, column: 58, scope: !2355)
!2382 = !DILocation(line: 895, column: 66, scope: !2355)
!2383 = !DILocation(line: 895, column: 22, scope: !2355)
!2384 = !DILocation(line: 895, column: 15, scope: !2355)
!2385 = !DILocation(line: 896, column: 11, scope: !2355)
!2386 = !DILocation(line: 897, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2355, file: !212, line: 896, column: 11)
!2388 = !{i64 0, i64 8, !2295, i64 8, i64 8, !1124}
!2389 = !DILocation(line: 897, column: 9, scope: !2387)
!2390 = !DILocation(line: 898, column: 20, scope: !2355)
!2391 = !DILocation(line: 898, column: 18, scope: !2355)
!2392 = !DILocation(line: 898, column: 15, scope: !2355)
!2393 = !DILocation(line: 898, column: 38, scope: !2355)
!2394 = !DILocation(line: 898, column: 31, scope: !2355)
!2395 = !DILocation(line: 898, column: 48, scope: !2355)
!2396 = !DILocation(line: 0, scope: !1792, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 898, column: 7, scope: !2355)
!2398 = !DILocation(line: 71, column: 10, scope: !1792, inlinedAt: !2397)
!2399 = !DILocation(line: 899, column: 14, scope: !2355)
!2400 = !DILocation(line: 900, column: 5, scope: !2355)
!2401 = !DILocation(line: 903, column: 19, scope: !2359)
!2402 = !DILocation(line: 903, column: 25, scope: !2359)
!2403 = !DILocation(line: 0, scope: !2359)
!2404 = !DILocation(line: 904, column: 23, scope: !2359)
!2405 = !DILocation(line: 906, column: 26, scope: !2359)
!2406 = !DILocation(line: 906, column: 32, scope: !2359)
!2407 = !DILocation(line: 908, column: 55, scope: !2359)
!2408 = !DILocation(line: 909, column: 46, scope: !2359)
!2409 = !DILocation(line: 910, column: 55, scope: !2359)
!2410 = !DILocation(line: 911, column: 55, scope: !2359)
!2411 = !DILocation(line: 907, column: 20, scope: !2359)
!2412 = !DILocation(line: 913, column: 14, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2359, file: !212, line: 913, column: 9)
!2414 = !DILocation(line: 913, column: 9, scope: !2359)
!2415 = !DILocation(line: 915, column: 35, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !212, line: 914, column: 7)
!2417 = !DILocation(line: 915, column: 20, scope: !2416)
!2418 = !DILocation(line: 916, column: 17, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !212, line: 916, column: 13)
!2420 = !DILocation(line: 916, column: 13, scope: !2416)
!2421 = !DILocation(line: 917, column: 11, scope: !2419)
!2422 = !DILocation(line: 0, scope: !2259, inlinedAt: !2423)
!2423 = distinct !DILocation(line: 918, column: 27, scope: !2416)
!2424 = !DILocation(line: 218, column: 10, scope: !2259, inlinedAt: !2423)
!2425 = !DILocation(line: 918, column: 19, scope: !2416)
!2426 = !DILocation(line: 919, column: 69, scope: !2416)
!2427 = !DILocation(line: 921, column: 44, scope: !2416)
!2428 = !DILocation(line: 922, column: 44, scope: !2416)
!2429 = !DILocation(line: 919, column: 9, scope: !2416)
!2430 = !DILocation(line: 923, column: 7, scope: !2416)
!2431 = !DILocation(line: 925, column: 11, scope: !2359)
!2432 = !DILocation(line: 926, column: 5, scope: !2359)
!2433 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2434, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!25, !18, !6, !69}
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "n", arg: 1, scope: !2433, file: !212, line: 937, type: !18)
!2438 = !DILocalVariable(name: "arg", arg: 2, scope: !2433, file: !212, line: 937, type: !6)
!2439 = !DILocalVariable(name: "argsize", arg: 3, scope: !2433, file: !212, line: 937, type: !69)
!2440 = !DILocation(line: 0, scope: !2433)
!2441 = !DILocation(line: 939, column: 10, scope: !2433)
!2442 = !DILocation(line: 939, column: 3, scope: !2433)
!2443 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2444)
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "arg", arg: 1, scope: !2443, file: !212, line: 943, type: !6)
!2446 = !DILocation(line: 0, scope: !2443)
!2447 = !DILocation(line: 0, scope: !2337, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 945, column: 10, scope: !2443)
!2449 = !DILocation(line: 933, column: 10, scope: !2337, inlinedAt: !2448)
!2450 = !DILocation(line: 945, column: 3, scope: !2443)
!2451 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2452, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!25, !6, !69}
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "arg", arg: 1, scope: !2451, file: !212, line: 949, type: !6)
!2456 = !DILocalVariable(name: "argsize", arg: 2, scope: !2451, file: !212, line: 949, type: !69)
!2457 = !DILocation(line: 0, scope: !2451)
!2458 = !DILocation(line: 0, scope: !2433, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 951, column: 10, scope: !2451)
!2460 = !DILocation(line: 939, column: 10, scope: !2433, inlinedAt: !2459)
!2461 = !DILocation(line: 951, column: 3, scope: !2451)
!2462 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2463, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!25, !18, !214, !6}
!2465 = !{!2466, !2467, !2468, !2469}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !212, line: 955, type: !18)
!2467 = !DILocalVariable(name: "s", arg: 2, scope: !2462, file: !212, line: 955, type: !214)
!2468 = !DILocalVariable(name: "arg", arg: 3, scope: !2462, file: !212, line: 955, type: !6)
!2469 = !DILocalVariable(name: "o", scope: !2462, file: !212, line: 957, type: !259)
!2470 = !DILocation(line: 0, scope: !2462)
!2471 = !DILocation(line: 957, column: 3, scope: !2462)
!2472 = !DILocation(line: 957, column: 32, scope: !2462)
!2473 = !DILocalVariable(name: "style", arg: 1, scope: !2474, file: !212, line: 193, type: !214)
!2474 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2475, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!260, !214}
!2477 = !{!2473, !2478}
!2478 = !DILocalVariable(name: "o", scope: !2474, file: !212, line: 195, type: !260)
!2479 = !DILocation(line: 0, scope: !2474, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 957, column: 36, scope: !2462)
!2481 = !DILocation(line: 195, column: 26, scope: !2474, inlinedAt: !2480)
!2482 = !{!2483}
!2483 = distinct !{!2483, !2484, !"quoting_options_from_style: argument 0"}
!2484 = distinct !{!2484, !"quoting_options_from_style"}
!2485 = !DILocation(line: 196, column: 13, scope: !2486, inlinedAt: !2480)
!2486 = distinct !DILexicalBlock(scope: !2474, file: !212, line: 196, column: 7)
!2487 = !DILocation(line: 196, column: 7, scope: !2474, inlinedAt: !2480)
!2488 = !DILocation(line: 197, column: 5, scope: !2486, inlinedAt: !2480)
!2489 = !DILocation(line: 198, column: 5, scope: !2474, inlinedAt: !2480)
!2490 = !DILocation(line: 198, column: 11, scope: !2474, inlinedAt: !2480)
!2491 = !DILocation(line: 958, column: 10, scope: !2462)
!2492 = !DILocation(line: 959, column: 1, scope: !2462)
!2493 = !DILocation(line: 958, column: 3, scope: !2462)
!2494 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2495, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!25, !18, !214, !6, !69}
!2497 = !{!2498, !2499, !2500, !2501, !2502}
!2498 = !DILocalVariable(name: "n", arg: 1, scope: !2494, file: !212, line: 962, type: !18)
!2499 = !DILocalVariable(name: "s", arg: 2, scope: !2494, file: !212, line: 962, type: !214)
!2500 = !DILocalVariable(name: "arg", arg: 3, scope: !2494, file: !212, line: 963, type: !6)
!2501 = !DILocalVariable(name: "argsize", arg: 4, scope: !2494, file: !212, line: 963, type: !69)
!2502 = !DILocalVariable(name: "o", scope: !2494, file: !212, line: 965, type: !259)
!2503 = !DILocation(line: 0, scope: !2494)
!2504 = !DILocation(line: 965, column: 3, scope: !2494)
!2505 = !DILocation(line: 965, column: 32, scope: !2494)
!2506 = !DILocation(line: 0, scope: !2474, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 965, column: 36, scope: !2494)
!2508 = !DILocation(line: 195, column: 26, scope: !2474, inlinedAt: !2507)
!2509 = !{!2510}
!2510 = distinct !{!2510, !2511, !"quoting_options_from_style: argument 0"}
!2511 = distinct !{!2511, !"quoting_options_from_style"}
!2512 = !DILocation(line: 196, column: 13, scope: !2486, inlinedAt: !2507)
!2513 = !DILocation(line: 196, column: 7, scope: !2474, inlinedAt: !2507)
!2514 = !DILocation(line: 197, column: 5, scope: !2486, inlinedAt: !2507)
!2515 = !DILocation(line: 198, column: 5, scope: !2474, inlinedAt: !2507)
!2516 = !DILocation(line: 198, column: 11, scope: !2474, inlinedAt: !2507)
!2517 = !DILocation(line: 966, column: 10, scope: !2494)
!2518 = !DILocation(line: 967, column: 1, scope: !2494)
!2519 = !DILocation(line: 966, column: 3, scope: !2494)
!2520 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !432, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2521)
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "s", arg: 1, scope: !2520, file: !212, line: 970, type: !214)
!2523 = !DILocalVariable(name: "arg", arg: 2, scope: !2520, file: !212, line: 970, type: !6)
!2524 = !DILocation(line: 195, column: 26, scope: !2474, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 957, column: 36, scope: !2462, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 972, column: 10, scope: !2520)
!2527 = !DILocation(line: 957, column: 32, scope: !2462, inlinedAt: !2526)
!2528 = !DILocation(line: 0, scope: !2520)
!2529 = !DILocation(line: 0, scope: !2462, inlinedAt: !2526)
!2530 = !DILocation(line: 957, column: 3, scope: !2462, inlinedAt: !2526)
!2531 = !DILocation(line: 0, scope: !2474, inlinedAt: !2525)
!2532 = !{!2533}
!2533 = distinct !{!2533, !2534, !"quoting_options_from_style: argument 0"}
!2534 = distinct !{!2534, !"quoting_options_from_style"}
!2535 = !DILocation(line: 196, column: 13, scope: !2486, inlinedAt: !2525)
!2536 = !DILocation(line: 196, column: 7, scope: !2474, inlinedAt: !2525)
!2537 = !DILocation(line: 197, column: 5, scope: !2486, inlinedAt: !2525)
!2538 = !DILocation(line: 198, column: 5, scope: !2474, inlinedAt: !2525)
!2539 = !DILocation(line: 198, column: 11, scope: !2474, inlinedAt: !2525)
!2540 = !DILocation(line: 958, column: 10, scope: !2462, inlinedAt: !2526)
!2541 = !DILocation(line: 959, column: 1, scope: !2462, inlinedAt: !2526)
!2542 = !DILocation(line: 972, column: 3, scope: !2520)
!2543 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2544, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!25, !214, !6, !69}
!2546 = !{!2547, !2548, !2549}
!2547 = !DILocalVariable(name: "s", arg: 1, scope: !2543, file: !212, line: 976, type: !214)
!2548 = !DILocalVariable(name: "arg", arg: 2, scope: !2543, file: !212, line: 976, type: !6)
!2549 = !DILocalVariable(name: "argsize", arg: 3, scope: !2543, file: !212, line: 976, type: !69)
!2550 = !DILocation(line: 195, column: 26, scope: !2474, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 965, column: 36, scope: !2494, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 978, column: 10, scope: !2543)
!2553 = !DILocation(line: 965, column: 32, scope: !2494, inlinedAt: !2552)
!2554 = !DILocation(line: 0, scope: !2543)
!2555 = !DILocation(line: 0, scope: !2494, inlinedAt: !2552)
!2556 = !DILocation(line: 965, column: 3, scope: !2494, inlinedAt: !2552)
!2557 = !DILocation(line: 0, scope: !2474, inlinedAt: !2551)
!2558 = !{!2559}
!2559 = distinct !{!2559, !2560, !"quoting_options_from_style: argument 0"}
!2560 = distinct !{!2560, !"quoting_options_from_style"}
!2561 = !DILocation(line: 196, column: 13, scope: !2486, inlinedAt: !2551)
!2562 = !DILocation(line: 196, column: 7, scope: !2474, inlinedAt: !2551)
!2563 = !DILocation(line: 197, column: 5, scope: !2486, inlinedAt: !2551)
!2564 = !DILocation(line: 198, column: 5, scope: !2474, inlinedAt: !2551)
!2565 = !DILocation(line: 198, column: 11, scope: !2474, inlinedAt: !2551)
!2566 = !DILocation(line: 966, column: 10, scope: !2494, inlinedAt: !2552)
!2567 = !DILocation(line: 967, column: 1, scope: !2494, inlinedAt: !2552)
!2568 = !DILocation(line: 978, column: 3, scope: !2543)
!2569 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2570, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!25, !6, !69, !8}
!2572 = !{!2573, !2574, !2575, !2576}
!2573 = !DILocalVariable(name: "arg", arg: 1, scope: !2569, file: !212, line: 982, type: !6)
!2574 = !DILocalVariable(name: "argsize", arg: 2, scope: !2569, file: !212, line: 982, type: !69)
!2575 = !DILocalVariable(name: "ch", arg: 3, scope: !2569, file: !212, line: 982, type: !8)
!2576 = !DILocalVariable(name: "options", scope: !2569, file: !212, line: 984, type: !260)
!2577 = !DILocation(line: 0, scope: !2569)
!2578 = !DILocation(line: 984, column: 3, scope: !2569)
!2579 = !DILocation(line: 984, column: 26, scope: !2569)
!2580 = !DILocation(line: 985, column: 13, scope: !2569)
!2581 = !{i64 0, i64 4, !1590, i64 4, i64 4, !1180, i64 8, i64 32, !1590, i64 40, i64 8, !1124, i64 48, i64 8, !1124}
!2582 = !DILocation(line: 0, scope: !1403, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 986, column: 3, scope: !2569)
!2584 = !DILocation(line: 156, column: 62, scope: !1403, inlinedAt: !2583)
!2585 = !DILocation(line: 156, column: 57, scope: !1403, inlinedAt: !2583)
!2586 = !DILocation(line: 157, column: 15, scope: !1403, inlinedAt: !2583)
!2587 = !DILocation(line: 158, column: 12, scope: !1403, inlinedAt: !2583)
!2588 = !DILocation(line: 158, column: 15, scope: !1403, inlinedAt: !2583)
!2589 = !DILocation(line: 158, column: 25, scope: !1403, inlinedAt: !2583)
!2590 = !DILocation(line: 159, column: 18, scope: !1403, inlinedAt: !2583)
!2591 = !DILocation(line: 159, column: 23, scope: !1403, inlinedAt: !2583)
!2592 = !DILocation(line: 159, column: 6, scope: !1403, inlinedAt: !2583)
!2593 = !DILocation(line: 987, column: 10, scope: !2569)
!2594 = !DILocation(line: 988, column: 1, scope: !2569)
!2595 = !DILocation(line: 987, column: 3, scope: !2569)
!2596 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2597, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!25, !6, !8}
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !212, line: 991, type: !6)
!2601 = !DILocalVariable(name: "ch", arg: 2, scope: !2596, file: !212, line: 991, type: !8)
!2602 = !DILocation(line: 984, column: 26, scope: !2569, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 993, column: 10, scope: !2596)
!2604 = !DILocation(line: 0, scope: !2596)
!2605 = !DILocation(line: 0, scope: !2569, inlinedAt: !2603)
!2606 = !DILocation(line: 984, column: 3, scope: !2569, inlinedAt: !2603)
!2607 = !DILocation(line: 985, column: 13, scope: !2569, inlinedAt: !2603)
!2608 = !DILocation(line: 0, scope: !1403, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 986, column: 3, scope: !2569, inlinedAt: !2603)
!2610 = !DILocation(line: 156, column: 62, scope: !1403, inlinedAt: !2609)
!2611 = !DILocation(line: 156, column: 57, scope: !1403, inlinedAt: !2609)
!2612 = !DILocation(line: 157, column: 15, scope: !1403, inlinedAt: !2609)
!2613 = !DILocation(line: 158, column: 12, scope: !1403, inlinedAt: !2609)
!2614 = !DILocation(line: 158, column: 15, scope: !1403, inlinedAt: !2609)
!2615 = !DILocation(line: 158, column: 25, scope: !1403, inlinedAt: !2609)
!2616 = !DILocation(line: 159, column: 18, scope: !1403, inlinedAt: !2609)
!2617 = !DILocation(line: 159, column: 23, scope: !1403, inlinedAt: !2609)
!2618 = !DILocation(line: 159, column: 6, scope: !1403, inlinedAt: !2609)
!2619 = !DILocation(line: 987, column: 10, scope: !2569, inlinedAt: !2603)
!2620 = !DILocation(line: 988, column: 1, scope: !2569, inlinedAt: !2603)
!2621 = !DILocation(line: 993, column: 3, scope: !2596)
!2622 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2623)
!2623 = !{!2624}
!2624 = !DILocalVariable(name: "arg", arg: 1, scope: !2622, file: !212, line: 997, type: !6)
!2625 = !DILocation(line: 984, column: 26, scope: !2569, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 993, column: 10, scope: !2596, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 999, column: 10, scope: !2622)
!2628 = !DILocation(line: 0, scope: !2622)
!2629 = !DILocation(line: 0, scope: !2596, inlinedAt: !2627)
!2630 = !DILocation(line: 0, scope: !2569, inlinedAt: !2626)
!2631 = !DILocation(line: 984, column: 3, scope: !2569, inlinedAt: !2626)
!2632 = !DILocation(line: 985, column: 13, scope: !2569, inlinedAt: !2626)
!2633 = !DILocation(line: 0, scope: !1403, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 986, column: 3, scope: !2569, inlinedAt: !2626)
!2635 = !DILocation(line: 156, column: 57, scope: !1403, inlinedAt: !2634)
!2636 = !DILocation(line: 158, column: 12, scope: !1403, inlinedAt: !2634)
!2637 = !DILocation(line: 159, column: 6, scope: !1403, inlinedAt: !2634)
!2638 = !DILocation(line: 987, column: 10, scope: !2569, inlinedAt: !2626)
!2639 = !DILocation(line: 988, column: 1, scope: !2569, inlinedAt: !2626)
!2640 = !DILocation(line: 999, column: 3, scope: !2622)
!2641 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2452, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2642)
!2642 = !{!2643, !2644}
!2643 = !DILocalVariable(name: "arg", arg: 1, scope: !2641, file: !212, line: 1003, type: !6)
!2644 = !DILocalVariable(name: "argsize", arg: 2, scope: !2641, file: !212, line: 1003, type: !69)
!2645 = !DILocation(line: 984, column: 26, scope: !2569, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1005, column: 10, scope: !2641)
!2647 = !DILocation(line: 0, scope: !2641)
!2648 = !DILocation(line: 0, scope: !2569, inlinedAt: !2646)
!2649 = !DILocation(line: 984, column: 3, scope: !2569, inlinedAt: !2646)
!2650 = !DILocation(line: 985, column: 13, scope: !2569, inlinedAt: !2646)
!2651 = !DILocation(line: 0, scope: !1403, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 986, column: 3, scope: !2569, inlinedAt: !2646)
!2653 = !DILocation(line: 156, column: 57, scope: !1403, inlinedAt: !2652)
!2654 = !DILocation(line: 158, column: 12, scope: !1403, inlinedAt: !2652)
!2655 = !DILocation(line: 159, column: 6, scope: !1403, inlinedAt: !2652)
!2656 = !DILocation(line: 987, column: 10, scope: !2569, inlinedAt: !2646)
!2657 = !DILocation(line: 988, column: 1, scope: !2569, inlinedAt: !2646)
!2658 = !DILocation(line: 1005, column: 3, scope: !2641)
!2659 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2463, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2660)
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DILocalVariable(name: "n", arg: 1, scope: !2659, file: !212, line: 1009, type: !18)
!2662 = !DILocalVariable(name: "s", arg: 2, scope: !2659, file: !212, line: 1009, type: !214)
!2663 = !DILocalVariable(name: "arg", arg: 3, scope: !2659, file: !212, line: 1009, type: !6)
!2664 = !DILocalVariable(name: "options", scope: !2659, file: !212, line: 1011, type: !260)
!2665 = !DILocation(line: 195, column: 26, scope: !2474, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1012, column: 13, scope: !2659)
!2667 = !DILocation(line: 0, scope: !2659)
!2668 = !DILocation(line: 1011, column: 3, scope: !2659)
!2669 = !DILocation(line: 1011, column: 26, scope: !2659)
!2670 = !DILocation(line: 1012, column: 13, scope: !2659)
!2671 = !DILocation(line: 0, scope: !2474, inlinedAt: !2666)
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"quoting_options_from_style: argument 0"}
!2674 = distinct !{!2674, !"quoting_options_from_style"}
!2675 = !DILocation(line: 196, column: 13, scope: !2486, inlinedAt: !2666)
!2676 = !DILocation(line: 196, column: 7, scope: !2474, inlinedAt: !2666)
!2677 = !DILocation(line: 197, column: 5, scope: !2486, inlinedAt: !2666)
!2678 = !DILocation(line: 0, scope: !1403, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1013, column: 3, scope: !2659)
!2680 = !DILocation(line: 156, column: 57, scope: !1403, inlinedAt: !2679)
!2681 = !DILocation(line: 158, column: 12, scope: !1403, inlinedAt: !2679)
!2682 = !DILocation(line: 159, column: 6, scope: !1403, inlinedAt: !2679)
!2683 = !DILocation(line: 1014, column: 10, scope: !2659)
!2684 = !DILocation(line: 1015, column: 1, scope: !2659)
!2685 = !DILocation(line: 1014, column: 3, scope: !2659)
!2686 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2687, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!25, !18, !6, !6, !6}
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DILocalVariable(name: "n", arg: 1, scope: !2686, file: !212, line: 1018, type: !18)
!2691 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2686, file: !212, line: 1018, type: !6)
!2692 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2686, file: !212, line: 1019, type: !6)
!2693 = !DILocalVariable(name: "arg", arg: 4, scope: !2686, file: !212, line: 1019, type: !6)
!2694 = !DILocalVariable(name: "o", scope: !2695, file: !212, line: 1030, type: !260)
!2695 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2696, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!25, !18, !6, !6, !6, !69}
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2694}
!2699 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !212, line: 1026, type: !18)
!2700 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2695, file: !212, line: 1026, type: !6)
!2701 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2695, file: !212, line: 1027, type: !6)
!2702 = !DILocalVariable(name: "arg", arg: 4, scope: !2695, file: !212, line: 1028, type: !6)
!2703 = !DILocalVariable(name: "argsize", arg: 5, scope: !2695, file: !212, line: 1028, type: !69)
!2704 = !DILocation(line: 1030, column: 26, scope: !2695, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1021, column: 10, scope: !2686)
!2706 = !DILocation(line: 0, scope: !2686)
!2707 = !DILocation(line: 0, scope: !2695, inlinedAt: !2705)
!2708 = !DILocation(line: 1030, column: 3, scope: !2695, inlinedAt: !2705)
!2709 = !DILocation(line: 1030, column: 30, scope: !2695, inlinedAt: !2705)
!2710 = !DILocation(line: 0, scope: !1444, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 1031, column: 3, scope: !2695, inlinedAt: !2705)
!2712 = !DILocation(line: 184, column: 6, scope: !1444, inlinedAt: !2711)
!2713 = !DILocation(line: 184, column: 12, scope: !1444, inlinedAt: !2711)
!2714 = !DILocation(line: 185, column: 8, scope: !1458, inlinedAt: !2711)
!2715 = !DILocation(line: 185, column: 23, scope: !1458, inlinedAt: !2711)
!2716 = !DILocation(line: 185, column: 19, scope: !1458, inlinedAt: !2711)
!2717 = !DILocation(line: 186, column: 5, scope: !1458, inlinedAt: !2711)
!2718 = !DILocation(line: 187, column: 6, scope: !1444, inlinedAt: !2711)
!2719 = !DILocation(line: 187, column: 17, scope: !1444, inlinedAt: !2711)
!2720 = !DILocation(line: 188, column: 6, scope: !1444, inlinedAt: !2711)
!2721 = !DILocation(line: 188, column: 18, scope: !1444, inlinedAt: !2711)
!2722 = !DILocation(line: 1032, column: 10, scope: !2695, inlinedAt: !2705)
!2723 = !DILocation(line: 1033, column: 1, scope: !2695, inlinedAt: !2705)
!2724 = !DILocation(line: 1021, column: 3, scope: !2686)
!2725 = !DILocation(line: 0, scope: !2695)
!2726 = !DILocation(line: 1030, column: 3, scope: !2695)
!2727 = !DILocation(line: 1030, column: 26, scope: !2695)
!2728 = !DILocation(line: 1030, column: 30, scope: !2695)
!2729 = !DILocation(line: 0, scope: !1444, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1031, column: 3, scope: !2695)
!2731 = !DILocation(line: 184, column: 6, scope: !1444, inlinedAt: !2730)
!2732 = !DILocation(line: 184, column: 12, scope: !1444, inlinedAt: !2730)
!2733 = !DILocation(line: 185, column: 8, scope: !1458, inlinedAt: !2730)
!2734 = !DILocation(line: 185, column: 23, scope: !1458, inlinedAt: !2730)
!2735 = !DILocation(line: 185, column: 19, scope: !1458, inlinedAt: !2730)
!2736 = !DILocation(line: 186, column: 5, scope: !1458, inlinedAt: !2730)
!2737 = !DILocation(line: 187, column: 6, scope: !1444, inlinedAt: !2730)
!2738 = !DILocation(line: 187, column: 17, scope: !1444, inlinedAt: !2730)
!2739 = !DILocation(line: 188, column: 6, scope: !1444, inlinedAt: !2730)
!2740 = !DILocation(line: 188, column: 18, scope: !1444, inlinedAt: !2730)
!2741 = !DILocation(line: 1032, column: 10, scope: !2695)
!2742 = !DILocation(line: 1033, column: 1, scope: !2695)
!2743 = !DILocation(line: 1032, column: 3, scope: !2695)
!2744 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2745, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!25, !6, !6, !6}
!2747 = !{!2748, !2749, !2750}
!2748 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2744, file: !212, line: 1036, type: !6)
!2749 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2744, file: !212, line: 1036, type: !6)
!2750 = !DILocalVariable(name: "arg", arg: 3, scope: !2744, file: !212, line: 1037, type: !6)
!2751 = !DILocation(line: 1030, column: 26, scope: !2695, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1021, column: 10, scope: !2686, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1039, column: 10, scope: !2744)
!2754 = !DILocation(line: 0, scope: !2744)
!2755 = !DILocation(line: 0, scope: !2686, inlinedAt: !2753)
!2756 = !DILocation(line: 0, scope: !2695, inlinedAt: !2752)
!2757 = !DILocation(line: 1030, column: 3, scope: !2695, inlinedAt: !2752)
!2758 = !DILocation(line: 1030, column: 30, scope: !2695, inlinedAt: !2752)
!2759 = !DILocation(line: 0, scope: !1444, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1031, column: 3, scope: !2695, inlinedAt: !2752)
!2761 = !DILocation(line: 184, column: 6, scope: !1444, inlinedAt: !2760)
!2762 = !DILocation(line: 184, column: 12, scope: !1444, inlinedAt: !2760)
!2763 = !DILocation(line: 185, column: 8, scope: !1458, inlinedAt: !2760)
!2764 = !DILocation(line: 185, column: 23, scope: !1458, inlinedAt: !2760)
!2765 = !DILocation(line: 185, column: 19, scope: !1458, inlinedAt: !2760)
!2766 = !DILocation(line: 186, column: 5, scope: !1458, inlinedAt: !2760)
!2767 = !DILocation(line: 187, column: 6, scope: !1444, inlinedAt: !2760)
!2768 = !DILocation(line: 187, column: 17, scope: !1444, inlinedAt: !2760)
!2769 = !DILocation(line: 188, column: 6, scope: !1444, inlinedAt: !2760)
!2770 = !DILocation(line: 188, column: 18, scope: !1444, inlinedAt: !2760)
!2771 = !DILocation(line: 1032, column: 10, scope: !2695, inlinedAt: !2752)
!2772 = !DILocation(line: 1033, column: 1, scope: !2695, inlinedAt: !2752)
!2773 = !DILocation(line: 1039, column: 3, scope: !2744)
!2774 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2775, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!25, !6, !6, !6, !69}
!2777 = !{!2778, !2779, !2780, !2781}
!2778 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2774, file: !212, line: 1043, type: !6)
!2779 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2774, file: !212, line: 1043, type: !6)
!2780 = !DILocalVariable(name: "arg", arg: 3, scope: !2774, file: !212, line: 1044, type: !6)
!2781 = !DILocalVariable(name: "argsize", arg: 4, scope: !2774, file: !212, line: 1044, type: !69)
!2782 = !DILocation(line: 1030, column: 26, scope: !2695, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1046, column: 10, scope: !2774)
!2784 = !DILocation(line: 0, scope: !2774)
!2785 = !DILocation(line: 0, scope: !2695, inlinedAt: !2783)
!2786 = !DILocation(line: 1030, column: 3, scope: !2695, inlinedAt: !2783)
!2787 = !DILocation(line: 1030, column: 30, scope: !2695, inlinedAt: !2783)
!2788 = !DILocation(line: 0, scope: !1444, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 1031, column: 3, scope: !2695, inlinedAt: !2783)
!2790 = !DILocation(line: 184, column: 6, scope: !1444, inlinedAt: !2789)
!2791 = !DILocation(line: 184, column: 12, scope: !1444, inlinedAt: !2789)
!2792 = !DILocation(line: 185, column: 8, scope: !1458, inlinedAt: !2789)
!2793 = !DILocation(line: 185, column: 23, scope: !1458, inlinedAt: !2789)
!2794 = !DILocation(line: 185, column: 19, scope: !1458, inlinedAt: !2789)
!2795 = !DILocation(line: 186, column: 5, scope: !1458, inlinedAt: !2789)
!2796 = !DILocation(line: 187, column: 6, scope: !1444, inlinedAt: !2789)
!2797 = !DILocation(line: 187, column: 17, scope: !1444, inlinedAt: !2789)
!2798 = !DILocation(line: 188, column: 6, scope: !1444, inlinedAt: !2789)
!2799 = !DILocation(line: 188, column: 18, scope: !1444, inlinedAt: !2789)
!2800 = !DILocation(line: 1032, column: 10, scope: !2695, inlinedAt: !2783)
!2801 = !DILocation(line: 1033, column: 1, scope: !2695, inlinedAt: !2783)
!2802 = !DILocation(line: 1046, column: 3, scope: !2774)
!2803 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2804, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!6, !18, !6, !69}
!2806 = !{!2807, !2808, !2809}
!2807 = !DILocalVariable(name: "n", arg: 1, scope: !2803, file: !212, line: 1061, type: !18)
!2808 = !DILocalVariable(name: "arg", arg: 2, scope: !2803, file: !212, line: 1061, type: !6)
!2809 = !DILocalVariable(name: "argsize", arg: 3, scope: !2803, file: !212, line: 1061, type: !69)
!2810 = !DILocation(line: 0, scope: !2803)
!2811 = !DILocation(line: 1063, column: 10, scope: !2803)
!2812 = !DILocation(line: 1063, column: 3, scope: !2803)
!2813 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2814, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!6, !6, !69}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "arg", arg: 1, scope: !2813, file: !212, line: 1067, type: !6)
!2818 = !DILocalVariable(name: "argsize", arg: 2, scope: !2813, file: !212, line: 1067, type: !69)
!2819 = !DILocation(line: 0, scope: !2813)
!2820 = !DILocation(line: 0, scope: !2803, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1069, column: 10, scope: !2813)
!2822 = !DILocation(line: 1063, column: 10, scope: !2803, inlinedAt: !2821)
!2823 = !DILocation(line: 1069, column: 3, scope: !2813)
!2824 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2825, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!6, !18, !6}
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !212, line: 1073, type: !18)
!2829 = !DILocalVariable(name: "arg", arg: 2, scope: !2824, file: !212, line: 1073, type: !6)
!2830 = !DILocation(line: 0, scope: !2824)
!2831 = !DILocation(line: 0, scope: !2803, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 1075, column: 10, scope: !2824)
!2833 = !DILocation(line: 1063, column: 10, scope: !2803, inlinedAt: !2832)
!2834 = !DILocation(line: 1075, column: 3, scope: !2824)
!2835 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !425, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2836)
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "arg", arg: 1, scope: !2835, file: !212, line: 1079, type: !6)
!2838 = !DILocation(line: 0, scope: !2835)
!2839 = !DILocation(line: 0, scope: !2824, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1081, column: 10, scope: !2835)
!2841 = !DILocation(line: 0, scope: !2803, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1075, column: 10, scope: !2824, inlinedAt: !2840)
!2843 = !DILocation(line: 1063, column: 10, scope: !2803, inlinedAt: !2842)
!2844 = !DILocation(line: 1081, column: 3, scope: !2835)
!2845 = distinct !DISubprogram(name: "version_etc_arn", scope: !435, file: !435, line: 61, type: !2846, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2852)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2848, !6, !6, !6, !2851, !69}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2850, line: 7, baseType: !445)
!2850 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858}
!2853 = !DILocalVariable(name: "stream", arg: 1, scope: !2845, file: !435, line: 61, type: !2848)
!2854 = !DILocalVariable(name: "command_name", arg: 2, scope: !2845, file: !435, line: 62, type: !6)
!2855 = !DILocalVariable(name: "package", arg: 3, scope: !2845, file: !435, line: 62, type: !6)
!2856 = !DILocalVariable(name: "version", arg: 4, scope: !2845, file: !435, line: 63, type: !6)
!2857 = !DILocalVariable(name: "authors", arg: 5, scope: !2845, file: !435, line: 64, type: !2851)
!2858 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2845, file: !435, line: 64, type: !69)
!2859 = !DILocation(line: 0, scope: !2845)
!2860 = !DILocation(line: 66, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2845, file: !435, line: 66, column: 7)
!2862 = !DILocation(line: 66, column: 7, scope: !2845)
!2863 = !DILocation(line: 67, column: 5, scope: !2861)
!2864 = !DILocation(line: 69, column: 5, scope: !2861)
!2865 = !DILocation(line: 83, column: 3, scope: !2845)
!2866 = !DILocation(line: 85, column: 3, scope: !2845)
!2867 = !DILocation(line: 88, column: 3, scope: !2845)
!2868 = !DILocation(line: 95, column: 3, scope: !2845)
!2869 = !DILocation(line: 97, column: 3, scope: !2845)
!2870 = !DILocation(line: 105, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2845, file: !435, line: 98, column: 5)
!2872 = !DILocation(line: 106, column: 7, scope: !2871)
!2873 = !DILocation(line: 109, column: 7, scope: !2871)
!2874 = !DILocation(line: 110, column: 7, scope: !2871)
!2875 = !DILocation(line: 113, column: 7, scope: !2871)
!2876 = !DILocation(line: 115, column: 7, scope: !2871)
!2877 = !DILocation(line: 120, column: 7, scope: !2871)
!2878 = !DILocation(line: 122, column: 7, scope: !2871)
!2879 = !DILocation(line: 127, column: 7, scope: !2871)
!2880 = !DILocation(line: 129, column: 7, scope: !2871)
!2881 = !DILocation(line: 134, column: 7, scope: !2871)
!2882 = !DILocation(line: 137, column: 7, scope: !2871)
!2883 = !DILocation(line: 142, column: 7, scope: !2871)
!2884 = !DILocation(line: 145, column: 7, scope: !2871)
!2885 = !DILocation(line: 150, column: 7, scope: !2871)
!2886 = !DILocation(line: 154, column: 7, scope: !2871)
!2887 = !DILocation(line: 159, column: 7, scope: !2871)
!2888 = !DILocation(line: 163, column: 7, scope: !2871)
!2889 = !DILocation(line: 170, column: 7, scope: !2871)
!2890 = !DILocation(line: 174, column: 7, scope: !2871)
!2891 = !DILocation(line: 176, column: 1, scope: !2845)
!2892 = distinct !DISubprogram(name: "version_etc_ar", scope: !435, file: !435, line: 183, type: !2893, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2848, !6, !6, !6, !2851}
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901}
!2896 = !DILocalVariable(name: "stream", arg: 1, scope: !2892, file: !435, line: 183, type: !2848)
!2897 = !DILocalVariable(name: "command_name", arg: 2, scope: !2892, file: !435, line: 184, type: !6)
!2898 = !DILocalVariable(name: "package", arg: 3, scope: !2892, file: !435, line: 184, type: !6)
!2899 = !DILocalVariable(name: "version", arg: 4, scope: !2892, file: !435, line: 185, type: !6)
!2900 = !DILocalVariable(name: "authors", arg: 5, scope: !2892, file: !435, line: 185, type: !2851)
!2901 = !DILocalVariable(name: "n_authors", scope: !2892, file: !435, line: 187, type: !69)
!2902 = !DILocation(line: 0, scope: !2892)
!2903 = !DILocation(line: 189, column: 8, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2892, file: !435, line: 189, column: 3)
!2905 = !DILocation(line: 0, scope: !2904)
!2906 = !DILocation(line: 189, column: 23, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !435, line: 189, column: 3)
!2908 = !DILocation(line: 189, column: 3, scope: !2904)
!2909 = !DILocation(line: 189, column: 52, scope: !2907)
!2910 = distinct !{!2910, !2908, !2911}
!2911 = !DILocation(line: 190, column: 5, scope: !2904)
!2912 = !DILocation(line: 191, column: 3, scope: !2892)
!2913 = !DILocation(line: 192, column: 1, scope: !2892)
!2914 = distinct !DISubprogram(name: "version_etc_va", scope: !435, file: !435, line: 199, type: !2915, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2924)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !2848, !6, !6, !6, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !435, line: 192, size: 192, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2918, file: !435, line: 192, baseType: !159, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2918, file: !435, line: 192, baseType: !159, size: 32, offset: 32)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2918, file: !435, line: 192, baseType: !67, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2918, file: !435, line: 192, baseType: !67, size: 64, offset: 128)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2925 = !DILocalVariable(name: "stream", arg: 1, scope: !2914, file: !435, line: 199, type: !2848)
!2926 = !DILocalVariable(name: "command_name", arg: 2, scope: !2914, file: !435, line: 200, type: !6)
!2927 = !DILocalVariable(name: "package", arg: 3, scope: !2914, file: !435, line: 200, type: !6)
!2928 = !DILocalVariable(name: "version", arg: 4, scope: !2914, file: !435, line: 201, type: !6)
!2929 = !DILocalVariable(name: "authors", arg: 5, scope: !2914, file: !435, line: 201, type: !2917)
!2930 = !DILocalVariable(name: "n_authors", scope: !2914, file: !435, line: 203, type: !69)
!2931 = !DILocalVariable(name: "authtab", scope: !2914, file: !435, line: 204, type: !2932)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!2933 = !DILocation(line: 0, scope: !2914)
!2934 = !DILocation(line: 204, column: 3, scope: !2914)
!2935 = !DILocation(line: 204, column: 15, scope: !2914)
!2936 = !DILocation(line: 0, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !435, line: 206, column: 3)
!2938 = distinct !DILexicalBlock(scope: !2914, file: !435, line: 206, column: 3)
!2939 = !DILocation(line: 208, column: 35, scope: !2937)
!2940 = !DILocation(line: 208, column: 14, scope: !2937)
!2941 = !DILocation(line: 208, column: 33, scope: !2937)
!2942 = !DILocation(line: 208, column: 67, scope: !2937)
!2943 = !DILocation(line: 206, column: 3, scope: !2938)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 211, column: 3, scope: !2914)
!2946 = !DILocation(line: 213, column: 1, scope: !2914)
!2947 = distinct !DISubprogram(name: "version_etc", scope: !435, file: !435, line: 230, type: !2948, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !2848, !6, !6, !6, null}
!2950 = !{!2951, !2952, !2953, !2954, !2955}
!2951 = !DILocalVariable(name: "stream", arg: 1, scope: !2947, file: !435, line: 230, type: !2848)
!2952 = !DILocalVariable(name: "command_name", arg: 2, scope: !2947, file: !435, line: 231, type: !6)
!2953 = !DILocalVariable(name: "package", arg: 3, scope: !2947, file: !435, line: 231, type: !6)
!2954 = !DILocalVariable(name: "version", arg: 4, scope: !2947, file: !435, line: 232, type: !6)
!2955 = !DILocalVariable(name: "authors", scope: !2947, file: !435, line: 234, type: !2956)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !2957)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1276, line: 32, baseType: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !435, line: 234, baseType: !2959)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2918, size: 192, elements: !52)
!2960 = !DILocation(line: 0, scope: !2947)
!2961 = !DILocation(line: 234, column: 3, scope: !2947)
!2962 = !DILocation(line: 234, column: 11, scope: !2947)
!2963 = !DILocation(line: 236, column: 3, scope: !2947)
!2964 = !DILocation(line: 237, column: 3, scope: !2947)
!2965 = !DILocation(line: 238, column: 3, scope: !2947)
!2966 = !DILocation(line: 239, column: 1, scope: !2947)
!2967 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !435, file: !435, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4)
!2968 = !DILocation(line: 244, column: 3, scope: !2967)
!2969 = !DILocation(line: 249, column: 3, scope: !2967)
!2970 = !DILocation(line: 255, column: 3, scope: !2967)
!2971 = !DILocation(line: 260, column: 3, scope: !2967)
!2972 = !DILocation(line: 262, column: 1, scope: !2967)
!2973 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !2974, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!67, !69, !69}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !249, line: 99, type: !69)
!2978 = !DILocalVariable(name: "s", arg: 2, scope: !2973, file: !249, line: 99, type: !69)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 101, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2973, file: !249, line: 101, column: 7)
!2982 = !DILocation(line: 101, column: 7, scope: !2973)
!2983 = !DILocation(line: 102, column: 5, scope: !2981)
!2984 = !DILocation(line: 103, column: 21, scope: !2973)
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !477, line: 39, type: !69)
!2986 = distinct !DISubprogram(name: "xmalloc", scope: !477, file: !477, line: 39, type: !2987, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!67, !69}
!2989 = !{!2985, !2990}
!2990 = !DILocalVariable(name: "p", scope: !2986, file: !477, line: 41, type: !67)
!2991 = !DILocation(line: 0, scope: !2986, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 103, column: 10, scope: !2973)
!2993 = !DILocation(line: 41, column: 13, scope: !2986, inlinedAt: !2992)
!2994 = !DILocation(line: 42, column: 8, scope: !2995, inlinedAt: !2992)
!2995 = distinct !DILexicalBlock(scope: !2986, file: !477, line: 42, column: 7)
!2996 = !DILocation(line: 42, column: 15, scope: !2995, inlinedAt: !2992)
!2997 = !DILocation(line: 42, column: 10, scope: !2995, inlinedAt: !2992)
!2998 = !DILocation(line: 43, column: 5, scope: !2995, inlinedAt: !2992)
!2999 = !DILocation(line: 103, column: 3, scope: !2973)
!3000 = !DILocation(line: 0, scope: !2986)
!3001 = !DILocation(line: 41, column: 13, scope: !2986)
!3002 = !DILocation(line: 42, column: 8, scope: !2995)
!3003 = !DILocation(line: 42, column: 15, scope: !2995)
!3004 = !DILocation(line: 42, column: 10, scope: !2995)
!3005 = !DILocation(line: 43, column: 5, scope: !2995)
!3006 = !DILocation(line: 44, column: 3, scope: !2986)
!3007 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3008, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!67, !67, !69, !69}
!3010 = !{!3011, !3012, !3013}
!3011 = !DILocalVariable(name: "p", arg: 1, scope: !3007, file: !249, line: 112, type: !67)
!3012 = !DILocalVariable(name: "n", arg: 2, scope: !3007, file: !249, line: 112, type: !69)
!3013 = !DILocalVariable(name: "s", arg: 3, scope: !3007, file: !249, line: 112, type: !69)
!3014 = !DILocation(line: 0, scope: !3007)
!3015 = !DILocation(line: 114, column: 7, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3007, file: !249, line: 114, column: 7)
!3017 = !DILocation(line: 114, column: 7, scope: !3007)
!3018 = !DILocation(line: 115, column: 5, scope: !3016)
!3019 = !DILocation(line: 116, column: 25, scope: !3007)
!3020 = !DILocalVariable(name: "p", arg: 1, scope: !3021, file: !477, line: 51, type: !67)
!3021 = distinct !DISubprogram(name: "xrealloc", scope: !477, file: !477, line: 51, type: !3022, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!67, !67, !69}
!3024 = !{!3020, !3025}
!3025 = !DILocalVariable(name: "n", arg: 2, scope: !3021, file: !477, line: 51, type: !69)
!3026 = !DILocation(line: 0, scope: !3021, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 116, column: 10, scope: !3007)
!3028 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3027)
!3029 = distinct !DILexicalBlock(scope: !3021, file: !477, line: 53, column: 7)
!3030 = !DILocation(line: 53, column: 13, scope: !3029, inlinedAt: !3027)
!3031 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3027)
!3032 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3027)
!3033 = distinct !DILexicalBlock(scope: !3029, file: !477, line: 54, column: 5)
!3034 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3027)
!3035 = !DILocation(line: 61, column: 7, scope: !3021, inlinedAt: !3027)
!3036 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3027)
!3037 = distinct !DILexicalBlock(scope: !3021, file: !477, line: 62, column: 7)
!3038 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3027)
!3039 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3027)
!3040 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3027)
!3041 = !DILocation(line: 116, column: 3, scope: !3007)
!3042 = !DILocation(line: 0, scope: !3021)
!3043 = !DILocation(line: 53, column: 8, scope: !3029)
!3044 = !DILocation(line: 53, column: 13, scope: !3029)
!3045 = !DILocation(line: 53, column: 10, scope: !3029)
!3046 = !DILocation(line: 57, column: 7, scope: !3033)
!3047 = !DILocation(line: 58, column: 7, scope: !3033)
!3048 = !DILocation(line: 61, column: 7, scope: !3021)
!3049 = !DILocation(line: 62, column: 8, scope: !3037)
!3050 = !DILocation(line: 62, column: 13, scope: !3037)
!3051 = !DILocation(line: 62, column: 10, scope: !3037)
!3052 = !DILocation(line: 63, column: 5, scope: !3037)
!3053 = !DILocation(line: 65, column: 1, scope: !3021)
!3054 = !DILocation(line: 0, scope: !480)
!3055 = !DILocation(line: 176, column: 14, scope: !480)
!3056 = !DILocation(line: 178, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !480, file: !249, line: 178, column: 7)
!3058 = !DILocation(line: 178, column: 7, scope: !480)
!3059 = !DILocation(line: 180, column: 13, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !249, line: 180, column: 11)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !249, line: 179, column: 5)
!3062 = !DILocation(line: 180, column: 11, scope: !3061)
!3063 = !DILocation(line: 188, column: 30, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !249, line: 181, column: 9)
!3065 = !DILocation(line: 189, column: 16, scope: !3064)
!3066 = !DILocation(line: 189, column: 13, scope: !3064)
!3067 = !DILocation(line: 190, column: 9, scope: !3064)
!3068 = !DILocation(line: 191, column: 11, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3061, file: !249, line: 191, column: 11)
!3070 = !DILocation(line: 191, column: 11, scope: !3061)
!3071 = !DILocation(line: 206, column: 7, scope: !480)
!3072 = !DILocation(line: 207, column: 25, scope: !480)
!3073 = !DILocation(line: 0, scope: !3021, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 207, column: 10, scope: !480)
!3075 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3074)
!3076 = !DILocation(line: 192, column: 9, scope: !3069)
!3077 = !DILocation(line: 200, column: 69, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !249, line: 200, column: 11)
!3079 = distinct !DILexicalBlock(scope: !3057, file: !249, line: 195, column: 5)
!3080 = !DILocation(line: 201, column: 11, scope: !3078)
!3081 = !DILocation(line: 200, column: 11, scope: !3079)
!3082 = !DILocation(line: 202, column: 9, scope: !3078)
!3083 = !DILocation(line: 203, column: 14, scope: !3079)
!3084 = !DILocation(line: 203, column: 18, scope: !3079)
!3085 = !DILocation(line: 203, column: 9, scope: !3079)
!3086 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3074)
!3087 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3074)
!3088 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3074)
!3089 = !DILocation(line: 61, column: 7, scope: !3021, inlinedAt: !3074)
!3090 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3074)
!3091 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3074)
!3092 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3074)
!3093 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3074)
!3094 = !DILocation(line: 207, column: 3, scope: !480)
!3095 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2260, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3096)
!3096 = !{!3097}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !249, line: 216, type: !69)
!3098 = !DILocation(line: 0, scope: !3095)
!3099 = !DILocation(line: 0, scope: !2986, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 218, column: 10, scope: !3095)
!3101 = !DILocation(line: 41, column: 13, scope: !2986, inlinedAt: !3100)
!3102 = !DILocation(line: 42, column: 8, scope: !2995, inlinedAt: !3100)
!3103 = !DILocation(line: 42, column: 15, scope: !2995, inlinedAt: !3100)
!3104 = !DILocation(line: 42, column: 10, scope: !2995, inlinedAt: !3100)
!3105 = !DILocation(line: 43, column: 5, scope: !2995, inlinedAt: !3100)
!3106 = !DILocation(line: 218, column: 3, scope: !3095)
!3107 = distinct !DISubprogram(name: "x2realloc", scope: !477, file: !477, line: 74, type: !3108, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!67, !67, !483}
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "p", arg: 1, scope: !3107, file: !477, line: 74, type: !67)
!3112 = !DILocalVariable(name: "pn", arg: 2, scope: !3107, file: !477, line: 74, type: !483)
!3113 = !DILocation(line: 0, scope: !3107)
!3114 = !DILocation(line: 0, scope: !480, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 76, column: 10, scope: !3107)
!3116 = !DILocation(line: 176, column: 14, scope: !480, inlinedAt: !3115)
!3117 = !DILocation(line: 178, column: 9, scope: !3057, inlinedAt: !3115)
!3118 = !DILocation(line: 178, column: 7, scope: !480, inlinedAt: !3115)
!3119 = !DILocation(line: 180, column: 13, scope: !3060, inlinedAt: !3115)
!3120 = !DILocation(line: 180, column: 11, scope: !3061, inlinedAt: !3115)
!3121 = !DILocation(line: 191, column: 11, scope: !3069, inlinedAt: !3115)
!3122 = !DILocation(line: 191, column: 11, scope: !3061, inlinedAt: !3115)
!3123 = !DILocation(line: 206, column: 7, scope: !480, inlinedAt: !3115)
!3124 = !DILocation(line: 0, scope: !3021, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 207, column: 10, scope: !480, inlinedAt: !3115)
!3126 = !DILocation(line: 53, column: 10, scope: !3029, inlinedAt: !3125)
!3127 = !DILocation(line: 192, column: 9, scope: !3069, inlinedAt: !3115)
!3128 = !DILocation(line: 201, column: 11, scope: !3078, inlinedAt: !3115)
!3129 = !DILocation(line: 200, column: 11, scope: !3079, inlinedAt: !3115)
!3130 = !DILocation(line: 202, column: 9, scope: !3078, inlinedAt: !3115)
!3131 = !DILocation(line: 203, column: 14, scope: !3079, inlinedAt: !3115)
!3132 = !DILocation(line: 203, column: 18, scope: !3079, inlinedAt: !3115)
!3133 = !DILocation(line: 203, column: 9, scope: !3079, inlinedAt: !3115)
!3134 = !DILocation(line: 53, column: 8, scope: !3029, inlinedAt: !3125)
!3135 = !DILocation(line: 57, column: 7, scope: !3033, inlinedAt: !3125)
!3136 = !DILocation(line: 58, column: 7, scope: !3033, inlinedAt: !3125)
!3137 = !DILocation(line: 61, column: 7, scope: !3021, inlinedAt: !3125)
!3138 = !DILocation(line: 62, column: 8, scope: !3037, inlinedAt: !3125)
!3139 = !DILocation(line: 62, column: 13, scope: !3037, inlinedAt: !3125)
!3140 = !DILocation(line: 62, column: 10, scope: !3037, inlinedAt: !3125)
!3141 = !DILocation(line: 63, column: 5, scope: !3037, inlinedAt: !3125)
!3142 = !DILocation(line: 76, column: 3, scope: !3107)
!3143 = distinct !DISubprogram(name: "xzalloc", scope: !477, file: !477, line: 84, type: !2987, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "n", arg: 1, scope: !3143, file: !477, line: 84, type: !69)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !477, line: 93, type: !69)
!3148 = distinct !DISubprogram(name: "xcalloc", scope: !477, file: !477, line: 93, type: !2974, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3149)
!3149 = !{!3147, !3150, !3151}
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !477, line: 93, type: !69)
!3151 = !DILocalVariable(name: "p", scope: !3148, file: !477, line: 95, type: !67)
!3152 = !DILocation(line: 0, scope: !3148, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 86, column: 10, scope: !3143)
!3154 = !DILocation(line: 100, column: 7, scope: !3155, inlinedAt: !3153)
!3155 = distinct !DILexicalBlock(scope: !3148, file: !477, line: 100, column: 7)
!3156 = !DILocation(line: 101, column: 7, scope: !3155, inlinedAt: !3153)
!3157 = !DILocation(line: 101, column: 18, scope: !3155, inlinedAt: !3153)
!3158 = !DILocation(line: 101, column: 16, scope: !3155, inlinedAt: !3153)
!3159 = !DILocation(line: 100, column: 7, scope: !3148, inlinedAt: !3153)
!3160 = !DILocation(line: 102, column: 5, scope: !3155, inlinedAt: !3153)
!3161 = !DILocation(line: 86, column: 3, scope: !3143)
!3162 = !DILocation(line: 0, scope: !3148)
!3163 = !DILocation(line: 100, column: 7, scope: !3155)
!3164 = !DILocation(line: 101, column: 7, scope: !3155)
!3165 = !DILocation(line: 101, column: 18, scope: !3155)
!3166 = !DILocation(line: 101, column: 16, scope: !3155)
!3167 = !DILocation(line: 100, column: 7, scope: !3148)
!3168 = !DILocation(line: 102, column: 5, scope: !3155)
!3169 = !DILocation(line: 103, column: 3, scope: !3148)
!3170 = distinct !DISubprogram(name: "xmemdup", scope: !477, file: !477, line: 111, type: !3171, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3173)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!67, !252, !69}
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "p", arg: 1, scope: !3170, file: !477, line: 111, type: !252)
!3175 = !DILocalVariable(name: "s", arg: 2, scope: !3170, file: !477, line: 111, type: !69)
!3176 = !DILocation(line: 0, scope: !3170)
!3177 = !DILocation(line: 0, scope: !2986, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 113, column: 18, scope: !3170)
!3179 = !DILocation(line: 41, column: 13, scope: !2986, inlinedAt: !3178)
!3180 = !DILocation(line: 42, column: 8, scope: !2995, inlinedAt: !3178)
!3181 = !DILocation(line: 42, column: 15, scope: !2995, inlinedAt: !3178)
!3182 = !DILocation(line: 42, column: 10, scope: !2995, inlinedAt: !3178)
!3183 = !DILocation(line: 43, column: 5, scope: !2995, inlinedAt: !3178)
!3184 = !DILocalVariable(name: "__dest", arg: 1, scope: !3185, file: !1793, line: 31, type: !3188)
!3185 = distinct !DISubprogram(name: "memcpy", scope: !1793, file: !1793, line: 31, type: !3186, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3190)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!67, !3188, !3189, !69}
!3188 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3190 = !{!3184, !3191, !3192}
!3191 = !DILocalVariable(name: "__src", arg: 2, scope: !3185, file: !1793, line: 31, type: !3189)
!3192 = !DILocalVariable(name: "__len", arg: 3, scope: !3185, file: !1793, line: 31, type: !69)
!3193 = !DILocation(line: 0, scope: !3185, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 113, column: 10, scope: !3170)
!3195 = !DILocation(line: 34, column: 10, scope: !3185, inlinedAt: !3194)
!3196 = !DILocation(line: 113, column: 3, scope: !3170)
!3197 = distinct !DISubprogram(name: "xstrdup", scope: !477, file: !477, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !476, retainedNodes: !3198)
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "string", arg: 1, scope: !3197, file: !477, line: 119, type: !6)
!3200 = !DILocation(line: 0, scope: !3197)
!3201 = !DILocation(line: 121, column: 27, scope: !3197)
!3202 = !DILocation(line: 121, column: 43, scope: !3197)
!3203 = !DILocation(line: 0, scope: !3170, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 121, column: 10, scope: !3197)
!3205 = !DILocation(line: 0, scope: !2986, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 113, column: 18, scope: !3170, inlinedAt: !3204)
!3207 = !DILocation(line: 41, column: 13, scope: !2986, inlinedAt: !3206)
!3208 = !DILocation(line: 42, column: 8, scope: !2995, inlinedAt: !3206)
!3209 = !DILocation(line: 42, column: 15, scope: !2995, inlinedAt: !3206)
!3210 = !DILocation(line: 42, column: 10, scope: !2995, inlinedAt: !3206)
!3211 = !DILocation(line: 43, column: 5, scope: !2995, inlinedAt: !3206)
!3212 = !DILocation(line: 0, scope: !3185, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 113, column: 10, scope: !3170, inlinedAt: !3204)
!3214 = !DILocation(line: 34, column: 10, scope: !3185, inlinedAt: !3213)
!3215 = !DILocation(line: 121, column: 3, scope: !3197)
!3216 = distinct !DISubprogram(name: "xalloc_die", scope: !498, file: !498, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !4)
!3217 = !DILocation(line: 34, column: 10, scope: !3216)
!3218 = !DILocation(line: 34, column: 33, scope: !3216)
!3219 = !DILocation(line: 34, column: 3, scope: !3216)
!3220 = !DILocation(line: 40, column: 3, scope: !3216)
!3221 = distinct !DISubprogram(name: "rpl_calloc", scope: !501, file: !501, line: 42, type: !2974, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3222)
!3222 = !{!3223, !3224, !3225, !3226}
!3223 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !501, line: 42, type: !69)
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !501, line: 42, type: !69)
!3225 = !DILocalVariable(name: "result", scope: !3221, file: !501, line: 44, type: !67)
!3226 = !DILocalVariable(name: "bytes", scope: !3227, file: !501, line: 56, type: !69)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !501, line: 53, column: 5)
!3228 = distinct !DILexicalBlock(scope: !3221, file: !501, line: 47, column: 7)
!3229 = !DILocation(line: 0, scope: !3221)
!3230 = !DILocation(line: 47, column: 9, scope: !3228)
!3231 = !DILocation(line: 47, column: 19, scope: !3228)
!3232 = !DILocation(line: 47, column: 14, scope: !3228)
!3233 = !DILocation(line: 0, scope: !3227)
!3234 = !DILocation(line: 57, column: 21, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3227, file: !501, line: 57, column: 11)
!3236 = !DILocation(line: 57, column: 11, scope: !3227)
!3237 = !DILocation(line: 59, column: 11, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !501, line: 58, column: 9)
!3239 = !DILocation(line: 59, column: 17, scope: !3238)
!3240 = !DILocation(line: 65, column: 12, scope: !3221)
!3241 = !DILocation(line: 72, column: 3, scope: !3221)
!3242 = !DILocation(line: 73, column: 1, scope: !3221)
!3243 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !504, file: !504, line: 86, type: !3244, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !3250)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!69, !3246, !6, !69, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1534, line: 6, baseType: !3249)
!3249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !510)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3251 = !DILocalVariable(name: "pwc", arg: 1, scope: !3243, file: !504, line: 86, type: !3246)
!3252 = !DILocalVariable(name: "s", arg: 2, scope: !3243, file: !504, line: 86, type: !6)
!3253 = !DILocalVariable(name: "n", arg: 3, scope: !3243, file: !504, line: 86, type: !69)
!3254 = !DILocalVariable(name: "ps", arg: 4, scope: !3243, file: !504, line: 86, type: !3247)
!3255 = !DILocalVariable(name: "ret", scope: !3243, file: !504, line: 88, type: !69)
!3256 = !DILocalVariable(name: "wc", scope: !3243, file: !504, line: 89, type: !1538)
!3257 = !DILocalVariable(name: "uc", scope: !3258, file: !504, line: 156, type: !1411)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !504, line: 155, column: 5)
!3259 = distinct !DILexicalBlock(scope: !3243, file: !504, line: 154, column: 7)
!3260 = !DILocation(line: 0, scope: !3243)
!3261 = !DILocation(line: 89, column: 3, scope: !3243)
!3262 = !DILocation(line: 105, column: 9, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3243, file: !504, line: 105, column: 7)
!3264 = !DILocation(line: 105, column: 7, scope: !3243)
!3265 = !DILocation(line: 145, column: 9, scope: !3243)
!3266 = !DILocation(line: 154, column: 19, scope: !3259)
!3267 = !DILocation(line: 154, column: 31, scope: !3259)
!3268 = !DILocation(line: 154, column: 26, scope: !3259)
!3269 = !DILocation(line: 154, column: 41, scope: !3259)
!3270 = !DILocation(line: 154, column: 7, scope: !3243)
!3271 = !DILocation(line: 156, column: 26, scope: !3258)
!3272 = !DILocation(line: 0, scope: !3258)
!3273 = !DILocation(line: 157, column: 14, scope: !3258)
!3274 = !DILocation(line: 157, column: 12, scope: !3258)
!3275 = !DILocation(line: 163, column: 1, scope: !3243)
!3276 = distinct !DISubprogram(name: "close_stream", scope: !523, file: !523, line: 56, type: !3277, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3281)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!18, !3279}
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2850, line: 7, baseType: !530)
!3281 = !{!3282, !3283, !3285, !3286}
!3282 = !DILocalVariable(name: "stream", arg: 1, scope: !3276, file: !523, line: 56, type: !3279)
!3283 = !DILocalVariable(name: "some_pending", scope: !3276, file: !523, line: 58, type: !3284)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3285 = !DILocalVariable(name: "prev_fail", scope: !3276, file: !523, line: 59, type: !3284)
!3286 = !DILocalVariable(name: "fclose_fail", scope: !3276, file: !523, line: 60, type: !3284)
!3287 = !DILocation(line: 0, scope: !3276)
!3288 = !DILocation(line: 58, column: 30, scope: !3276)
!3289 = !DILocalVariable(name: "__stream", arg: 1, scope: !3290, file: !3291, line: 135, type: !3279)
!3290 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3291, file: !3291, line: 135, type: !3277, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !3292)
!3291 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3292 = !{!3289}
!3293 = !DILocation(line: 0, scope: !3290, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 59, column: 27, scope: !3276)
!3295 = !DILocation(line: 137, column: 10, scope: !3290, inlinedAt: !3294)
!3296 = !{!3297, !1181, i64 0}
!3297 = !{!"_IO_FILE", !1181, i64 0, !1125, i64 8, !1125, i64 16, !1125, i64 24, !1125, i64 32, !1125, i64 40, !1125, i64 48, !1125, i64 56, !1125, i64 64, !1125, i64 72, !1125, i64 80, !1125, i64 88, !1125, i64 96, !1125, i64 104, !1181, i64 112, !1181, i64 116, !2296, i64 120, !1786, i64 128, !1126, i64 130, !1126, i64 131, !1125, i64 136, !2296, i64 144, !1125, i64 152, !1125, i64 160, !1125, i64 168, !1125, i64 176, !2296, i64 184, !1181, i64 192, !1126, i64 196}
!3298 = !DILocation(line: 59, column: 43, scope: !3276)
!3299 = !DILocation(line: 60, column: 29, scope: !3276)
!3300 = !DILocation(line: 60, column: 45, scope: !3276)
!3301 = !DILocation(line: 70, column: 17, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3276, file: !523, line: 70, column: 7)
!3303 = !DILocation(line: 58, column: 50, scope: !3276)
!3304 = !DILocation(line: 70, column: 33, scope: !3302)
!3305 = !DILocation(line: 70, column: 53, scope: !3302)
!3306 = !DILocation(line: 70, column: 59, scope: !3302)
!3307 = !DILocation(line: 70, column: 7, scope: !3276)
!3308 = !DILocation(line: 72, column: 11, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !523, line: 71, column: 5)
!3310 = !DILocation(line: 73, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3309, file: !523, line: 72, column: 11)
!3312 = !DILocation(line: 73, column: 15, scope: !3311)
!3313 = !DILocation(line: 78, column: 1, scope: !3276)
!3314 = distinct !DISubprogram(name: "hard_locale", scope: !562, file: !562, line: 27, type: !520, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !561, retainedNodes: !3315)
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "category", arg: 1, scope: !3314, file: !562, line: 27, type: !18)
!3317 = !DILocalVariable(name: "locale", scope: !3314, file: !562, line: 29, type: !3318)
!3318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3319)
!3319 = !{!3320}
!3320 = !DISubrange(count: 257)
!3321 = !DILocation(line: 0, scope: !3314)
!3322 = !DILocation(line: 29, column: 3, scope: !3314)
!3323 = !DILocation(line: 29, column: 8, scope: !3314)
!3324 = !DILocation(line: 31, column: 7, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3314, file: !562, line: 31, column: 7)
!3326 = !DILocation(line: 31, column: 7, scope: !3314)
!3327 = !DILocation(line: 34, column: 12, scope: !3314)
!3328 = !DILocation(line: 34, column: 38, scope: !3314)
!3329 = !DILocation(line: 34, column: 41, scope: !3314)
!3330 = !DILocation(line: 34, column: 66, scope: !3314)
!3331 = !DILocation(line: 35, column: 1, scope: !3314)
!3332 = distinct !DISubprogram(name: "locale_charset", scope: !569, file: !569, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !568, retainedNodes: !3333)
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "codeset", scope: !3332, file: !569, line: 833, type: !6)
!3335 = !DILocation(line: 847, column: 13, scope: !3332)
!3336 = !DILocation(line: 0, scope: !3332)
!3337 = !DILocation(line: 911, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3332, file: !569, line: 911, column: 7)
!3339 = !DILocation(line: 911, column: 7, scope: !3332)
!3340 = !DILocation(line: 1070, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !569, line: 1070, column: 13)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !569, line: 1060, column: 7)
!3343 = distinct !DILexicalBlock(scope: !3332, file: !569, line: 1019, column: 3)
!3344 = !DILocation(line: 1070, column: 24, scope: !3341)
!3345 = !DILocation(line: 1070, column: 13, scope: !3342)
!3346 = !DILocation(line: 1158, column: 3, scope: !3332)
!3347 = distinct !DISubprogram(name: "setlocale_null_r", scope: !962, file: !962, line: 269, type: !3348, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!18, !18, !25, !69}
!3350 = !{!3351, !3352, !3353}
!3351 = !DILocalVariable(name: "category", arg: 1, scope: !3347, file: !962, line: 269, type: !18)
!3352 = !DILocalVariable(name: "buf", arg: 2, scope: !3347, file: !962, line: 269, type: !25)
!3353 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3347, file: !962, line: 269, type: !69)
!3354 = !DILocation(line: 0, scope: !3347)
!3355 = !DILocalVariable(name: "category", arg: 1, scope: !3356, file: !962, line: 91, type: !18)
!3356 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !962, file: !962, line: 91, type: !3348, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3357)
!3357 = !{!3355, !3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "buf", arg: 2, scope: !3356, file: !962, line: 91, type: !25)
!3359 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3356, file: !962, line: 91, type: !69)
!3360 = !DILocalVariable(name: "result", scope: !3356, file: !962, line: 140, type: !6)
!3361 = !DILocalVariable(name: "length", scope: !3362, file: !962, line: 154, type: !69)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !962, line: 153, column: 5)
!3363 = distinct !DILexicalBlock(scope: !3356, file: !962, line: 142, column: 7)
!3364 = !DILocation(line: 0, scope: !3356, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 274, column: 10, scope: !3347)
!3366 = !DILocalVariable(name: "category", arg: 1, scope: !3367, file: !962, line: 60, type: !18)
!3367 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !962, file: !962, line: 60, type: !3368, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!6, !18}
!3370 = !{!3366, !3371}
!3371 = !DILocalVariable(name: "result", scope: !3367, file: !962, line: 62, type: !6)
!3372 = !DILocation(line: 0, scope: !3367, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 140, column: 24, scope: !3356, inlinedAt: !3365)
!3374 = !DILocation(line: 62, column: 24, scope: !3367, inlinedAt: !3373)
!3375 = !DILocation(line: 142, column: 14, scope: !3363, inlinedAt: !3365)
!3376 = !DILocation(line: 142, column: 7, scope: !3356, inlinedAt: !3365)
!3377 = !DILocation(line: 145, column: 19, scope: !3378, inlinedAt: !3365)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !962, line: 145, column: 11)
!3379 = distinct !DILexicalBlock(scope: !3363, file: !962, line: 143, column: 5)
!3380 = !DILocation(line: 145, column: 11, scope: !3379, inlinedAt: !3365)
!3381 = !DILocation(line: 149, column: 16, scope: !3378, inlinedAt: !3365)
!3382 = !DILocation(line: 149, column: 9, scope: !3378, inlinedAt: !3365)
!3383 = !DILocation(line: 154, column: 23, scope: !3362, inlinedAt: !3365)
!3384 = !DILocation(line: 0, scope: !3362, inlinedAt: !3365)
!3385 = !DILocation(line: 155, column: 18, scope: !3386, inlinedAt: !3365)
!3386 = distinct !DILexicalBlock(scope: !3362, file: !962, line: 155, column: 11)
!3387 = !DILocation(line: 155, column: 11, scope: !3362, inlinedAt: !3365)
!3388 = !DILocation(line: 157, column: 39, scope: !3389, inlinedAt: !3365)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !962, line: 156, column: 9)
!3390 = !DILocalVariable(name: "__dest", arg: 1, scope: !3391, file: !1793, line: 31, type: !3188)
!3391 = distinct !DISubprogram(name: "memcpy", scope: !1793, file: !1793, line: 31, type: !3186, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3392)
!3392 = !{!3390, !3393, !3394}
!3393 = !DILocalVariable(name: "__src", arg: 2, scope: !3391, file: !1793, line: 31, type: !3189)
!3394 = !DILocalVariable(name: "__len", arg: 3, scope: !3391, file: !1793, line: 31, type: !69)
!3395 = !DILocation(line: 0, scope: !3391, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 157, column: 11, scope: !3389, inlinedAt: !3365)
!3397 = !DILocation(line: 34, column: 10, scope: !3391, inlinedAt: !3396)
!3398 = !DILocation(line: 158, column: 11, scope: !3389, inlinedAt: !3365)
!3399 = !DILocation(line: 162, column: 23, scope: !3400, inlinedAt: !3365)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !962, line: 162, column: 15)
!3401 = distinct !DILexicalBlock(scope: !3386, file: !962, line: 161, column: 9)
!3402 = !DILocation(line: 162, column: 15, scope: !3401, inlinedAt: !3365)
!3403 = !DILocation(line: 167, column: 44, scope: !3404, inlinedAt: !3365)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !962, line: 163, column: 13)
!3405 = !DILocation(line: 0, scope: !3391, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 167, column: 15, scope: !3404, inlinedAt: !3365)
!3407 = !DILocation(line: 34, column: 10, scope: !3391, inlinedAt: !3406)
!3408 = !DILocation(line: 168, column: 15, scope: !3404, inlinedAt: !3365)
!3409 = !DILocation(line: 168, column: 32, scope: !3404, inlinedAt: !3365)
!3410 = !DILocation(line: 169, column: 13, scope: !3404, inlinedAt: !3365)
!3411 = !DILocation(line: 0, scope: !3363, inlinedAt: !3365)
!3412 = !DILocation(line: 274, column: 3, scope: !3347)
!3413 = distinct !DISubprogram(name: "setlocale_null", scope: !962, file: !962, line: 301, type: !3368, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3414)
!3414 = !{!3415}
!3415 = !DILocalVariable(name: "category", arg: 1, scope: !3413, file: !962, line: 301, type: !18)
!3416 = !DILocation(line: 0, scope: !3413)
!3417 = !DILocation(line: 0, scope: !3367, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 304, column: 10, scope: !3413)
!3419 = !DILocation(line: 62, column: 24, scope: !3367, inlinedAt: !3418)
!3420 = !DILocation(line: 304, column: 3, scope: !3413)
!3421 = distinct !DISubprogram(name: "rpl_fclose", scope: !965, file: !965, line: 58, type: !3422, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !964, retainedNodes: !3426)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!18, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2850, line: 7, baseType: !971)
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DILocalVariable(name: "fp", arg: 1, scope: !3421, file: !965, line: 58, type: !3424)
!3428 = !DILocalVariable(name: "saved_errno", scope: !3421, file: !965, line: 60, type: !18)
!3429 = !DILocalVariable(name: "fd", scope: !3421, file: !965, line: 61, type: !18)
!3430 = !DILocalVariable(name: "result", scope: !3421, file: !965, line: 62, type: !18)
!3431 = !DILocation(line: 0, scope: !3421)
!3432 = !DILocation(line: 65, column: 8, scope: !3421)
!3433 = !DILocation(line: 66, column: 10, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3421, file: !965, line: 66, column: 7)
!3435 = !DILocation(line: 66, column: 7, scope: !3421)
!3436 = !DILocation(line: 67, column: 12, scope: !3434)
!3437 = !DILocation(line: 67, column: 5, scope: !3434)
!3438 = !DILocation(line: 72, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3421, file: !965, line: 72, column: 7)
!3440 = !DILocation(line: 72, column: 23, scope: !3439)
!3441 = !DILocation(line: 72, column: 33, scope: !3439)
!3442 = !DILocation(line: 72, column: 26, scope: !3439)
!3443 = !DILocation(line: 72, column: 59, scope: !3439)
!3444 = !DILocation(line: 73, column: 7, scope: !3439)
!3445 = !DILocation(line: 73, column: 10, scope: !3439)
!3446 = !DILocation(line: 72, column: 7, scope: !3421)
!3447 = !DILocation(line: 100, column: 12, scope: !3421)
!3448 = !DILocation(line: 105, column: 7, scope: !3421)
!3449 = !DILocation(line: 74, column: 19, scope: !3439)
!3450 = !DILocation(line: 105, column: 19, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3421, file: !965, line: 105, column: 7)
!3452 = !DILocation(line: 107, column: 13, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3451, file: !965, line: 106, column: 5)
!3454 = !DILocation(line: 109, column: 5, scope: !3453)
!3455 = !DILocation(line: 112, column: 1, scope: !3421)
!3456 = distinct !DISubprogram(name: "rpl_fflush", scope: !1008, file: !1008, line: 129, type: !3457, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !3461)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!18, !3459}
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2850, line: 7, baseType: !1014)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "stream", arg: 1, scope: !3456, file: !1008, line: 129, type: !3459)
!3463 = !DILocation(line: 0, scope: !3456)
!3464 = !DILocation(line: 150, column: 14, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3456, file: !1008, line: 150, column: 7)
!3466 = !DILocation(line: 150, column: 22, scope: !3465)
!3467 = !DILocation(line: 150, column: 27, scope: !3465)
!3468 = !DILocation(line: 150, column: 7, scope: !3456)
!3469 = !DILocation(line: 151, column: 12, scope: !3465)
!3470 = !DILocation(line: 151, column: 5, scope: !3465)
!3471 = !DILocalVariable(name: "fp", arg: 1, scope: !3472, file: !1008, line: 41, type: !3459)
!3472 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1008, file: !1008, line: 41, type: !3473, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3459}
!3475 = !{!3471}
!3476 = !DILocation(line: 0, scope: !3472, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 156, column: 3, scope: !3456)
!3478 = !DILocation(line: 43, column: 11, scope: !3479, inlinedAt: !3477)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !1008, line: 43, column: 7)
!3480 = !DILocation(line: 43, column: 18, scope: !3479, inlinedAt: !3477)
!3481 = !DILocation(line: 43, column: 7, scope: !3472, inlinedAt: !3477)
!3482 = !DILocation(line: 45, column: 5, scope: !3479, inlinedAt: !3477)
!3483 = !DILocation(line: 158, column: 10, scope: !3456)
!3484 = !DILocation(line: 158, column: 3, scope: !3456)
!3485 = !DILocation(line: 235, column: 1, scope: !3456)
!3486 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1049, file: !1049, line: 28, type: !3487, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !3492)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!18, !3489, !3491, !18}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2850, line: 7, baseType: !1055)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DILocalVariable(name: "fp", arg: 1, scope: !3486, file: !1049, line: 28, type: !3489)
!3494 = !DILocalVariable(name: "offset", arg: 2, scope: !3486, file: !1049, line: 28, type: !3491)
!3495 = !DILocalVariable(name: "whence", arg: 3, scope: !3486, file: !1049, line: 28, type: !18)
!3496 = !DILocalVariable(name: "pos", scope: !3497, file: !1049, line: 117, type: !3491)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !1049, line: 113, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3486, file: !1049, line: 52, column: 7)
!3499 = !DILocation(line: 0, scope: !3486)
!3500 = !DILocation(line: 52, column: 11, scope: !3498)
!3501 = !{!3297, !1125, i64 16}
!3502 = !DILocation(line: 52, column: 31, scope: !3498)
!3503 = !{!3297, !1125, i64 8}
!3504 = !DILocation(line: 52, column: 24, scope: !3498)
!3505 = !DILocation(line: 53, column: 7, scope: !3498)
!3506 = !DILocation(line: 53, column: 14, scope: !3498)
!3507 = !{!3297, !1125, i64 40}
!3508 = !DILocation(line: 53, column: 35, scope: !3498)
!3509 = !{!3297, !1125, i64 32}
!3510 = !DILocation(line: 53, column: 28, scope: !3498)
!3511 = !DILocation(line: 54, column: 7, scope: !3498)
!3512 = !DILocation(line: 54, column: 14, scope: !3498)
!3513 = !{!3297, !1125, i64 72}
!3514 = !DILocation(line: 54, column: 28, scope: !3498)
!3515 = !DILocation(line: 52, column: 7, scope: !3486)
!3516 = !DILocation(line: 117, column: 26, scope: !3497)
!3517 = !DILocation(line: 117, column: 19, scope: !3497)
!3518 = !DILocation(line: 0, scope: !3497)
!3519 = !DILocation(line: 118, column: 15, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3497, file: !1049, line: 118, column: 11)
!3521 = !DILocation(line: 118, column: 11, scope: !3497)
!3522 = !DILocation(line: 129, column: 11, scope: !3497)
!3523 = !DILocation(line: 129, column: 18, scope: !3497)
!3524 = !DILocation(line: 130, column: 11, scope: !3497)
!3525 = !DILocation(line: 130, column: 19, scope: !3497)
!3526 = !{!3297, !2296, i64 144}
!3527 = !DILocation(line: 161, column: 7, scope: !3497)
!3528 = !DILocation(line: 163, column: 10, scope: !3486)
!3529 = !DILocation(line: 163, column: 3, scope: !3486)
!3530 = !DILocation(line: 164, column: 1, scope: !3486)
