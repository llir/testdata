; ModuleID = 'coreutils-8.32/src/yes.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
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
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !0
@.str.28 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.39, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.40, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.76 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.95 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.96 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1104 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1107, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i32 %0, metadata !1106, metadata !DIExpression()), !dbg !1128
  %3 = icmp eq i32 %0, 0, !dbg !1129
  br i1 %3, label %9, label %4, !dbg !1130

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1131, !tbaa !1133
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13, !dbg !1131
  %7 = load i8*, i8** @program_name, align 8, !dbg !1131, !tbaa !1133
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #13, !dbg !1131
  br label %58, !dbg !1131

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #13, !dbg !1137
  %11 = load i8*, i8** @program_name, align 8, !dbg !1137, !tbaa !1133
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #13, !dbg !1137
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 5) #13, !dbg !1138
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1138, !tbaa !1133
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1138
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #13, !dbg !1139
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !1133
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1139
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #13, !dbg !1140
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !1133
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1140
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !1111, metadata !DIExpression()) #13, !dbg !1141
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1142
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #13, !dbg !1142
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #13, !dbg !1124
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), metadata !1112, metadata !DIExpression()) #13, !dbg !1141
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1143
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  br label %24, !dbg !1144

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #22, !dbg !1145
  %28 = icmp eq i32 %27, 0, !dbg !1145
  br i1 %28, label %34, label %29, !dbg !1144

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1147
  %32 = load i8*, i8** %31, align 8, !dbg !1147, !tbaa !1148
  %33 = icmp eq i8* %32, null, !dbg !1150
  br i1 %33, label %34, label %24, !dbg !1151, !llvm.loop !1152

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1113, metadata !DIExpression()) #13, !dbg !1141
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1153
  %37 = load i8*, i8** %36, align 8, !dbg !1153, !tbaa !1155
  %38 = icmp eq i8* %37, null, !dbg !1156
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %39, metadata !1112, metadata !DIExpression()) #13, !dbg !1141
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #13, !dbg !1158
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #13, !dbg !1158
  %42 = tail call i8* @setlocale(i32 5, i8* null) #13, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %42, metadata !1120, metadata !DIExpression()) #13, !dbg !1141
  %43 = icmp eq i8* %42, null, !dbg !1160
  br i1 %43, label %51, label %44, !dbg !1162

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #22, !dbg !1163
  %46 = icmp eq i32 %45, 0, !dbg !1163
  br i1 %46, label %51, label %47, !dbg !1164

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 5) #13, !dbg !1165
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !1133
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #13, !dbg !1165
  br label %51, !dbg !1167

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 5) #13, !dbg !1168
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !1168
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #13, !dbg !1169
  %55 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !1169
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1169
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #13, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #13, !dbg !1170
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #23, !dbg !1171
  unreachable, !dbg !1171
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1176, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** %1, metadata !1177, metadata !DIExpression()), !dbg !1192
  %3 = load i8*, i8** %1, align 8, !dbg !1193, !tbaa !1133
  tail call void @set_program_name(i8* %3) #13, !dbg !1194
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !1195
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #13, !dbg !1196
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #13, !dbg !1197
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13, !dbg !1198
  %8 = load i8*, i8** @Version, align 8, !dbg !1199, !tbaa !1133
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null) #13, !dbg !1200
  %9 = load i32, i32* @optind, align 4, !dbg !1201, !tbaa !1202
  %10 = sext i32 %9 to i64, !dbg !1204
  %11 = getelementptr inbounds i8*, i8** %1, i64 %10, !dbg !1204
  call void @llvm.dbg.value(metadata i8** %11, metadata !1178, metadata !DIExpression()), !dbg !1192
  %12 = sext i32 %0 to i64, !dbg !1205
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12, !dbg !1205
  call void @llvm.dbg.value(metadata i8** %13, metadata !1179, metadata !DIExpression()), !dbg !1192
  %14 = icmp eq i32 %9, %0, !dbg !1206
  br i1 %14, label %15, label %17, !dbg !1208

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %13, i64 1, !dbg !1209
  call void @llvm.dbg.value(metadata i8** %16, metadata !1179, metadata !DIExpression()), !dbg !1192
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8, !dbg !1210, !tbaa !1133
  br label %17, !dbg !1211

17:                                               ; preds = %15, %2
  %18 = phi i8** [ %16, %15 ], [ %13, %2 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8** %18, metadata !1179, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 0, metadata !1180, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** %11, metadata !1182, metadata !DIExpression()), !dbg !1192
  %19 = load i8*, i8** %11, align 8, !dbg !1212, !tbaa !1133
  %20 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %19) #22, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %20, metadata !1183, metadata !DIExpression()), !dbg !1214
  %21 = add i64 %20, 1, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %21, metadata !1180, metadata !DIExpression()), !dbg !1192
  %22 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !1216
  %23 = icmp ult i8** %22, %18, !dbg !1218
  br i1 %23, label %24, label %43, !dbg !1219

24:                                               ; preds = %17, %24
  %25 = phi i8** [ %38, %24 ], [ %22, %17 ]
  %26 = phi i64 [ %37, %24 ], [ %21, %17 ]
  %27 = phi i64 [ %35, %24 ], [ %20, %17 ]
  %28 = phi i8* [ %32, %24 ], [ %19, %17 ]
  %29 = phi i8 [ %34, %24 ], [ 1, %17 ]
  call void @llvm.dbg.value(metadata i8 %29, metadata !1181, metadata !DIExpression()), !dbg !1192
  %30 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1220
  %31 = getelementptr inbounds i8, i8* %30, i64 %27, !dbg !1221
  %32 = load i8*, i8** %25, align 8, !dbg !1222, !tbaa !1133
  %33 = icmp eq i8* %31, %32, !dbg !1223
  %34 = select i1 %33, i8 %29, i8 0, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %26, metadata !1180, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %34, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** %25, metadata !1182, metadata !DIExpression()), !dbg !1192
  %35 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %32) #22, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %35, metadata !1183, metadata !DIExpression()), !dbg !1214
  %36 = add i64 %26, 1, !dbg !1225
  %37 = add i64 %36, %35, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %37, metadata !1180, metadata !DIExpression()), !dbg !1192
  %38 = getelementptr inbounds i8*, i8** %25, i64 1, !dbg !1216
  %39 = icmp ult i8** %38, %18, !dbg !1218
  br i1 %39, label %24, label %40, !dbg !1219

40:                                               ; preds = %24
  %41 = and i8 %34, 1, !dbg !1226
  %42 = icmp ne i8 %41, 0, !dbg !1226
  br label %43, !dbg !1226

43:                                               ; preds = %40, %17
  %44 = phi i1 [ true, %17 ], [ %42, %40 ]
  %45 = phi i64 [ %21, %17 ], [ %37, %40 ], !dbg !1215
  call void @llvm.dbg.value(metadata i8 undef, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 %34, metadata !1181, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** undef, metadata !1182, metadata !DIExpression()), !dbg !1192
  %46 = icmp ult i64 %45, 4097, !dbg !1226
  %47 = select i1 %46, i64 8192, i64 %45, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %47, metadata !1180, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8 undef, metadata !1181, metadata !DIExpression()), !dbg !1192
  %48 = xor i1 %46, true, !dbg !1229
  %49 = and i1 %44, %48, !dbg !1229
  br i1 %49, label %52, label %50, !dbg !1229

50:                                               ; preds = %43
  %51 = tail call noalias i8* @xmalloc(i64 %47) #13, !dbg !1230
  br label %52, !dbg !1229

52:                                               ; preds = %43, %50
  %53 = phi i8* [ %51, %50 ], [ %19, %43 ], !dbg !1229
  call void @llvm.dbg.value(metadata i8* %53, metadata !1185, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 0, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** %11, metadata !1182, metadata !DIExpression()), !dbg !1192
  br label %54, !dbg !1231

54:                                               ; preds = %61, %52
  %55 = phi i8** [ %11, %52 ], [ %65, %61 ], !dbg !1192
  %56 = phi i64 [ 0, %52 ], [ %63, %61 ], !dbg !1192
  call void @llvm.dbg.value(metadata i64 %56, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i8** %55, metadata !1182, metadata !DIExpression()), !dbg !1192
  %57 = load i8*, i8** %55, align 8, !dbg !1232, !tbaa !1133
  %58 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %57) #22, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %58, metadata !1187, metadata !DIExpression()), !dbg !1234
  br i1 %49, label %61, label %59, !dbg !1235

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, i8* %53, i64 %56, !dbg !1236
  call void @llvm.dbg.value(metadata i8* %60, metadata !1238, metadata !DIExpression()) #13, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %57, metadata !1246, metadata !DIExpression()) #13, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %58, metadata !1247, metadata !DIExpression()) #13, !dbg !1248
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %60, i8* nonnull align 1 %57, i64 %58, i1 false) #13, !dbg !1250
  br label %61, !dbg !1251

61:                                               ; preds = %59, %54
  %62 = add i64 %58, %56, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %62, metadata !1186, metadata !DIExpression()), !dbg !1192
  %63 = add i64 %62, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %63, metadata !1186, metadata !DIExpression()), !dbg !1192
  %64 = getelementptr inbounds i8, i8* %53, i64 %62, !dbg !1254
  store i8 32, i8* %64, align 1, !dbg !1255, !tbaa !1256
  %65 = getelementptr inbounds i8*, i8** %55, i64 1, !dbg !1257
  call void @llvm.dbg.value(metadata i8** %65, metadata !1182, metadata !DIExpression()), !dbg !1192
  %66 = icmp ult i8** %65, %18, !dbg !1258
  br i1 %66, label %54, label %67, !dbg !1259, !llvm.loop !1260

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, i8* %53, i64 %62, !dbg !1254
  store i8 10, i8* %68, align 1, !dbg !1262, !tbaa !1256
  call void @llvm.dbg.value(metadata i64 %63, metadata !1189, metadata !DIExpression()), !dbg !1192
  %69 = udiv i64 %47, %63, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %69, metadata !1190, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %63, metadata !1186, metadata !DIExpression()), !dbg !1192
  %70 = add i64 %69, -1, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %70, metadata !1190, metadata !DIExpression()), !dbg !1264
  %71 = icmp eq i64 %70, 0, !dbg !1267
  br i1 %71, label %90, label %72, !dbg !1267

72:                                               ; preds = %67
  %73 = add i64 %69, -2, !dbg !1267
  %74 = and i64 %70, 3, !dbg !1267
  %75 = icmp eq i64 %74, 0, !dbg !1267
  br i1 %75, label %85, label %76, !dbg !1267

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %82, %76 ], [ %70, %72 ]
  %78 = phi i64 [ %81, %76 ], [ %63, %72 ]
  %79 = phi i64 [ %83, %76 ], [ %74, %72 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !1186, metadata !DIExpression()), !dbg !1192
  %80 = getelementptr inbounds i8, i8* %53, i64 %78, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %80, metadata !1238, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %53, metadata !1246, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %63, metadata !1247, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %80, i8* nonnull align 1 %53, i64 %63, i1 false) #13, !dbg !1272
  %81 = add i64 %78, %63, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %77, metadata !1190, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %81, metadata !1186, metadata !DIExpression()), !dbg !1192
  %82 = add i64 %77, -1, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %82, metadata !1190, metadata !DIExpression()), !dbg !1264
  %83 = add i64 %79, -1, !dbg !1267
  %84 = icmp eq i64 %83, 0, !dbg !1267
  br i1 %84, label %85, label %76, !dbg !1267, !llvm.loop !1274

85:                                               ; preds = %76, %72
  %86 = phi i64 [ undef, %72 ], [ %81, %76 ]
  %87 = phi i64 [ %70, %72 ], [ %82, %76 ]
  %88 = phi i64 [ %63, %72 ], [ %81, %76 ]
  %89 = icmp ult i64 %73, 3, !dbg !1267
  br i1 %89, label %90, label %92, !dbg !1267

90:                                               ; preds = %85, %92, %67
  %91 = phi i64 [ %63, %67 ], [ %86, %85 ], [ %102, %92 ], !dbg !1192
  call void @llvm.dbg.value(metadata i64 %91, metadata !1186, metadata !DIExpression()), !dbg !1192
  br label %105, !dbg !1276

92:                                               ; preds = %85, %92
  %93 = phi i64 [ %103, %92 ], [ %87, %85 ]
  %94 = phi i64 [ %102, %92 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !1186, metadata !DIExpression()), !dbg !1192
  %95 = getelementptr inbounds i8, i8* %53, i64 %94, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %95, metadata !1238, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %53, metadata !1246, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %63, metadata !1247, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %95, i8* nonnull align 1 %53, i64 %63, i1 false) #13, !dbg !1272
  %96 = add i64 %94, %63, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %93, metadata !1190, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i64 %96, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %93, metadata !1190, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1264
  %97 = getelementptr inbounds i8, i8* %53, i64 %96, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %97, metadata !1238, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %97, i8* nonnull align 1 %53, i64 %63, i1 false) #13, !dbg !1272
  %98 = add i64 %96, %63, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %98, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %93, metadata !1190, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1264
  %99 = getelementptr inbounds i8, i8* %53, i64 %98, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %99, metadata !1238, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %99, i8* nonnull align 1 %53, i64 %63, i1 false) #13, !dbg !1272
  %100 = add i64 %98, %63, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %100, metadata !1186, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.value(metadata i64 %93, metadata !1190, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1264
  %101 = getelementptr inbounds i8, i8* %53, i64 %100, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %101, metadata !1238, metadata !DIExpression()) #13, !dbg !1270
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %101, i8* nonnull align 1 %53, i64 %63, i1 false) #13, !dbg !1272
  %102 = add i64 %100, %63, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %102, metadata !1186, metadata !DIExpression()), !dbg !1192
  %103 = add i64 %93, -4, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %103, metadata !1190, metadata !DIExpression()), !dbg !1264
  %104 = icmp eq i64 %103, 0, !dbg !1267
  br i1 %104, label %90, label %92, !dbg !1267, !llvm.loop !1277

105:                                              ; preds = %90, %105
  %106 = tail call i64 @full_write(i32 1, i8* %53, i64 %91) #13, !dbg !1279
  %107 = icmp eq i64 %106, %91, !dbg !1280
  br i1 %107, label %105, label %108, !dbg !1276, !llvm.loop !1281

108:                                              ; preds = %105
  %109 = tail call i32* @__errno_location() #24, !dbg !1283
  %110 = load i32, i32* %109, align 4, !dbg !1283, !tbaa !1202
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 5) #13, !dbg !1284
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %110, i8* %111) #13, !dbg !1285
  ret i32 1, !dbg !1286
}

; Function Attrs: nounwind
declare !dbg !406 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !409 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i8* %0, i8** @file_name, align 8, !dbg !1291, !tbaa !1133
  ret void, !dbg !1292
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1293 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1299, !tbaa !1300
  ret void, !dbg !1302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1303 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1308, !tbaa !1133
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #13, !dbg !1309
  %3 = icmp eq i32 %2, 0, !dbg !1310
  br i1 %3, label %22, label %4, !dbg !1311

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1312, !tbaa !1300, !range !1313
  %6 = icmp eq i8 %5, 0, !dbg !1312
  br i1 %6, label %11, label %7, !dbg !1314

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1315
  %9 = load i32, i32* %8, align 4, !dbg !1315, !tbaa !1202
  %10 = icmp eq i32 %9, 32, !dbg !1316
  br i1 %10, label %22, label %11, !dbg !1317

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #13, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %12, metadata !1305, metadata !DIExpression()), !dbg !1319
  %13 = load i8*, i8** @file_name, align 8, !dbg !1320, !tbaa !1133
  %14 = icmp eq i8* %13, null, !dbg !1320
  %15 = tail call i32* @__errno_location() #24, !dbg !1322
  %16 = load i32, i32* %15, align 4, !dbg !1322, !tbaa !1202
  br i1 %14, label %19, label %17, !dbg !1323

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #13, !dbg !1324
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #13, !dbg !1325
  br label %20, !dbg !1325

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #13, !dbg !1326
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1327, !tbaa !1202
  tail call void @_exit(i32 %21) #23, !dbg !1328
  unreachable, !dbg !1328

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1329, !tbaa !1133
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #13, !dbg !1331
  %25 = icmp eq i32 %24, 0, !dbg !1332
  br i1 %25, label %28, label %26, !dbg !1333

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1334, !tbaa !1202
  tail call void @_exit(i32 %27) #23, !dbg !1335
  unreachable, !dbg !1335

28:                                               ; preds = %22
  ret void, !dbg !1336
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !1337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8* %1, metadata !1342, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %2, metadata !1343, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 0, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8* %1, metadata !1345, metadata !DIExpression()), !dbg !1348
  %4 = icmp eq i64 %2, 0, !dbg !1349
  br i1 %4, label %17, label %5, !dbg !1350

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ %2, %3 ]
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1343, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8* %7, metadata !1345, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %6) #13, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %9, metadata !1346, metadata !DIExpression()), !dbg !1352
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !1353

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %8, metadata !1344, metadata !DIExpression()), !dbg !1348
  %11 = tail call i32* @__errno_location() #24, !dbg !1354
  store i32 28, i32* %11, align 4, !dbg !1357, !tbaa !1202
  br label %17, !dbg !1358

12:                                               ; preds = %5
  %13 = add i64 %9, %8, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %13, metadata !1344, metadata !DIExpression()), !dbg !1348
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %14, metadata !1345, metadata !DIExpression()), !dbg !1348
  %15 = sub i64 %6, %9, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %15, metadata !1343, metadata !DIExpression()), !dbg !1348
  %16 = icmp eq i64 %15, 0, !dbg !1349
  br i1 %16, label %17, label %5, !dbg !1350

17:                                               ; preds = %12, %5, %3, %10
  %18 = phi i64 [ %8, %10 ], [ 0, %3 ], [ %13, %12 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !1344, metadata !DIExpression()), !dbg !1348
  ret i64 %18, !dbg !1362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1363 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1367, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8** %1, metadata !1368, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %2, metadata !1369, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %3, metadata !1370, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %4, metadata !1371, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1372, metadata !DIExpression()), !dbg !1385
  %8 = load i32, i32* @opterr, align 4, !dbg !1386, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %8, metadata !1374, metadata !DIExpression()), !dbg !1385
  store i32 0, i32* @opterr, align 4, !dbg !1387, !tbaa !1202
  %9 = icmp eq i32 %0, 2, !dbg !1388
  br i1 %9, label %10, label %17, !dbg !1389

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #13, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %11, metadata !1373, metadata !DIExpression()), !dbg !1385
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1391

12:                                               ; preds = %10
  tail call void %5(i32 0) #13, !dbg !1392
  br label %17, !dbg !1393

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #13, !dbg !1394
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1375, metadata !DIExpression()), !dbg !1395
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1396
  call void @llvm.va_start(i8* nonnull %14), !dbg !1396
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1397, !tbaa !1133
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #13, !dbg !1398
  call void @exit(i32 0) #23, !dbg !1399
  unreachable, !dbg !1399

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1400, !tbaa !1202
  store i32 0, i32* @optind, align 4, !dbg !1401, !tbaa !1202
  ret void, !dbg !1402
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1403 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8** %1, metadata !1406, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %2, metadata !1407, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %3, metadata !1408, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %4, metadata !1409, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i1 %5, metadata !1410, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1411, metadata !DIExpression()), !dbg !1420
  %9 = load i32, i32* @opterr, align 4, !dbg !1421, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %9, metadata !1413, metadata !DIExpression()), !dbg !1420
  store i32 1, i32* @opterr, align 4, !dbg !1422, !tbaa !1202
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), !dbg !1423
  call void @llvm.dbg.value(metadata i8* %10, metadata !1414, metadata !DIExpression()), !dbg !1420
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #13, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %11, metadata !1412, metadata !DIExpression()), !dbg !1420
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1425

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #13, !dbg !1426
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1415, metadata !DIExpression()), !dbg !1427
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1428
  call void @llvm.va_start(i8* nonnull %13), !dbg !1428
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1429, !tbaa !1133
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #13, !dbg !1430
  call void @exit(i32 0) #23, !dbg !1431
  unreachable, !dbg !1431

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1432, !tbaa !1202
  br label %18, !dbg !1433

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #13, !dbg !1434
  br label %20, !dbg !1435

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1435, !tbaa !1202
  ret void, !dbg !1436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1439, metadata !DIExpression()), !dbg !1442
  %2 = icmp eq i8* %0, null, !dbg !1443
  br i1 %2, label %3, label %6, !dbg !1445

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1446, !tbaa !1133
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1448
  tail call void @abort() #23, !dbg !1449
  unreachable, !dbg !1449

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %7, metadata !1440, metadata !DIExpression()), !dbg !1442
  %8 = icmp eq i8* %7, null, !dbg !1451
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1452
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %10, metadata !1441, metadata !DIExpression()), !dbg !1442
  %11 = ptrtoint i8* %10 to i64, !dbg !1453
  %12 = ptrtoint i8* %0 to i64, !dbg !1453
  %13 = sub i64 %11, %12, !dbg !1453
  %14 = icmp sgt i64 %13, 6, !dbg !1455
  br i1 %14, label %15, label %24, !dbg !1456

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1457
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #22, !dbg !1458
  %18 = icmp eq i32 %17, 0, !dbg !1459
  br i1 %18, label %19, label %24, !dbg !1460

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1439, metadata !DIExpression()), !dbg !1442
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #22, !dbg !1461
  %21 = icmp eq i32 %20, 0, !dbg !1464
  br i1 %21, label %22, label %24, !dbg !1465

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %23, metadata !1439, metadata !DIExpression()), !dbg !1442
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1468, !tbaa !1133
  br label %24, !dbg !1469

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1439, metadata !DIExpression()), !dbg !1442
  store i8* %25, i8** @program_name, align 8, !dbg !1470, !tbaa !1133
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1471, !tbaa !1133
  ret void, !dbg !1472
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1473 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1478, metadata !DIExpression()), !dbg !1481
  %2 = tail call i32* @__errno_location() #24, !dbg !1482
  %3 = load i32, i32* %2, align 4, !dbg !1482, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %3, metadata !1479, metadata !DIExpression()), !dbg !1481
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1483
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1483
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1483
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #13, !dbg !1484
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1480, metadata !DIExpression()), !dbg !1481
  store i32 %3, i32* %2, align 4, !dbg !1485, !tbaa !1202
  ret %struct.quoting_options* %8, !dbg !1486
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1487 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1491, metadata !DIExpression()), !dbg !1492
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1493
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1493
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1494
  %5 = load i32, i32* %4, align 8, !dbg !1494, !tbaa !1495
  ret i32 %5, !dbg !1497
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1498 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1502, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %1, metadata !1503, metadata !DIExpression()), !dbg !1504
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1505
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1505
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1506
  store i32 %1, i32* %5, align 8, !dbg !1507, !tbaa !1495
  ret void, !dbg !1508
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1509 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1513, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %1, metadata !1514, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %2, metadata !1515, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %1, metadata !1516, metadata !DIExpression()), !dbg !1522
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1523
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1523
  %6 = lshr i8 %1, 5, !dbg !1524
  %7 = zext i8 %6 to i64, !dbg !1524
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1525
  call void @llvm.dbg.value(metadata i32* %8, metadata !1518, metadata !DIExpression()), !dbg !1522
  %9 = and i8 %1, 31, !dbg !1526
  %10 = zext i8 %9 to i32, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %10, metadata !1520, metadata !DIExpression()), !dbg !1522
  %11 = load i32, i32* %8, align 4, !dbg !1527, !tbaa !1202
  %12 = lshr i32 %11, %10, !dbg !1528
  %13 = and i32 %12, 1, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %13, metadata !1521, metadata !DIExpression()), !dbg !1522
  %14 = and i32 %2, 1, !dbg !1530
  %15 = xor i32 %13, %14, !dbg !1531
  %16 = shl i32 %15, %10, !dbg !1532
  %17 = xor i32 %16, %11, !dbg !1533
  store i32 %17, i32* %8, align 4, !dbg !1533, !tbaa !1202
  ret i32 %13, !dbg !1534
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1535 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1539, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %1, metadata !1540, metadata !DIExpression()), !dbg !1542
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1543
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1539, metadata !DIExpression()), !dbg !1542
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1546
  %6 = load i32, i32* %5, align 4, !dbg !1546, !tbaa !1547
  call void @llvm.dbg.value(metadata i32 %6, metadata !1541, metadata !DIExpression()), !dbg !1542
  store i32 %1, i32* %5, align 4, !dbg !1548, !tbaa !1547
  ret i32 %6, !dbg !1549
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1550 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1554, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %1, metadata !1555, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i8* %2, metadata !1556, metadata !DIExpression()), !dbg !1557
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1558
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1554, metadata !DIExpression()), !dbg !1557
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1561
  store i32 10, i32* %6, align 8, !dbg !1562, !tbaa !1495
  %7 = icmp ne i8* %1, null, !dbg !1563
  %8 = icmp ne i8* %2, null, !dbg !1565
  %9 = and i1 %7, %8, !dbg !1566
  br i1 %9, label %11, label %10, !dbg !1566

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1567
  unreachable, !dbg !1567

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1568
  store i8* %1, i8** %12, align 8, !dbg !1569, !tbaa !1570
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1571
  store i8* %2, i8** %13, align 8, !dbg !1572, !tbaa !1573
  ret void, !dbg !1574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1579, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %1, metadata !1580, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %2, metadata !1581, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i64 %3, metadata !1582, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1583, metadata !DIExpression()), !dbg !1587
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1588
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1584, metadata !DIExpression()), !dbg !1587
  %8 = tail call i32* @__errno_location() #24, !dbg !1589
  %9 = load i32, i32* %8, align 4, !dbg !1589, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %9, metadata !1585, metadata !DIExpression()), !dbg !1587
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1590
  %11 = load i32, i32* %10, align 8, !dbg !1590, !tbaa !1495
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1591
  %13 = load i32, i32* %12, align 4, !dbg !1591, !tbaa !1547
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1592
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1593
  %16 = load i8*, i8** %15, align 8, !dbg !1593, !tbaa !1570
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1594
  %18 = load i8*, i8** %17, align 8, !dbg !1594, !tbaa !1573
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1595
  call void @llvm.dbg.value(metadata i64 %19, metadata !1586, metadata !DIExpression()), !dbg !1587
  store i32 %9, i32* %8, align 4, !dbg !1596, !tbaa !1202
  ret i64 %19, !dbg !1597
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1598 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1604, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %1, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %2, metadata !1606, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %3, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %4, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %5, metadata !1609, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32* %6, metadata !1610, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %7, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %8, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* null, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1662
  %13 = tail call i64 @__ctype_get_mb_cur_max() #13, !dbg !1663
  %14 = icmp eq i64 %13, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i1 %14, metadata !1619, metadata !DIExpression()), !dbg !1662
  %15 = lshr i32 %5, 1, !dbg !1665
  %16 = trunc i32 %15 to i8, !dbg !1665
  %17 = and i8 %16, 1, !dbg !1665
  call void @llvm.dbg.value(metadata i8 %17, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1623, metadata !DIExpression()), !dbg !1662
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1666
  %19 = and i32 %5, 4, !dbg !1668
  %20 = icmp eq i32 %19, 0, !dbg !1668
  %21 = and i32 %5, 1, !dbg !1671
  %22 = icmp eq i32 %21, 0, !dbg !1671
  %23 = bitcast i64* %10 to i8*, !dbg !1674
  %24 = bitcast i32* %12 to i8*, !dbg !1675
  %25 = icmp eq i32* %6, null, !dbg !1676
  br label %26, !dbg !1678

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1679
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1680
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1681
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1682
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1662
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1683
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1684
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1685
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %38, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %37, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %36, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %35, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %34, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %33, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %32, metadata !1617, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %31, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %30, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %29, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %28, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %27, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1656), !dbg !1686
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
  ], !dbg !1687

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %35, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 5, metadata !1608, metadata !DIExpression()), !dbg !1662
  br label %92, !dbg !1688

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 5, metadata !1608, metadata !DIExpression()), !dbg !1662
  %42 = and i8 %35, 1, !dbg !1690
  %43 = icmp eq i8 %42, 0, !dbg !1690
  br i1 %43, label %44, label %92, !dbg !1688

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1692
  br i1 %45, label %92, label %46, !dbg !1695

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1692, !tbaa !1256
  br label %92, !dbg !1692

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %27), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %48, metadata !1611, metadata !DIExpression()), !dbg !1662
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %27), !dbg !1700
  call void @llvm.dbg.value(metadata i8* %49, metadata !1612, metadata !DIExpression()), !dbg !1662
  br label %50, !dbg !1701

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %51, metadata !1611, metadata !DIExpression()), !dbg !1662
  %53 = and i8 %35, 1, !dbg !1702
  %54 = icmp eq i8 %53, 0, !dbg !1702
  br i1 %54, label %55, label %70, !dbg !1704

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1662
  %56 = load i8, i8* %51, align 1, !dbg !1705, !tbaa !1256
  %57 = icmp eq i8 %56, 0, !dbg !1708
  br i1 %57, label %70, label %58, !dbg !1708

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %61, metadata !1614, metadata !DIExpression()), !dbg !1662
  %62 = icmp ult i64 %61, %39, !dbg !1709
  br i1 %62, label %63, label %65, !dbg !1712

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1709
  store i8 %59, i8* %64, align 1, !dbg !1709, !tbaa !1256
  br label %65, !dbg !1709

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %66, metadata !1614, metadata !DIExpression()), !dbg !1662
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1713
  call void @llvm.dbg.value(metadata i8* %67, metadata !1616, metadata !DIExpression()), !dbg !1662
  %68 = load i8, i8* %67, align 1, !dbg !1705, !tbaa !1256
  %69 = icmp eq i8 %68, 0, !dbg !1708
  br i1 %69, label %70, label %58, !dbg !1708, !llvm.loop !1714

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1716
  call void @llvm.dbg.value(metadata i64 %71, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %52, metadata !1616, metadata !DIExpression()), !dbg !1662
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %72, metadata !1617, metadata !DIExpression()), !dbg !1662
  br label %92, !dbg !1718

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1662
  br label %74, !dbg !1719

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %75, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1662
  br label %76, !dbg !1720

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1682
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %78, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %77, metadata !1618, metadata !DIExpression()), !dbg !1662
  %79 = and i8 %78, 1, !dbg !1721
  %80 = icmp eq i8 %79, 0, !dbg !1721
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1723
  br label %82, !dbg !1723

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1662
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1665
  call void @llvm.dbg.value(metadata i8 %84, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %83, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  %85 = and i8 %84, 1, !dbg !1724
  %86 = icmp eq i8 %85, 0, !dbg !1724
  br i1 %86, label %87, label %92, !dbg !1726

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1727
  br i1 %88, label %92, label %89, !dbg !1730

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1727, !tbaa !1256
  br label %92, !dbg !1727

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1662
  br label %92, !dbg !1731

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1732
  unreachable, !dbg !1732

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1716
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %40 ], !dbg !1662
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1662
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1662
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %100, metadata !1620, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %98, metadata !1617, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %96, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %93, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 0, metadata !1613, metadata !DIExpression()), !dbg !1662
  %101 = and i8 %99, 1, !dbg !1733
  %102 = icmp ne i8 %101, 0, !dbg !1733
  %103 = icmp ne i32 %93, 2, !dbg !1733
  %104 = and i1 %103, %102, !dbg !1733
  %105 = icmp ne i64 %98, 0, !dbg !1733
  %106 = and i1 %105, %104, !dbg !1733
  %107 = icmp ugt i64 %98, 1, !dbg !1733
  %108 = and i8 %100, 1, !dbg !1735
  %109 = icmp eq i8 %108, 0, !dbg !1735
  %110 = icmp eq i32 %93, 2, !dbg !1738
  %111 = or i1 %103, %109, !dbg !1740
  %112 = icmp ne i8 %108, 0, !dbg !1742
  %113 = and i1 %110, %112, !dbg !1742
  %114 = xor i1 %102, true, !dbg !1743
  %115 = xor i1 %104, true, !dbg !1676
  %116 = and i1 %109, %115, !dbg !1676
  %117 = or i1 %25, %116, !dbg !1676
  %118 = and i8 %99, %100, !dbg !1744
  %119 = and i8 %118, 1, !dbg !1744
  %120 = icmp ne i8 %119, 0, !dbg !1744
  %121 = and i1 %120, %105, !dbg !1744
  br label %122, !dbg !1746

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1747
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1716
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1679
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1683
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1684
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1685
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %126, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %123, metadata !1613, metadata !DIExpression()), !dbg !1662
  %131 = icmp eq i64 %126, -1, !dbg !1748
  br i1 %131, label %132, label %136, !dbg !1749

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1750
  %134 = load i8, i8* %133, align 1, !dbg !1750, !tbaa !1256
  %135 = icmp eq i8 %134, 0, !dbg !1751
  br i1 %135, label %581, label %138, !dbg !1752

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1753
  br i1 %137, label %581, label %138, !dbg !1752

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1754
  br i1 %106, label %139, label %154, !dbg !1755

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1756
  %141 = and i1 %107, %131, !dbg !1757
  br i1 %141, label %142, label %144, !dbg !1757

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %143, metadata !1607, metadata !DIExpression()), !dbg !1662
  br label %144, !dbg !1759

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1607, metadata !DIExpression()), !dbg !1662
  %146 = icmp ugt i64 %140, %145, !dbg !1760
  br i1 %146, label %154, label %147, !dbg !1761

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1762
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1763
  %150 = icmp ne i32 %149, 0, !dbg !1764
  %151 = or i1 %150, %109, !dbg !1765
  %152 = xor i1 %150, true, !dbg !1765
  %153 = zext i1 %152 to i8, !dbg !1765
  br i1 %151, label %154, label %639, !dbg !1765

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %156, metadata !1629, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %155, metadata !1607, metadata !DIExpression()), !dbg !1662
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1766
  %158 = load i8, i8* %157, align 1, !dbg !1766, !tbaa !1256
  call void @llvm.dbg.value(metadata i8 %158, metadata !1624, metadata !DIExpression()), !dbg !1754
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
  ], !dbg !1767

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1768

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1769

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1754
  %162 = and i8 %127, 1, !dbg !1772
  %163 = icmp eq i8 %162, 0, !dbg !1772
  %164 = and i1 %110, %163, !dbg !1772
  br i1 %164, label %165, label %181, !dbg !1772

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1774
  br i1 %166, label %167, label %169, !dbg !1778

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1774
  store i8 39, i8* %168, align 1, !dbg !1774, !tbaa !1256
  br label %169, !dbg !1774

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %170, metadata !1614, metadata !DIExpression()), !dbg !1662
  %171 = icmp ult i64 %170, %130, !dbg !1779
  br i1 %171, label %172, label %174, !dbg !1782

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1779
  store i8 36, i8* %173, align 1, !dbg !1779, !tbaa !1256
  br label %174, !dbg !1779

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %175, metadata !1614, metadata !DIExpression()), !dbg !1662
  %176 = icmp ult i64 %175, %130, !dbg !1783
  br i1 %176, label %177, label %179, !dbg !1786

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1783
  store i8 39, i8* %178, align 1, !dbg !1783, !tbaa !1256
  br label %179, !dbg !1783

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %180, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %181, !dbg !1787

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1662
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %183, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %182, metadata !1614, metadata !DIExpression()), !dbg !1662
  %184 = icmp ult i64 %182, %130, !dbg !1788
  br i1 %184, label %185, label %187, !dbg !1791

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1788
  store i8 92, i8* %186, align 1, !dbg !1788, !tbaa !1256
  br label %187, !dbg !1788

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %188, metadata !1614, metadata !DIExpression()), !dbg !1662
  br i1 %103, label %189, label %463, !dbg !1792

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1794
  %191 = icmp ult i64 %190, %155, !dbg !1795
  br i1 %191, label %192, label %463, !dbg !1796

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1797
  %194 = load i8, i8* %193, align 1, !dbg !1797, !tbaa !1256
  %195 = add i8 %194, -48, !dbg !1798
  %196 = icmp ult i8 %195, 10, !dbg !1798
  br i1 %196, label %197, label %463, !dbg !1798

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1799
  br i1 %198, label %199, label %201, !dbg !1803

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1799
  store i8 48, i8* %200, align 1, !dbg !1799, !tbaa !1256
  br label %201, !dbg !1799

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %202, metadata !1614, metadata !DIExpression()), !dbg !1662
  %203 = icmp ult i64 %202, %130, !dbg !1804
  br i1 %203, label %204, label %206, !dbg !1807

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1804
  store i8 48, i8* %205, align 1, !dbg !1804, !tbaa !1256
  br label %206, !dbg !1804

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %207, metadata !1614, metadata !DIExpression()), !dbg !1662
  br label %463, !dbg !1808

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1809

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1810

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1811

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1812

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1813
  %214 = icmp ult i64 %213, %155, !dbg !1814
  br i1 %214, label %215, label %463, !dbg !1815

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1816
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1817
  %218 = load i8, i8* %217, align 1, !dbg !1817, !tbaa !1256
  %219 = icmp eq i8 %218, 63, !dbg !1818
  br i1 %219, label %220, label %463, !dbg !1819

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1820
  %222 = load i8, i8* %221, align 1, !dbg !1820, !tbaa !1256
  %223 = sext i8 %222 to i32, !dbg !1820
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
  ], !dbg !1821

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1822

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i64 %213, metadata !1613, metadata !DIExpression()), !dbg !1662
  %226 = icmp ult i64 %124, %130, !dbg !1824
  br i1 %226, label %227, label %229, !dbg !1827

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1824
  store i8 63, i8* %228, align 1, !dbg !1824, !tbaa !1256
  br label %229, !dbg !1824

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %230, metadata !1614, metadata !DIExpression()), !dbg !1662
  %231 = icmp ult i64 %230, %130, !dbg !1828
  br i1 %231, label %232, label %234, !dbg !1831

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1828
  store i8 34, i8* %233, align 1, !dbg !1828, !tbaa !1256
  br label %234, !dbg !1828

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %235, metadata !1614, metadata !DIExpression()), !dbg !1662
  %236 = icmp ult i64 %235, %130, !dbg !1832
  br i1 %236, label %237, label %239, !dbg !1835

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1832
  store i8 34, i8* %238, align 1, !dbg !1832, !tbaa !1256
  br label %239, !dbg !1832

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %240, metadata !1614, metadata !DIExpression()), !dbg !1662
  %241 = icmp ult i64 %240, %130, !dbg !1836
  br i1 %241, label %242, label %244, !dbg !1839

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1836
  store i8 63, i8* %243, align 1, !dbg !1836, !tbaa !1256
  br label %244, !dbg !1836

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %245, metadata !1614, metadata !DIExpression()), !dbg !1662
  br label %463, !dbg !1840

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1628, metadata !DIExpression()), !dbg !1754
  br label %256, !dbg !1841

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1628, metadata !DIExpression()), !dbg !1754
  br label %256, !dbg !1842

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1628, metadata !DIExpression()), !dbg !1754
  br label %254, !dbg !1843

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1628, metadata !DIExpression()), !dbg !1754
  br label %254, !dbg !1844

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1628, metadata !DIExpression()), !dbg !1754
  br label %256, !dbg !1845

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1628, metadata !DIExpression()), !dbg !1754
  br i1 %110, label %252, label %253, !dbg !1846

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1847

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1850

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1851
  call void @llvm.dbg.value(metadata i8 %255, metadata !1628, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.label(metadata !1657), !dbg !1852
  br i1 %111, label %256, label %625, !dbg !1853

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1851
  call void @llvm.dbg.value(metadata i8 %257, metadata !1628, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.label(metadata !1658), !dbg !1855
  br i1 %102, label %488, label %463, !dbg !1856

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1857

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1858, !tbaa !1256
  %261 = icmp eq i8 %260, 0, !dbg !1859
  br i1 %261, label %262, label %463, !dbg !1860

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1861
  br i1 %263, label %264, label %463, !dbg !1863

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1754
  br label %265, !dbg !1864

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %266, metadata !1631, metadata !DIExpression()), !dbg !1754
  br i1 %111, label %463, label %625, !dbg !1865

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1754
  br i1 %110, label %268, label %463, !dbg !1866

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1867

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1869
  %271 = icmp ne i64 %125, 0, !dbg !1871
  %272 = or i1 %271, %270, !dbg !1872
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1872
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %274, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %273, metadata !1615, metadata !DIExpression()), !dbg !1662
  %275 = icmp ult i64 %124, %274, !dbg !1873
  br i1 %275, label %276, label %278, !dbg !1876

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1873
  store i8 39, i8* %277, align 1, !dbg !1873, !tbaa !1256
  br label %278, !dbg !1873

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %279, metadata !1614, metadata !DIExpression()), !dbg !1662
  %280 = icmp ult i64 %279, %274, !dbg !1877
  br i1 %280, label %281, label %283, !dbg !1880

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1877
  store i8 92, i8* %282, align 1, !dbg !1877, !tbaa !1256
  br label %283, !dbg !1877

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %284, metadata !1614, metadata !DIExpression()), !dbg !1662
  %285 = icmp ult i64 %284, %274, !dbg !1881
  br i1 %285, label %286, label %288, !dbg !1884

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1881
  store i8 39, i8* %287, align 1, !dbg !1881, !tbaa !1256
  br label %288, !dbg !1881

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %289, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %463, !dbg !1885

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1886

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1632, metadata !DIExpression()), !dbg !1887
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1888
  %293 = load i16*, i16** %292, align 8, !dbg !1888, !tbaa !1133
  %294 = zext i8 %158 to i64, !dbg !1888
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1888
  %296 = load i16, i16* %295, align 2, !dbg !1888, !tbaa !1890
  %297 = lshr i16 %296, 14, !dbg !1892
  %298 = trunc i16 %297 to i8, !dbg !1892
  %299 = and i8 %298, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i8 %299, metadata !1635, metadata !DIExpression()), !dbg !1887
  br label %355, !dbg !1893

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #13, !dbg !1894
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1636, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8* %23, metadata !1896, metadata !DIExpression()) #13, !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()) #13, !dbg !1903
  call void @llvm.dbg.value(metadata i64 8, metadata !1902, metadata !DIExpression()) #13, !dbg !1903
  store i64 0, i64* %10, align 8, !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()), !dbg !1887
  %301 = icmp eq i64 %155, -1, !dbg !1906
  br i1 %301, label %302, label %304, !dbg !1908

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %303, metadata !1607, metadata !DIExpression()), !dbg !1662
  br label %304, !dbg !1910

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1754
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  br label %306, !dbg !1911

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1912
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1913
  call void @llvm.dbg.value(metadata i8 %308, metadata !1635, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #13, !dbg !1914
  %309 = add i64 %307, %123, !dbg !1915
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1916
  %311 = sub i64 %305, %309, !dbg !1917
  call void @llvm.dbg.value(metadata i32* %12, metadata !1642, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #13, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %312, metadata !1645, metadata !DIExpression()), !dbg !1675
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1919

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  %314 = icmp ugt i64 %305, %309, !dbg !1920
  br i1 %314, label %315, label %340, !dbg !1922

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1923
  br label %317, !dbg !1923

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1632, metadata !DIExpression()), !dbg !1887
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1924
  %321 = load i8, i8* %320, align 1, !dbg !1924, !tbaa !1256
  %322 = icmp eq i8 %321, 0, !dbg !1922
  br i1 %322, label %340, label %323, !dbg !1923

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %324, metadata !1632, metadata !DIExpression()), !dbg !1887
  %325 = add i64 %324, %123, !dbg !1926
  %326 = icmp ult i64 %325, %305, !dbg !1920
  br i1 %326, label %317, label %340, !dbg !1922, !llvm.loop !1927

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1928
  %329 = and i1 %113, %328, !dbg !1931
  call void @llvm.dbg.value(metadata i64 1, metadata !1646, metadata !DIExpression()), !dbg !1932
  br i1 %329, label %330, label %343, !dbg !1931

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1646, metadata !DIExpression()), !dbg !1932
  %332 = add i64 %331, %309, !dbg !1933
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1934
  %334 = load i8, i8* %333, align 1, !dbg !1934, !tbaa !1256
  %335 = sext i8 %334 to i32, !dbg !1934
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1935

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %337, metadata !1646, metadata !DIExpression()), !dbg !1932
  %338 = icmp eq i64 %337, %312, !dbg !1928
  br i1 %338, label %343, label %330, !dbg !1937, !llvm.loop !1938

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %308, metadata !1635, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %307, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %308, metadata !1635, metadata !DIExpression()), !dbg !1887
  br label %340, !dbg !1940

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !1940
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1941, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %344, metadata !1642, metadata !DIExpression()), !dbg !1675
  %345 = call i32 @iswprint(i32 %344) #13, !dbg !1943
  %346 = icmp eq i32 %345, 0, !dbg !1943
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1944
  call void @llvm.dbg.value(metadata i8 %347, metadata !1635, metadata !DIExpression()), !dbg !1887
  %348 = add i64 %312, %307, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %348, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 %347, metadata !1635, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %348, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !1940
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1946
  %350 = icmp eq i32 %349, 0, !dbg !1947
  br i1 %350, label %306, label %351, !dbg !1948, !llvm.loop !1949

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !1951
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 2, metadata !1608, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %99, metadata !1618, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %305, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #13, !dbg !1940
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #13, !dbg !1951
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1754
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1952
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1952
  call void @llvm.dbg.value(metadata i8 %358, metadata !1635, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %357, metadata !1632, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i64 %356, metadata !1607, metadata !DIExpression()), !dbg !1662
  %359 = and i8 %358, 1, !dbg !1953
  %360 = icmp ne i8 %359, 0, !dbg !1953
  call void @llvm.dbg.value(metadata i8 %359, metadata !1631, metadata !DIExpression()), !dbg !1754
  %361 = icmp ult i64 %357, 2, !dbg !1954
  %362 = or i1 %360, %114, !dbg !1955
  %363 = and i1 %361, %362, !dbg !1956
  br i1 %363, label %463, label %364, !dbg !1956

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %365, metadata !1653, metadata !DIExpression()), !dbg !1958
  br label %366, !dbg !1959

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1747
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1662
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1683
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1754
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1754
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1960
  call void @llvm.dbg.value(metadata i8 %372, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %371, metadata !1629, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %370, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %369, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %368, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %367, metadata !1613, metadata !DIExpression()), !dbg !1662
  br i1 %362, label %419, label %373, !dbg !1961

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1966

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1754
  %375 = and i8 %369, 1, !dbg !1969
  %376 = icmp eq i8 %375, 0, !dbg !1969
  %377 = and i1 %110, %376, !dbg !1969
  br i1 %377, label %378, label %394, !dbg !1969

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1971
  br i1 %379, label %380, label %382, !dbg !1975

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1971
  store i8 39, i8* %381, align 1, !dbg !1971, !tbaa !1256
  br label %382, !dbg !1971

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %383, metadata !1614, metadata !DIExpression()), !dbg !1662
  %384 = icmp ult i64 %383, %130, !dbg !1976
  br i1 %384, label %385, label %387, !dbg !1979

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1976
  store i8 36, i8* %386, align 1, !dbg !1976, !tbaa !1256
  br label %387, !dbg !1976

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %388, metadata !1614, metadata !DIExpression()), !dbg !1662
  %389 = icmp ult i64 %388, %130, !dbg !1980
  br i1 %389, label %390, label %392, !dbg !1983

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1980
  store i8 39, i8* %391, align 1, !dbg !1980, !tbaa !1256
  br label %392, !dbg !1980

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %393, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %394, !dbg !1984

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1662
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %396, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %395, metadata !1614, metadata !DIExpression()), !dbg !1662
  %397 = icmp ult i64 %395, %130, !dbg !1985
  br i1 %397, label %398, label %400, !dbg !1988

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1985
  store i8 92, i8* %399, align 1, !dbg !1985, !tbaa !1256
  br label %400, !dbg !1985

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %401, metadata !1614, metadata !DIExpression()), !dbg !1662
  %402 = icmp ult i64 %401, %130, !dbg !1989
  br i1 %402, label %403, label %407, !dbg !1992

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1989
  %405 = or i8 %404, 48, !dbg !1989
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1989
  store i8 %405, i8* %406, align 1, !dbg !1989, !tbaa !1256
  br label %407, !dbg !1989

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %408, metadata !1614, metadata !DIExpression()), !dbg !1662
  %409 = icmp ult i64 %408, %130, !dbg !1993
  br i1 %409, label %410, label %415, !dbg !1996

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1993
  %412 = and i8 %411, 7, !dbg !1993
  %413 = or i8 %412, 48, !dbg !1993
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1993
  store i8 %413, i8* %414, align 1, !dbg !1993, !tbaa !1256
  br label %415, !dbg !1993

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %416, metadata !1614, metadata !DIExpression()), !dbg !1662
  %417 = and i8 %370, 7, !dbg !1997
  %418 = or i8 %417, 48, !dbg !1998
  call void @llvm.dbg.value(metadata i8 %418, metadata !1624, metadata !DIExpression()), !dbg !1754
  br label %428, !dbg !1999

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2000
  %421 = icmp eq i8 %420, 0, !dbg !2000
  br i1 %421, label %428, label %422, !dbg !2002

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2003
  br i1 %423, label %424, label %426, !dbg !2007

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2003
  store i8 92, i8* %425, align 1, !dbg !2003, !tbaa !1256
  br label %426, !dbg !2003

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %427, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1754
  br label %428, !dbg !2008

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1662
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1683
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1754
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1754
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %433, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %432, metadata !1629, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %431, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %430, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %429, metadata !1614, metadata !DIExpression()), !dbg !1662
  %434 = add i64 %367, 1, !dbg !2009
  %435 = icmp ugt i64 %365, %434, !dbg !2011
  br i1 %435, label %436, label %526, !dbg !2012

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2013
  %438 = icmp ne i8 %437, 0, !dbg !2013
  %439 = and i8 %433, 1, !dbg !2013
  %440 = icmp eq i8 %439, 0, !dbg !2013
  %441 = and i1 %438, %440, !dbg !2013
  br i1 %441, label %442, label %453, !dbg !2013

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2016
  br i1 %443, label %444, label %446, !dbg !2020

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2016
  store i8 39, i8* %445, align 1, !dbg !2016, !tbaa !1256
  br label %446, !dbg !2016

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %447, metadata !1614, metadata !DIExpression()), !dbg !1662
  %448 = icmp ult i64 %447, %130, !dbg !2021
  br i1 %448, label %449, label %451, !dbg !2024

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2021
  store i8 39, i8* %450, align 1, !dbg !2021, !tbaa !1256
  br label %451, !dbg !2021

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %452, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %453, !dbg !2025

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2026
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %455, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %454, metadata !1614, metadata !DIExpression()), !dbg !1662
  %456 = icmp ult i64 %454, %130, !dbg !2027
  br i1 %456, label %457, label %459, !dbg !2030

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2027
  store i8 %431, i8* %458, align 1, !dbg !2027, !tbaa !1256
  br label %459, !dbg !2027

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %460, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %434, metadata !1613, metadata !DIExpression()), !dbg !1662
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2031
  %462 = load i8, i8* %461, align 1, !dbg !2031, !tbaa !1256
  call void @llvm.dbg.value(metadata i8 %462, metadata !1624, metadata !DIExpression()), !dbg !1754
  br label %366, !dbg !2032, !llvm.loop !2033

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1747
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1662
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1679
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2036
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1662
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1662
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1754
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1754
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1754
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %472, metadata !1631, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %471, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %156, metadata !1629, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %470, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %469, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %468, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %467, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %466, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %465, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %464, metadata !1613, metadata !DIExpression()), !dbg !1662
  br i1 %117, label %486, label %474, !dbg !2037

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2038
  %476 = zext i8 %475 to i64, !dbg !2038
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2039
  %478 = load i32, i32* %477, align 4, !dbg !2039, !tbaa !1202
  %479 = and i8 %470, 31, !dbg !2040
  %480 = zext i8 %479 to i32, !dbg !2040
  %481 = shl nuw i32 1, %480, !dbg !2041
  %482 = and i32 %478, %481, !dbg !2041
  %483 = icmp eq i32 %482, 0, !dbg !2041
  %484 = icmp eq i8 %156, 0, !dbg !2042
  %485 = and i1 %484, %483, !dbg !2043
  br i1 %485, label %526, label %488, !dbg !2043

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2042
  br i1 %487, label %526, label %488, !dbg !2044

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2045
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1662
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1679
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2036
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1683
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1684
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1754
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1754
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %496, metadata !1631, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %495, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %494, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %493, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %492, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %491, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %490, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %489, metadata !1613, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1659), !dbg !2046
  br i1 %109, label %498, label %629, !dbg !2047

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1754
  %499 = and i8 %493, 1, !dbg !2049
  %500 = icmp eq i8 %499, 0, !dbg !2049
  %501 = and i1 %110, %500, !dbg !2049
  br i1 %501, label %502, label %518, !dbg !2049

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2051
  br i1 %503, label %504, label %506, !dbg !2055

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2051
  store i8 39, i8* %505, align 1, !dbg !2051, !tbaa !1256
  br label %506, !dbg !2051

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %507, metadata !1614, metadata !DIExpression()), !dbg !1662
  %508 = icmp ult i64 %507, %497, !dbg !2056
  br i1 %508, label %509, label %511, !dbg !2059

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2056
  store i8 36, i8* %510, align 1, !dbg !2056, !tbaa !1256
  br label %511, !dbg !2056

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %512, metadata !1614, metadata !DIExpression()), !dbg !1662
  %513 = icmp ult i64 %512, %497, !dbg !2060
  br i1 %513, label %514, label %516, !dbg !2063

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2060
  store i8 39, i8* %515, align 1, !dbg !2060, !tbaa !1256
  br label %516, !dbg !2060

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %517, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %518, !dbg !2064

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1754
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %520, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %519, metadata !1614, metadata !DIExpression()), !dbg !1662
  %521 = icmp ult i64 %519, %497, !dbg !2065
  br i1 %521, label %522, label %524, !dbg !2068

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2065
  store i8 92, i8* %523, align 1, !dbg !2065, !tbaa !1256
  br label %524, !dbg !2065

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %525, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %536, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %535, metadata !1631, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %534, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %533, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %532, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %531, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %530, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %529, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %528, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %527, metadata !1613, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1660), !dbg !2069
  br label %553, !dbg !2070

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2045
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1662
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1679
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2036
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1683
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1684
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2073
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1754
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1754
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %535, metadata !1631, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %534, metadata !1630, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %533, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 %532, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %531, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %530, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %529, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %528, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %527, metadata !1613, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1660), !dbg !2069
  %537 = and i8 %531, 1, !dbg !2070
  %538 = icmp ne i8 %537, 0, !dbg !2070
  %539 = and i8 %534, 1, !dbg !2070
  %540 = icmp eq i8 %539, 0, !dbg !2070
  %541 = and i1 %538, %540, !dbg !2070
  br i1 %541, label %542, label %553, !dbg !2070

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2074
  br i1 %543, label %544, label %546, !dbg !2078

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2074
  store i8 39, i8* %545, align 1, !dbg !2074, !tbaa !1256
  br label %546, !dbg !2074

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %547, metadata !1614, metadata !DIExpression()), !dbg !1662
  %548 = icmp ult i64 %547, %536, !dbg !2079
  br i1 %548, label %549, label %551, !dbg !2082

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2079
  store i8 39, i8* %550, align 1, !dbg !2079, !tbaa !1256
  br label %551, !dbg !2079

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %552, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1662
  br label %553, !dbg !2083

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1754
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8 %562, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %561, metadata !1614, metadata !DIExpression()), !dbg !1662
  %563 = icmp ult i64 %561, %554, !dbg !2084
  br i1 %563, label %564, label %566, !dbg !2087

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2084
  store i8 %556, i8* %565, align 1, !dbg !2084, !tbaa !1256
  br label %566, !dbg !2084

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %567, metadata !1614, metadata !DIExpression()), !dbg !1662
  %568 = and i8 %555, 1, !dbg !2088
  %569 = icmp eq i8 %568, 0, !dbg !2088
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %570, metadata !1623, metadata !DIExpression()), !dbg !1662
  br label %571, !dbg !2091

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2045
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1662
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1679
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2036
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1683
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1662
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1685
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %578, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %577, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %576, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %575, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %574, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %573, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %572, metadata !1613, metadata !DIExpression()), !dbg !1662
  %580 = add i64 %572, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %580, metadata !1613, metadata !DIExpression()), !dbg !1662
  br label %122, !dbg !2093, !llvm.loop !2094

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %127, metadata !1621, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %128, metadata !1622, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %129, metadata !1623, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  %583 = icmp eq i64 %124, 0, !dbg !2096
  %584 = and i1 %110, %583, !dbg !2098
  %585 = xor i1 %584, true, !dbg !2098
  %586 = or i1 %109, %585, !dbg !2098
  br i1 %586, label %587, label %629, !dbg !2098

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2099
  %589 = xor i1 %588, true, !dbg !2099
  %590 = and i8 %128, 1, !dbg !2101
  %591 = icmp eq i8 %590, 0, !dbg !2101
  %592 = or i1 %591, %589, !dbg !2099
  br i1 %592, label %602, label %593, !dbg !2099

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2102
  %595 = icmp eq i8 %594, 0, !dbg !2102
  br i1 %595, label %598, label %596, !dbg !2105

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %94, metadata !1611, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %125, metadata !1615, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %582, metadata !1607, metadata !DIExpression()), !dbg !1662
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2106
  br label %645, !dbg !2107

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2108
  %600 = icmp ne i64 %125, 0, !dbg !2110
  %601 = and i1 %600, %599, !dbg !2111
  br i1 %601, label %26, label %602, !dbg !2111

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %130, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  %603 = icmp ne i8* %97, null, !dbg !2112
  %604 = and i1 %603, %109, !dbg !2114
  br i1 %604, label %605, label %620, !dbg !2114

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %124, metadata !1614, metadata !DIExpression()), !dbg !1662
  %606 = load i8, i8* %97, align 1, !dbg !2115, !tbaa !1256
  %607 = icmp eq i8 %606, 0, !dbg !2118
  br i1 %607, label %620, label %608, !dbg !2118

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1616, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %611, metadata !1614, metadata !DIExpression()), !dbg !1662
  %612 = icmp ult i64 %611, %130, !dbg !2119
  br i1 %612, label %613, label %615, !dbg !2122

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2119
  store i8 %609, i8* %614, align 1, !dbg !2119, !tbaa !1256
  br label %615, !dbg !2119

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %616, metadata !1614, metadata !DIExpression()), !dbg !1662
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2123
  call void @llvm.dbg.value(metadata i8* %617, metadata !1616, metadata !DIExpression()), !dbg !1662
  %618 = load i8, i8* %617, align 1, !dbg !2115, !tbaa !1256
  %619 = icmp eq i8 %618, 0, !dbg !2118
  br i1 %619, label %620, label %608, !dbg !2118, !llvm.loop !2124

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1716
  call void @llvm.dbg.value(metadata i64 %621, metadata !1614, metadata !DIExpression()), !dbg !1662
  %622 = icmp ult i64 %621, %130, !dbg !2126
  br i1 %622, label %623, label %645, !dbg !2128

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2129
  store i8 0, i8* %624, align 1, !dbg !2130, !tbaa !1256
  br label %645, !dbg !2129

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %630, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1661), !dbg !2131
  %627 = icmp eq i8 %101, 0, !dbg !2132
  %628 = select i1 %627, i32 2, i32 4, !dbg !2132
  br label %635, !dbg !2132

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1605, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i64 %630, metadata !1607, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1661), !dbg !2131
  %632 = icmp eq i32 %93, 2, !dbg !2134
  %633 = icmp eq i8 %101, 0, !dbg !2132
  %634 = select i1 %633, i32 2, i32 4, !dbg !2132
  br i1 %632, label %635, label %639, !dbg !2132

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2132

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1608, metadata !DIExpression()), !dbg !1662
  %643 = and i32 %5, -3, !dbg !2135
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2136
  br label %645, !dbg !2137

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2138
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2139 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2143, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1, metadata !2144, metadata !DIExpression()), !dbg !2147
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #13, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %3, metadata !2145, metadata !DIExpression()), !dbg !2147
  %4 = icmp eq i8* %3, %0, !dbg !2149
  br i1 %4, label %5, label %71, !dbg !2151

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #13, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %6, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* %6, metadata !2153, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8* undef, metadata !2159, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 85, metadata !2160, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 84, metadata !2161, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 70, metadata !2162, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 45, metadata !2163, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 56, metadata !2164, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 0, metadata !2165, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 0, metadata !2166, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2169
  %7 = load i8, i8* %6, align 1, !dbg !2172, !tbaa !1256
  %8 = and i8 %7, -33, !dbg !2172
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2172

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2174, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8* undef, metadata !2179, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 84, metadata !2180, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 70, metadata !2181, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 45, metadata !2182, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 56, metadata !2183, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2188
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2192
  %11 = load i8, i8* %10, align 1, !dbg !2192, !tbaa !1256
  %12 = and i8 %11, -33, !dbg !2192
  %13 = icmp eq i8 %12, 84, !dbg !2192
  br i1 %13, label %14, label %68, !dbg !2192

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2194, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8* undef, metadata !2199, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 70, metadata !2200, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 45, metadata !2201, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 56, metadata !2202, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2203, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2207
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2211
  %16 = load i8, i8* %15, align 1, !dbg !2211, !tbaa !1256
  %17 = and i8 %16, -33, !dbg !2211
  %18 = icmp eq i8 %17, 70, !dbg !2211
  br i1 %18, label %19, label %68, !dbg !2211

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2213, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* undef, metadata !2218, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 45, metadata !2219, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 56, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 0, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 0, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 0, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2225
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2229
  %21 = load i8, i8* %20, align 1, !dbg !2229, !tbaa !1256
  %22 = icmp eq i8 %21, 45, !dbg !2229
  br i1 %22, label %23, label %68, !dbg !2231

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2232, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8* undef, metadata !2237, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 56, metadata !2238, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 0, metadata !2239, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 0, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 0, metadata !2241, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2243
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2247
  %25 = load i8, i8* %24, align 1, !dbg !2247, !tbaa !1256
  %26 = icmp eq i8 %25, 56, !dbg !2247
  br i1 %26, label %27, label %68, !dbg !2249

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2250, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* undef, metadata !2255, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 0, metadata !2256, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 0, metadata !2257, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 0, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 0, metadata !2259, metadata !DIExpression()), !dbg !2260
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2264
  %29 = load i8, i8* %28, align 1, !dbg !2264, !tbaa !1256
  %30 = icmp eq i8 %29, 0, !dbg !2264
  br i1 %30, label %31, label %68, !dbg !2266

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2267, !tbaa !1256
  %33 = icmp eq i8 %32, 96, !dbg !2268
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2267
  br label %71, !dbg !2269

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2174, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8* undef, metadata !2179, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 66, metadata !2180, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 49, metadata !2181, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 56, metadata !2182, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 48, metadata !2183, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 51, metadata !2184, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 48, metadata !2185, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2270
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2274
  %37 = load i8, i8* %36, align 1, !dbg !2274, !tbaa !1256
  %38 = and i8 %37, -33, !dbg !2274
  %39 = icmp eq i8 %38, 66, !dbg !2274
  br i1 %39, label %40, label %68, !dbg !2274

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2194, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* undef, metadata !2199, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 49, metadata !2200, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 56, metadata !2201, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 48, metadata !2202, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 51, metadata !2203, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 48, metadata !2204, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2205, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2275
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2277
  %42 = load i8, i8* %41, align 1, !dbg !2277, !tbaa !1256
  %43 = icmp eq i8 %42, 49, !dbg !2277
  br i1 %43, label %44, label %68, !dbg !2278

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2213, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8* undef, metadata !2218, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 56, metadata !2219, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 48, metadata !2220, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 51, metadata !2221, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 48, metadata !2222, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2223, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2224, metadata !DIExpression()), !dbg !2279
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2281
  %46 = load i8, i8* %45, align 1, !dbg !2281, !tbaa !1256
  %47 = icmp eq i8 %46, 56, !dbg !2281
  br i1 %47, label %48, label %68, !dbg !2282

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2232, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* undef, metadata !2237, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 48, metadata !2238, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 51, metadata !2239, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 48, metadata !2240, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 0, metadata !2241, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2283
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2285
  %50 = load i8, i8* %49, align 1, !dbg !2285, !tbaa !1256
  %51 = icmp eq i8 %50, 48, !dbg !2285
  br i1 %51, label %52, label %68, !dbg !2286

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2250, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8* undef, metadata !2255, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 51, metadata !2256, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 48, metadata !2257, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 0, metadata !2258, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i8 0, metadata !2259, metadata !DIExpression()), !dbg !2287
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2289
  %54 = load i8, i8* %53, align 1, !dbg !2289, !tbaa !1256
  %55 = icmp eq i8 %54, 51, !dbg !2289
  br i1 %55, label %56, label %68, !dbg !2290

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2291, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* undef, metadata !2296, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 48, metadata !2297, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8 0, metadata !2299, metadata !DIExpression()), !dbg !2300
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2304
  %58 = load i8, i8* %57, align 1, !dbg !2304, !tbaa !1256
  %59 = icmp eq i8 %58, 48, !dbg !2304
  br i1 %59, label %60, label %68, !dbg !2306

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2307, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* undef, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2313, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8 0, metadata !2314, metadata !DIExpression()), !dbg !2315
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2319
  %62 = load i8, i8* %61, align 1, !dbg !2319, !tbaa !1256
  %63 = icmp eq i8 %62, 0, !dbg !2319
  br i1 %63, label %64, label %68, !dbg !2321

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2322, !tbaa !1256
  %66 = icmp eq i8 %65, 96, !dbg !2323
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !2322
  br label %71, !dbg !2324

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2325
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2326
  br label %71, !dbg !2327

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2147
  ret i8* %72, !dbg !2328
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %0, metadata !2337, metadata !DIExpression()) #13, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()) #13, !dbg !2350
  call void @llvm.dbg.value(metadata i64* null, metadata !2343, metadata !DIExpression()) #13, !dbg !2350
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2344, metadata !DIExpression()) #13, !dbg !2350
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2352
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2345, metadata !DIExpression()) #13, !dbg !2350
  %6 = tail call i32* @__errno_location() #24, !dbg !2353
  %7 = load i32, i32* %6, align 4, !dbg !2353, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %7, metadata !2346, metadata !DIExpression()) #13, !dbg !2350
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2354
  %9 = load i32, i32* %8, align 4, !dbg !2354, !tbaa !1547
  %10 = or i32 %9, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %10, metadata !2347, metadata !DIExpression()) #13, !dbg !2350
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2356
  %12 = load i32, i32* %11, align 8, !dbg !2356, !tbaa !1495
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2357
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2358
  %15 = load i8*, i8** %14, align 8, !dbg !2358, !tbaa !1570
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2359
  %17 = load i8*, i8** %16, align 8, !dbg !2359, !tbaa !1573
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #13, !dbg !2360
  %19 = add i64 %18, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %19, metadata !2348, metadata !DIExpression()) #13, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %19, metadata !2362, metadata !DIExpression()) #13, !dbg !2367
  %20 = tail call noalias i8* @xmalloc(i64 %19) #13, !dbg !2369
  call void @llvm.dbg.value(metadata i8* %20, metadata !2349, metadata !DIExpression()) #13, !dbg !2350
  %21 = load i32, i32* %11, align 8, !dbg !2370, !tbaa !1495
  %22 = load i8*, i8** %14, align 8, !dbg !2371, !tbaa !1570
  %23 = load i8*, i8** %16, align 8, !dbg !2372, !tbaa !1573
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #13, !dbg !2373
  store i32 %7, i32* %6, align 4, !dbg !2374, !tbaa !1202
  ret i8* %20, !dbg !2375
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2337, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64* %2, metadata !2343, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2344, metadata !DIExpression()), !dbg !2376
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2377
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2345, metadata !DIExpression()), !dbg !2376
  %7 = tail call i32* @__errno_location() #24, !dbg !2378
  %8 = load i32, i32* %7, align 4, !dbg !2378, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %8, metadata !2346, metadata !DIExpression()), !dbg !2376
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2379
  %10 = load i32, i32* %9, align 4, !dbg !2379, !tbaa !1547
  %11 = icmp ne i64* %2, null, !dbg !2380
  %12 = xor i1 %11, true, !dbg !2380
  %13 = zext i1 %12 to i32, !dbg !2380
  %14 = or i32 %10, %13, !dbg !2381
  call void @llvm.dbg.value(metadata i32 %14, metadata !2347, metadata !DIExpression()), !dbg !2376
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2382
  %16 = load i32, i32* %15, align 8, !dbg !2382, !tbaa !1495
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2383
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2384
  %19 = load i8*, i8** %18, align 8, !dbg !2384, !tbaa !1570
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2385
  %21 = load i8*, i8** %20, align 8, !dbg !2385, !tbaa !1573
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2386
  %23 = add i64 %22, 1, !dbg !2387
  call void @llvm.dbg.value(metadata i64 %23, metadata !2348, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %23, metadata !2362, metadata !DIExpression()) #13, !dbg !2388
  %24 = tail call noalias i8* @xmalloc(i64 %23) #13, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %24, metadata !2349, metadata !DIExpression()), !dbg !2376
  %25 = load i32, i32* %15, align 8, !dbg !2391, !tbaa !1495
  %26 = load i8*, i8** %18, align 8, !dbg !2392, !tbaa !1570
  %27 = load i8*, i8** %20, align 8, !dbg !2393, !tbaa !1573
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2394
  store i32 %8, i32* %7, align 4, !dbg !2395, !tbaa !1202
  br i1 %11, label %29, label %30, !dbg !2396

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2397, !tbaa !2399
  br label %30, !dbg !2401

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2402
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2403 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2407, !tbaa !1133
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 1, metadata !2406, metadata !DIExpression()), !dbg !2408
  %2 = load i32, i32* @nslots, align 4, !dbg !2409, !tbaa !1202
  %3 = icmp sgt i32 %2, 1, !dbg !2412
  br i1 %3, label %4, label %12, !dbg !2413

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2406, metadata !DIExpression()), !dbg !2408
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2414
  %7 = load i8*, i8** %6, align 8, !dbg !2414, !tbaa !2415
  tail call void @free(i8* %7) #13, !dbg !2417
  %8 = add nuw nsw i64 %5, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %8, metadata !2406, metadata !DIExpression()), !dbg !2408
  %9 = load i32, i32* @nslots, align 4, !dbg !2409, !tbaa !1202
  %10 = sext i32 %9 to i64, !dbg !2412
  %11 = icmp slt i64 %8, %10, !dbg !2412
  br i1 %11, label %4, label %12, !dbg !2413, !llvm.loop !2419

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2421
  %14 = load i8*, i8** %13, align 8, !dbg !2421, !tbaa !2415
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2423
  br i1 %15, label %17, label %16, !dbg !2424

16:                                               ; preds = %12
  tail call void @free(i8* %14) #13, !dbg !2425
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2427, !tbaa !2428
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2429, !tbaa !2415
  br label %17, !dbg !2430

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2431
  br i1 %18, label %21, label %19, !dbg !2433

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2434
  tail call void @free(i8* %20) #13, !dbg !2436
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2437, !tbaa !1133
  br label %21, !dbg !2438

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2439, !tbaa !1202
  ret void, !dbg !2440
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !2444, metadata !DIExpression()), !dbg !2445
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2446
  ret i8* %3, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2448 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* %1, metadata !2453, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %2, metadata !2454, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2455, metadata !DIExpression()), !dbg !2467
  %5 = tail call i32* @__errno_location() #24, !dbg !2468
  %6 = load i32, i32* %5, align 4, !dbg !2468, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %6, metadata !2456, metadata !DIExpression()), !dbg !2467
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2469, !tbaa !1133
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2457, metadata !DIExpression()), !dbg !2467
  %8 = icmp slt i32 %0, 0, !dbg !2470
  br i1 %8, label %9, label %10, !dbg !2472

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2473
  unreachable, !dbg !2473

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2474, !tbaa !1202
  %12 = icmp sgt i32 %11, %0, !dbg !2475
  br i1 %12, label %34, label %13, !dbg !2476

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2477
  call void @llvm.dbg.value(metadata i1 %14, metadata !2458, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2461, metadata !DIExpression()), !dbg !2478
  %15 = icmp eq i32 %0, 2147483647, !dbg !2479
  br i1 %15, label %16, label %17, !dbg !2481

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2482
  unreachable, !dbg !2482

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2483
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2483
  %20 = add nuw nsw i32 %0, 1, !dbg !2484
  %21 = sext i32 %20 to i64, !dbg !2485
  %22 = shl nuw nsw i64 %21, 4, !dbg !2486
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #13, !dbg !2487
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2457, metadata !DIExpression()), !dbg !2467
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2488, !tbaa !1133
  br i1 %14, label %25, label %26, !dbg !2489

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2490, !tbaa.struct !2492
  br label %26, !dbg !2493

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2494, !tbaa !1202
  %28 = sext i32 %27 to i64, !dbg !2495
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2495
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2496
  %31 = sub nsw i32 %20, %27, !dbg !2497
  %32 = sext i32 %31 to i64, !dbg !2498
  %33 = shl nsw i64 %32, 4, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %30, metadata !1896, metadata !DIExpression()) #13, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !1901, metadata !DIExpression()) #13, !dbg !2500
  call void @llvm.dbg.value(metadata i64 %33, metadata !1902, metadata !DIExpression()) #13, !dbg !2500
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #13, !dbg !2502
  store i32 %20, i32* @nslots, align 4, !dbg !2503, !tbaa !1202
  br label %34, !dbg !2504

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2467
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2457, metadata !DIExpression()), !dbg !2467
  %36 = zext i32 %0 to i64, !dbg !2505
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2506
  %38 = load i64, i64* %37, align 8, !dbg !2506, !tbaa !2428
  call void @llvm.dbg.value(metadata i64 %38, metadata !2462, metadata !DIExpression()), !dbg !2507
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2508
  %40 = load i8*, i8** %39, align 8, !dbg !2508, !tbaa !2415
  call void @llvm.dbg.value(metadata i8* %40, metadata !2464, metadata !DIExpression()), !dbg !2507
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2509
  %42 = load i32, i32* %41, align 4, !dbg !2509, !tbaa !1547
  %43 = or i32 %42, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %43, metadata !2465, metadata !DIExpression()), !dbg !2507
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2511
  %45 = load i32, i32* %44, align 8, !dbg !2511, !tbaa !1495
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2512
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2513
  %48 = load i8*, i8** %47, align 8, !dbg !2513, !tbaa !1570
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2514
  %50 = load i8*, i8** %49, align 8, !dbg !2514, !tbaa !1573
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %51, metadata !2466, metadata !DIExpression()), !dbg !2507
  %52 = icmp ugt i64 %38, %51, !dbg !2516
  br i1 %52, label %63, label %53, !dbg !2518

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %54, metadata !2462, metadata !DIExpression()), !dbg !2507
  store i64 %54, i64* %37, align 8, !dbg !2521, !tbaa !2428
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2522
  br i1 %55, label %57, label %56, !dbg !2524

56:                                               ; preds = %53
  tail call void @free(i8* %40) #13, !dbg !2525
  br label %57, !dbg !2525

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2362, metadata !DIExpression()) #13, !dbg !2526
  %58 = tail call noalias i8* @xmalloc(i64 %54) #13, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %58, metadata !2464, metadata !DIExpression()), !dbg !2507
  store i8* %58, i8** %39, align 8, !dbg !2529, !tbaa !2415
  %59 = load i32, i32* %44, align 8, !dbg !2530, !tbaa !1495
  %60 = load i8*, i8** %47, align 8, !dbg !2531, !tbaa !1570
  %61 = load i8*, i8** %49, align 8, !dbg !2532, !tbaa !1573
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2533
  br label %63, !dbg !2534

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2507
  call void @llvm.dbg.value(metadata i8* %64, metadata !2464, metadata !DIExpression()), !dbg !2507
  store i32 %6, i32* %5, align 4, !dbg !2535, !tbaa !1202
  ret i8* %64, !dbg !2536
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8* %1, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %2, metadata !2543, metadata !DIExpression()), !dbg !2544
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2545
  ret i8* %4, !dbg !2546
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2547 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()) #13, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %0, metadata !2444, metadata !DIExpression()) #13, !dbg !2551
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !2553
  ret i8* %2, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 0, metadata !2541, metadata !DIExpression()) #13, !dbg !2562
  call void @llvm.dbg.value(metadata i8* %0, metadata !2542, metadata !DIExpression()) #13, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %1, metadata !2543, metadata !DIExpression()) #13, !dbg !2562
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #13, !dbg !2564
  ret i8* %3, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2566 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2572, metadata !DIExpression()), !dbg !2574
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2575
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()) #13, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2582, metadata !DIExpression()) #13, !dbg !2585
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !2585, !alias.scope !2586
  %6 = icmp eq i32 %1, 10, !dbg !2589
  br i1 %6, label %7, label %8, !dbg !2591

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2592, !noalias !2586
  unreachable, !dbg !2592

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2593
  store i32 %1, i32* %9, align 8, !dbg !2594, !tbaa !1495, !alias.scope !2586
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2596
  ret i8* %10, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2598 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %1, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %2, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %3, metadata !2605, metadata !DIExpression()), !dbg !2607
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2606, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()) #13, !dbg !2610
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2582, metadata !DIExpression()) #13, !dbg !2612
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #13, !dbg !2612, !alias.scope !2613
  %7 = icmp eq i32 %1, 10, !dbg !2616
  br i1 %7, label %8, label %9, !dbg !2617

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2618, !noalias !2613
  unreachable, !dbg !2618

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2619
  store i32 %1, i32* %10, align 8, !dbg !2620, !tbaa !1495, !alias.scope !2613
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2622
  ret i8* %11, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2624 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2582, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2573, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #13, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()) #13, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2572, metadata !DIExpression()) #13, !dbg !2635
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2636
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()) #13, !dbg !2637
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #13, !dbg !2630, !alias.scope !2638
  %5 = icmp eq i32 %0, 10, !dbg !2641
  br i1 %5, label %6, label %7, !dbg !2642

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2643, !noalias !2638
  unreachable, !dbg !2643

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2644
  store i32 %0, i32* %8, align 8, !dbg !2645, !tbaa !1495, !alias.scope !2638
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2647
  ret i8* %9, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2649 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2582, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2606, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %2, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()) #13, !dbg !2661
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()) #13, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()) #13, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %2, metadata !2605, metadata !DIExpression()) #13, !dbg !2661
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()) #13, !dbg !2663
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #13, !dbg !2656, !alias.scope !2664
  %6 = icmp eq i32 %0, 10, !dbg !2667
  br i1 %6, label %7, label %8, !dbg !2668

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2669, !noalias !2664
  unreachable, !dbg !2669

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2670
  store i32 %0, i32* %9, align 8, !dbg !2671, !tbaa !1495, !alias.scope !2664
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #13, !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2673
  ret i8* %10, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2675 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8 %2, metadata !2681, metadata !DIExpression()), !dbg !2683
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2684
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2684
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2686, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1513, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %2, metadata !1514, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 1, metadata !1515, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8 %2, metadata !1516, metadata !DIExpression()), !dbg !2688
  %6 = lshr i8 %2, 5, !dbg !2690
  %7 = zext i8 %6 to i64, !dbg !2690
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2691
  call void @llvm.dbg.value(metadata i32* %8, metadata !1518, metadata !DIExpression()), !dbg !2688
  %9 = and i8 %2, 31, !dbg !2692
  %10 = zext i8 %9 to i32, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %10, metadata !1520, metadata !DIExpression()), !dbg !2688
  %11 = load i32, i32* %8, align 4, !dbg !2693, !tbaa !1202
  %12 = lshr i32 %11, %10, !dbg !2694
  %13 = and i32 %12, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %13, metadata !1521, metadata !DIExpression()), !dbg !2688
  %14 = xor i32 %13, 1, !dbg !2696
  %15 = shl i32 %14, %10, !dbg !2697
  %16 = xor i32 %15, %11, !dbg !2698
  store i32 %16, i32* %8, align 4, !dbg !2698, !tbaa !1202
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2700
  ret i8* %17, !dbg !2701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2702 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2682, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 %1, metadata !2707, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #13, !dbg !2711
  call void @llvm.dbg.value(metadata i64 -1, metadata !2680, metadata !DIExpression()) #13, !dbg !2711
  call void @llvm.dbg.value(metadata i8 %1, metadata !2681, metadata !DIExpression()) #13, !dbg !2711
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2713, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1513, metadata !DIExpression()) #13, !dbg !2714
  call void @llvm.dbg.value(metadata i8 %1, metadata !1514, metadata !DIExpression()) #13, !dbg !2714
  call void @llvm.dbg.value(metadata i32 1, metadata !1515, metadata !DIExpression()) #13, !dbg !2714
  call void @llvm.dbg.value(metadata i8 %1, metadata !1516, metadata !DIExpression()) #13, !dbg !2714
  %5 = lshr i8 %1, 5, !dbg !2716
  %6 = zext i8 %5 to i64, !dbg !2716
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2717
  call void @llvm.dbg.value(metadata i32* %7, metadata !1518, metadata !DIExpression()) #13, !dbg !2714
  %8 = and i8 %1, 31, !dbg !2718
  %9 = zext i8 %8 to i32, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %9, metadata !1520, metadata !DIExpression()) #13, !dbg !2714
  %10 = load i32, i32* %7, align 4, !dbg !2719, !tbaa !1202
  %11 = lshr i32 %10, %9, !dbg !2720
  %12 = and i32 %11, 1, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %12, metadata !1521, metadata !DIExpression()) #13, !dbg !2714
  %13 = xor i32 %12, 1, !dbg !2722
  %14 = shl i32 %13, %9, !dbg !2723
  %15 = xor i32 %14, %10, !dbg !2724
  store i32 %15, i32* %7, align 4, !dbg !2724, !tbaa !1202
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #13, !dbg !2725
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2726
  ret i8* %16, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2728 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2682, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #13, !dbg !2735
  call void @llvm.dbg.value(metadata i8 58, metadata !2707, metadata !DIExpression()) #13, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #13, !dbg !2736
  call void @llvm.dbg.value(metadata i64 -1, metadata !2680, metadata !DIExpression()) #13, !dbg !2736
  call void @llvm.dbg.value(metadata i8 58, metadata !2681, metadata !DIExpression()) #13, !dbg !2736
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2737
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #13, !dbg !2737
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2738, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1513, metadata !DIExpression()) #13, !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !1514, metadata !DIExpression()) #13, !dbg !2739
  call void @llvm.dbg.value(metadata i32 1, metadata !1515, metadata !DIExpression()) #13, !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !1516, metadata !DIExpression()) #13, !dbg !2739
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32* %4, metadata !1518, metadata !DIExpression()) #13, !dbg !2739
  call void @llvm.dbg.value(metadata i32 26, metadata !1520, metadata !DIExpression()) #13, !dbg !2739
  %5 = load i32, i32* %4, align 4, !dbg !2742, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %5, metadata !1521, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !2739
  %6 = or i32 %5, 67108864, !dbg !2743
  store i32 %6, i32* %4, align 4, !dbg !2743, !tbaa !1202
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #13, !dbg !2744
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #13, !dbg !2745
  ret i8* %7, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2747 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2682, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %0, metadata !2749, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2750, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #13, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #13, !dbg !2754
  call void @llvm.dbg.value(metadata i8 58, metadata !2681, metadata !DIExpression()) #13, !dbg !2754
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2755
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2756, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1513, metadata !DIExpression()) #13, !dbg !2757
  call void @llvm.dbg.value(metadata i8 58, metadata !1514, metadata !DIExpression()) #13, !dbg !2757
  call void @llvm.dbg.value(metadata i32 1, metadata !1515, metadata !DIExpression()) #13, !dbg !2757
  call void @llvm.dbg.value(metadata i8 58, metadata !1516, metadata !DIExpression()) #13, !dbg !2757
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2759
  call void @llvm.dbg.value(metadata i32* %5, metadata !1518, metadata !DIExpression()) #13, !dbg !2757
  call void @llvm.dbg.value(metadata i32 26, metadata !1520, metadata !DIExpression()) #13, !dbg !2757
  %6 = load i32, i32* %5, align 4, !dbg !2760, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %6, metadata !1521, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #13, !dbg !2757
  %7 = or i32 %6, 67108864, !dbg !2761
  store i32 %7, i32* %5, align 4, !dbg !2761, !tbaa !1202
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #13, !dbg !2762
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #13, !dbg !2763
  ret i8* %8, !dbg !2764
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2765 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2582, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %0, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 %1, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %2, metadata !2769, metadata !DIExpression()), !dbg !2773
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2774
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2770, metadata !DIExpression()), !dbg !2775
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()) #13, !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2582, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2777
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2771, !alias.scope !2778
  %8 = icmp eq i32 %1, 10, !dbg !2781
  br i1 %8, label %9, label %10, !dbg !2782

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2783, !noalias !2778
  unreachable, !dbg !2783

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2582, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2777
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2776
  store i32 %1, i32* %11, align 8, !dbg !2776, !tbaa.struct !2687
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2776
  %13 = bitcast i32* %12 to i8*, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2776, !tbaa.struct !2687
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1513, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 58, metadata !1514, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 1, metadata !1515, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8 58, metadata !1516, metadata !DIExpression()), !dbg !2784
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2786
  call void @llvm.dbg.value(metadata i32* %14, metadata !1518, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 26, metadata !1520, metadata !DIExpression()), !dbg !2784
  %15 = load i32, i32* %14, align 4, !dbg !2787, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %15, metadata !1521, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2784
  %16 = or i32 %15, 67108864, !dbg !2788
  store i32 %16, i32* %14, align 4, !dbg !2788, !tbaa !1202
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2790
  ret i8* %17, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2792 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2800, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8* %1, metadata !2797, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8* %2, metadata !2798, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i8* %3, metadata !2799, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()) #13, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %1, metadata !2806, metadata !DIExpression()) #13, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %2, metadata !2807, metadata !DIExpression()) #13, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %3, metadata !2808, metadata !DIExpression()) #13, !dbg !2813
  call void @llvm.dbg.value(metadata i64 -1, metadata !2809, metadata !DIExpression()) #13, !dbg !2813
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2814
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2815, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1554, metadata !DIExpression()) #13, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !1555, metadata !DIExpression()) #13, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %2, metadata !1556, metadata !DIExpression()) #13, !dbg !2816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1554, metadata !DIExpression()) #13, !dbg !2816
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2818
  store i32 10, i32* %7, align 8, !dbg !2819, !tbaa !1495
  %8 = icmp ne i8* %1, null, !dbg !2820
  %9 = icmp ne i8* %2, null, !dbg !2821
  %10 = and i1 %8, %9, !dbg !2822
  br i1 %10, label %12, label %11, !dbg !2822

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2823
  unreachable, !dbg !2823

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2824
  store i8* %1, i8** %13, align 8, !dbg !2825, !tbaa !1570
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2826
  store i8* %2, i8** %14, align 8, !dbg !2827, !tbaa !1573
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #13, !dbg !2828
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2829
  ret i8* %15, !dbg !2830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2801 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2805, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %1, metadata !2806, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %2, metadata !2807, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %3, metadata !2808, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 %4, metadata !2809, metadata !DIExpression()), !dbg !2831
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #13, !dbg !2832
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2800, metadata !DIExpression()), !dbg !2833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2834, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1554, metadata !DIExpression()) #13, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %1, metadata !1555, metadata !DIExpression()) #13, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %2, metadata !1556, metadata !DIExpression()) #13, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1554, metadata !DIExpression()) #13, !dbg !2835
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2837
  store i32 10, i32* %8, align 8, !dbg !2838, !tbaa !1495
  %9 = icmp ne i8* %1, null, !dbg !2839
  %10 = icmp ne i8* %2, null, !dbg !2840
  %11 = and i1 %9, %10, !dbg !2841
  br i1 %11, label %13, label %12, !dbg !2841

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2842
  unreachable, !dbg !2842

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2843
  store i8* %1, i8** %14, align 8, !dbg !2844, !tbaa !1570
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2845
  store i8* %2, i8** %15, align 8, !dbg !2846, !tbaa !1573
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2847
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #13, !dbg !2848
  ret i8* %16, !dbg !2849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2850 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2800, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* %1, metadata !2855, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8* %2, metadata !2856, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()) #13, !dbg !2861
  call void @llvm.dbg.value(metadata i8* %0, metadata !2797, metadata !DIExpression()) #13, !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2798, metadata !DIExpression()) #13, !dbg !2861
  call void @llvm.dbg.value(metadata i8* %2, metadata !2799, metadata !DIExpression()) #13, !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()) #13, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()) #13, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %1, metadata !2807, metadata !DIExpression()) #13, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %2, metadata !2808, metadata !DIExpression()) #13, !dbg !2862
  call void @llvm.dbg.value(metadata i64 -1, metadata !2809, metadata !DIExpression()) #13, !dbg !2862
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2863
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2864, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1554, metadata !DIExpression()) #13, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %0, metadata !1555, metadata !DIExpression()) #13, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %1, metadata !1556, metadata !DIExpression()) #13, !dbg !2865
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1554, metadata !DIExpression()) #13, !dbg !2865
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2867
  store i32 10, i32* %6, align 8, !dbg !2868, !tbaa !1495
  %7 = icmp ne i8* %0, null, !dbg !2869
  %8 = icmp ne i8* %1, null, !dbg !2870
  %9 = and i1 %7, %8, !dbg !2871
  br i1 %9, label %11, label %10, !dbg !2871

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2872
  unreachable, !dbg !2872

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2873
  store i8* %0, i8** %12, align 8, !dbg !2874, !tbaa !1570
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2875
  store i8* %1, i8** %13, align 8, !dbg !2876, !tbaa !1573
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #13, !dbg !2877
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #13, !dbg !2878
  ret i8* %14, !dbg !2879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2880 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2800, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %0, metadata !2884, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %2, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64 %3, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2805, metadata !DIExpression()) #13, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()) #13, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2807, metadata !DIExpression()) #13, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %2, metadata !2808, metadata !DIExpression()) #13, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %3, metadata !2809, metadata !DIExpression()) #13, !dbg !2891
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2892
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #13, !dbg !2893, !tbaa.struct !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1554, metadata !DIExpression()) #13, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %0, metadata !1555, metadata !DIExpression()) #13, !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !1556, metadata !DIExpression()) #13, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1554, metadata !DIExpression()) #13, !dbg !2894
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2896
  store i32 10, i32* %7, align 8, !dbg !2897, !tbaa !1495
  %8 = icmp ne i8* %0, null, !dbg !2898
  %9 = icmp ne i8* %1, null, !dbg !2899
  %10 = and i1 %8, %9, !dbg !2900
  br i1 %10, label %12, label %11, !dbg !2900

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2901
  unreachable, !dbg !2901

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2902
  store i8* %0, i8** %13, align 8, !dbg !2903, !tbaa !1570
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2904
  store i8* %1, i8** %14, align 8, !dbg !2905, !tbaa !1573
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #13, !dbg !2906
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #13, !dbg !2907
  ret i8* %15, !dbg !2908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i64 %2, metadata !2915, metadata !DIExpression()), !dbg !2916
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2917
  ret i8* %4, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #13, !dbg !2926
  call void @llvm.dbg.value(metadata i8* %0, metadata !2914, metadata !DIExpression()) #13, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()) #13, !dbg !2926
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !2928
  ret i8* %3, !dbg !2929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2930 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2934, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8* %1, metadata !2935, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()) #13, !dbg !2937
  call void @llvm.dbg.value(metadata i8* %1, metadata !2914, metadata !DIExpression()) #13, !dbg !2937
  call void @llvm.dbg.value(metadata i64 -1, metadata !2915, metadata !DIExpression()) #13, !dbg !2937
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !2939
  ret i8* %3, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2945, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2934, metadata !DIExpression()) #13, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2935, metadata !DIExpression()) #13, !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2913, metadata !DIExpression()) #13, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2914, metadata !DIExpression()) #13, !dbg !2949
  call void @llvm.dbg.value(metadata i64 -1, metadata !2915, metadata !DIExpression()) #13, !dbg !2949
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #13, !dbg !2951
  ret i8* %2, !dbg !2952
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32 %0, i8* nocapture readonly %1, i64 %2) local_unnamed_addr #19 !dbg !2953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2956, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %1, metadata !2957, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %2, metadata !2958, metadata !DIExpression()), !dbg !2966
  br label %4, !dbg !2967

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !2968

6:                                                ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !2958, metadata !DIExpression()), !dbg !2966
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #13, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %7, metadata !2959, metadata !DIExpression()), !dbg !2970
  %8 = icmp sgt i64 %7, -1, !dbg !2971
  br i1 %8, label %17, label %9, !dbg !2968

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !2973
  %11 = load i32, i32* %10, align 4, !dbg !2973, !tbaa !1202
  %12 = icmp eq i32 %11, 4, !dbg !2973
  br i1 %12, label %6, label %13, !dbg !2975, !llvm.loop !2976

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !2979
  %15 = icmp ugt i64 %5, 2146435072, !dbg !2981
  %16 = and i1 %15, %14, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %5, metadata !2958, metadata !DIExpression()), !dbg !2966
  br i1 %16, label %4, label %17

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !2983
}

; Function Attrs: nofree
declare !dbg !439 i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2984 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %1, metadata !2993, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %2, metadata !2994, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8* %3, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i8** %4, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %5, metadata !2997, metadata !DIExpression()), !dbg !2998
  %7 = icmp eq i8* %1, null, !dbg !2999
  br i1 %7, label %10, label %8, !dbg !3001

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13, !dbg !3002
  br label %12, !dbg !3002

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %2, i8* %3) #13, !dbg !3003
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 5) #13, !dbg !3004
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #13, !dbg !3004
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3005
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.76, i64 0, i64 0), i32 5) #13, !dbg !3006
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.77, i64 0, i64 0)) #13, !dbg !3006
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3007
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
  ], !dbg !3008

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.78, i64 0, i64 0), i32 5) #13, !dbg !3009
  %21 = load i8*, i8** %4, align 8, !dbg !3009, !tbaa !1133
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #13, !dbg !3009
  br label %147, !dbg !3011

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0), i32 5) #13, !dbg !3012
  %25 = load i8*, i8** %4, align 8, !dbg !3012, !tbaa !1133
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3012
  %27 = load i8*, i8** %26, align 8, !dbg !3012, !tbaa !1133
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #13, !dbg !3012
  br label %147, !dbg !3013

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.80, i64 0, i64 0), i32 5) #13, !dbg !3014
  %31 = load i8*, i8** %4, align 8, !dbg !3014, !tbaa !1133
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3014
  %33 = load i8*, i8** %32, align 8, !dbg !3014, !tbaa !1133
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3014
  %35 = load i8*, i8** %34, align 8, !dbg !3014, !tbaa !1133
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #13, !dbg !3014
  br label %147, !dbg !3015

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.81, i64 0, i64 0), i32 5) #13, !dbg !3016
  %39 = load i8*, i8** %4, align 8, !dbg !3016, !tbaa !1133
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3016
  %41 = load i8*, i8** %40, align 8, !dbg !3016, !tbaa !1133
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3016
  %43 = load i8*, i8** %42, align 8, !dbg !3016, !tbaa !1133
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3016
  %45 = load i8*, i8** %44, align 8, !dbg !3016, !tbaa !1133
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #13, !dbg !3016
  br label %147, !dbg !3017

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.82, i64 0, i64 0), i32 5) #13, !dbg !3018
  %49 = load i8*, i8** %4, align 8, !dbg !3018, !tbaa !1133
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3018
  %51 = load i8*, i8** %50, align 8, !dbg !3018, !tbaa !1133
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3018
  %53 = load i8*, i8** %52, align 8, !dbg !3018, !tbaa !1133
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3018
  %55 = load i8*, i8** %54, align 8, !dbg !3018, !tbaa !1133
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3018
  %57 = load i8*, i8** %56, align 8, !dbg !3018, !tbaa !1133
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #13, !dbg !3018
  br label %147, !dbg !3019

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.83, i64 0, i64 0), i32 5) #13, !dbg !3020
  %61 = load i8*, i8** %4, align 8, !dbg !3020, !tbaa !1133
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3020
  %63 = load i8*, i8** %62, align 8, !dbg !3020, !tbaa !1133
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3020
  %65 = load i8*, i8** %64, align 8, !dbg !3020, !tbaa !1133
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3020
  %67 = load i8*, i8** %66, align 8, !dbg !3020, !tbaa !1133
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3020
  %69 = load i8*, i8** %68, align 8, !dbg !3020, !tbaa !1133
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3020
  %71 = load i8*, i8** %70, align 8, !dbg !3020, !tbaa !1133
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #13, !dbg !3020
  br label %147, !dbg !3021

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.84, i64 0, i64 0), i32 5) #13, !dbg !3022
  %75 = load i8*, i8** %4, align 8, !dbg !3022, !tbaa !1133
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3022
  %77 = load i8*, i8** %76, align 8, !dbg !3022, !tbaa !1133
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3022
  %79 = load i8*, i8** %78, align 8, !dbg !3022, !tbaa !1133
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3022
  %81 = load i8*, i8** %80, align 8, !dbg !3022, !tbaa !1133
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3022
  %83 = load i8*, i8** %82, align 8, !dbg !3022, !tbaa !1133
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3022
  %85 = load i8*, i8** %84, align 8, !dbg !3022, !tbaa !1133
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3022
  %87 = load i8*, i8** %86, align 8, !dbg !3022, !tbaa !1133
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #13, !dbg !3022
  br label %147, !dbg !3023

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.85, i64 0, i64 0), i32 5) #13, !dbg !3024
  %91 = load i8*, i8** %4, align 8, !dbg !3024, !tbaa !1133
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3024
  %93 = load i8*, i8** %92, align 8, !dbg !3024, !tbaa !1133
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3024
  %95 = load i8*, i8** %94, align 8, !dbg !3024, !tbaa !1133
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3024
  %97 = load i8*, i8** %96, align 8, !dbg !3024, !tbaa !1133
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3024
  %99 = load i8*, i8** %98, align 8, !dbg !3024, !tbaa !1133
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3024
  %101 = load i8*, i8** %100, align 8, !dbg !3024, !tbaa !1133
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3024
  %103 = load i8*, i8** %102, align 8, !dbg !3024, !tbaa !1133
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3024
  %105 = load i8*, i8** %104, align 8, !dbg !3024, !tbaa !1133
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #13, !dbg !3024
  br label %147, !dbg !3025

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #13, !dbg !3026
  %109 = load i8*, i8** %4, align 8, !dbg !3026, !tbaa !1133
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3026
  %111 = load i8*, i8** %110, align 8, !dbg !3026, !tbaa !1133
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3026
  %113 = load i8*, i8** %112, align 8, !dbg !3026, !tbaa !1133
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3026
  %115 = load i8*, i8** %114, align 8, !dbg !3026, !tbaa !1133
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3026
  %117 = load i8*, i8** %116, align 8, !dbg !3026, !tbaa !1133
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3026
  %119 = load i8*, i8** %118, align 8, !dbg !3026, !tbaa !1133
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3026
  %121 = load i8*, i8** %120, align 8, !dbg !3026, !tbaa !1133
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3026
  %123 = load i8*, i8** %122, align 8, !dbg !3026, !tbaa !1133
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3026
  %125 = load i8*, i8** %124, align 8, !dbg !3026, !tbaa !1133
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #13, !dbg !3026
  br label %147, !dbg !3027

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.87, i64 0, i64 0), i32 5) #13, !dbg !3028
  %129 = load i8*, i8** %4, align 8, !dbg !3028, !tbaa !1133
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3028
  %131 = load i8*, i8** %130, align 8, !dbg !3028, !tbaa !1133
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3028
  %133 = load i8*, i8** %132, align 8, !dbg !3028, !tbaa !1133
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3028
  %135 = load i8*, i8** %134, align 8, !dbg !3028, !tbaa !1133
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3028
  %137 = load i8*, i8** %136, align 8, !dbg !3028, !tbaa !1133
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3028
  %139 = load i8*, i8** %138, align 8, !dbg !3028, !tbaa !1133
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3028
  %141 = load i8*, i8** %140, align 8, !dbg !3028, !tbaa !1133
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3028
  %143 = load i8*, i8** %142, align 8, !dbg !3028, !tbaa !1133
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3028
  %145 = load i8*, i8** %144, align 8, !dbg !3028, !tbaa !1133
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #13, !dbg !3028
  br label %147, !dbg !3029

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3031 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3035, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %2, metadata !3037, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %3, metadata !3038, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8** %4, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 0, metadata !3040, metadata !DIExpression()), !dbg !3041
  br label %6, !dbg !3042

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3044
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3045
  %9 = load i8*, i8** %8, align 8, !dbg !3045, !tbaa !1133
  %10 = icmp eq i8* %9, null, !dbg !3047
  %11 = add i64 %7, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %11, metadata !3040, metadata !DIExpression()), !dbg !3041
  br i1 %10, label %12, label %6, !dbg !3047, !llvm.loop !3049

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3041
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3051
  ret void, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3053 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3064, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %1, metadata !3065, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %2, metadata !3066, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i8* %3, metadata !3067, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3068, metadata !DIExpression()), !dbg !3072
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #13, !dbg !3073
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 0, metadata !3069, metadata !DIExpression()), !dbg !3072
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3075
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3075
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3075
  %11 = load i32, i32* %8, align 8, !dbg !3078
  %12 = icmp ult i32 %11, 41, !dbg !3078
  br i1 %12, label %13, label %18, !dbg !3078

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3078
  %15 = zext i32 %11 to i64, !dbg !3078
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3078
  %17 = add nuw nsw i32 %11, 8, !dbg !3078
  store i32 %17, i32* %8, align 8, !dbg !3078
  br label %21, !dbg !3078

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3078
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3078
  store i8* %20, i8** %9, align 8, !dbg !3078
  br label %21, !dbg !3078

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3078
  %25 = load i8*, i8** %24, align 8, !dbg !3078
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3079
  store i8* %25, i8** %26, align 16, !dbg !3080, !tbaa !1133
  %27 = icmp eq i8* %25, null, !dbg !3081
  br i1 %27, label %30, label %28, !dbg !3082

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3069, metadata !DIExpression()), !dbg !3072
  %29 = icmp ult i32 %22, 41, !dbg !3078
  br i1 %29, label %35, label %32, !dbg !3078

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3083
  call void @llvm.dbg.value(metadata i64 %31, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %31, metadata !3069, metadata !DIExpression()), !dbg !3072
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #13, !dbg !3085
  ret void, !dbg !3085

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3078
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3078
  store i8* %34, i8** %9, align 8, !dbg !3078
  br label %40, !dbg !3078

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3078
  %37 = zext i32 %22 to i64, !dbg !3078
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3078
  %39 = add nuw nsw i32 %22, 8, !dbg !3078
  store i32 %39, i32* %8, align 8, !dbg !3078
  br label %40, !dbg !3078

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3078
  %44 = load i8*, i8** %43, align 8, !dbg !3078
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3079
  store i8* %44, i8** %45, align 8, !dbg !3080, !tbaa !1133
  %46 = icmp eq i8* %44, null, !dbg !3081
  br i1 %46, label %30, label %47, !dbg !3082

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3069, metadata !DIExpression()), !dbg !3072
  %48 = icmp ult i32 %41, 41, !dbg !3078
  br i1 %48, label %52, label %49, !dbg !3078

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3078
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3078
  store i8* %51, i8** %9, align 8, !dbg !3078
  br label %57, !dbg !3078

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3078
  %54 = zext i32 %41 to i64, !dbg !3078
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3078
  %56 = add nuw nsw i32 %41, 8, !dbg !3078
  store i32 %56, i32* %8, align 8, !dbg !3078
  br label %57, !dbg !3078

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3078
  %61 = load i8*, i8** %60, align 8, !dbg !3078
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3079
  store i8* %61, i8** %62, align 16, !dbg !3080, !tbaa !1133
  %63 = icmp eq i8* %61, null, !dbg !3081
  br i1 %63, label %30, label %64, !dbg !3082

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3069, metadata !DIExpression()), !dbg !3072
  %65 = icmp ult i32 %58, 41, !dbg !3078
  br i1 %65, label %69, label %66, !dbg !3078

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3078
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3078
  store i8* %68, i8** %9, align 8, !dbg !3078
  br label %74, !dbg !3078

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3078
  %71 = zext i32 %58 to i64, !dbg !3078
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3078
  %73 = add nuw nsw i32 %58, 8, !dbg !3078
  store i32 %73, i32* %8, align 8, !dbg !3078
  br label %74, !dbg !3078

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3078
  %78 = load i8*, i8** %77, align 8, !dbg !3078
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3079
  store i8* %78, i8** %79, align 8, !dbg !3080, !tbaa !1133
  %80 = icmp eq i8* %78, null, !dbg !3081
  br i1 %80, label %30, label %81, !dbg !3082

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3069, metadata !DIExpression()), !dbg !3072
  %82 = icmp ult i32 %75, 41, !dbg !3078
  br i1 %82, label %86, label %83, !dbg !3078

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3078
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3078
  store i8* %85, i8** %9, align 8, !dbg !3078
  br label %91, !dbg !3078

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3078
  %88 = zext i32 %75 to i64, !dbg !3078
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3078
  %90 = add nuw nsw i32 %75, 8, !dbg !3078
  store i32 %90, i32* %8, align 8, !dbg !3078
  br label %91, !dbg !3078

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3078
  %95 = load i8*, i8** %94, align 8, !dbg !3078
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3079
  store i8* %95, i8** %96, align 16, !dbg !3080, !tbaa !1133
  %97 = icmp eq i8* %95, null, !dbg !3081
  br i1 %97, label %30, label %98, !dbg !3082

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3069, metadata !DIExpression()), !dbg !3072
  %99 = icmp ult i32 %92, 41, !dbg !3078
  br i1 %99, label %103, label %100, !dbg !3078

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3078
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3078
  store i8* %102, i8** %9, align 8, !dbg !3078
  br label %108, !dbg !3078

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3078
  %105 = zext i32 %92 to i64, !dbg !3078
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3078
  %107 = add nuw nsw i32 %92, 8, !dbg !3078
  store i32 %107, i32* %8, align 8, !dbg !3078
  br label %108, !dbg !3078

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3078
  %111 = load i8*, i8** %110, align 8, !dbg !3078
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3079
  store i8* %111, i8** %112, align 8, !dbg !3080, !tbaa !1133
  %113 = icmp eq i8* %111, null, !dbg !3081
  br i1 %113, label %30, label %114, !dbg !3082

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3069, metadata !DIExpression()), !dbg !3072
  %115 = load i8*, i8** %9, align 8, !dbg !3078
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3078
  store i8* %116, i8** %9, align 8, !dbg !3078
  %117 = bitcast i8* %115 to i8**, !dbg !3078
  %118 = load i8*, i8** %117, align 8, !dbg !3078
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3079
  store i8* %118, i8** %119, align 16, !dbg !3080, !tbaa !1133
  %120 = icmp eq i8* %118, null, !dbg !3081
  br i1 %120, label %30, label %121, !dbg !3082

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3069, metadata !DIExpression()), !dbg !3072
  %122 = load i8*, i8** %9, align 8, !dbg !3078
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3078
  store i8* %123, i8** %9, align 8, !dbg !3078
  %124 = bitcast i8* %122 to i8**, !dbg !3078
  %125 = load i8*, i8** %124, align 8, !dbg !3078
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3079
  store i8* %125, i8** %126, align 8, !dbg !3080, !tbaa !1133
  %127 = icmp eq i8* %125, null, !dbg !3081
  br i1 %127, label %30, label %128, !dbg !3082

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3069, metadata !DIExpression()), !dbg !3072
  %129 = load i8*, i8** %9, align 8, !dbg !3078
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3078
  store i8* %130, i8** %9, align 8, !dbg !3078
  %131 = bitcast i8* %129 to i8**, !dbg !3078
  %132 = load i8*, i8** %131, align 8, !dbg !3078
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3079
  store i8* %132, i8** %133, align 16, !dbg !3080, !tbaa !1133
  %134 = icmp eq i8* %132, null, !dbg !3081
  br i1 %134, label %30, label %135, !dbg !3082

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3069, metadata !DIExpression()), !dbg !3072
  %136 = load i8*, i8** %9, align 8, !dbg !3078
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3078
  store i8* %137, i8** %9, align 8, !dbg !3078
  %138 = bitcast i8* %136 to i8**, !dbg !3078
  %139 = load i8*, i8** %138, align 8, !dbg !3078
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3079
  store i8* %139, i8** %140, align 8, !dbg !3080, !tbaa !1133
  %141 = icmp eq i8* %139, null, !dbg !3081
  %142 = select i1 %141, i64 9, i64 10, !dbg !3082
  br label %30, !dbg !3082
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3086 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3090, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3091, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %2, metadata !3092, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8* %3, metadata !3093, metadata !DIExpression()), !dbg !3099
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #13, !dbg !3100
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3094, metadata !DIExpression()), !dbg !3101
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3102
  call void @llvm.va_start(i8* nonnull %6), !dbg !3102
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3103
  call void @llvm.va_end(i8* nonnull %6), !dbg !3104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #13, !dbg !3105
  ret void, !dbg !3105
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3106 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3107, !tbaa !1133
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3107
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i32 5) #13, !dbg !3108
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.91, i64 0, i64 0)) #13, !dbg !3108
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.92, i64 0, i64 0), i32 5) #13, !dbg !3109
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.94, i64 0, i64 0)) #13, !dbg !3109
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.95, i64 0, i64 0), i32 5) #13, !dbg !3110
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.96, i64 0, i64 0)) #13, !dbg !3110
  ret void, !dbg !3111
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3112 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3116, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3118
  %3 = udiv i64 9223372036854775807, %1, !dbg !3119
  %4 = icmp ult i64 %3, %0, !dbg !3119
  br i1 %4, label %5, label %6, !dbg !3121

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3122
  unreachable, !dbg !3122

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %7, metadata !3124, metadata !DIExpression()) #13, !dbg !3130
  %8 = tail call noalias i8* @malloc(i64 %7) #13, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %8, metadata !3129, metadata !DIExpression()) #13, !dbg !3130
  %9 = icmp eq i8* %8, null, !dbg !3133
  %10 = icmp ne i64 %7, 0, !dbg !3135
  %11 = and i1 %10, %9, !dbg !3136
  br i1 %11, label %12, label %13, !dbg !3136

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3137
  unreachable, !dbg !3137

13:                                               ; preds = %6
  ret i8* %8, !dbg !3138
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3125 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()), !dbg !3139
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3129, metadata !DIExpression()), !dbg !3139
  %3 = icmp eq i8* %2, null, !dbg !3141
  %4 = icmp ne i64 %0, 0, !dbg !3142
  %5 = and i1 %4, %3, !dbg !3143
  br i1 %5, label %6, label %7, !dbg !3143

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3144
  unreachable, !dbg !3144

7:                                                ; preds = %1
  ret i8* %2, !dbg !3145
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3146 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()), !dbg !3153
  %4 = udiv i64 9223372036854775807, %2, !dbg !3154
  %5 = icmp ult i64 %4, %1, !dbg !3154
  br i1 %5, label %6, label %7, !dbg !3156

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3157
  unreachable, !dbg !3157

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #13, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %8, metadata !3164, metadata !DIExpression()) #13, !dbg !3165
  %9 = icmp eq i64 %8, 0, !dbg !3167
  %10 = icmp ne i8* %0, null, !dbg !3169
  %11 = and i1 %10, %9, !dbg !3170
  br i1 %11, label %12, label %13, !dbg !3170

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #13, !dbg !3171
  br label %19, !dbg !3173

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #13, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %14, metadata !3159, metadata !DIExpression()) #13, !dbg !3165
  %15 = icmp eq i8* %14, null, !dbg !3175
  %16 = icmp ne i64 %8, 0, !dbg !3177
  %17 = and i1 %16, %15, !dbg !3178
  br i1 %17, label %18, label %19, !dbg !3178

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3179
  unreachable, !dbg !3179

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3165
  ret i8* %20, !dbg !3180
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()), !dbg !3181
  %3 = icmp eq i64 %1, 0, !dbg !3182
  %4 = icmp ne i8* %0, null, !dbg !3183
  %5 = and i1 %4, %3, !dbg !3184
  br i1 %5, label %6, label %7, !dbg !3184

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #13, !dbg !3185
  br label %13, !dbg !3186

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #13, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %8, metadata !3159, metadata !DIExpression()), !dbg !3181
  %9 = icmp eq i8* %8, null, !dbg !3188
  %10 = icmp ne i64 %1, 0, !dbg !3189
  %11 = and i1 %10, %9, !dbg !3190
  br i1 %11, label %12, label %13, !dbg !3190

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3191
  unreachable, !dbg !3191

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3181
  ret i8* %14, !dbg !3192
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !489 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !494, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64* %1, metadata !495, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %2, metadata !496, metadata !DIExpression()), !dbg !3193
  %4 = load i64, i64* %1, align 8, !dbg !3194, !tbaa !2399
  call void @llvm.dbg.value(metadata i64 %4, metadata !497, metadata !DIExpression()), !dbg !3193
  %5 = icmp eq i8* %0, null, !dbg !3195
  br i1 %5, label %6, label %20, !dbg !3197

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3198
  br i1 %7, label %8, label %13, !dbg !3201

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %9, metadata !497, metadata !DIExpression()), !dbg !3193
  %10 = icmp ugt i64 %2, 128, !dbg !3204
  %11 = zext i1 %10 to i64, !dbg !3204
  %12 = add nuw nsw i64 %9, %11, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %12, metadata !497, metadata !DIExpression()), !dbg !3193
  br label %13, !dbg !3206

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3193
  call void @llvm.dbg.value(metadata i64 %14, metadata !497, metadata !DIExpression()), !dbg !3193
  %15 = udiv i64 9223372036854775807, %2, !dbg !3207
  %16 = icmp ult i64 %15, %14, !dbg !3207
  br i1 %16, label %19, label %17, !dbg !3209

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !497, metadata !DIExpression()), !dbg !3193
  store i64 %14, i64* %1, align 8, !dbg !3210, !tbaa !2399
  %18 = mul i64 %14, %2, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #13, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %28, metadata !3164, metadata !DIExpression()) #13, !dbg !3212
  br label %31, !dbg !3214

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3215
  unreachable, !dbg !3215

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3216
  %22 = icmp ugt i64 %21, %4, !dbg !3219
  br i1 %22, label %24, label %23, !dbg !3220

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3221
  unreachable, !dbg !3221

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3222
  %26 = add nuw i64 %4, 1, !dbg !3223
  %27 = add i64 %26, %25, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %27, metadata !497, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %27, metadata !497, metadata !DIExpression()), !dbg !3193
  store i64 %27, i64* %1, align 8, !dbg !3210, !tbaa !2399
  %28 = mul i64 %27, %2, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #13, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %28, metadata !3164, metadata !DIExpression()) #13, !dbg !3212
  %29 = icmp eq i64 %28, 0, !dbg !3225
  br i1 %29, label %30, label %31, !dbg !3214

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #13, !dbg !3226
  br label %38, !dbg !3227

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #13, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %33, metadata !3159, metadata !DIExpression()) #13, !dbg !3212
  %34 = icmp eq i8* %33, null, !dbg !3229
  %35 = icmp ne i64 %32, 0, !dbg !3230
  %36 = and i1 %35, %34, !dbg !3231
  br i1 %36, label %37, label %38, !dbg !3231

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3232
  unreachable, !dbg !3232

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3212
  ret i8* %39, !dbg !3233
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %0, metadata !3124, metadata !DIExpression()) #13, !dbg !3238
  %2 = tail call noalias i8* @malloc(i64 %0) #13, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %2, metadata !3129, metadata !DIExpression()) #13, !dbg !3238
  %3 = icmp eq i8* %2, null, !dbg !3241
  %4 = icmp ne i64 %0, 0, !dbg !3242
  %5 = and i1 %4, %3, !dbg !3243
  br i1 %5, label %6, label %7, !dbg !3243

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3244
  unreachable, !dbg !3244

7:                                                ; preds = %1
  ret i8* %2, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3246 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3250, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64* %1, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %0, metadata !494, metadata !DIExpression()) #13, !dbg !3253
  call void @llvm.dbg.value(metadata i64* %1, metadata !495, metadata !DIExpression()) #13, !dbg !3253
  call void @llvm.dbg.value(metadata i64 1, metadata !496, metadata !DIExpression()) #13, !dbg !3253
  %3 = load i64, i64* %1, align 8, !dbg !3255, !tbaa !2399
  call void @llvm.dbg.value(metadata i64 %3, metadata !497, metadata !DIExpression()) #13, !dbg !3253
  %4 = icmp eq i8* %0, null, !dbg !3256
  br i1 %4, label %5, label %12, !dbg !3257

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3258
  br i1 %6, label %9, label %7, !dbg !3259

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !497, metadata !DIExpression()) #13, !dbg !3253
  %8 = icmp slt i64 %3, 0, !dbg !3260
  br i1 %8, label %11, label %9, !dbg !3261

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !497, metadata !DIExpression()) #13, !dbg !3253
  store i64 %10, i64* %1, align 8, !dbg !3262, !tbaa !2399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #13, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %18, metadata !3164, metadata !DIExpression()) #13, !dbg !3263
  br label %21, !dbg !3265

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3266
  unreachable, !dbg !3266

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3267
  br i1 %13, label %15, label %14, !dbg !3268

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3269
  unreachable, !dbg !3269

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3270
  %17 = add nuw nsw i64 %3, 1, !dbg !3271
  %18 = add nuw nsw i64 %17, %16, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %18, metadata !497, metadata !DIExpression()) #13, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %18, metadata !497, metadata !DIExpression()) #13, !dbg !3253
  store i64 %18, i64* %1, align 8, !dbg !3262, !tbaa !2399
  call void @llvm.dbg.value(metadata i8* %0, metadata !3159, metadata !DIExpression()) #13, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %18, metadata !3164, metadata !DIExpression()) #13, !dbg !3263
  %19 = icmp eq i64 %18, 0, !dbg !3273
  br i1 %19, label %20, label %21, !dbg !3265

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #13, !dbg !3274
  br label %28, !dbg !3275

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #13, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %23, metadata !3159, metadata !DIExpression()) #13, !dbg !3263
  %24 = icmp eq i8* %23, null, !dbg !3277
  %25 = icmp ne i64 %22, 0, !dbg !3278
  %26 = and i1 %25, %24, !dbg !3279
  br i1 %26, label %27, label %28, !dbg !3279

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3280
  unreachable, !dbg !3280

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3263
  ret i8* %29, !dbg !3281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3282 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()) #13, !dbg !3291
  call void @llvm.dbg.value(metadata i64 1, metadata !3289, metadata !DIExpression()) #13, !dbg !3291
  %2 = icmp slt i64 %0, 0, !dbg !3293
  br i1 %2, label %6, label %3, !dbg !3295

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #13, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %4, metadata !3290, metadata !DIExpression()) #13, !dbg !3291
  %5 = icmp eq i8* %4, null, !dbg !3297
  br i1 %5, label %6, label %7, !dbg !3298

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3299
  unreachable, !dbg !3299

7:                                                ; preds = %3
  ret i8* %4, !dbg !3300
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3287 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3301
  %3 = udiv i64 9223372036854775807, %1, !dbg !3302
  %4 = icmp ult i64 %3, %0, !dbg !3302
  br i1 %4, label %8, label %5, !dbg !3303

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #13, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %6, metadata !3290, metadata !DIExpression()), !dbg !3301
  %7 = icmp eq i8* %6, null, !dbg !3305
  br i1 %7, label %8, label %9, !dbg !3306

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3307
  unreachable, !dbg !3307

9:                                                ; preds = %5
  ret i8* %6, !dbg !3308
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3309 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3313, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3314, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()) #13, !dbg !3316
  %3 = tail call noalias i8* @malloc(i64 %1) #13, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %3, metadata !3129, metadata !DIExpression()) #13, !dbg !3316
  %4 = icmp eq i8* %3, null, !dbg !3319
  %5 = icmp ne i64 %1, 0, !dbg !3320
  %6 = and i1 %5, %4, !dbg !3321
  br i1 %6, label %7, label %8, !dbg !3321

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3322
  unreachable, !dbg !3322

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3323, metadata !DIExpression()) #13, !dbg !3328
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #13, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()) #13, !dbg !3328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #13, !dbg !3330
  ret i8* %3, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3332 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3335
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3336
  %3 = add i64 %2, 1, !dbg !3337
  call void @llvm.dbg.value(metadata i8* %0, metadata !3313, metadata !DIExpression()) #13, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %3, metadata !3314, metadata !DIExpression()) #13, !dbg !3338
  call void @llvm.dbg.value(metadata i64 %3, metadata !3124, metadata !DIExpression()) #13, !dbg !3340
  %4 = tail call noalias i8* @malloc(i64 %3) #13, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %4, metadata !3129, metadata !DIExpression()) #13, !dbg !3340
  %5 = icmp eq i8* %4, null, !dbg !3343
  %6 = icmp ne i64 %3, 0, !dbg !3344
  %7 = and i1 %6, %5, !dbg !3345
  br i1 %7, label %8, label %9, !dbg !3345

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3346
  unreachable, !dbg !3346

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3323, metadata !DIExpression()) #13, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #13, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !3327, metadata !DIExpression()) #13, !dbg !3347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #13, !dbg !3349
  ret i8* %4, !dbg !3350
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3351 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3352, !tbaa !1202
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #13, !dbg !3353
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #13, !dbg !3354
  tail call void @abort() #23, !dbg !3355
  unreachable, !dbg !3355
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3356 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3358, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3364
  %3 = icmp eq i64 %0, 0, !dbg !3365
  %4 = icmp eq i64 %1, 0, !dbg !3366
  %5 = or i1 %3, %4, !dbg !3367
  br i1 %5, label %11, label %6, !dbg !3367

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3361, metadata !DIExpression()), !dbg !3368
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3369
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3369
  br i1 %8, label %9, label %11, !dbg !3371

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3372
  store i32 12, i32* %10, align 4, !dbg !3374, !tbaa !1202
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3358, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %12, metadata !3359, metadata !DIExpression()), !dbg !3364
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #13, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %14, metadata !3360, metadata !DIExpression()), !dbg !3364
  br label %15, !dbg !3376

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3364
  ret i8* %16, !dbg !3377
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3378 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3386, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %1, metadata !3387, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %2, metadata !3388, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3389, metadata !DIExpression()), !dbg !3395
  %6 = bitcast i32* %5 to i8*, !dbg !3396
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3396
  %7 = icmp eq i32* %0, null, !dbg !3397
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3399
  call void @llvm.dbg.value(metadata i32* %8, metadata !3386, metadata !DIExpression()), !dbg !3395
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #13, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %9, metadata !3390, metadata !DIExpression()), !dbg !3395
  %10 = icmp ugt i64 %9, -3, !dbg !3401
  %11 = icmp ne i64 %2, 0, !dbg !3402
  %12 = and i1 %11, %10, !dbg !3403
  br i1 %12, label %13, label %18, !dbg !3403

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #13, !dbg !3404
  br i1 %14, label %18, label %15, !dbg !3405

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3406, !tbaa !1256
  call void @llvm.dbg.value(metadata i8 %16, metadata !3392, metadata !DIExpression()), !dbg !3407
  %17 = zext i8 %16 to i32, !dbg !3408
  store i32 %17, i32* %8, align 4, !dbg !3409, !tbaa !1202
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3410
  ret i64 %19, !dbg !3410
}

; Function Attrs: nounwind
declare !dbg !515 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3411 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3417, metadata !DIExpression()), !dbg !3422
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #13, !dbg !3423
  call void @llvm.dbg.value(metadata i1 undef, metadata !3418, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3424, metadata !DIExpression()), !dbg !3428
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3430
  %4 = load i32, i32* %3, align 8, !dbg !3430, !tbaa !3431
  %5 = and i32 %4, 32, !dbg !3430
  %6 = icmp eq i32 %5, 0, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %6, metadata !3420, metadata !DIExpression()), !dbg !3422
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #13, !dbg !3434
  %8 = icmp ne i32 %7, 0, !dbg !3435
  call void @llvm.dbg.value(metadata i1 %8, metadata !3421, metadata !DIExpression()), !dbg !3422
  br i1 %6, label %9, label %19, !dbg !3436

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3438
  call void @llvm.dbg.value(metadata i1 %10, metadata !3418, metadata !DIExpression()), !dbg !3422
  %11 = xor i1 %8, true, !dbg !3439
  %12 = or i1 %10, %11, !dbg !3439
  %13 = sext i1 %8 to i32, !dbg !3439
  br i1 %12, label %22, label %14, !dbg !3439

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3440
  %16 = load i32, i32* %15, align 4, !dbg !3440, !tbaa !1202
  %17 = icmp ne i32 %16, 9, !dbg !3441
  %18 = sext i1 %17 to i32, !dbg !3442
  br label %22, !dbg !3442

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3443

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3445
  store i32 0, i32* %21, align 4, !dbg !3447, !tbaa !1202
  br label %22, !dbg !3445

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3422
  ret i32 %23, !dbg !3448
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3449 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3451, metadata !DIExpression()), !dbg !3456
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #13, !dbg !3457
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3452, metadata !DIExpression()), !dbg !3458
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #13, !dbg !3459
  %5 = icmp eq i32 %4, 0, !dbg !3459
  br i1 %5, label %6, label %13, !dbg !3461

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3462
  %8 = load i16, i16* %7, align 16, !dbg !3462
  %9 = icmp eq i16 %8, 67, !dbg !3462
  br i1 %9, label %13, label %10, !dbg !3463

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i64 6), !dbg !3464
  %12 = icmp ne i32 %11, 0, !dbg !3465
  br label %13, !dbg !3463

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3456
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #13, !dbg !3466
  ret i1 %14, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3467 {
  %1 = tail call i8* @nl_langinfo(i32 14) #13, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %1, metadata !3469, metadata !DIExpression()), !dbg !3471
  %2 = icmp eq i8* %1, null, !dbg !3472
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %1, !dbg !3474
  call void @llvm.dbg.value(metadata i8* %3, metadata !3469, metadata !DIExpression()), !dbg !3471
  %4 = load i8, i8* %3, align 1, !dbg !3475, !tbaa !1256
  %5 = icmp eq i8 %4, 0, !dbg !3479
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i8* %3, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %6, metadata !3469, metadata !DIExpression()), !dbg !3471
  ret i8* %6, !dbg !3481
}

; Function Attrs: nounwind
declare !dbg !967 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3487, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %2, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()) #13, !dbg !3499
  call void @llvm.dbg.value(metadata i8* %1, metadata !3493, metadata !DIExpression()) #13, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %2, metadata !3494, metadata !DIExpression()) #13, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()) #13, !dbg !3507
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %4, metadata !3506, metadata !DIExpression()) #13, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %4, metadata !3495, metadata !DIExpression()) #13, !dbg !3499
  %5 = icmp eq i8* %4, null, !dbg !3510
  br i1 %5, label %6, label %9, !dbg !3511

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3512
  br i1 %7, label %19, label %8, !dbg !3515

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3516, !tbaa !1256
  br label %19, !dbg !3517

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %10, metadata !3496, metadata !DIExpression()) #13, !dbg !3519
  %11 = icmp ult i64 %10, %2, !dbg !3520
  br i1 %11, label %12, label %14, !dbg !3522

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3523
  call void @llvm.dbg.value(metadata i8* %1, metadata !3525, metadata !DIExpression()) #13, !dbg !3530
  call void @llvm.dbg.value(metadata i8* %4, metadata !3528, metadata !DIExpression()) #13, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %13, metadata !3529, metadata !DIExpression()) #13, !dbg !3530
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #13, !dbg !3532
  br label %19, !dbg !3533

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3534
  br i1 %15, label %19, label %16, !dbg !3537

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %1, metadata !3525, metadata !DIExpression()) #13, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %4, metadata !3528, metadata !DIExpression()) #13, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %17, metadata !3529, metadata !DIExpression()) #13, !dbg !3540
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #13, !dbg !3542
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3543
  store i8 0, i8* %18, align 1, !dbg !3544, !tbaa !1256
  br label %19, !dbg !3545

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3546
  ret i32 %20, !dbg !3547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()) #13, !dbg !3552
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #13, !dbg !3554
  call void @llvm.dbg.value(metadata i8* %2, metadata !3506, metadata !DIExpression()) #13, !dbg !3552
  ret i8* %2, !dbg !3555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3556 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3562, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 0, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 0, metadata !3565, metadata !DIExpression()), !dbg !3566
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %2, metadata !3564, metadata !DIExpression()), !dbg !3566
  %3 = icmp slt i32 %2, 0, !dbg !3568
  br i1 %3, label %4, label %6, !dbg !3570

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3571
  br label %24, !dbg !3572

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !3573
  %8 = icmp eq i32 %7, 0, !dbg !3573
  br i1 %8, label %13, label %9, !dbg !3575

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !3576
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #13, !dbg !3577
  %12 = icmp eq i64 %11, -1, !dbg !3578
  br i1 %12, label %16, label %13, !dbg !3579

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #13, !dbg !3580
  %15 = icmp eq i32 %14, 0, !dbg !3580
  br i1 %15, label %16, label %18, !dbg !3581

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3563, metadata !DIExpression()), !dbg !3566
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %21, metadata !3565, metadata !DIExpression()), !dbg !3566
  br label %24, !dbg !3583

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3584
  %20 = load i32, i32* %19, align 4, !dbg !3584, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 %20, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %20, metadata !3563, metadata !DIExpression()), !dbg !3566
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %21, metadata !3565, metadata !DIExpression()), !dbg !3566
  %22 = icmp eq i32 %20, 0, !dbg !3585
  br i1 %22, label %24, label %23, !dbg !3583

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3587, !tbaa !1202
  call void @llvm.dbg.value(metadata i32 -1, metadata !3565, metadata !DIExpression()), !dbg !3566
  br label %24, !dbg !3589

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3566
  ret i32 %25, !dbg !3590
}

; Function Attrs: nofree nounwind
declare !dbg !976 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1011 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1012 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3591 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3597, metadata !DIExpression()), !dbg !3598
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3599
  br i1 %2, label %6, label %3, !dbg !3601

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #13, !dbg !3602
  %5 = icmp eq i32 %4, 0, !dbg !3602
  br i1 %5, label %6, label %8, !dbg !3603

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3604
  br label %17, !dbg !3605

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3606, metadata !DIExpression()) #13, !dbg !3611
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3613
  %10 = load i32, i32* %9, align 8, !dbg !3613, !tbaa !3431
  %11 = and i32 %10, 256, !dbg !3615
  %12 = icmp eq i32 %11, 0, !dbg !3615
  br i1 %12, label %15, label %13, !dbg !3616

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #13, !dbg !3617
  br label %15, !dbg !3617

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3618
  br label %17, !dbg !3619

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3598
  ret i32 %18, !dbg !3620
}

; Function Attrs: nofree nounwind
declare !dbg !1019 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3621 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3628, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 %2, metadata !3630, metadata !DIExpression()), !dbg !3634
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3635
  %5 = load i8*, i8** %4, align 8, !dbg !3635, !tbaa !3636
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3637
  %7 = load i8*, i8** %6, align 8, !dbg !3637, !tbaa !3638
  %8 = icmp eq i8* %5, %7, !dbg !3639
  br i1 %8, label %9, label %28, !dbg !3640

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3641
  %11 = load i8*, i8** %10, align 8, !dbg !3641, !tbaa !3642
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3643
  %13 = load i8*, i8** %12, align 8, !dbg !3643, !tbaa !3644
  %14 = icmp eq i8* %11, %13, !dbg !3645
  br i1 %14, label %15, label %28, !dbg !3646

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3647
  %17 = load i8*, i8** %16, align 8, !dbg !3647, !tbaa !3648
  %18 = icmp eq i8* %17, null, !dbg !3649
  br i1 %18, label %19, label %28, !dbg !3650

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #13, !dbg !3651
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #13, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %21, metadata !3631, metadata !DIExpression()), !dbg !3653
  %22 = icmp eq i64 %21, -1, !dbg !3654
  br i1 %22, label %30, label %23, !dbg !3656

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3657
  %25 = load i32, i32* %24, align 8, !dbg !3658, !tbaa !3431
  %26 = and i32 %25, -17, !dbg !3658
  store i32 %26, i32* %24, align 8, !dbg !3658, !tbaa !3431
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3659
  store i64 %21, i64* %27, align 8, !dbg !3660, !tbaa !3661
  br label %30, !dbg !3662

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3663
  br label %30, !dbg !3664

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3634
  ret i32 %31, !dbg !3665
}

; Function Attrs: nofree nounwind
declare !dbg !1095 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #13 = { nounwind }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!360, !2, !11, !95, !426, !101, !169, !211, !431, !443, !354, !485, !506, !509, !512, !531, !570, !577, !970, !973, !1016, !1057}
!llvm.ident = !{!1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098}
!llvm.module.flags = !{!1099, !1100, !1101, !1102, !1103}

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
!361 = !DIFile(filename: "src/yes.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!77, !363, !398, !402, !406, !409, !410, !6, !67, !414, !312, !422, !85, !25}
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
!422 = !DISubprogram(name: "full_write", scope: !423, file: !423, line: 29, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!423 = !DIFile(filename: "./lib/full-write.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !DISubroutineType(types: !425)
!425 = !{!71, !18, !252, !71}
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !428, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!428 = !{!6, !429, !69}
!429 = !DISubprogram(name: "safe_write", scope: !430, file: !430, line: 37, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!430 = !DIFile(filename: "./lib/safe-write.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !433, retainedTypes: !438, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!433 = !{!434}
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !435, line: 40, baseType: !159, size: 32, elements: !436)
!435 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!437}
!437 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!438 = !{!439}
!439 = !DISubprogram(name: "write", scope: !440, file: !440, line: 366, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!440 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!441 = !DISubroutineType(types: !442)
!442 = !{!45, !18, !252, !71}
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !445, retainedTypes: !449, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = !{!446}
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !444, line: 40, baseType: !159, size: 32, elements: !447)
!447 = !{!448}
!448 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!449 = !{!77, !450, !67}
!450 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!451 = !DISubroutineType(types: !452)
!452 = !{!18, !6, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !454, file: !21, line: 51, baseType: !18, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !454, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !454, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !454, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !454, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !454, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !454, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !454, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !454, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !454, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !454, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !454, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !454, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !454, file: !21, line: 70, baseType: !453, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !454, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !454, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !454, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !454, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !454, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !454, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !454, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !454, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !454, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !454, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !454, file: !21, line: 93, baseType: !453, size: 64, offset: 1344)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !454, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !454, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !454, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !454, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!485 = distinct !DICompileUnit(language: DW_LANG_C99, file: !486, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !487, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!486 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!487 = !{!488}
!488 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !489, file: !249, line: 186, baseType: !159, size: 32, elements: !498)
!489 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !490, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !493)
!490 = !DISubroutineType(types: !491)
!491 = !{!67, !67, !492, !69}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(name: "p", arg: 1, scope: !489, file: !249, line: 174, type: !67)
!495 = !DILocalVariable(name: "pn", arg: 2, scope: !489, file: !249, line: 174, type: !492)
!496 = !DILocalVariable(name: "s", arg: 3, scope: !489, file: !249, line: 174, type: !69)
!497 = !DILocalVariable(name: "n", scope: !489, file: !249, line: 176, type: !69)
!498 = !{!499}
!499 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!500 = !{!69, !315, !312, !318, !25, !270, !67, !501, !504}
!501 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!502 = !DISubroutineType(types: !503)
!503 = !{!67, !71, !71}
!504 = !DISubprogram(name: "rpl_calloc", scope: !505, file: !505, line: 688, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!505 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !508, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!77, !85}
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!67}
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !{!515, !69, !527}
!515 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!516 = !DISubroutineType(types: !517)
!517 = !{!71, !117, !6, !71, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !283, line: 15, baseType: !18, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !519, file: !283, line: 20, baseType: !523, size: 32, offset: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !283, line: 16, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !523, file: !283, line: 18, baseType: !159, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !523, file: !283, line: 19, baseType: !291, size: 32)
!527 = !DISubprogram(name: "hard_locale", scope: !528, file: !528, line: 26, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!528 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!529 = !DISubroutineType(types: !530)
!530 = !{!92, !18}
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !533, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!533 = !{!534}
!534 = !DISubprogram(name: "rpl_fclose", scope: !535, file: !535, line: 672, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!535 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!536 = !DISubroutineType(types: !537)
!537 = !{!18, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !539, file: !21, line: 51, baseType: !18, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !539, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !539, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !539, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !539, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !539, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !539, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !539, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !539, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !539, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !539, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !539, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !539, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !539, file: !21, line: 70, baseType: !538, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !539, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !539, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !539, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !539, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !539, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !539, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !539, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !539, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !539, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !539, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !539, file: !21, line: 93, baseType: !538, size: 64, offset: 1344)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !539, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !539, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !539, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !539, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !{!573}
!573 = !DISubprogram(name: "setlocale_null_r", scope: !574, file: !574, line: 64, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!574 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !DISubroutineType(types: !576)
!576 = !{!18, !18, !25, !71}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !579, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = !{!580}
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 41, baseType: !159, size: 32, elements: !582)
!581 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965}
!583 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!584 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!585 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!586 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!587 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!588 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!589 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!590 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!591 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!592 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!593 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!594 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!595 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!596 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!598 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!599 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!600 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!601 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!602 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!603 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!604 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!605 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!606 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!607 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!608 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!610 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!611 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!612 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!613 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!614 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!615 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!616 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!617 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!618 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!619 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!620 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!621 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!622 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!623 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!624 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!625 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!626 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!627 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!628 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!629 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!630 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!631 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!632 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!691 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!695 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!696 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!697 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!698 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!699 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!700 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!701 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!702 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!703 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!704 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!705 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!778 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!851 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!852 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!853 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!854 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!855 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!856 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!857 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!859 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!860 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!861 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!862 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!863 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!864 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!865 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!867 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!868 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!869 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!870 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!871 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!872 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!898 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!899 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!900 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!901 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!902 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!907 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!908 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!909 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!910 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!966 = !{!967, !67}
!967 = !DISubprogram(name: "nl_langinfo", scope: !581, file: !581, line: 661, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!968 = !DISubroutineType(types: !969)
!969 = !{!25, !18}
!970 = distinct !DICompileUnit(language: DW_LANG_C99, file: !971, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!972 = !{!67, !402}
!973 = distinct !DICompileUnit(language: DW_LANG_C99, file: !974, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!975 = !{!976, !1011, !1012, !1015}
!976 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!977 = !DISubroutineType(types: !978)
!978 = !{!18, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !980, file: !21, line: 51, baseType: !18, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !980, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !980, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !980, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !980, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !980, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !980, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !980, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !980, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !980, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !980, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !980, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !980, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !980, file: !21, line: 70, baseType: !979, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !980, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !980, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !980, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !980, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !980, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !980, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !980, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !980, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !980, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !980, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !980, file: !21, line: 93, baseType: !979, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !980, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !980, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !980, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !980, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1011 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1012 = !DISubprogram(name: "lseek", scope: !440, file: !440, line: 334, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!45, !18, !45, !18}
!1015 = !DISubprogram(name: "rpl_fflush", scope: !535, file: !535, line: 718, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1016 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1017, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1018 = !{!67, !1019, !1054}
!1019 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!18, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1023, file: !21, line: 51, baseType: !18, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1023, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1023, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1023, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1023, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1023, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1023, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1023, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1023, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1023, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1023, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1023, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1023, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1023, file: !21, line: 70, baseType: !1022, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1023, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1023, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1023, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1023, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1023, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1023, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1023, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1023, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1023, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1023, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1023, file: !21, line: 93, baseType: !1022, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1023, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1023, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1023, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1023, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1054 = !DISubprogram(name: "rpl_fseeko", scope: !535, file: !535, line: 1034, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!18, !1022, !45, !18}
!1057 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1058, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1059, splitDebugInlining: false, nameTableKind: None)
!1058 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1059 = !{!67, !1060, !1012, !1095}
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
!1095 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!18, !1063, !45, !18}
!1098 = !{!"clang version 10.0.0 "}
!1099 = !{i32 7, !"Dwarf Version", i32 4}
!1100 = !{i32 2, !"Debug Info Version", i32 3}
!1101 = !{i32 1, !"wchar_size", i32 4}
!1102 = !{i32 7, !"PIC Level", i32 2}
!1103 = !{i32 7, !"PIE Level", i32 2}
!1104 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 35, type: !420, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1105)
!1105 = !{!1106}
!1106 = !DILocalVariable(name: "status", arg: 1, scope: !1104, file: !361, line: 35, type: !18)
!1107 = !DILocalVariable(name: "infomap", scope: !1108, file: !1109, line: 636, type: !1121)
!1108 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1109, file: !1109, line: 634, type: !400, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1110)
!1109 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1110 = !{!1111, !1107, !1112, !1113, !1120}
!1111 = !DILocalVariable(name: "program", arg: 1, scope: !1108, file: !1109, line: 634, type: !6)
!1112 = !DILocalVariable(name: "node", scope: !1108, file: !1109, line: 646, type: !6)
!1113 = !DILocalVariable(name: "map_prog", scope: !1108, file: !1109, line: 647, type: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1108, file: !1109, line: 636, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1116, file: !1109, line: 636, baseType: !6, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1116, file: !1109, line: 636, baseType: !6, size: 64, offset: 64)
!1120 = !DILocalVariable(name: "lc_messages", scope: !1108, file: !1109, line: 659, type: !6)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 896, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 7)
!1124 = !DILocation(line: 636, column: 67, scope: !1108, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 53, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !361, line: 40, column: 5)
!1127 = distinct !DILexicalBlock(scope: !1104, file: !361, line: 37, column: 7)
!1128 = !DILocation(line: 0, scope: !1104)
!1129 = !DILocation(line: 37, column: 14, scope: !1127)
!1130 = !DILocation(line: 37, column: 7, scope: !1104)
!1131 = !DILocation(line: 38, column: 5, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !361, line: 38, column: 5)
!1133 = !{!1134, !1134, i64 0}
!1134 = !{!"any pointer", !1135, i64 0}
!1135 = !{!"omnipotent char", !1136, i64 0}
!1136 = !{!"Simple C/C++ TBAA"}
!1137 = !DILocation(line: 41, column: 7, scope: !1126)
!1138 = !DILocation(line: 47, column: 7, scope: !1126)
!1139 = !DILocation(line: 51, column: 7, scope: !1126)
!1140 = !DILocation(line: 52, column: 7, scope: !1126)
!1141 = !DILocation(line: 0, scope: !1108, inlinedAt: !1125)
!1142 = !DILocation(line: 636, column: 3, scope: !1108, inlinedAt: !1125)
!1143 = !DILocation(line: 647, column: 36, scope: !1108, inlinedAt: !1125)
!1144 = !DILocation(line: 649, column: 3, scope: !1108, inlinedAt: !1125)
!1145 = !DILocation(line: 649, column: 33, scope: !1108, inlinedAt: !1125)
!1146 = !DILocation(line: 650, column: 13, scope: !1108, inlinedAt: !1125)
!1147 = !DILocation(line: 649, column: 20, scope: !1108, inlinedAt: !1125)
!1148 = !{!1149, !1134, i64 0}
!1149 = !{!"infomap", !1134, i64 0, !1134, i64 8}
!1150 = !DILocation(line: 649, column: 10, scope: !1108, inlinedAt: !1125)
!1151 = !DILocation(line: 649, column: 28, scope: !1108, inlinedAt: !1125)
!1152 = distinct !{!1152, !1144, !1146}
!1153 = !DILocation(line: 652, column: 17, scope: !1154, inlinedAt: !1125)
!1154 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 652, column: 7)
!1155 = !{!1149, !1134, i64 8}
!1156 = !DILocation(line: 652, column: 7, scope: !1154, inlinedAt: !1125)
!1157 = !DILocation(line: 652, column: 7, scope: !1108, inlinedAt: !1125)
!1158 = !DILocation(line: 655, column: 3, scope: !1108, inlinedAt: !1125)
!1159 = !DILocation(line: 659, column: 29, scope: !1108, inlinedAt: !1125)
!1160 = !DILocation(line: 660, column: 7, scope: !1161, inlinedAt: !1125)
!1161 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 660, column: 7)
!1162 = !DILocation(line: 660, column: 19, scope: !1161, inlinedAt: !1125)
!1163 = !DILocation(line: 660, column: 22, scope: !1161, inlinedAt: !1125)
!1164 = !DILocation(line: 660, column: 7, scope: !1108, inlinedAt: !1125)
!1165 = !DILocation(line: 666, column: 7, scope: !1166, inlinedAt: !1125)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !1109, line: 661, column: 5)
!1167 = !DILocation(line: 668, column: 5, scope: !1166, inlinedAt: !1125)
!1168 = !DILocation(line: 669, column: 3, scope: !1108, inlinedAt: !1125)
!1169 = !DILocation(line: 671, column: 3, scope: !1108, inlinedAt: !1125)
!1170 = !DILocation(line: 673, column: 1, scope: !1108, inlinedAt: !1125)
!1171 = !DILocation(line: 55, column: 3, scope: !1104)
!1172 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 59, type: !1173, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!18, !18, !418}
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1185, !1186, !1187, !1189, !1190}
!1176 = !DILocalVariable(name: "argc", arg: 1, scope: !1172, file: !361, line: 59, type: !18)
!1177 = !DILocalVariable(name: "argv", arg: 2, scope: !1172, file: !361, line: 59, type: !418)
!1178 = !DILocalVariable(name: "operands", scope: !1172, file: !361, line: 73, type: !418)
!1179 = !DILocalVariable(name: "operand_lim", scope: !1172, file: !361, line: 74, type: !418)
!1180 = !DILocalVariable(name: "bufalloc", scope: !1172, file: !361, line: 80, type: !69)
!1181 = !DILocalVariable(name: "reuse_operand_strings", scope: !1172, file: !361, line: 81, type: !92)
!1182 = !DILocalVariable(name: "operandp", scope: !1172, file: !361, line: 82, type: !418)
!1183 = !DILocalVariable(name: "operand_len", scope: !1184, file: !361, line: 85, type: !69)
!1184 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 84, column: 5)
!1185 = !DILocalVariable(name: "buf", scope: !1172, file: !361, line: 102, type: !25)
!1186 = !DILocalVariable(name: "bufused", scope: !1172, file: !361, line: 103, type: !69)
!1187 = !DILocalVariable(name: "operand_len", scope: !1188, file: !361, line: 107, type: !69)
!1188 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 106, column: 5)
!1189 = !DILocalVariable(name: "copysize", scope: !1172, file: !361, line: 118, type: !69)
!1190 = !DILocalVariable(name: "copies", scope: !1191, file: !361, line: 119, type: !69)
!1191 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 119, column: 3)
!1192 = !DILocation(line: 0, scope: !1172)
!1193 = !DILocation(line: 62, column: 21, scope: !1172)
!1194 = !DILocation(line: 62, column: 3, scope: !1172)
!1195 = !DILocation(line: 63, column: 3, scope: !1172)
!1196 = !DILocation(line: 64, column: 3, scope: !1172)
!1197 = !DILocation(line: 65, column: 3, scope: !1172)
!1198 = !DILocation(line: 67, column: 3, scope: !1172)
!1199 = !DILocation(line: 70, column: 36, scope: !1172)
!1200 = !DILocation(line: 69, column: 3, scope: !1172)
!1201 = !DILocation(line: 73, column: 28, scope: !1172)
!1202 = !{!1203, !1203, i64 0}
!1203 = !{!"int", !1135, i64 0}
!1204 = !DILocation(line: 73, column: 26, scope: !1172)
!1205 = !DILocation(line: 74, column: 29, scope: !1172)
!1206 = !DILocation(line: 75, column: 14, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 75, column: 7)
!1208 = !DILocation(line: 75, column: 7, scope: !1172)
!1209 = !DILocation(line: 76, column: 17, scope: !1207)
!1210 = !DILocation(line: 76, column: 20, scope: !1207)
!1211 = !DILocation(line: 76, column: 5, scope: !1207)
!1212 = !DILocation(line: 85, column: 36, scope: !1184)
!1213 = !DILocation(line: 85, column: 28, scope: !1184)
!1214 = !DILocation(line: 0, scope: !1184)
!1215 = !DILocation(line: 86, column: 16, scope: !1184)
!1216 = !DILocation(line: 87, column: 20, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1184, file: !361, line: 87, column: 11)
!1218 = !DILocation(line: 87, column: 24, scope: !1217)
!1219 = !DILocation(line: 88, column: 11, scope: !1217)
!1220 = !DILocation(line: 88, column: 24, scope: !1217)
!1221 = !DILocation(line: 88, column: 38, scope: !1217)
!1222 = !DILocation(line: 88, column: 45, scope: !1217)
!1223 = !DILocation(line: 88, column: 42, scope: !1217)
!1224 = !DILocation(line: 87, column: 11, scope: !1184)
!1225 = !DILocation(line: 86, column: 31, scope: !1184)
!1226 = !DILocation(line: 94, column: 16, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1172, file: !361, line: 94, column: 7)
!1228 = !DILocation(line: 94, column: 7, scope: !1172)
!1229 = !DILocation(line: 102, column: 15, scope: !1172)
!1230 = !DILocation(line: 102, column: 51, scope: !1172)
!1231 = !DILocation(line: 105, column: 3, scope: !1172)
!1232 = !DILocation(line: 107, column: 36, scope: !1188)
!1233 = !DILocation(line: 107, column: 28, scope: !1188)
!1234 = !DILocation(line: 0, scope: !1188)
!1235 = !DILocation(line: 108, column: 11, scope: !1188)
!1236 = !DILocation(line: 109, column: 21, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1188, file: !361, line: 108, column: 11)
!1238 = !DILocalVariable(name: "__dest", arg: 1, scope: !1239, file: !1240, line: 31, type: !1243)
!1239 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 31, type: !1241, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1245)
!1240 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!67, !1243, !1244, !69}
!1243 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!1245 = !{!1238, !1246, !1247}
!1246 = !DILocalVariable(name: "__src", arg: 2, scope: !1239, file: !1240, line: 31, type: !1244)
!1247 = !DILocalVariable(name: "__len", arg: 3, scope: !1239, file: !1240, line: 31, type: !69)
!1248 = !DILocation(line: 0, scope: !1239, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 109, column: 9, scope: !1237)
!1250 = !DILocation(line: 34, column: 10, scope: !1239, inlinedAt: !1249)
!1251 = !DILocation(line: 109, column: 9, scope: !1237)
!1252 = !DILocation(line: 110, column: 15, scope: !1188)
!1253 = !DILocation(line: 111, column: 18, scope: !1188)
!1254 = !DILocation(line: 111, column: 7, scope: !1188)
!1255 = !DILocation(line: 111, column: 22, scope: !1188)
!1256 = !{!1135, !1135, i64 0}
!1257 = !DILocation(line: 113, column: 10, scope: !1172)
!1258 = !DILocation(line: 113, column: 21, scope: !1172)
!1259 = !DILocation(line: 112, column: 5, scope: !1188)
!1260 = distinct !{!1260, !1231, !1261}
!1261 = !DILocation(line: 113, column: 34, scope: !1172)
!1262 = !DILocation(line: 114, column: 20, scope: !1172)
!1263 = !DILocation(line: 119, column: 33, scope: !1191)
!1264 = !DILocation(line: 0, scope: !1191)
!1265 = !DILocation(line: 119, column: 45, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1191, file: !361, line: 119, column: 3)
!1267 = !DILocation(line: 119, column: 3, scope: !1191)
!1268 = !DILocation(line: 121, column: 19, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !361, line: 120, column: 5)
!1270 = !DILocation(line: 0, scope: !1239, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 121, column: 7, scope: !1269)
!1272 = !DILocation(line: 34, column: 10, scope: !1239, inlinedAt: !1271)
!1273 = !DILocation(line: 122, column: 15, scope: !1269)
!1274 = distinct !{!1274, !1275}
!1275 = !{!"llvm.loop.unroll.disable"}
!1276 = !DILocation(line: 126, column: 3, scope: !1172)
!1277 = distinct !{!1277, !1267, !1278}
!1278 = !DILocation(line: 123, column: 5, scope: !1191)
!1279 = !DILocation(line: 126, column: 10, scope: !1172)
!1280 = !DILocation(line: 126, column: 51, scope: !1172)
!1281 = distinct !{!1281, !1276, !1282}
!1282 = !DILocation(line: 127, column: 5, scope: !1172)
!1283 = !DILocation(line: 128, column: 13, scope: !1172)
!1284 = !DILocation(line: 128, column: 20, scope: !1172)
!1285 = !DILocation(line: 128, column: 3, scope: !1172)
!1286 = !DILocation(line: 130, column: 1, scope: !1172)
!1287 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !400, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1288)
!1288 = !{!1289}
!1289 = !DILocalVariable(name: "file", arg: 1, scope: !1287, file: !12, line: 51, type: !6)
!1290 = !DILocation(line: 0, scope: !1287)
!1291 = !DILocation(line: 53, column: 13, scope: !1287)
!1292 = !DILocation(line: 54, column: 1, scope: !1287)
!1293 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1294, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !92}
!1296 = !{!1297}
!1297 = !DILocalVariable(name: "ignore", arg: 1, scope: !1293, file: !12, line: 88, type: !92)
!1298 = !DILocation(line: 0, scope: !1293)
!1299 = !DILocation(line: 90, column: 16, scope: !1293)
!1300 = !{!1301, !1301, i64 0}
!1301 = !{!"_Bool", !1135, i64 0}
!1302 = !DILocation(line: 91, column: 1, scope: !1293)
!1303 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1304)
!1304 = !{!1305}
!1305 = !DILocalVariable(name: "write_error", scope: !1306, file: !12, line: 122, type: !6)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !12, line: 121, column: 5)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !12, line: 119, column: 7)
!1308 = !DILocation(line: 119, column: 21, scope: !1307)
!1309 = !DILocation(line: 119, column: 7, scope: !1307)
!1310 = !DILocation(line: 119, column: 29, scope: !1307)
!1311 = !DILocation(line: 120, column: 7, scope: !1307)
!1312 = !DILocation(line: 120, column: 12, scope: !1307)
!1313 = !{i8 0, i8 2}
!1314 = !DILocation(line: 120, column: 25, scope: !1307)
!1315 = !DILocation(line: 120, column: 28, scope: !1307)
!1316 = !DILocation(line: 120, column: 34, scope: !1307)
!1317 = !DILocation(line: 119, column: 7, scope: !1303)
!1318 = !DILocation(line: 122, column: 33, scope: !1306)
!1319 = !DILocation(line: 0, scope: !1306)
!1320 = !DILocation(line: 123, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1306, file: !12, line: 123, column: 11)
!1322 = !DILocation(line: 0, scope: !1321)
!1323 = !DILocation(line: 123, column: 11, scope: !1306)
!1324 = !DILocation(line: 124, column: 36, scope: !1321)
!1325 = !DILocation(line: 124, column: 9, scope: !1321)
!1326 = !DILocation(line: 127, column: 9, scope: !1321)
!1327 = !DILocation(line: 129, column: 14, scope: !1306)
!1328 = !DILocation(line: 129, column: 7, scope: !1306)
!1329 = !DILocation(line: 134, column: 42, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1303, file: !12, line: 134, column: 7)
!1331 = !DILocation(line: 134, column: 28, scope: !1330)
!1332 = !DILocation(line: 134, column: 50, scope: !1330)
!1333 = !DILocation(line: 134, column: 7, scope: !1303)
!1334 = !DILocation(line: 135, column: 12, scope: !1330)
!1335 = !DILocation(line: 135, column: 5, scope: !1330)
!1336 = !DILocation(line: 136, column: 1, scope: !1303)
!1337 = distinct !DISubprogram(name: "full_write", scope: !427, file: !427, line: 58, type: !1338, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!69, !18, !252, !69}
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346}
!1341 = !DILocalVariable(name: "fd", arg: 1, scope: !1337, file: !427, line: 58, type: !18)
!1342 = !DILocalVariable(name: "buf", arg: 2, scope: !1337, file: !427, line: 58, type: !252)
!1343 = !DILocalVariable(name: "count", arg: 3, scope: !1337, file: !427, line: 58, type: !69)
!1344 = !DILocalVariable(name: "total", scope: !1337, file: !427, line: 60, type: !69)
!1345 = !DILocalVariable(name: "ptr", scope: !1337, file: !427, line: 61, type: !6)
!1346 = !DILocalVariable(name: "n_rw", scope: !1347, file: !427, line: 65, type: !69)
!1347 = distinct !DILexicalBlock(scope: !1337, file: !427, line: 64, column: 5)
!1348 = !DILocation(line: 0, scope: !1337)
!1349 = !DILocation(line: 63, column: 16, scope: !1337)
!1350 = !DILocation(line: 63, column: 3, scope: !1337)
!1351 = !DILocation(line: 65, column: 21, scope: !1347)
!1352 = !DILocation(line: 0, scope: !1347)
!1353 = !DILocation(line: 66, column: 11, scope: !1347)
!1354 = !DILocation(line: 70, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !427, line: 69, column: 9)
!1356 = distinct !DILexicalBlock(scope: !1347, file: !427, line: 68, column: 11)
!1357 = !DILocation(line: 70, column: 17, scope: !1355)
!1358 = !DILocation(line: 71, column: 11, scope: !1355)
!1359 = !DILocation(line: 73, column: 13, scope: !1347)
!1360 = !DILocation(line: 74, column: 11, scope: !1347)
!1361 = !DILocation(line: 75, column: 13, scope: !1347)
!1362 = !DILocation(line: 78, column: 3, scope: !1337)
!1363 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1364, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !18, !418, !6, !6, !6, !419, null}
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1367 = !DILocalVariable(name: "argc", arg: 1, scope: !1363, file: !102, line: 45, type: !18)
!1368 = !DILocalVariable(name: "argv", arg: 2, scope: !1363, file: !102, line: 46, type: !418)
!1369 = !DILocalVariable(name: "command_name", arg: 3, scope: !1363, file: !102, line: 47, type: !6)
!1370 = !DILocalVariable(name: "package", arg: 4, scope: !1363, file: !102, line: 48, type: !6)
!1371 = !DILocalVariable(name: "version", arg: 5, scope: !1363, file: !102, line: 49, type: !6)
!1372 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1363, file: !102, line: 50, type: !419)
!1373 = !DILocalVariable(name: "c", scope: !1363, file: !102, line: 53, type: !18)
!1374 = !DILocalVariable(name: "saved_opterr", scope: !1363, file: !102, line: 54, type: !18)
!1375 = !DILocalVariable(name: "authors", scope: !1376, file: !102, line: 72, type: !1380)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !102, line: 71, column: 11)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !102, line: 65, column: 9)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !102, line: 63, column: 5)
!1379 = distinct !DILexicalBlock(scope: !1363, file: !102, line: 61, column: 7)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1382, line: 32, baseType: !1383)
!1382 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1384)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1385 = !DILocation(line: 0, scope: !1363)
!1386 = !DILocation(line: 56, column: 18, scope: !1363)
!1387 = !DILocation(line: 59, column: 10, scope: !1363)
!1388 = !DILocation(line: 61, column: 12, scope: !1379)
!1389 = !DILocation(line: 62, column: 7, scope: !1379)
!1390 = !DILocation(line: 62, column: 15, scope: !1379)
!1391 = !DILocation(line: 61, column: 7, scope: !1363)
!1392 = !DILocation(line: 67, column: 11, scope: !1377)
!1393 = !DILocation(line: 68, column: 11, scope: !1377)
!1394 = !DILocation(line: 72, column: 13, scope: !1376)
!1395 = !DILocation(line: 72, column: 21, scope: !1376)
!1396 = !DILocation(line: 73, column: 13, scope: !1376)
!1397 = !DILocation(line: 74, column: 29, scope: !1376)
!1398 = !DILocation(line: 74, column: 13, scope: !1376)
!1399 = !DILocation(line: 75, column: 13, scope: !1376)
!1400 = !DILocation(line: 85, column: 10, scope: !1363)
!1401 = !DILocation(line: 89, column: 10, scope: !1363)
!1402 = !DILocation(line: 90, column: 1, scope: !1363)
!1403 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !416, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1405 = !DILocalVariable(name: "argc", arg: 1, scope: !1403, file: !102, line: 98, type: !18)
!1406 = !DILocalVariable(name: "argv", arg: 2, scope: !1403, file: !102, line: 99, type: !418)
!1407 = !DILocalVariable(name: "command_name", arg: 3, scope: !1403, file: !102, line: 100, type: !6)
!1408 = !DILocalVariable(name: "package", arg: 4, scope: !1403, file: !102, line: 101, type: !6)
!1409 = !DILocalVariable(name: "version", arg: 5, scope: !1403, file: !102, line: 102, type: !6)
!1410 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1403, file: !102, line: 103, type: !92)
!1411 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1403, file: !102, line: 104, type: !419)
!1412 = !DILocalVariable(name: "c", scope: !1403, file: !102, line: 107, type: !18)
!1413 = !DILocalVariable(name: "saved_opterr", scope: !1403, file: !102, line: 108, type: !18)
!1414 = !DILocalVariable(name: "optstring", scope: !1403, file: !102, line: 113, type: !6)
!1415 = !DILocalVariable(name: "authors", scope: !1416, file: !102, line: 125, type: !1380)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !102, line: 124, column: 11)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !102, line: 118, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !102, line: 116, column: 5)
!1419 = distinct !DILexicalBlock(scope: !1403, file: !102, line: 115, column: 7)
!1420 = !DILocation(line: 0, scope: !1403)
!1421 = !DILocation(line: 108, column: 22, scope: !1403)
!1422 = !DILocation(line: 111, column: 10, scope: !1403)
!1423 = !DILocation(line: 113, column: 27, scope: !1403)
!1424 = !DILocation(line: 115, column: 12, scope: !1419)
!1425 = !DILocation(line: 115, column: 7, scope: !1403)
!1426 = !DILocation(line: 125, column: 13, scope: !1416)
!1427 = !DILocation(line: 125, column: 21, scope: !1416)
!1428 = !DILocation(line: 126, column: 13, scope: !1416)
!1429 = !DILocation(line: 127, column: 29, scope: !1416)
!1430 = !DILocation(line: 127, column: 13, scope: !1416)
!1431 = !DILocation(line: 128, column: 13, scope: !1416)
!1432 = !DILocation(line: 132, column: 26, scope: !1417)
!1433 = !DILocation(line: 133, column: 11, scope: !1417)
!1434 = !DILocation(line: 0, scope: !1417)
!1435 = !DILocation(line: 138, column: 10, scope: !1403)
!1436 = !DILocation(line: 139, column: 1, scope: !1403)
!1437 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !400, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DILocalVariable(name: "argv0", arg: 1, scope: !1437, file: !170, line: 39, type: !6)
!1440 = !DILocalVariable(name: "slash", scope: !1437, file: !170, line: 46, type: !6)
!1441 = !DILocalVariable(name: "base", scope: !1437, file: !170, line: 47, type: !6)
!1442 = !DILocation(line: 0, scope: !1437)
!1443 = !DILocation(line: 51, column: 13, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1437, file: !170, line: 51, column: 7)
!1445 = !DILocation(line: 51, column: 7, scope: !1437)
!1446 = !DILocation(line: 55, column: 14, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !170, line: 52, column: 5)
!1448 = !DILocation(line: 54, column: 7, scope: !1447)
!1449 = !DILocation(line: 56, column: 7, scope: !1447)
!1450 = !DILocation(line: 59, column: 11, scope: !1437)
!1451 = !DILocation(line: 60, column: 17, scope: !1437)
!1452 = !DILocation(line: 60, column: 11, scope: !1437)
!1453 = !DILocation(line: 61, column: 12, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1437, file: !170, line: 61, column: 7)
!1455 = !DILocation(line: 61, column: 20, scope: !1454)
!1456 = !DILocation(line: 61, column: 25, scope: !1454)
!1457 = !DILocation(line: 61, column: 42, scope: !1454)
!1458 = !DILocation(line: 61, column: 28, scope: !1454)
!1459 = !DILocation(line: 61, column: 61, scope: !1454)
!1460 = !DILocation(line: 61, column: 7, scope: !1437)
!1461 = !DILocation(line: 64, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !170, line: 64, column: 11)
!1463 = distinct !DILexicalBlock(scope: !1454, file: !170, line: 62, column: 5)
!1464 = !DILocation(line: 64, column: 36, scope: !1462)
!1465 = !DILocation(line: 64, column: 11, scope: !1463)
!1466 = !DILocation(line: 66, column: 24, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !170, line: 65, column: 9)
!1468 = !DILocation(line: 70, column: 41, scope: !1467)
!1469 = !DILocation(line: 72, column: 9, scope: !1467)
!1470 = !DILocation(line: 84, column: 16, scope: !1437)
!1471 = !DILocation(line: 90, column: 27, scope: !1437)
!1472 = !DILocation(line: 92, column: 1, scope: !1437)
!1473 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1474, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1477)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1476, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1477 = !{!1478, !1479, !1480}
!1478 = !DILocalVariable(name: "o", arg: 1, scope: !1473, file: !212, line: 122, type: !1476)
!1479 = !DILocalVariable(name: "e", scope: !1473, file: !212, line: 124, type: !18)
!1480 = !DILocalVariable(name: "p", scope: !1473, file: !212, line: 125, type: !1476)
!1481 = !DILocation(line: 0, scope: !1473)
!1482 = !DILocation(line: 124, column: 11, scope: !1473)
!1483 = !DILocation(line: 125, column: 40, scope: !1473)
!1484 = !DILocation(line: 125, column: 31, scope: !1473)
!1485 = !DILocation(line: 127, column: 9, scope: !1473)
!1486 = !DILocation(line: 128, column: 3, scope: !1473)
!1487 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1488, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!214, !258}
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "o", arg: 1, scope: !1487, file: !212, line: 133, type: !258)
!1492 = !DILocation(line: 0, scope: !1487)
!1493 = !DILocation(line: 135, column: 11, scope: !1487)
!1494 = !DILocation(line: 135, column: 46, scope: !1487)
!1495 = !{!1496, !1135, i64 0}
!1496 = !{!"quoting_options", !1135, i64 0, !1203, i64 4, !1135, i64 8, !1134, i64 40, !1134, i64 48}
!1497 = !DILocation(line: 135, column: 3, scope: !1487)
!1498 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1499, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1476, !214}
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "o", arg: 1, scope: !1498, file: !212, line: 141, type: !1476)
!1503 = !DILocalVariable(name: "s", arg: 2, scope: !1498, file: !212, line: 141, type: !214)
!1504 = !DILocation(line: 0, scope: !1498)
!1505 = !DILocation(line: 143, column: 4, scope: !1498)
!1506 = !DILocation(line: 143, column: 39, scope: !1498)
!1507 = !DILocation(line: 143, column: 45, scope: !1498)
!1508 = !DILocation(line: 144, column: 1, scope: !1498)
!1509 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1510, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!18, !1476, !8, !18}
!1512 = !{!1513, !1514, !1515, !1516, !1518, !1520, !1521}
!1513 = !DILocalVariable(name: "o", arg: 1, scope: !1509, file: !212, line: 152, type: !1476)
!1514 = !DILocalVariable(name: "c", arg: 2, scope: !1509, file: !212, line: 152, type: !8)
!1515 = !DILocalVariable(name: "i", arg: 3, scope: !1509, file: !212, line: 152, type: !18)
!1516 = !DILocalVariable(name: "uc", scope: !1509, file: !212, line: 154, type: !1517)
!1517 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1518 = !DILocalVariable(name: "p", scope: !1509, file: !212, line: 155, type: !1519)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1520 = !DILocalVariable(name: "shift", scope: !1509, file: !212, line: 157, type: !18)
!1521 = !DILocalVariable(name: "r", scope: !1509, file: !212, line: 158, type: !18)
!1522 = !DILocation(line: 0, scope: !1509)
!1523 = !DILocation(line: 156, column: 6, scope: !1509)
!1524 = !DILocation(line: 156, column: 62, scope: !1509)
!1525 = !DILocation(line: 156, column: 57, scope: !1509)
!1526 = !DILocation(line: 157, column: 15, scope: !1509)
!1527 = !DILocation(line: 158, column: 12, scope: !1509)
!1528 = !DILocation(line: 158, column: 15, scope: !1509)
!1529 = !DILocation(line: 158, column: 25, scope: !1509)
!1530 = !DILocation(line: 159, column: 13, scope: !1509)
!1531 = !DILocation(line: 159, column: 18, scope: !1509)
!1532 = !DILocation(line: 159, column: 23, scope: !1509)
!1533 = !DILocation(line: 159, column: 6, scope: !1509)
!1534 = !DILocation(line: 160, column: 3, scope: !1509)
!1535 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1536, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!18, !1476, !18}
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "o", arg: 1, scope: !1535, file: !212, line: 168, type: !1476)
!1540 = !DILocalVariable(name: "i", arg: 2, scope: !1535, file: !212, line: 168, type: !18)
!1541 = !DILocalVariable(name: "r", scope: !1535, file: !212, line: 170, type: !18)
!1542 = !DILocation(line: 0, scope: !1535)
!1543 = !DILocation(line: 171, column: 8, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1535, file: !212, line: 171, column: 7)
!1545 = !DILocation(line: 171, column: 7, scope: !1535)
!1546 = !DILocation(line: 173, column: 10, scope: !1535)
!1547 = !{!1496, !1203, i64 4}
!1548 = !DILocation(line: 174, column: 12, scope: !1535)
!1549 = !DILocation(line: 175, column: 3, scope: !1535)
!1550 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1551, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !1476, !6, !6}
!1553 = !{!1554, !1555, !1556}
!1554 = !DILocalVariable(name: "o", arg: 1, scope: !1550, file: !212, line: 179, type: !1476)
!1555 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1550, file: !212, line: 180, type: !6)
!1556 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1550, file: !212, line: 180, type: !6)
!1557 = !DILocation(line: 0, scope: !1550)
!1558 = !DILocation(line: 182, column: 8, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !212, line: 182, column: 7)
!1560 = !DILocation(line: 182, column: 7, scope: !1550)
!1561 = !DILocation(line: 184, column: 6, scope: !1550)
!1562 = !DILocation(line: 184, column: 12, scope: !1550)
!1563 = !DILocation(line: 185, column: 8, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1550, file: !212, line: 185, column: 7)
!1565 = !DILocation(line: 185, column: 23, scope: !1564)
!1566 = !DILocation(line: 185, column: 19, scope: !1564)
!1567 = !DILocation(line: 186, column: 5, scope: !1564)
!1568 = !DILocation(line: 187, column: 6, scope: !1550)
!1569 = !DILocation(line: 187, column: 17, scope: !1550)
!1570 = !{!1496, !1134, i64 40}
!1571 = !DILocation(line: 188, column: 6, scope: !1550)
!1572 = !DILocation(line: 188, column: 18, scope: !1550)
!1573 = !{!1496, !1134, i64 48}
!1574 = !DILocation(line: 189, column: 1, scope: !1550)
!1575 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1576, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!69, !25, !69, !6, !69, !258}
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1579 = !DILocalVariable(name: "buffer", arg: 1, scope: !1575, file: !212, line: 784, type: !25)
!1580 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1575, file: !212, line: 784, type: !69)
!1581 = !DILocalVariable(name: "arg", arg: 3, scope: !1575, file: !212, line: 785, type: !6)
!1582 = !DILocalVariable(name: "argsize", arg: 4, scope: !1575, file: !212, line: 785, type: !69)
!1583 = !DILocalVariable(name: "o", arg: 5, scope: !1575, file: !212, line: 786, type: !258)
!1584 = !DILocalVariable(name: "p", scope: !1575, file: !212, line: 788, type: !258)
!1585 = !DILocalVariable(name: "e", scope: !1575, file: !212, line: 789, type: !18)
!1586 = !DILocalVariable(name: "r", scope: !1575, file: !212, line: 790, type: !69)
!1587 = !DILocation(line: 0, scope: !1575)
!1588 = !DILocation(line: 788, column: 37, scope: !1575)
!1589 = !DILocation(line: 789, column: 11, scope: !1575)
!1590 = !DILocation(line: 791, column: 43, scope: !1575)
!1591 = !DILocation(line: 791, column: 53, scope: !1575)
!1592 = !DILocation(line: 791, column: 60, scope: !1575)
!1593 = !DILocation(line: 792, column: 43, scope: !1575)
!1594 = !DILocation(line: 792, column: 58, scope: !1575)
!1595 = !DILocation(line: 790, column: 14, scope: !1575)
!1596 = !DILocation(line: 793, column: 9, scope: !1575)
!1597 = !DILocation(line: 794, column: 3, scope: !1575)
!1598 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1599, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1603)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!69, !25, !69, !6, !69, !214, !18, !1601, !6, !6}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1628, !1629, !1630, !1631, !1632, !1635, !1636, !1642, !1645, !1646, !1653, !1656, !1657, !1658, !1659, !1660, !1661}
!1604 = !DILocalVariable(name: "buffer", arg: 1, scope: !1598, file: !212, line: 256, type: !25)
!1605 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1598, file: !212, line: 256, type: !69)
!1606 = !DILocalVariable(name: "arg", arg: 3, scope: !1598, file: !212, line: 257, type: !6)
!1607 = !DILocalVariable(name: "argsize", arg: 4, scope: !1598, file: !212, line: 257, type: !69)
!1608 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1598, file: !212, line: 258, type: !214)
!1609 = !DILocalVariable(name: "flags", arg: 6, scope: !1598, file: !212, line: 258, type: !18)
!1610 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1598, file: !212, line: 259, type: !1601)
!1611 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1598, file: !212, line: 260, type: !6)
!1612 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1598, file: !212, line: 261, type: !6)
!1613 = !DILocalVariable(name: "i", scope: !1598, file: !212, line: 263, type: !69)
!1614 = !DILocalVariable(name: "len", scope: !1598, file: !212, line: 264, type: !69)
!1615 = !DILocalVariable(name: "orig_buffersize", scope: !1598, file: !212, line: 265, type: !69)
!1616 = !DILocalVariable(name: "quote_string", scope: !1598, file: !212, line: 266, type: !6)
!1617 = !DILocalVariable(name: "quote_string_len", scope: !1598, file: !212, line: 267, type: !69)
!1618 = !DILocalVariable(name: "backslash_escapes", scope: !1598, file: !212, line: 268, type: !92)
!1619 = !DILocalVariable(name: "unibyte_locale", scope: !1598, file: !212, line: 269, type: !92)
!1620 = !DILocalVariable(name: "elide_outer_quotes", scope: !1598, file: !212, line: 270, type: !92)
!1621 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1598, file: !212, line: 271, type: !92)
!1622 = !DILocalVariable(name: "encountered_single_quote", scope: !1598, file: !212, line: 272, type: !92)
!1623 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1598, file: !212, line: 273, type: !92)
!1624 = !DILocalVariable(name: "c", scope: !1625, file: !212, line: 402, type: !1517)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !212, line: 401, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !212, line: 400, column: 3)
!1627 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 400, column: 3)
!1628 = !DILocalVariable(name: "esc", scope: !1625, file: !212, line: 403, type: !1517)
!1629 = !DILocalVariable(name: "is_right_quote", scope: !1625, file: !212, line: 404, type: !92)
!1630 = !DILocalVariable(name: "escaping", scope: !1625, file: !212, line: 405, type: !92)
!1631 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1625, file: !212, line: 406, type: !92)
!1632 = !DILocalVariable(name: "m", scope: !1633, file: !212, line: 610, type: !69)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 608, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 426, column: 9)
!1635 = !DILocalVariable(name: "printable", scope: !1633, file: !212, line: 612, type: !92)
!1636 = !DILocalVariable(name: "mbstate", scope: !1637, file: !212, line: 621, type: !1639)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !212, line: 620, column: 15)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !212, line: 614, column: 17)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1640, line: 6, baseType: !1641)
!1640 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1642 = !DILocalVariable(name: "w", scope: !1643, file: !212, line: 631, type: !1644)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !212, line: 630, column: 19)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1645 = !DILocalVariable(name: "bytes", scope: !1643, file: !212, line: 632, type: !69)
!1646 = !DILocalVariable(name: "j", scope: !1647, file: !212, line: 657, type: !69)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !212, line: 656, column: 27)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !212, line: 654, column: 29)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !212, line: 649, column: 23)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !212, line: 641, column: 30)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !212, line: 636, column: 30)
!1652 = distinct !DILexicalBlock(scope: !1643, file: !212, line: 634, column: 25)
!1653 = !DILocalVariable(name: "ilim", scope: !1654, file: !212, line: 684, type: !69)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !212, line: 681, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1633, file: !212, line: 680, column: 17)
!1656 = !DILabel(scope: !1598, name: "process_input", file: !212, line: 314)
!1657 = !DILabel(scope: !1634, name: "c_and_shell_escape", file: !212, line: 512)
!1658 = !DILabel(scope: !1634, name: "c_escape", file: !212, line: 517)
!1659 = !DILabel(scope: !1625, name: "store_escape", file: !212, line: 719)
!1660 = !DILabel(scope: !1625, name: "store_c", file: !212, line: 722)
!1661 = !DILabel(scope: !1598, name: "force_outer_quoting_style", file: !212, line: 763)
!1662 = !DILocation(line: 0, scope: !1598)
!1663 = !DILocation(line: 269, column: 25, scope: !1598)
!1664 = !DILocation(line: 269, column: 36, scope: !1598)
!1665 = !DILocation(line: 270, column: 8, scope: !1598)
!1666 = !DILocation(line: 0, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 526, column: 15)
!1668 = !DILocation(line: 0, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !212, line: 462, column: 19)
!1670 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 455, column: 13)
!1671 = !DILocation(line: 0, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !212, line: 449, column: 20)
!1673 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 428, column: 15)
!1674 = !DILocation(line: 0, scope: !1637)
!1675 = !DILocation(line: 0, scope: !1643)
!1676 = !DILocation(line: 0, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 712, column: 11)
!1678 = !DILocation(line: 273, column: 3, scope: !1598)
!1679 = !DILocation(line: 265, column: 10, scope: !1598)
!1680 = !DILocation(line: 266, column: 15, scope: !1598)
!1681 = !DILocation(line: 267, column: 10, scope: !1598)
!1682 = !DILocation(line: 268, column: 8, scope: !1598)
!1683 = !DILocation(line: 271, column: 8, scope: !1598)
!1684 = !DILocation(line: 272, column: 8, scope: !1598)
!1685 = !DILocation(line: 273, column: 8, scope: !1598)
!1686 = !DILocation(line: 314, column: 2, scope: !1598)
!1687 = !DILocation(line: 316, column: 3, scope: !1598)
!1688 = !DILocation(line: 323, column: 11, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 317, column: 5)
!1690 = !DILocation(line: 323, column: 12, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1689, file: !212, line: 323, column: 11)
!1692 = !DILocation(line: 324, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !212, line: 324, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !212, line: 324, column: 9)
!1695 = !DILocation(line: 324, column: 9, scope: !1694)
!1696 = !DILocation(line: 362, column: 26, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !212, line: 340, column: 11)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !212, line: 339, column: 13)
!1699 = distinct !DILexicalBlock(scope: !1689, file: !212, line: 338, column: 7)
!1700 = !DILocation(line: 363, column: 27, scope: !1697)
!1701 = !DILocation(line: 364, column: 11, scope: !1697)
!1702 = !DILocation(line: 365, column: 14, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !212, line: 365, column: 13)
!1704 = !DILocation(line: 365, column: 13, scope: !1699)
!1705 = !DILocation(line: 366, column: 43, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !212, line: 366, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !212, line: 366, column: 11)
!1708 = !DILocation(line: 366, column: 11, scope: !1707)
!1709 = !DILocation(line: 367, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !212, line: 367, column: 13)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !212, line: 367, column: 13)
!1712 = !DILocation(line: 367, column: 13, scope: !1711)
!1713 = !DILocation(line: 366, column: 70, scope: !1706)
!1714 = distinct !{!1714, !1708, !1715}
!1715 = !DILocation(line: 367, column: 13, scope: !1707)
!1716 = !DILocation(line: 264, column: 10, scope: !1598)
!1717 = !DILocation(line: 370, column: 28, scope: !1699)
!1718 = !DILocation(line: 372, column: 7, scope: !1689)
!1719 = !DILocation(line: 376, column: 7, scope: !1689)
!1720 = !DILocation(line: 379, column: 7, scope: !1689)
!1721 = !DILocation(line: 381, column: 12, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1689, file: !212, line: 381, column: 11)
!1723 = !DILocation(line: 381, column: 11, scope: !1689)
!1724 = !DILocation(line: 386, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1689, file: !212, line: 386, column: 11)
!1726 = !DILocation(line: 386, column: 11, scope: !1689)
!1727 = !DILocation(line: 387, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 387, column: 9)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !212, line: 387, column: 9)
!1730 = !DILocation(line: 387, column: 9, scope: !1729)
!1731 = !DILocation(line: 394, column: 7, scope: !1689)
!1732 = !DILocation(line: 397, column: 7, scope: !1689)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 408, column: 11)
!1735 = !DILocation(line: 0, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !212, line: 419, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !212, line: 418, column: 9)
!1738 = !DILocation(line: 0, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 556, column: 15)
!1740 = !DILocation(line: 0, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 548, column: 15)
!1742 = !DILocation(line: 0, scope: !1648)
!1743 = !DILocation(line: 0, scope: !1655)
!1744 = !DILocation(line: 0, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 509, column: 15)
!1746 = !DILocation(line: 400, column: 8, scope: !1627)
!1747 = !DILocation(line: 0, scope: !1627)
!1748 = !DILocation(line: 400, column: 27, scope: !1626)
!1749 = !DILocation(line: 400, column: 19, scope: !1626)
!1750 = !DILocation(line: 400, column: 41, scope: !1626)
!1751 = !DILocation(line: 400, column: 48, scope: !1626)
!1752 = !DILocation(line: 400, column: 3, scope: !1627)
!1753 = !DILocation(line: 400, column: 60, scope: !1626)
!1754 = !DILocation(line: 0, scope: !1625)
!1755 = !DILocation(line: 409, column: 11, scope: !1734)
!1756 = !DILocation(line: 411, column: 17, scope: !1734)
!1757 = !DILocation(line: 412, column: 39, scope: !1734)
!1758 = !DILocation(line: 416, column: 32, scope: !1734)
!1759 = !DILocation(line: 412, column: 19, scope: !1734)
!1760 = !DILocation(line: 412, column: 15, scope: !1734)
!1761 = !DILocation(line: 417, column: 11, scope: !1734)
!1762 = !DILocation(line: 417, column: 26, scope: !1734)
!1763 = !DILocation(line: 417, column: 14, scope: !1734)
!1764 = !DILocation(line: 417, column: 63, scope: !1734)
!1765 = !DILocation(line: 408, column: 11, scope: !1625)
!1766 = !DILocation(line: 424, column: 11, scope: !1625)
!1767 = !DILocation(line: 425, column: 7, scope: !1625)
!1768 = !DILocation(line: 428, column: 15, scope: !1634)
!1769 = !DILocation(line: 430, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 430, column: 15)
!1771 = distinct !DILexicalBlock(scope: !1673, file: !212, line: 429, column: 13)
!1772 = !DILocation(line: 430, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1770, file: !212, line: 430, column: 15)
!1774 = !DILocation(line: 430, column: 15, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !212, line: 430, column: 15)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !212, line: 430, column: 15)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !212, line: 430, column: 15)
!1778 = !DILocation(line: 430, column: 15, scope: !1776)
!1779 = !DILocation(line: 430, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !212, line: 430, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !212, line: 430, column: 15)
!1782 = !DILocation(line: 430, column: 15, scope: !1781)
!1783 = !DILocation(line: 430, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !212, line: 430, column: 15)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !212, line: 430, column: 15)
!1786 = !DILocation(line: 430, column: 15, scope: !1785)
!1787 = !DILocation(line: 430, column: 15, scope: !1777)
!1788 = !DILocation(line: 430, column: 15, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !212, line: 430, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1770, file: !212, line: 430, column: 15)
!1791 = !DILocation(line: 430, column: 15, scope: !1790)
!1792 = !DILocation(line: 438, column: 19, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 437, column: 19)
!1794 = !DILocation(line: 438, column: 24, scope: !1793)
!1795 = !DILocation(line: 438, column: 28, scope: !1793)
!1796 = !DILocation(line: 438, column: 38, scope: !1793)
!1797 = !DILocation(line: 438, column: 48, scope: !1793)
!1798 = !DILocation(line: 438, column: 59, scope: !1793)
!1799 = !DILocation(line: 440, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !212, line: 440, column: 19)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !212, line: 440, column: 19)
!1802 = distinct !DILexicalBlock(scope: !1793, file: !212, line: 439, column: 17)
!1803 = !DILocation(line: 440, column: 19, scope: !1801)
!1804 = !DILocation(line: 441, column: 19, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !212, line: 441, column: 19)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !212, line: 441, column: 19)
!1807 = !DILocation(line: 441, column: 19, scope: !1806)
!1808 = !DILocation(line: 442, column: 17, scope: !1802)
!1809 = !DILocation(line: 449, column: 20, scope: !1673)
!1810 = !DILocation(line: 454, column: 11, scope: !1634)
!1811 = !DILocation(line: 457, column: 19, scope: !1670)
!1812 = !DILocation(line: 463, column: 19, scope: !1669)
!1813 = !DILocation(line: 463, column: 24, scope: !1669)
!1814 = !DILocation(line: 463, column: 28, scope: !1669)
!1815 = !DILocation(line: 463, column: 38, scope: !1669)
!1816 = !DILocation(line: 463, column: 47, scope: !1669)
!1817 = !DILocation(line: 463, column: 41, scope: !1669)
!1818 = !DILocation(line: 463, column: 52, scope: !1669)
!1819 = !DILocation(line: 462, column: 19, scope: !1670)
!1820 = !DILocation(line: 464, column: 25, scope: !1669)
!1821 = !DILocation(line: 464, column: 17, scope: !1669)
!1822 = !DILocation(line: 471, column: 25, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1669, file: !212, line: 465, column: 19)
!1824 = !DILocation(line: 475, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !212, line: 475, column: 21)
!1826 = distinct !DILexicalBlock(scope: !1823, file: !212, line: 475, column: 21)
!1827 = !DILocation(line: 475, column: 21, scope: !1826)
!1828 = !DILocation(line: 476, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !212, line: 476, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1823, file: !212, line: 476, column: 21)
!1831 = !DILocation(line: 476, column: 21, scope: !1830)
!1832 = !DILocation(line: 477, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !212, line: 477, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !212, line: 477, column: 21)
!1835 = !DILocation(line: 477, column: 21, scope: !1834)
!1836 = !DILocation(line: 478, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !212, line: 478, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1823, file: !212, line: 478, column: 21)
!1839 = !DILocation(line: 478, column: 21, scope: !1838)
!1840 = !DILocation(line: 479, column: 21, scope: !1823)
!1841 = !DILocation(line: 492, column: 31, scope: !1634)
!1842 = !DILocation(line: 493, column: 31, scope: !1634)
!1843 = !DILocation(line: 495, column: 31, scope: !1634)
!1844 = !DILocation(line: 496, column: 31, scope: !1634)
!1845 = !DILocation(line: 497, column: 31, scope: !1634)
!1846 = !DILocation(line: 500, column: 15, scope: !1634)
!1847 = !DILocation(line: 502, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !212, line: 501, column: 13)
!1849 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 500, column: 15)
!1850 = !DILocation(line: 509, column: 33, scope: !1745)
!1851 = !DILocation(line: 0, scope: !1634)
!1852 = !DILocation(line: 512, column: 9, scope: !1634)
!1853 = !DILocation(line: 514, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 513, column: 15)
!1855 = !DILocation(line: 517, column: 9, scope: !1634)
!1856 = !DILocation(line: 518, column: 15, scope: !1634)
!1857 = !DILocation(line: 526, column: 15, scope: !1634)
!1858 = !DILocation(line: 526, column: 40, scope: !1667)
!1859 = !DILocation(line: 526, column: 47, scope: !1667)
!1860 = !DILocation(line: 526, column: 18, scope: !1667)
!1861 = !DILocation(line: 530, column: 17, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1634, file: !212, line: 530, column: 15)
!1863 = !DILocation(line: 530, column: 15, scope: !1634)
!1864 = !DILocation(line: 535, column: 11, scope: !1634)
!1865 = !DILocation(line: 549, column: 15, scope: !1741)
!1866 = !DILocation(line: 556, column: 15, scope: !1634)
!1867 = !DILocation(line: 558, column: 19, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 557, column: 13)
!1869 = !DILocation(line: 561, column: 19, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1868, file: !212, line: 561, column: 19)
!1871 = !DILocation(line: 561, column: 35, scope: !1870)
!1872 = !DILocation(line: 561, column: 30, scope: !1870)
!1873 = !DILocation(line: 570, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !212, line: 570, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !212, line: 570, column: 15)
!1876 = !DILocation(line: 570, column: 15, scope: !1875)
!1877 = !DILocation(line: 571, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !212, line: 571, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !212, line: 571, column: 15)
!1880 = !DILocation(line: 571, column: 15, scope: !1879)
!1881 = !DILocation(line: 572, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !212, line: 572, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !212, line: 572, column: 15)
!1884 = !DILocation(line: 572, column: 15, scope: !1883)
!1885 = !DILocation(line: 574, column: 13, scope: !1868)
!1886 = !DILocation(line: 614, column: 17, scope: !1633)
!1887 = !DILocation(line: 0, scope: !1633)
!1888 = !DILocation(line: 617, column: 29, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1638, file: !212, line: 615, column: 15)
!1890 = !{!1891, !1891, i64 0}
!1891 = !{!"short", !1135, i64 0}
!1892 = !DILocation(line: 617, column: 27, scope: !1889)
!1893 = !DILocation(line: 618, column: 15, scope: !1889)
!1894 = !DILocation(line: 621, column: 17, scope: !1637)
!1895 = !DILocation(line: 621, column: 27, scope: !1637)
!1896 = !DILocalVariable(name: "__dest", arg: 1, scope: !1897, file: !1240, line: 59, type: !67)
!1897 = distinct !DISubprogram(name: "memset", scope: !1240, file: !1240, line: 59, type: !1898, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1900)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!67, !67, !18, !69}
!1900 = !{!1896, !1901, !1902}
!1901 = !DILocalVariable(name: "__ch", arg: 2, scope: !1897, file: !1240, line: 59, type: !18)
!1902 = !DILocalVariable(name: "__len", arg: 3, scope: !1897, file: !1240, line: 59, type: !69)
!1903 = !DILocation(line: 0, scope: !1897, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 622, column: 17, scope: !1637)
!1905 = !DILocation(line: 71, column: 10, scope: !1897, inlinedAt: !1904)
!1906 = !DILocation(line: 626, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1637, file: !212, line: 626, column: 21)
!1908 = !DILocation(line: 626, column: 21, scope: !1637)
!1909 = !DILocation(line: 627, column: 29, scope: !1907)
!1910 = !DILocation(line: 627, column: 19, scope: !1907)
!1911 = !DILocation(line: 629, column: 17, scope: !1637)
!1912 = !DILocation(line: 624, column: 19, scope: !1637)
!1913 = !DILocation(line: 625, column: 27, scope: !1637)
!1914 = !DILocation(line: 631, column: 21, scope: !1643)
!1915 = !DILocation(line: 632, column: 56, scope: !1643)
!1916 = !DILocation(line: 632, column: 50, scope: !1643)
!1917 = !DILocation(line: 633, column: 53, scope: !1643)
!1918 = !DILocation(line: 632, column: 36, scope: !1643)
!1919 = !DILocation(line: 634, column: 25, scope: !1643)
!1920 = !DILocation(line: 644, column: 38, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1650, file: !212, line: 642, column: 23)
!1922 = !DILocation(line: 644, column: 48, scope: !1921)
!1923 = !DILocation(line: 644, column: 25, scope: !1921)
!1924 = !DILocation(line: 644, column: 51, scope: !1921)
!1925 = !DILocation(line: 645, column: 28, scope: !1921)
!1926 = !DILocation(line: 644, column: 34, scope: !1921)
!1927 = distinct !{!1927, !1923, !1925}
!1928 = !DILocation(line: 658, column: 43, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !212, line: 658, column: 29)
!1930 = distinct !DILexicalBlock(scope: !1647, file: !212, line: 658, column: 29)
!1931 = !DILocation(line: 655, column: 29, scope: !1648)
!1932 = !DILocation(line: 0, scope: !1647)
!1933 = !DILocation(line: 659, column: 49, scope: !1929)
!1934 = !DILocation(line: 659, column: 39, scope: !1929)
!1935 = !DILocation(line: 659, column: 31, scope: !1929)
!1936 = !DILocation(line: 658, column: 53, scope: !1929)
!1937 = !DILocation(line: 658, column: 29, scope: !1930)
!1938 = distinct !{!1938, !1937, !1939}
!1939 = !DILocation(line: 667, column: 33, scope: !1930)
!1940 = !DILocation(line: 674, column: 19, scope: !1637)
!1941 = !DILocation(line: 670, column: 41, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1649, file: !212, line: 670, column: 29)
!1943 = !DILocation(line: 670, column: 31, scope: !1942)
!1944 = !DILocation(line: 670, column: 29, scope: !1649)
!1945 = !DILocation(line: 672, column: 27, scope: !1649)
!1946 = !DILocation(line: 675, column: 26, scope: !1637)
!1947 = !DILocation(line: 675, column: 24, scope: !1637)
!1948 = !DILocation(line: 674, column: 19, scope: !1643)
!1949 = distinct !{!1949, !1911, !1950}
!1950 = !DILocation(line: 675, column: 44, scope: !1637)
!1951 = !DILocation(line: 676, column: 15, scope: !1638)
!1952 = !DILocation(line: 0, scope: !1638)
!1953 = !DILocation(line: 678, column: 40, scope: !1633)
!1954 = !DILocation(line: 680, column: 19, scope: !1655)
!1955 = !DILocation(line: 680, column: 45, scope: !1655)
!1956 = !DILocation(line: 680, column: 23, scope: !1655)
!1957 = !DILocation(line: 684, column: 33, scope: !1654)
!1958 = !DILocation(line: 0, scope: !1654)
!1959 = !DILocation(line: 686, column: 17, scope: !1654)
!1960 = !DILocation(line: 405, column: 12, scope: !1625)
!1961 = !DILocation(line: 688, column: 43, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 688, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !212, line: 687, column: 19)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !212, line: 686, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1654, file: !212, line: 686, column: 17)
!1966 = !DILocation(line: 690, column: 25, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 690, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1962, file: !212, line: 689, column: 23)
!1969 = !DILocation(line: 690, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !212, line: 690, column: 25)
!1971 = !DILocation(line: 690, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !212, line: 690, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !212, line: 690, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !212, line: 690, column: 25)
!1975 = !DILocation(line: 690, column: 25, scope: !1973)
!1976 = !DILocation(line: 690, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !212, line: 690, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !212, line: 690, column: 25)
!1979 = !DILocation(line: 690, column: 25, scope: !1978)
!1980 = !DILocation(line: 690, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !212, line: 690, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1974, file: !212, line: 690, column: 25)
!1983 = !DILocation(line: 690, column: 25, scope: !1982)
!1984 = !DILocation(line: 690, column: 25, scope: !1974)
!1985 = !DILocation(line: 690, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !212, line: 690, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1967, file: !212, line: 690, column: 25)
!1988 = !DILocation(line: 690, column: 25, scope: !1987)
!1989 = !DILocation(line: 691, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !212, line: 691, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 691, column: 25)
!1992 = !DILocation(line: 691, column: 25, scope: !1991)
!1993 = !DILocation(line: 692, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !212, line: 692, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1968, file: !212, line: 692, column: 25)
!1996 = !DILocation(line: 692, column: 25, scope: !1995)
!1997 = !DILocation(line: 693, column: 38, scope: !1968)
!1998 = !DILocation(line: 693, column: 33, scope: !1968)
!1999 = !DILocation(line: 694, column: 23, scope: !1968)
!2000 = !DILocation(line: 695, column: 30, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1962, file: !212, line: 695, column: 30)
!2002 = !DILocation(line: 695, column: 30, scope: !1962)
!2003 = !DILocation(line: 697, column: 25, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !212, line: 697, column: 25)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !212, line: 697, column: 25)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !212, line: 696, column: 23)
!2007 = !DILocation(line: 697, column: 25, scope: !2005)
!2008 = !DILocation(line: 699, column: 23, scope: !2006)
!2009 = !DILocation(line: 700, column: 35, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 700, column: 25)
!2011 = !DILocation(line: 700, column: 30, scope: !2010)
!2012 = !DILocation(line: 700, column: 25, scope: !1963)
!2013 = !DILocation(line: 702, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !212, line: 702, column: 21)
!2015 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 702, column: 21)
!2016 = !DILocation(line: 702, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !212, line: 702, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !212, line: 702, column: 21)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !212, line: 702, column: 21)
!2020 = !DILocation(line: 702, column: 21, scope: !2018)
!2021 = !DILocation(line: 702, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !212, line: 702, column: 21)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !212, line: 702, column: 21)
!2024 = !DILocation(line: 702, column: 21, scope: !2023)
!2025 = !DILocation(line: 702, column: 21, scope: !2019)
!2026 = !DILocation(line: 0, scope: !1963)
!2027 = !DILocation(line: 703, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !212, line: 703, column: 21)
!2029 = distinct !DILexicalBlock(scope: !1963, file: !212, line: 703, column: 21)
!2030 = !DILocation(line: 703, column: 21, scope: !2029)
!2031 = !DILocation(line: 704, column: 25, scope: !1963)
!2032 = !DILocation(line: 686, column: 17, scope: !1964)
!2033 = distinct !{!2033, !2034, !2035}
!2034 = !DILocation(line: 686, column: 17, scope: !1965)
!2035 = !DILocation(line: 705, column: 19, scope: !1965)
!2036 = !DILocation(line: 416, column: 30, scope: !1734)
!2037 = !DILocation(line: 712, column: 34, scope: !1677)
!2038 = !DILocation(line: 715, column: 35, scope: !1677)
!2039 = !DILocation(line: 715, column: 17, scope: !1677)
!2040 = !DILocation(line: 715, column: 47, scope: !1677)
!2041 = !DILocation(line: 715, column: 65, scope: !1677)
!2042 = !DILocation(line: 716, column: 15, scope: !1677)
!2043 = !DILocation(line: 716, column: 11, scope: !1677)
!2044 = !DILocation(line: 712, column: 11, scope: !1625)
!2045 = !DILocation(line: 400, column: 10, scope: !1627)
!2046 = !DILocation(line: 719, column: 5, scope: !1625)
!2047 = !DILocation(line: 720, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 720, column: 7)
!2049 = !DILocation(line: 720, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2048, file: !212, line: 720, column: 7)
!2051 = !DILocation(line: 720, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !212, line: 720, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 720, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !212, line: 720, column: 7)
!2055 = !DILocation(line: 720, column: 7, scope: !2053)
!2056 = !DILocation(line: 720, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !212, line: 720, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 720, column: 7)
!2059 = !DILocation(line: 720, column: 7, scope: !2058)
!2060 = !DILocation(line: 720, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !212, line: 720, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !212, line: 720, column: 7)
!2063 = !DILocation(line: 720, column: 7, scope: !2062)
!2064 = !DILocation(line: 720, column: 7, scope: !2054)
!2065 = !DILocation(line: 720, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !212, line: 720, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2048, file: !212, line: 720, column: 7)
!2068 = !DILocation(line: 720, column: 7, scope: !2067)
!2069 = !DILocation(line: 722, column: 5, scope: !1625)
!2070 = !DILocation(line: 723, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !212, line: 723, column: 7)
!2072 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 723, column: 7)
!2073 = !DILocation(line: 424, column: 9, scope: !1625)
!2074 = !DILocation(line: 723, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !212, line: 723, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !212, line: 723, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2071, file: !212, line: 723, column: 7)
!2078 = !DILocation(line: 723, column: 7, scope: !2076)
!2079 = !DILocation(line: 723, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !212, line: 723, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !212, line: 723, column: 7)
!2082 = !DILocation(line: 723, column: 7, scope: !2081)
!2083 = !DILocation(line: 723, column: 7, scope: !2077)
!2084 = !DILocation(line: 724, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !212, line: 724, column: 7)
!2086 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 724, column: 7)
!2087 = !DILocation(line: 724, column: 7, scope: !2086)
!2088 = !DILocation(line: 726, column: 13, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1625, file: !212, line: 726, column: 11)
!2090 = !DILocation(line: 726, column: 11, scope: !1625)
!2091 = !DILocation(line: 728, column: 5, scope: !1626)
!2092 = !DILocation(line: 400, column: 75, scope: !1626)
!2093 = !DILocation(line: 400, column: 3, scope: !1626)
!2094 = distinct !{!2094, !1752, !2095}
!2095 = !DILocation(line: 728, column: 5, scope: !1627)
!2096 = !DILocation(line: 730, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 730, column: 7)
!2098 = !DILocation(line: 730, column: 16, scope: !2097)
!2099 = !DILocation(line: 738, column: 51, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 738, column: 7)
!2101 = !DILocation(line: 739, column: 10, scope: !2100)
!2102 = !DILocation(line: 741, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !212, line: 741, column: 11)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !212, line: 740, column: 5)
!2105 = !DILocation(line: 741, column: 11, scope: !2104)
!2106 = !DILocation(line: 742, column: 16, scope: !2103)
!2107 = !DILocation(line: 742, column: 9, scope: !2103)
!2108 = !DILocation(line: 746, column: 18, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2103, file: !212, line: 746, column: 16)
!2110 = !DILocation(line: 746, column: 32, scope: !2109)
!2111 = !DILocation(line: 746, column: 29, scope: !2109)
!2112 = !DILocation(line: 755, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 755, column: 7)
!2114 = !DILocation(line: 755, column: 20, scope: !2113)
!2115 = !DILocation(line: 756, column: 12, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !212, line: 756, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !212, line: 756, column: 5)
!2118 = !DILocation(line: 756, column: 5, scope: !2117)
!2119 = !DILocation(line: 757, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !212, line: 757, column: 7)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !212, line: 757, column: 7)
!2122 = !DILocation(line: 757, column: 7, scope: !2121)
!2123 = !DILocation(line: 756, column: 39, scope: !2116)
!2124 = distinct !{!2124, !2118, !2125}
!2125 = !DILocation(line: 757, column: 7, scope: !2117)
!2126 = !DILocation(line: 759, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 759, column: 7)
!2128 = !DILocation(line: 759, column: 7, scope: !1598)
!2129 = !DILocation(line: 760, column: 5, scope: !2127)
!2130 = !DILocation(line: 760, column: 17, scope: !2127)
!2131 = !DILocation(line: 763, column: 2, scope: !1598)
!2132 = !DILocation(line: 766, column: 51, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1598, file: !212, line: 766, column: 7)
!2134 = !DILocation(line: 766, column: 21, scope: !2133)
!2135 = !DILocation(line: 770, column: 42, scope: !1598)
!2136 = !DILocation(line: 768, column: 10, scope: !1598)
!2137 = !DILocation(line: 768, column: 3, scope: !1598)
!2138 = !DILocation(line: 772, column: 1, scope: !1598)
!2139 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2140, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!6, !6, !214}
!2142 = !{!2143, !2144, !2145, !2146}
!2143 = !DILocalVariable(name: "msgid", arg: 1, scope: !2139, file: !212, line: 207, type: !6)
!2144 = !DILocalVariable(name: "s", arg: 2, scope: !2139, file: !212, line: 207, type: !214)
!2145 = !DILocalVariable(name: "translation", scope: !2139, file: !212, line: 209, type: !6)
!2146 = !DILocalVariable(name: "locale_code", scope: !2139, file: !212, line: 210, type: !6)
!2147 = !DILocation(line: 0, scope: !2139)
!2148 = !DILocation(line: 209, column: 29, scope: !2139)
!2149 = !DILocation(line: 212, column: 19, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2139, file: !212, line: 212, column: 7)
!2151 = !DILocation(line: 212, column: 7, scope: !2139)
!2152 = !DILocation(line: 233, column: 17, scope: !2139)
!2153 = !DILocalVariable(name: "s1", arg: 1, scope: !2154, file: !2155, line: 160, type: !6)
!2154 = distinct !DISubprogram(name: "strcaseeq0", scope: !2155, file: !2155, line: 160, type: !2156, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2158)
!2155 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2158 = !{!2153, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2159 = !DILocalVariable(name: "s2", arg: 2, scope: !2154, file: !2155, line: 160, type: !6)
!2160 = !DILocalVariable(name: "s20", arg: 3, scope: !2154, file: !2155, line: 160, type: !8)
!2161 = !DILocalVariable(name: "s21", arg: 4, scope: !2154, file: !2155, line: 160, type: !8)
!2162 = !DILocalVariable(name: "s22", arg: 5, scope: !2154, file: !2155, line: 160, type: !8)
!2163 = !DILocalVariable(name: "s23", arg: 6, scope: !2154, file: !2155, line: 160, type: !8)
!2164 = !DILocalVariable(name: "s24", arg: 7, scope: !2154, file: !2155, line: 160, type: !8)
!2165 = !DILocalVariable(name: "s25", arg: 8, scope: !2154, file: !2155, line: 160, type: !8)
!2166 = !DILocalVariable(name: "s26", arg: 9, scope: !2154, file: !2155, line: 160, type: !8)
!2167 = !DILocalVariable(name: "s27", arg: 10, scope: !2154, file: !2155, line: 160, type: !8)
!2168 = !DILocalVariable(name: "s28", arg: 11, scope: !2154, file: !2155, line: 160, type: !8)
!2169 = !DILocation(line: 0, scope: !2154, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 234, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2139, file: !212, line: 234, column: 7)
!2172 = !DILocation(line: 162, column: 7, scope: !2173, inlinedAt: !2170)
!2173 = distinct !DILexicalBlock(scope: !2154, file: !2155, line: 162, column: 7)
!2174 = !DILocalVariable(name: "s1", arg: 1, scope: !2175, file: !2155, line: 146, type: !6)
!2175 = distinct !DISubprogram(name: "strcaseeq1", scope: !2155, file: !2155, line: 146, type: !2176, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2178 = !{!2174, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2179 = !DILocalVariable(name: "s2", arg: 2, scope: !2175, file: !2155, line: 146, type: !6)
!2180 = !DILocalVariable(name: "s21", arg: 3, scope: !2175, file: !2155, line: 146, type: !8)
!2181 = !DILocalVariable(name: "s22", arg: 4, scope: !2175, file: !2155, line: 146, type: !8)
!2182 = !DILocalVariable(name: "s23", arg: 5, scope: !2175, file: !2155, line: 146, type: !8)
!2183 = !DILocalVariable(name: "s24", arg: 6, scope: !2175, file: !2155, line: 146, type: !8)
!2184 = !DILocalVariable(name: "s25", arg: 7, scope: !2175, file: !2155, line: 146, type: !8)
!2185 = !DILocalVariable(name: "s26", arg: 8, scope: !2175, file: !2155, line: 146, type: !8)
!2186 = !DILocalVariable(name: "s27", arg: 9, scope: !2175, file: !2155, line: 146, type: !8)
!2187 = !DILocalVariable(name: "s28", arg: 10, scope: !2175, file: !2155, line: 146, type: !8)
!2188 = !DILocation(line: 0, scope: !2175, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 167, column: 16, scope: !2190, inlinedAt: !2170)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !2155, line: 164, column: 11)
!2191 = distinct !DILexicalBlock(scope: !2173, file: !2155, line: 163, column: 5)
!2192 = !DILocation(line: 148, column: 7, scope: !2193, inlinedAt: !2189)
!2193 = distinct !DILexicalBlock(scope: !2175, file: !2155, line: 148, column: 7)
!2194 = !DILocalVariable(name: "s1", arg: 1, scope: !2195, file: !2155, line: 132, type: !6)
!2195 = distinct !DISubprogram(name: "strcaseeq2", scope: !2155, file: !2155, line: 132, type: !2196, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2198 = !{!2194, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2199 = !DILocalVariable(name: "s2", arg: 2, scope: !2195, file: !2155, line: 132, type: !6)
!2200 = !DILocalVariable(name: "s22", arg: 3, scope: !2195, file: !2155, line: 132, type: !8)
!2201 = !DILocalVariable(name: "s23", arg: 4, scope: !2195, file: !2155, line: 132, type: !8)
!2202 = !DILocalVariable(name: "s24", arg: 5, scope: !2195, file: !2155, line: 132, type: !8)
!2203 = !DILocalVariable(name: "s25", arg: 6, scope: !2195, file: !2155, line: 132, type: !8)
!2204 = !DILocalVariable(name: "s26", arg: 7, scope: !2195, file: !2155, line: 132, type: !8)
!2205 = !DILocalVariable(name: "s27", arg: 8, scope: !2195, file: !2155, line: 132, type: !8)
!2206 = !DILocalVariable(name: "s28", arg: 9, scope: !2195, file: !2155, line: 132, type: !8)
!2207 = !DILocation(line: 0, scope: !2195, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 153, column: 16, scope: !2209, inlinedAt: !2189)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !2155, line: 150, column: 11)
!2210 = distinct !DILexicalBlock(scope: !2193, file: !2155, line: 149, column: 5)
!2211 = !DILocation(line: 134, column: 7, scope: !2212, inlinedAt: !2208)
!2212 = distinct !DILexicalBlock(scope: !2195, file: !2155, line: 134, column: 7)
!2213 = !DILocalVariable(name: "s1", arg: 1, scope: !2214, file: !2155, line: 118, type: !6)
!2214 = distinct !DISubprogram(name: "strcaseeq3", scope: !2155, file: !2155, line: 118, type: !2215, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2217 = !{!2213, !2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2218 = !DILocalVariable(name: "s2", arg: 2, scope: !2214, file: !2155, line: 118, type: !6)
!2219 = !DILocalVariable(name: "s23", arg: 3, scope: !2214, file: !2155, line: 118, type: !8)
!2220 = !DILocalVariable(name: "s24", arg: 4, scope: !2214, file: !2155, line: 118, type: !8)
!2221 = !DILocalVariable(name: "s25", arg: 5, scope: !2214, file: !2155, line: 118, type: !8)
!2222 = !DILocalVariable(name: "s26", arg: 6, scope: !2214, file: !2155, line: 118, type: !8)
!2223 = !DILocalVariable(name: "s27", arg: 7, scope: !2214, file: !2155, line: 118, type: !8)
!2224 = !DILocalVariable(name: "s28", arg: 8, scope: !2214, file: !2155, line: 118, type: !8)
!2225 = !DILocation(line: 0, scope: !2214, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 139, column: 16, scope: !2227, inlinedAt: !2208)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !2155, line: 136, column: 11)
!2228 = distinct !DILexicalBlock(scope: !2212, file: !2155, line: 135, column: 5)
!2229 = !DILocation(line: 120, column: 7, scope: !2230, inlinedAt: !2226)
!2230 = distinct !DILexicalBlock(scope: !2214, file: !2155, line: 120, column: 7)
!2231 = !DILocation(line: 120, column: 7, scope: !2214, inlinedAt: !2226)
!2232 = !DILocalVariable(name: "s1", arg: 1, scope: !2233, file: !2155, line: 104, type: !6)
!2233 = distinct !DISubprogram(name: "strcaseeq4", scope: !2155, file: !2155, line: 104, type: !2234, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2236 = !{!2232, !2237, !2238, !2239, !2240, !2241, !2242}
!2237 = !DILocalVariable(name: "s2", arg: 2, scope: !2233, file: !2155, line: 104, type: !6)
!2238 = !DILocalVariable(name: "s24", arg: 3, scope: !2233, file: !2155, line: 104, type: !8)
!2239 = !DILocalVariable(name: "s25", arg: 4, scope: !2233, file: !2155, line: 104, type: !8)
!2240 = !DILocalVariable(name: "s26", arg: 5, scope: !2233, file: !2155, line: 104, type: !8)
!2241 = !DILocalVariable(name: "s27", arg: 6, scope: !2233, file: !2155, line: 104, type: !8)
!2242 = !DILocalVariable(name: "s28", arg: 7, scope: !2233, file: !2155, line: 104, type: !8)
!2243 = !DILocation(line: 0, scope: !2233, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 125, column: 16, scope: !2245, inlinedAt: !2226)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !2155, line: 122, column: 11)
!2246 = distinct !DILexicalBlock(scope: !2230, file: !2155, line: 121, column: 5)
!2247 = !DILocation(line: 106, column: 7, scope: !2248, inlinedAt: !2244)
!2248 = distinct !DILexicalBlock(scope: !2233, file: !2155, line: 106, column: 7)
!2249 = !DILocation(line: 106, column: 7, scope: !2233, inlinedAt: !2244)
!2250 = !DILocalVariable(name: "s1", arg: 1, scope: !2251, file: !2155, line: 90, type: !6)
!2251 = distinct !DISubprogram(name: "strcaseeq5", scope: !2155, file: !2155, line: 90, type: !2252, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!18, !6, !6, !8, !8, !8, !8}
!2254 = !{!2250, !2255, !2256, !2257, !2258, !2259}
!2255 = !DILocalVariable(name: "s2", arg: 2, scope: !2251, file: !2155, line: 90, type: !6)
!2256 = !DILocalVariable(name: "s25", arg: 3, scope: !2251, file: !2155, line: 90, type: !8)
!2257 = !DILocalVariable(name: "s26", arg: 4, scope: !2251, file: !2155, line: 90, type: !8)
!2258 = !DILocalVariable(name: "s27", arg: 5, scope: !2251, file: !2155, line: 90, type: !8)
!2259 = !DILocalVariable(name: "s28", arg: 6, scope: !2251, file: !2155, line: 90, type: !8)
!2260 = !DILocation(line: 0, scope: !2251, inlinedAt: !2261)
!2261 = distinct !DILocation(line: 111, column: 16, scope: !2262, inlinedAt: !2244)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !2155, line: 108, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2248, file: !2155, line: 107, column: 5)
!2264 = !DILocation(line: 92, column: 7, scope: !2265, inlinedAt: !2261)
!2265 = distinct !DILexicalBlock(scope: !2251, file: !2155, line: 92, column: 7)
!2266 = !DILocation(line: 92, column: 7, scope: !2251, inlinedAt: !2261)
!2267 = !DILocation(line: 235, column: 12, scope: !2171)
!2268 = !DILocation(line: 235, column: 21, scope: !2171)
!2269 = !DILocation(line: 235, column: 5, scope: !2171)
!2270 = !DILocation(line: 0, scope: !2175, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 167, column: 16, scope: !2190, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 236, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2139, file: !212, line: 236, column: 7)
!2274 = !DILocation(line: 148, column: 7, scope: !2193, inlinedAt: !2271)
!2275 = !DILocation(line: 0, scope: !2195, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 153, column: 16, scope: !2209, inlinedAt: !2271)
!2277 = !DILocation(line: 134, column: 7, scope: !2212, inlinedAt: !2276)
!2278 = !DILocation(line: 134, column: 7, scope: !2195, inlinedAt: !2276)
!2279 = !DILocation(line: 0, scope: !2214, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 139, column: 16, scope: !2227, inlinedAt: !2276)
!2281 = !DILocation(line: 120, column: 7, scope: !2230, inlinedAt: !2280)
!2282 = !DILocation(line: 120, column: 7, scope: !2214, inlinedAt: !2280)
!2283 = !DILocation(line: 0, scope: !2233, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 125, column: 16, scope: !2245, inlinedAt: !2280)
!2285 = !DILocation(line: 106, column: 7, scope: !2248, inlinedAt: !2284)
!2286 = !DILocation(line: 106, column: 7, scope: !2233, inlinedAt: !2284)
!2287 = !DILocation(line: 0, scope: !2251, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 111, column: 16, scope: !2262, inlinedAt: !2284)
!2289 = !DILocation(line: 92, column: 7, scope: !2265, inlinedAt: !2288)
!2290 = !DILocation(line: 92, column: 7, scope: !2251, inlinedAt: !2288)
!2291 = !DILocalVariable(name: "s1", arg: 1, scope: !2292, file: !2155, line: 76, type: !6)
!2292 = distinct !DISubprogram(name: "strcaseeq6", scope: !2155, file: !2155, line: 76, type: !2293, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!18, !6, !6, !8, !8, !8}
!2295 = !{!2291, !2296, !2297, !2298, !2299}
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2292, file: !2155, line: 76, type: !6)
!2297 = !DILocalVariable(name: "s26", arg: 3, scope: !2292, file: !2155, line: 76, type: !8)
!2298 = !DILocalVariable(name: "s27", arg: 4, scope: !2292, file: !2155, line: 76, type: !8)
!2299 = !DILocalVariable(name: "s28", arg: 5, scope: !2292, file: !2155, line: 76, type: !8)
!2300 = !DILocation(line: 0, scope: !2292, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 97, column: 16, scope: !2302, inlinedAt: !2288)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !2155, line: 94, column: 11)
!2303 = distinct !DILexicalBlock(scope: !2265, file: !2155, line: 93, column: 5)
!2304 = !DILocation(line: 78, column: 7, scope: !2305, inlinedAt: !2301)
!2305 = distinct !DILexicalBlock(scope: !2292, file: !2155, line: 78, column: 7)
!2306 = !DILocation(line: 78, column: 7, scope: !2292, inlinedAt: !2301)
!2307 = !DILocalVariable(name: "s1", arg: 1, scope: !2308, file: !2155, line: 62, type: !6)
!2308 = distinct !DISubprogram(name: "strcaseeq7", scope: !2155, file: !2155, line: 62, type: !2309, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2311)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!18, !6, !6, !8, !8}
!2311 = !{!2307, !2312, !2313, !2314}
!2312 = !DILocalVariable(name: "s2", arg: 2, scope: !2308, file: !2155, line: 62, type: !6)
!2313 = !DILocalVariable(name: "s27", arg: 3, scope: !2308, file: !2155, line: 62, type: !8)
!2314 = !DILocalVariable(name: "s28", arg: 4, scope: !2308, file: !2155, line: 62, type: !8)
!2315 = !DILocation(line: 0, scope: !2308, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 83, column: 16, scope: !2317, inlinedAt: !2301)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2155, line: 80, column: 11)
!2318 = distinct !DILexicalBlock(scope: !2305, file: !2155, line: 79, column: 5)
!2319 = !DILocation(line: 64, column: 7, scope: !2320, inlinedAt: !2316)
!2320 = distinct !DILexicalBlock(scope: !2308, file: !2155, line: 64, column: 7)
!2321 = !DILocation(line: 236, column: 7, scope: !2139)
!2322 = !DILocation(line: 237, column: 12, scope: !2273)
!2323 = !DILocation(line: 237, column: 21, scope: !2273)
!2324 = !DILocation(line: 237, column: 5, scope: !2273)
!2325 = !DILocation(line: 239, column: 13, scope: !2139)
!2326 = !DILocation(line: 239, column: 11, scope: !2139)
!2327 = !DILocation(line: 239, column: 3, scope: !2139)
!2328 = !DILocation(line: 240, column: 1, scope: !2139)
!2329 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2330, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!25, !6, !69, !258}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "arg", arg: 1, scope: !2329, file: !212, line: 799, type: !6)
!2334 = !DILocalVariable(name: "argsize", arg: 2, scope: !2329, file: !212, line: 799, type: !69)
!2335 = !DILocalVariable(name: "o", arg: 3, scope: !2329, file: !212, line: 800, type: !258)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocalVariable(name: "arg", arg: 1, scope: !2338, file: !212, line: 812, type: !6)
!2338 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2339, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!25, !6, !69, !492, !258}
!2341 = !{!2337, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2342 = !DILocalVariable(name: "argsize", arg: 2, scope: !2338, file: !212, line: 812, type: !69)
!2343 = !DILocalVariable(name: "size", arg: 3, scope: !2338, file: !212, line: 812, type: !492)
!2344 = !DILocalVariable(name: "o", arg: 4, scope: !2338, file: !212, line: 813, type: !258)
!2345 = !DILocalVariable(name: "p", scope: !2338, file: !212, line: 815, type: !258)
!2346 = !DILocalVariable(name: "e", scope: !2338, file: !212, line: 816, type: !18)
!2347 = !DILocalVariable(name: "flags", scope: !2338, file: !212, line: 818, type: !18)
!2348 = !DILocalVariable(name: "bufsize", scope: !2338, file: !212, line: 819, type: !69)
!2349 = !DILocalVariable(name: "buf", scope: !2338, file: !212, line: 823, type: !25)
!2350 = !DILocation(line: 0, scope: !2338, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 802, column: 10, scope: !2329)
!2352 = !DILocation(line: 815, column: 37, scope: !2338, inlinedAt: !2351)
!2353 = !DILocation(line: 816, column: 11, scope: !2338, inlinedAt: !2351)
!2354 = !DILocation(line: 818, column: 18, scope: !2338, inlinedAt: !2351)
!2355 = !DILocation(line: 818, column: 24, scope: !2338, inlinedAt: !2351)
!2356 = !DILocation(line: 819, column: 69, scope: !2338, inlinedAt: !2351)
!2357 = !DILocation(line: 820, column: 53, scope: !2338, inlinedAt: !2351)
!2358 = !DILocation(line: 821, column: 49, scope: !2338, inlinedAt: !2351)
!2359 = !DILocation(line: 822, column: 49, scope: !2338, inlinedAt: !2351)
!2360 = !DILocation(line: 819, column: 20, scope: !2338, inlinedAt: !2351)
!2361 = !DILocation(line: 822, column: 62, scope: !2338, inlinedAt: !2351)
!2362 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !249, line: 216, type: !69)
!2363 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2364, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!25, !69}
!2366 = !{!2362}
!2367 = !DILocation(line: 0, scope: !2363, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 823, column: 15, scope: !2338, inlinedAt: !2351)
!2369 = !DILocation(line: 218, column: 10, scope: !2363, inlinedAt: !2368)
!2370 = !DILocation(line: 824, column: 60, scope: !2338, inlinedAt: !2351)
!2371 = !DILocation(line: 826, column: 32, scope: !2338, inlinedAt: !2351)
!2372 = !DILocation(line: 826, column: 47, scope: !2338, inlinedAt: !2351)
!2373 = !DILocation(line: 824, column: 3, scope: !2338, inlinedAt: !2351)
!2374 = !DILocation(line: 827, column: 9, scope: !2338, inlinedAt: !2351)
!2375 = !DILocation(line: 802, column: 3, scope: !2329)
!2376 = !DILocation(line: 0, scope: !2338)
!2377 = !DILocation(line: 815, column: 37, scope: !2338)
!2378 = !DILocation(line: 816, column: 11, scope: !2338)
!2379 = !DILocation(line: 818, column: 18, scope: !2338)
!2380 = !DILocation(line: 818, column: 27, scope: !2338)
!2381 = !DILocation(line: 818, column: 24, scope: !2338)
!2382 = !DILocation(line: 819, column: 69, scope: !2338)
!2383 = !DILocation(line: 820, column: 53, scope: !2338)
!2384 = !DILocation(line: 821, column: 49, scope: !2338)
!2385 = !DILocation(line: 822, column: 49, scope: !2338)
!2386 = !DILocation(line: 819, column: 20, scope: !2338)
!2387 = !DILocation(line: 822, column: 62, scope: !2338)
!2388 = !DILocation(line: 0, scope: !2363, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 823, column: 15, scope: !2338)
!2390 = !DILocation(line: 218, column: 10, scope: !2363, inlinedAt: !2389)
!2391 = !DILocation(line: 824, column: 60, scope: !2338)
!2392 = !DILocation(line: 826, column: 32, scope: !2338)
!2393 = !DILocation(line: 826, column: 47, scope: !2338)
!2394 = !DILocation(line: 824, column: 3, scope: !2338)
!2395 = !DILocation(line: 827, column: 9, scope: !2338)
!2396 = !DILocation(line: 828, column: 7, scope: !2338)
!2397 = !DILocation(line: 829, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2338, file: !212, line: 828, column: 7)
!2399 = !{!2400, !2400, i64 0}
!2400 = !{!"long", !1135, i64 0}
!2401 = !DILocation(line: 829, column: 5, scope: !2398)
!2402 = !DILocation(line: 830, column: 3, scope: !2338)
!2403 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2404)
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "sv", scope: !2403, file: !212, line: 850, type: !339)
!2406 = !DILocalVariable(name: "i", scope: !2403, file: !212, line: 851, type: !18)
!2407 = !DILocation(line: 850, column: 24, scope: !2403)
!2408 = !DILocation(line: 0, scope: !2403)
!2409 = !DILocation(line: 852, column: 19, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !212, line: 852, column: 3)
!2411 = distinct !DILexicalBlock(scope: !2403, file: !212, line: 852, column: 3)
!2412 = !DILocation(line: 852, column: 17, scope: !2410)
!2413 = !DILocation(line: 852, column: 3, scope: !2411)
!2414 = !DILocation(line: 853, column: 17, scope: !2410)
!2415 = !{!2416, !1134, i64 8}
!2416 = !{!"slotvec", !2400, i64 0, !1134, i64 8}
!2417 = !DILocation(line: 853, column: 5, scope: !2410)
!2418 = !DILocation(line: 852, column: 28, scope: !2410)
!2419 = distinct !{!2419, !2413, !2420}
!2420 = !DILocation(line: 853, column: 20, scope: !2411)
!2421 = !DILocation(line: 854, column: 13, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2403, file: !212, line: 854, column: 7)
!2423 = !DILocation(line: 854, column: 17, scope: !2422)
!2424 = !DILocation(line: 854, column: 7, scope: !2403)
!2425 = !DILocation(line: 856, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !212, line: 855, column: 5)
!2427 = !DILocation(line: 857, column: 21, scope: !2426)
!2428 = !{!2416, !2400, i64 0}
!2429 = !DILocation(line: 858, column: 20, scope: !2426)
!2430 = !DILocation(line: 859, column: 5, scope: !2426)
!2431 = !DILocation(line: 860, column: 10, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2403, file: !212, line: 860, column: 7)
!2433 = !DILocation(line: 860, column: 7, scope: !2403)
!2434 = !DILocation(line: 862, column: 13, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2432, file: !212, line: 861, column: 5)
!2436 = !DILocation(line: 862, column: 7, scope: !2435)
!2437 = !DILocation(line: 863, column: 15, scope: !2435)
!2438 = !DILocation(line: 864, column: 5, scope: !2435)
!2439 = !DILocation(line: 865, column: 10, scope: !2403)
!2440 = !DILocation(line: 866, column: 1, scope: !2403)
!2441 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !404, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2442)
!2442 = !{!2443, !2444}
!2443 = !DILocalVariable(name: "n", arg: 1, scope: !2441, file: !212, line: 931, type: !18)
!2444 = !DILocalVariable(name: "arg", arg: 2, scope: !2441, file: !212, line: 931, type: !6)
!2445 = !DILocation(line: 0, scope: !2441)
!2446 = !DILocation(line: 933, column: 10, scope: !2441)
!2447 = !DILocation(line: 933, column: 3, scope: !2441)
!2448 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2449, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!25, !18, !6, !69, !258}
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457, !2458, !2461, !2462, !2464, !2465, !2466}
!2452 = !DILocalVariable(name: "n", arg: 1, scope: !2448, file: !212, line: 877, type: !18)
!2453 = !DILocalVariable(name: "arg", arg: 2, scope: !2448, file: !212, line: 877, type: !6)
!2454 = !DILocalVariable(name: "argsize", arg: 3, scope: !2448, file: !212, line: 877, type: !69)
!2455 = !DILocalVariable(name: "options", arg: 4, scope: !2448, file: !212, line: 878, type: !258)
!2456 = !DILocalVariable(name: "e", scope: !2448, file: !212, line: 880, type: !18)
!2457 = !DILocalVariable(name: "sv", scope: !2448, file: !212, line: 882, type: !339)
!2458 = !DILocalVariable(name: "preallocated", scope: !2459, file: !212, line: 889, type: !92)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !212, line: 888, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2448, file: !212, line: 887, column: 7)
!2461 = !DILocalVariable(name: "nmax", scope: !2459, file: !212, line: 890, type: !18)
!2462 = !DILocalVariable(name: "size", scope: !2463, file: !212, line: 903, type: !69)
!2463 = distinct !DILexicalBlock(scope: !2448, file: !212, line: 902, column: 3)
!2464 = !DILocalVariable(name: "val", scope: !2463, file: !212, line: 904, type: !25)
!2465 = !DILocalVariable(name: "flags", scope: !2463, file: !212, line: 906, type: !18)
!2466 = !DILocalVariable(name: "qsize", scope: !2463, file: !212, line: 907, type: !69)
!2467 = !DILocation(line: 0, scope: !2448)
!2468 = !DILocation(line: 880, column: 11, scope: !2448)
!2469 = !DILocation(line: 882, column: 24, scope: !2448)
!2470 = !DILocation(line: 884, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2448, file: !212, line: 884, column: 7)
!2472 = !DILocation(line: 884, column: 7, scope: !2448)
!2473 = !DILocation(line: 885, column: 5, scope: !2471)
!2474 = !DILocation(line: 887, column: 7, scope: !2460)
!2475 = !DILocation(line: 887, column: 14, scope: !2460)
!2476 = !DILocation(line: 887, column: 7, scope: !2448)
!2477 = !DILocation(line: 889, column: 31, scope: !2459)
!2478 = !DILocation(line: 0, scope: !2459)
!2479 = !DILocation(line: 892, column: 16, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2459, file: !212, line: 892, column: 11)
!2481 = !DILocation(line: 892, column: 11, scope: !2459)
!2482 = !DILocation(line: 893, column: 9, scope: !2480)
!2483 = !DILocation(line: 895, column: 32, scope: !2459)
!2484 = !DILocation(line: 895, column: 61, scope: !2459)
!2485 = !DILocation(line: 895, column: 58, scope: !2459)
!2486 = !DILocation(line: 895, column: 66, scope: !2459)
!2487 = !DILocation(line: 895, column: 22, scope: !2459)
!2488 = !DILocation(line: 895, column: 15, scope: !2459)
!2489 = !DILocation(line: 896, column: 11, scope: !2459)
!2490 = !DILocation(line: 897, column: 15, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2459, file: !212, line: 896, column: 11)
!2492 = !{i64 0, i64 8, !2399, i64 8, i64 8, !1133}
!2493 = !DILocation(line: 897, column: 9, scope: !2491)
!2494 = !DILocation(line: 898, column: 20, scope: !2459)
!2495 = !DILocation(line: 898, column: 18, scope: !2459)
!2496 = !DILocation(line: 898, column: 15, scope: !2459)
!2497 = !DILocation(line: 898, column: 38, scope: !2459)
!2498 = !DILocation(line: 898, column: 31, scope: !2459)
!2499 = !DILocation(line: 898, column: 48, scope: !2459)
!2500 = !DILocation(line: 0, scope: !1897, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 898, column: 7, scope: !2459)
!2502 = !DILocation(line: 71, column: 10, scope: !1897, inlinedAt: !2501)
!2503 = !DILocation(line: 899, column: 14, scope: !2459)
!2504 = !DILocation(line: 900, column: 5, scope: !2459)
!2505 = !DILocation(line: 903, column: 19, scope: !2463)
!2506 = !DILocation(line: 903, column: 25, scope: !2463)
!2507 = !DILocation(line: 0, scope: !2463)
!2508 = !DILocation(line: 904, column: 23, scope: !2463)
!2509 = !DILocation(line: 906, column: 26, scope: !2463)
!2510 = !DILocation(line: 906, column: 32, scope: !2463)
!2511 = !DILocation(line: 908, column: 55, scope: !2463)
!2512 = !DILocation(line: 909, column: 46, scope: !2463)
!2513 = !DILocation(line: 910, column: 55, scope: !2463)
!2514 = !DILocation(line: 911, column: 55, scope: !2463)
!2515 = !DILocation(line: 907, column: 20, scope: !2463)
!2516 = !DILocation(line: 913, column: 14, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2463, file: !212, line: 913, column: 9)
!2518 = !DILocation(line: 913, column: 9, scope: !2463)
!2519 = !DILocation(line: 915, column: 35, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !212, line: 914, column: 7)
!2521 = !DILocation(line: 915, column: 20, scope: !2520)
!2522 = !DILocation(line: 916, column: 17, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !212, line: 916, column: 13)
!2524 = !DILocation(line: 916, column: 13, scope: !2520)
!2525 = !DILocation(line: 917, column: 11, scope: !2523)
!2526 = !DILocation(line: 0, scope: !2363, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 918, column: 27, scope: !2520)
!2528 = !DILocation(line: 218, column: 10, scope: !2363, inlinedAt: !2527)
!2529 = !DILocation(line: 918, column: 19, scope: !2520)
!2530 = !DILocation(line: 919, column: 69, scope: !2520)
!2531 = !DILocation(line: 921, column: 44, scope: !2520)
!2532 = !DILocation(line: 922, column: 44, scope: !2520)
!2533 = !DILocation(line: 919, column: 9, scope: !2520)
!2534 = !DILocation(line: 923, column: 7, scope: !2520)
!2535 = !DILocation(line: 925, column: 11, scope: !2463)
!2536 = !DILocation(line: 926, column: 5, scope: !2463)
!2537 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2538, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!25, !18, !6, !69}
!2540 = !{!2541, !2542, !2543}
!2541 = !DILocalVariable(name: "n", arg: 1, scope: !2537, file: !212, line: 937, type: !18)
!2542 = !DILocalVariable(name: "arg", arg: 2, scope: !2537, file: !212, line: 937, type: !6)
!2543 = !DILocalVariable(name: "argsize", arg: 3, scope: !2537, file: !212, line: 937, type: !69)
!2544 = !DILocation(line: 0, scope: !2537)
!2545 = !DILocation(line: 939, column: 10, scope: !2537)
!2546 = !DILocation(line: 939, column: 3, scope: !2537)
!2547 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2548)
!2548 = !{!2549}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !212, line: 943, type: !6)
!2550 = !DILocation(line: 0, scope: !2547)
!2551 = !DILocation(line: 0, scope: !2441, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 945, column: 10, scope: !2547)
!2553 = !DILocation(line: 933, column: 10, scope: !2441, inlinedAt: !2552)
!2554 = !DILocation(line: 945, column: 3, scope: !2547)
!2555 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2556, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!25, !6, !69}
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2555, file: !212, line: 949, type: !6)
!2560 = !DILocalVariable(name: "argsize", arg: 2, scope: !2555, file: !212, line: 949, type: !69)
!2561 = !DILocation(line: 0, scope: !2555)
!2562 = !DILocation(line: 0, scope: !2537, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 951, column: 10, scope: !2555)
!2564 = !DILocation(line: 939, column: 10, scope: !2537, inlinedAt: !2563)
!2565 = !DILocation(line: 951, column: 3, scope: !2555)
!2566 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2567, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!25, !18, !214, !6}
!2569 = !{!2570, !2571, !2572, !2573}
!2570 = !DILocalVariable(name: "n", arg: 1, scope: !2566, file: !212, line: 955, type: !18)
!2571 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !212, line: 955, type: !214)
!2572 = !DILocalVariable(name: "arg", arg: 3, scope: !2566, file: !212, line: 955, type: !6)
!2573 = !DILocalVariable(name: "o", scope: !2566, file: !212, line: 957, type: !259)
!2574 = !DILocation(line: 0, scope: !2566)
!2575 = !DILocation(line: 957, column: 3, scope: !2566)
!2576 = !DILocation(line: 957, column: 32, scope: !2566)
!2577 = !DILocalVariable(name: "style", arg: 1, scope: !2578, file: !212, line: 193, type: !214)
!2578 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2579, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!260, !214}
!2581 = !{!2577, !2582}
!2582 = !DILocalVariable(name: "o", scope: !2578, file: !212, line: 195, type: !260)
!2583 = !DILocation(line: 0, scope: !2578, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 957, column: 36, scope: !2566)
!2585 = !DILocation(line: 195, column: 26, scope: !2578, inlinedAt: !2584)
!2586 = !{!2587}
!2587 = distinct !{!2587, !2588, !"quoting_options_from_style: argument 0"}
!2588 = distinct !{!2588, !"quoting_options_from_style"}
!2589 = !DILocation(line: 196, column: 13, scope: !2590, inlinedAt: !2584)
!2590 = distinct !DILexicalBlock(scope: !2578, file: !212, line: 196, column: 7)
!2591 = !DILocation(line: 196, column: 7, scope: !2578, inlinedAt: !2584)
!2592 = !DILocation(line: 197, column: 5, scope: !2590, inlinedAt: !2584)
!2593 = !DILocation(line: 198, column: 5, scope: !2578, inlinedAt: !2584)
!2594 = !DILocation(line: 198, column: 11, scope: !2578, inlinedAt: !2584)
!2595 = !DILocation(line: 958, column: 10, scope: !2566)
!2596 = !DILocation(line: 959, column: 1, scope: !2566)
!2597 = !DILocation(line: 958, column: 3, scope: !2566)
!2598 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2599, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!25, !18, !214, !6, !69}
!2601 = !{!2602, !2603, !2604, !2605, !2606}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !212, line: 962, type: !18)
!2603 = !DILocalVariable(name: "s", arg: 2, scope: !2598, file: !212, line: 962, type: !214)
!2604 = !DILocalVariable(name: "arg", arg: 3, scope: !2598, file: !212, line: 963, type: !6)
!2605 = !DILocalVariable(name: "argsize", arg: 4, scope: !2598, file: !212, line: 963, type: !69)
!2606 = !DILocalVariable(name: "o", scope: !2598, file: !212, line: 965, type: !259)
!2607 = !DILocation(line: 0, scope: !2598)
!2608 = !DILocation(line: 965, column: 3, scope: !2598)
!2609 = !DILocation(line: 965, column: 32, scope: !2598)
!2610 = !DILocation(line: 0, scope: !2578, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 965, column: 36, scope: !2598)
!2612 = !DILocation(line: 195, column: 26, scope: !2578, inlinedAt: !2611)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 196, column: 13, scope: !2590, inlinedAt: !2611)
!2617 = !DILocation(line: 196, column: 7, scope: !2578, inlinedAt: !2611)
!2618 = !DILocation(line: 197, column: 5, scope: !2590, inlinedAt: !2611)
!2619 = !DILocation(line: 198, column: 5, scope: !2578, inlinedAt: !2611)
!2620 = !DILocation(line: 198, column: 11, scope: !2578, inlinedAt: !2611)
!2621 = !DILocation(line: 966, column: 10, scope: !2598)
!2622 = !DILocation(line: 967, column: 1, scope: !2598)
!2623 = !DILocation(line: 966, column: 3, scope: !2598)
!2624 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2625, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!25, !214, !6}
!2627 = !{!2628, !2629}
!2628 = !DILocalVariable(name: "s", arg: 1, scope: !2624, file: !212, line: 970, type: !214)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !212, line: 970, type: !6)
!2630 = !DILocation(line: 195, column: 26, scope: !2578, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 957, column: 36, scope: !2566, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 972, column: 10, scope: !2624)
!2633 = !DILocation(line: 957, column: 32, scope: !2566, inlinedAt: !2632)
!2634 = !DILocation(line: 0, scope: !2624)
!2635 = !DILocation(line: 0, scope: !2566, inlinedAt: !2632)
!2636 = !DILocation(line: 957, column: 3, scope: !2566, inlinedAt: !2632)
!2637 = !DILocation(line: 0, scope: !2578, inlinedAt: !2631)
!2638 = !{!2639}
!2639 = distinct !{!2639, !2640, !"quoting_options_from_style: argument 0"}
!2640 = distinct !{!2640, !"quoting_options_from_style"}
!2641 = !DILocation(line: 196, column: 13, scope: !2590, inlinedAt: !2631)
!2642 = !DILocation(line: 196, column: 7, scope: !2578, inlinedAt: !2631)
!2643 = !DILocation(line: 197, column: 5, scope: !2590, inlinedAt: !2631)
!2644 = !DILocation(line: 198, column: 5, scope: !2578, inlinedAt: !2631)
!2645 = !DILocation(line: 198, column: 11, scope: !2578, inlinedAt: !2631)
!2646 = !DILocation(line: 958, column: 10, scope: !2566, inlinedAt: !2632)
!2647 = !DILocation(line: 959, column: 1, scope: !2566, inlinedAt: !2632)
!2648 = !DILocation(line: 972, column: 3, scope: !2624)
!2649 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2650, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!25, !214, !6, !69}
!2652 = !{!2653, !2654, !2655}
!2653 = !DILocalVariable(name: "s", arg: 1, scope: !2649, file: !212, line: 976, type: !214)
!2654 = !DILocalVariable(name: "arg", arg: 2, scope: !2649, file: !212, line: 976, type: !6)
!2655 = !DILocalVariable(name: "argsize", arg: 3, scope: !2649, file: !212, line: 976, type: !69)
!2656 = !DILocation(line: 195, column: 26, scope: !2578, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 965, column: 36, scope: !2598, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 978, column: 10, scope: !2649)
!2659 = !DILocation(line: 965, column: 32, scope: !2598, inlinedAt: !2658)
!2660 = !DILocation(line: 0, scope: !2649)
!2661 = !DILocation(line: 0, scope: !2598, inlinedAt: !2658)
!2662 = !DILocation(line: 965, column: 3, scope: !2598, inlinedAt: !2658)
!2663 = !DILocation(line: 0, scope: !2578, inlinedAt: !2657)
!2664 = !{!2665}
!2665 = distinct !{!2665, !2666, !"quoting_options_from_style: argument 0"}
!2666 = distinct !{!2666, !"quoting_options_from_style"}
!2667 = !DILocation(line: 196, column: 13, scope: !2590, inlinedAt: !2657)
!2668 = !DILocation(line: 196, column: 7, scope: !2578, inlinedAt: !2657)
!2669 = !DILocation(line: 197, column: 5, scope: !2590, inlinedAt: !2657)
!2670 = !DILocation(line: 198, column: 5, scope: !2578, inlinedAt: !2657)
!2671 = !DILocation(line: 198, column: 11, scope: !2578, inlinedAt: !2657)
!2672 = !DILocation(line: 966, column: 10, scope: !2598, inlinedAt: !2658)
!2673 = !DILocation(line: 967, column: 1, scope: !2598, inlinedAt: !2658)
!2674 = !DILocation(line: 978, column: 3, scope: !2649)
!2675 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2676, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!25, !6, !69, !8}
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !212, line: 982, type: !6)
!2680 = !DILocalVariable(name: "argsize", arg: 2, scope: !2675, file: !212, line: 982, type: !69)
!2681 = !DILocalVariable(name: "ch", arg: 3, scope: !2675, file: !212, line: 982, type: !8)
!2682 = !DILocalVariable(name: "options", scope: !2675, file: !212, line: 984, type: !260)
!2683 = !DILocation(line: 0, scope: !2675)
!2684 = !DILocation(line: 984, column: 3, scope: !2675)
!2685 = !DILocation(line: 984, column: 26, scope: !2675)
!2686 = !DILocation(line: 985, column: 13, scope: !2675)
!2687 = !{i64 0, i64 4, !1256, i64 4, i64 4, !1202, i64 8, i64 32, !1256, i64 40, i64 8, !1133, i64 48, i64 8, !1133}
!2688 = !DILocation(line: 0, scope: !1509, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 986, column: 3, scope: !2675)
!2690 = !DILocation(line: 156, column: 62, scope: !1509, inlinedAt: !2689)
!2691 = !DILocation(line: 156, column: 57, scope: !1509, inlinedAt: !2689)
!2692 = !DILocation(line: 157, column: 15, scope: !1509, inlinedAt: !2689)
!2693 = !DILocation(line: 158, column: 12, scope: !1509, inlinedAt: !2689)
!2694 = !DILocation(line: 158, column: 15, scope: !1509, inlinedAt: !2689)
!2695 = !DILocation(line: 158, column: 25, scope: !1509, inlinedAt: !2689)
!2696 = !DILocation(line: 159, column: 18, scope: !1509, inlinedAt: !2689)
!2697 = !DILocation(line: 159, column: 23, scope: !1509, inlinedAt: !2689)
!2698 = !DILocation(line: 159, column: 6, scope: !1509, inlinedAt: !2689)
!2699 = !DILocation(line: 987, column: 10, scope: !2675)
!2700 = !DILocation(line: 988, column: 1, scope: !2675)
!2701 = !DILocation(line: 987, column: 3, scope: !2675)
!2702 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2703, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!25, !6, !8}
!2705 = !{!2706, !2707}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2702, file: !212, line: 991, type: !6)
!2707 = !DILocalVariable(name: "ch", arg: 2, scope: !2702, file: !212, line: 991, type: !8)
!2708 = !DILocation(line: 984, column: 26, scope: !2675, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 993, column: 10, scope: !2702)
!2710 = !DILocation(line: 0, scope: !2702)
!2711 = !DILocation(line: 0, scope: !2675, inlinedAt: !2709)
!2712 = !DILocation(line: 984, column: 3, scope: !2675, inlinedAt: !2709)
!2713 = !DILocation(line: 985, column: 13, scope: !2675, inlinedAt: !2709)
!2714 = !DILocation(line: 0, scope: !1509, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 986, column: 3, scope: !2675, inlinedAt: !2709)
!2716 = !DILocation(line: 156, column: 62, scope: !1509, inlinedAt: !2715)
!2717 = !DILocation(line: 156, column: 57, scope: !1509, inlinedAt: !2715)
!2718 = !DILocation(line: 157, column: 15, scope: !1509, inlinedAt: !2715)
!2719 = !DILocation(line: 158, column: 12, scope: !1509, inlinedAt: !2715)
!2720 = !DILocation(line: 158, column: 15, scope: !1509, inlinedAt: !2715)
!2721 = !DILocation(line: 158, column: 25, scope: !1509, inlinedAt: !2715)
!2722 = !DILocation(line: 159, column: 18, scope: !1509, inlinedAt: !2715)
!2723 = !DILocation(line: 159, column: 23, scope: !1509, inlinedAt: !2715)
!2724 = !DILocation(line: 159, column: 6, scope: !1509, inlinedAt: !2715)
!2725 = !DILocation(line: 987, column: 10, scope: !2675, inlinedAt: !2709)
!2726 = !DILocation(line: 988, column: 1, scope: !2675, inlinedAt: !2709)
!2727 = !DILocation(line: 993, column: 3, scope: !2702)
!2728 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2729)
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2728, file: !212, line: 997, type: !6)
!2731 = !DILocation(line: 984, column: 26, scope: !2675, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 993, column: 10, scope: !2702, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 999, column: 10, scope: !2728)
!2734 = !DILocation(line: 0, scope: !2728)
!2735 = !DILocation(line: 0, scope: !2702, inlinedAt: !2733)
!2736 = !DILocation(line: 0, scope: !2675, inlinedAt: !2732)
!2737 = !DILocation(line: 984, column: 3, scope: !2675, inlinedAt: !2732)
!2738 = !DILocation(line: 985, column: 13, scope: !2675, inlinedAt: !2732)
!2739 = !DILocation(line: 0, scope: !1509, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 986, column: 3, scope: !2675, inlinedAt: !2732)
!2741 = !DILocation(line: 156, column: 57, scope: !1509, inlinedAt: !2740)
!2742 = !DILocation(line: 158, column: 12, scope: !1509, inlinedAt: !2740)
!2743 = !DILocation(line: 159, column: 6, scope: !1509, inlinedAt: !2740)
!2744 = !DILocation(line: 987, column: 10, scope: !2675, inlinedAt: !2732)
!2745 = !DILocation(line: 988, column: 1, scope: !2675, inlinedAt: !2732)
!2746 = !DILocation(line: 999, column: 3, scope: !2728)
!2747 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2556, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2748)
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !212, line: 1003, type: !6)
!2750 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !212, line: 1003, type: !69)
!2751 = !DILocation(line: 984, column: 26, scope: !2675, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1005, column: 10, scope: !2747)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2675, inlinedAt: !2752)
!2755 = !DILocation(line: 984, column: 3, scope: !2675, inlinedAt: !2752)
!2756 = !DILocation(line: 985, column: 13, scope: !2675, inlinedAt: !2752)
!2757 = !DILocation(line: 0, scope: !1509, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 986, column: 3, scope: !2675, inlinedAt: !2752)
!2759 = !DILocation(line: 156, column: 57, scope: !1509, inlinedAt: !2758)
!2760 = !DILocation(line: 158, column: 12, scope: !1509, inlinedAt: !2758)
!2761 = !DILocation(line: 159, column: 6, scope: !1509, inlinedAt: !2758)
!2762 = !DILocation(line: 987, column: 10, scope: !2675, inlinedAt: !2752)
!2763 = !DILocation(line: 988, column: 1, scope: !2675, inlinedAt: !2752)
!2764 = !DILocation(line: 1005, column: 3, scope: !2747)
!2765 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2567, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2766)
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DILocalVariable(name: "n", arg: 1, scope: !2765, file: !212, line: 1009, type: !18)
!2768 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !212, line: 1009, type: !214)
!2769 = !DILocalVariable(name: "arg", arg: 3, scope: !2765, file: !212, line: 1009, type: !6)
!2770 = !DILocalVariable(name: "options", scope: !2765, file: !212, line: 1011, type: !260)
!2771 = !DILocation(line: 195, column: 26, scope: !2578, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1012, column: 13, scope: !2765)
!2773 = !DILocation(line: 0, scope: !2765)
!2774 = !DILocation(line: 1011, column: 3, scope: !2765)
!2775 = !DILocation(line: 1011, column: 26, scope: !2765)
!2776 = !DILocation(line: 1012, column: 13, scope: !2765)
!2777 = !DILocation(line: 0, scope: !2578, inlinedAt: !2772)
!2778 = !{!2779}
!2779 = distinct !{!2779, !2780, !"quoting_options_from_style: argument 0"}
!2780 = distinct !{!2780, !"quoting_options_from_style"}
!2781 = !DILocation(line: 196, column: 13, scope: !2590, inlinedAt: !2772)
!2782 = !DILocation(line: 196, column: 7, scope: !2578, inlinedAt: !2772)
!2783 = !DILocation(line: 197, column: 5, scope: !2590, inlinedAt: !2772)
!2784 = !DILocation(line: 0, scope: !1509, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1013, column: 3, scope: !2765)
!2786 = !DILocation(line: 156, column: 57, scope: !1509, inlinedAt: !2785)
!2787 = !DILocation(line: 158, column: 12, scope: !1509, inlinedAt: !2785)
!2788 = !DILocation(line: 159, column: 6, scope: !1509, inlinedAt: !2785)
!2789 = !DILocation(line: 1014, column: 10, scope: !2765)
!2790 = !DILocation(line: 1015, column: 1, scope: !2765)
!2791 = !DILocation(line: 1014, column: 3, scope: !2765)
!2792 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2793, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!25, !18, !6, !6, !6}
!2795 = !{!2796, !2797, !2798, !2799}
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !212, line: 1018, type: !18)
!2797 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2792, file: !212, line: 1018, type: !6)
!2798 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2792, file: !212, line: 1019, type: !6)
!2799 = !DILocalVariable(name: "arg", arg: 4, scope: !2792, file: !212, line: 1019, type: !6)
!2800 = !DILocalVariable(name: "o", scope: !2801, file: !212, line: 1030, type: !260)
!2801 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2802, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2804)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!25, !18, !6, !6, !6, !69}
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2800}
!2805 = !DILocalVariable(name: "n", arg: 1, scope: !2801, file: !212, line: 1026, type: !18)
!2806 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2801, file: !212, line: 1026, type: !6)
!2807 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2801, file: !212, line: 1027, type: !6)
!2808 = !DILocalVariable(name: "arg", arg: 4, scope: !2801, file: !212, line: 1028, type: !6)
!2809 = !DILocalVariable(name: "argsize", arg: 5, scope: !2801, file: !212, line: 1028, type: !69)
!2810 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 1021, column: 10, scope: !2792)
!2812 = !DILocation(line: 0, scope: !2792)
!2813 = !DILocation(line: 0, scope: !2801, inlinedAt: !2811)
!2814 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2811)
!2815 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2811)
!2816 = !DILocation(line: 0, scope: !1550, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2811)
!2818 = !DILocation(line: 184, column: 6, scope: !1550, inlinedAt: !2817)
!2819 = !DILocation(line: 184, column: 12, scope: !1550, inlinedAt: !2817)
!2820 = !DILocation(line: 185, column: 8, scope: !1564, inlinedAt: !2817)
!2821 = !DILocation(line: 185, column: 23, scope: !1564, inlinedAt: !2817)
!2822 = !DILocation(line: 185, column: 19, scope: !1564, inlinedAt: !2817)
!2823 = !DILocation(line: 186, column: 5, scope: !1564, inlinedAt: !2817)
!2824 = !DILocation(line: 187, column: 6, scope: !1550, inlinedAt: !2817)
!2825 = !DILocation(line: 187, column: 17, scope: !1550, inlinedAt: !2817)
!2826 = !DILocation(line: 188, column: 6, scope: !1550, inlinedAt: !2817)
!2827 = !DILocation(line: 188, column: 18, scope: !1550, inlinedAt: !2817)
!2828 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2811)
!2829 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2811)
!2830 = !DILocation(line: 1021, column: 3, scope: !2792)
!2831 = !DILocation(line: 0, scope: !2801)
!2832 = !DILocation(line: 1030, column: 3, scope: !2801)
!2833 = !DILocation(line: 1030, column: 26, scope: !2801)
!2834 = !DILocation(line: 1030, column: 30, scope: !2801)
!2835 = !DILocation(line: 0, scope: !1550, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 1031, column: 3, scope: !2801)
!2837 = !DILocation(line: 184, column: 6, scope: !1550, inlinedAt: !2836)
!2838 = !DILocation(line: 184, column: 12, scope: !1550, inlinedAt: !2836)
!2839 = !DILocation(line: 185, column: 8, scope: !1564, inlinedAt: !2836)
!2840 = !DILocation(line: 185, column: 23, scope: !1564, inlinedAt: !2836)
!2841 = !DILocation(line: 185, column: 19, scope: !1564, inlinedAt: !2836)
!2842 = !DILocation(line: 186, column: 5, scope: !1564, inlinedAt: !2836)
!2843 = !DILocation(line: 187, column: 6, scope: !1550, inlinedAt: !2836)
!2844 = !DILocation(line: 187, column: 17, scope: !1550, inlinedAt: !2836)
!2845 = !DILocation(line: 188, column: 6, scope: !1550, inlinedAt: !2836)
!2846 = !DILocation(line: 188, column: 18, scope: !1550, inlinedAt: !2836)
!2847 = !DILocation(line: 1032, column: 10, scope: !2801)
!2848 = !DILocation(line: 1033, column: 1, scope: !2801)
!2849 = !DILocation(line: 1032, column: 3, scope: !2801)
!2850 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2851, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!25, !6, !6, !6}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2850, file: !212, line: 1036, type: !6)
!2855 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2850, file: !212, line: 1036, type: !6)
!2856 = !DILocalVariable(name: "arg", arg: 3, scope: !2850, file: !212, line: 1037, type: !6)
!2857 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 1021, column: 10, scope: !2792, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 1039, column: 10, scope: !2850)
!2860 = !DILocation(line: 0, scope: !2850)
!2861 = !DILocation(line: 0, scope: !2792, inlinedAt: !2859)
!2862 = !DILocation(line: 0, scope: !2801, inlinedAt: !2858)
!2863 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2858)
!2864 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2858)
!2865 = !DILocation(line: 0, scope: !1550, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2858)
!2867 = !DILocation(line: 184, column: 6, scope: !1550, inlinedAt: !2866)
!2868 = !DILocation(line: 184, column: 12, scope: !1550, inlinedAt: !2866)
!2869 = !DILocation(line: 185, column: 8, scope: !1564, inlinedAt: !2866)
!2870 = !DILocation(line: 185, column: 23, scope: !1564, inlinedAt: !2866)
!2871 = !DILocation(line: 185, column: 19, scope: !1564, inlinedAt: !2866)
!2872 = !DILocation(line: 186, column: 5, scope: !1564, inlinedAt: !2866)
!2873 = !DILocation(line: 187, column: 6, scope: !1550, inlinedAt: !2866)
!2874 = !DILocation(line: 187, column: 17, scope: !1550, inlinedAt: !2866)
!2875 = !DILocation(line: 188, column: 6, scope: !1550, inlinedAt: !2866)
!2876 = !DILocation(line: 188, column: 18, scope: !1550, inlinedAt: !2866)
!2877 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2858)
!2878 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2858)
!2879 = !DILocation(line: 1039, column: 3, scope: !2850)
!2880 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2881, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2883)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!25, !6, !6, !6, !69}
!2883 = !{!2884, !2885, !2886, !2887}
!2884 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2880, file: !212, line: 1043, type: !6)
!2885 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2880, file: !212, line: 1043, type: !6)
!2886 = !DILocalVariable(name: "arg", arg: 3, scope: !2880, file: !212, line: 1044, type: !6)
!2887 = !DILocalVariable(name: "argsize", arg: 4, scope: !2880, file: !212, line: 1044, type: !69)
!2888 = !DILocation(line: 1030, column: 26, scope: !2801, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1046, column: 10, scope: !2880)
!2890 = !DILocation(line: 0, scope: !2880)
!2891 = !DILocation(line: 0, scope: !2801, inlinedAt: !2889)
!2892 = !DILocation(line: 1030, column: 3, scope: !2801, inlinedAt: !2889)
!2893 = !DILocation(line: 1030, column: 30, scope: !2801, inlinedAt: !2889)
!2894 = !DILocation(line: 0, scope: !1550, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1031, column: 3, scope: !2801, inlinedAt: !2889)
!2896 = !DILocation(line: 184, column: 6, scope: !1550, inlinedAt: !2895)
!2897 = !DILocation(line: 184, column: 12, scope: !1550, inlinedAt: !2895)
!2898 = !DILocation(line: 185, column: 8, scope: !1564, inlinedAt: !2895)
!2899 = !DILocation(line: 185, column: 23, scope: !1564, inlinedAt: !2895)
!2900 = !DILocation(line: 185, column: 19, scope: !1564, inlinedAt: !2895)
!2901 = !DILocation(line: 186, column: 5, scope: !1564, inlinedAt: !2895)
!2902 = !DILocation(line: 187, column: 6, scope: !1550, inlinedAt: !2895)
!2903 = !DILocation(line: 187, column: 17, scope: !1550, inlinedAt: !2895)
!2904 = !DILocation(line: 188, column: 6, scope: !1550, inlinedAt: !2895)
!2905 = !DILocation(line: 188, column: 18, scope: !1550, inlinedAt: !2895)
!2906 = !DILocation(line: 1032, column: 10, scope: !2801, inlinedAt: !2889)
!2907 = !DILocation(line: 1033, column: 1, scope: !2801, inlinedAt: !2889)
!2908 = !DILocation(line: 1046, column: 3, scope: !2880)
!2909 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2910, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!6, !18, !6, !69}
!2912 = !{!2913, !2914, !2915}
!2913 = !DILocalVariable(name: "n", arg: 1, scope: !2909, file: !212, line: 1061, type: !18)
!2914 = !DILocalVariable(name: "arg", arg: 2, scope: !2909, file: !212, line: 1061, type: !6)
!2915 = !DILocalVariable(name: "argsize", arg: 3, scope: !2909, file: !212, line: 1061, type: !69)
!2916 = !DILocation(line: 0, scope: !2909)
!2917 = !DILocation(line: 1063, column: 10, scope: !2909)
!2918 = !DILocation(line: 1063, column: 3, scope: !2909)
!2919 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2920, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2922)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!6, !6, !69}
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "arg", arg: 1, scope: !2919, file: !212, line: 1067, type: !6)
!2924 = !DILocalVariable(name: "argsize", arg: 2, scope: !2919, file: !212, line: 1067, type: !69)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocation(line: 0, scope: !2909, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 1069, column: 10, scope: !2919)
!2928 = !DILocation(line: 1063, column: 10, scope: !2909, inlinedAt: !2927)
!2929 = !DILocation(line: 1069, column: 3, scope: !2919)
!2930 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2931, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!6, !18, !6}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "n", arg: 1, scope: !2930, file: !212, line: 1073, type: !18)
!2935 = !DILocalVariable(name: "arg", arg: 2, scope: !2930, file: !212, line: 1073, type: !6)
!2936 = !DILocation(line: 0, scope: !2930)
!2937 = !DILocation(line: 0, scope: !2909, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 1075, column: 10, scope: !2930)
!2939 = !DILocation(line: 1063, column: 10, scope: !2909, inlinedAt: !2938)
!2940 = !DILocation(line: 1075, column: 3, scope: !2930)
!2941 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !2942, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!6, !6}
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "arg", arg: 1, scope: !2941, file: !212, line: 1079, type: !6)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 0, scope: !2930, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 1081, column: 10, scope: !2941)
!2949 = !DILocation(line: 0, scope: !2909, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1075, column: 10, scope: !2930, inlinedAt: !2948)
!2951 = !DILocation(line: 1063, column: 10, scope: !2909, inlinedAt: !2950)
!2952 = !DILocation(line: 1081, column: 3, scope: !2941)
!2953 = distinct !DISubprogram(name: "safe_write", scope: !2954, file: !2954, line: 56, type: !1338, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !2955)
!2954 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2955 = !{!2956, !2957, !2958, !2959}
!2956 = !DILocalVariable(name: "fd", arg: 1, scope: !2953, file: !2954, line: 56, type: !18)
!2957 = !DILocalVariable(name: "buf", arg: 2, scope: !2953, file: !2954, line: 56, type: !252)
!2958 = !DILocalVariable(name: "count", arg: 3, scope: !2953, file: !2954, line: 56, type: !69)
!2959 = !DILocalVariable(name: "result", scope: !2960, file: !2954, line: 60, type: !2963)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !2954, line: 59, column: 5)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !2954, line: 58, column: 3)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !2954, line: 58, column: 3)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2964, line: 108, baseType: !2965)
!2964 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 193, baseType: !45)
!2966 = !DILocation(line: 0, scope: !2953)
!2967 = !DILocation(line: 58, column: 3, scope: !2953)
!2968 = !DILocation(line: 62, column: 11, scope: !2960)
!2969 = !DILocation(line: 60, column: 24, scope: !2960)
!2970 = !DILocation(line: 0, scope: !2960)
!2971 = !DILocation(line: 62, column: 13, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2960, file: !2954, line: 62, column: 11)
!2973 = !DILocation(line: 64, column: 16, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2972, file: !2954, line: 64, column: 16)
!2975 = !DILocation(line: 64, column: 16, scope: !2972)
!2976 = distinct !{!2976, !2977, !2978}
!2977 = !DILocation(line: 58, column: 3, scope: !2962)
!2978 = !DILocation(line: 70, column: 5, scope: !2962)
!2979 = !DILocation(line: 66, column: 22, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2974, file: !2954, line: 66, column: 16)
!2981 = !DILocation(line: 66, column: 51, scope: !2980)
!2982 = !DILocation(line: 66, column: 32, scope: !2980)
!2983 = !DILocation(line: 71, column: 1, scope: !2953)
!2984 = distinct !DISubprogram(name: "version_etc_arn", scope: !444, file: !444, line: 61, type: !2985, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !2991)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2987, !6, !6, !6, !2990, !69}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2989, line: 7, baseType: !454)
!2989 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DILocalVariable(name: "stream", arg: 1, scope: !2984, file: !444, line: 61, type: !2987)
!2993 = !DILocalVariable(name: "command_name", arg: 2, scope: !2984, file: !444, line: 62, type: !6)
!2994 = !DILocalVariable(name: "package", arg: 3, scope: !2984, file: !444, line: 62, type: !6)
!2995 = !DILocalVariable(name: "version", arg: 4, scope: !2984, file: !444, line: 63, type: !6)
!2996 = !DILocalVariable(name: "authors", arg: 5, scope: !2984, file: !444, line: 64, type: !2990)
!2997 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2984, file: !444, line: 64, type: !69)
!2998 = !DILocation(line: 0, scope: !2984)
!2999 = !DILocation(line: 66, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2984, file: !444, line: 66, column: 7)
!3001 = !DILocation(line: 66, column: 7, scope: !2984)
!3002 = !DILocation(line: 67, column: 5, scope: !3000)
!3003 = !DILocation(line: 69, column: 5, scope: !3000)
!3004 = !DILocation(line: 83, column: 3, scope: !2984)
!3005 = !DILocation(line: 85, column: 3, scope: !2984)
!3006 = !DILocation(line: 88, column: 3, scope: !2984)
!3007 = !DILocation(line: 95, column: 3, scope: !2984)
!3008 = !DILocation(line: 97, column: 3, scope: !2984)
!3009 = !DILocation(line: 105, column: 7, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2984, file: !444, line: 98, column: 5)
!3011 = !DILocation(line: 106, column: 7, scope: !3010)
!3012 = !DILocation(line: 109, column: 7, scope: !3010)
!3013 = !DILocation(line: 110, column: 7, scope: !3010)
!3014 = !DILocation(line: 113, column: 7, scope: !3010)
!3015 = !DILocation(line: 115, column: 7, scope: !3010)
!3016 = !DILocation(line: 120, column: 7, scope: !3010)
!3017 = !DILocation(line: 122, column: 7, scope: !3010)
!3018 = !DILocation(line: 127, column: 7, scope: !3010)
!3019 = !DILocation(line: 129, column: 7, scope: !3010)
!3020 = !DILocation(line: 134, column: 7, scope: !3010)
!3021 = !DILocation(line: 137, column: 7, scope: !3010)
!3022 = !DILocation(line: 142, column: 7, scope: !3010)
!3023 = !DILocation(line: 145, column: 7, scope: !3010)
!3024 = !DILocation(line: 150, column: 7, scope: !3010)
!3025 = !DILocation(line: 154, column: 7, scope: !3010)
!3026 = !DILocation(line: 159, column: 7, scope: !3010)
!3027 = !DILocation(line: 163, column: 7, scope: !3010)
!3028 = !DILocation(line: 170, column: 7, scope: !3010)
!3029 = !DILocation(line: 174, column: 7, scope: !3010)
!3030 = !DILocation(line: 176, column: 1, scope: !2984)
!3031 = distinct !DISubprogram(name: "version_etc_ar", scope: !444, file: !444, line: 183, type: !3032, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2987, !6, !6, !6, !2990}
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040}
!3035 = !DILocalVariable(name: "stream", arg: 1, scope: !3031, file: !444, line: 183, type: !2987)
!3036 = !DILocalVariable(name: "command_name", arg: 2, scope: !3031, file: !444, line: 184, type: !6)
!3037 = !DILocalVariable(name: "package", arg: 3, scope: !3031, file: !444, line: 184, type: !6)
!3038 = !DILocalVariable(name: "version", arg: 4, scope: !3031, file: !444, line: 185, type: !6)
!3039 = !DILocalVariable(name: "authors", arg: 5, scope: !3031, file: !444, line: 185, type: !2990)
!3040 = !DILocalVariable(name: "n_authors", scope: !3031, file: !444, line: 187, type: !69)
!3041 = !DILocation(line: 0, scope: !3031)
!3042 = !DILocation(line: 189, column: 8, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3031, file: !444, line: 189, column: 3)
!3044 = !DILocation(line: 0, scope: !3043)
!3045 = !DILocation(line: 189, column: 23, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3043, file: !444, line: 189, column: 3)
!3047 = !DILocation(line: 189, column: 3, scope: !3043)
!3048 = !DILocation(line: 189, column: 52, scope: !3046)
!3049 = distinct !{!3049, !3047, !3050}
!3050 = !DILocation(line: 190, column: 5, scope: !3043)
!3051 = !DILocation(line: 191, column: 3, scope: !3031)
!3052 = !DILocation(line: 192, column: 1, scope: !3031)
!3053 = distinct !DISubprogram(name: "version_etc_va", scope: !444, file: !444, line: 199, type: !3054, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3063)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !2987, !6, !6, !6, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !444, line: 192, size: 192, elements: !3058)
!3058 = !{!3059, !3060, !3061, !3062}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3057, file: !444, line: 192, baseType: !159, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3057, file: !444, line: 192, baseType: !159, size: 32, offset: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3057, file: !444, line: 192, baseType: !67, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3057, file: !444, line: 192, baseType: !67, size: 64, offset: 128)
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069, !3070}
!3064 = !DILocalVariable(name: "stream", arg: 1, scope: !3053, file: !444, line: 199, type: !2987)
!3065 = !DILocalVariable(name: "command_name", arg: 2, scope: !3053, file: !444, line: 200, type: !6)
!3066 = !DILocalVariable(name: "package", arg: 3, scope: !3053, file: !444, line: 200, type: !6)
!3067 = !DILocalVariable(name: "version", arg: 4, scope: !3053, file: !444, line: 201, type: !6)
!3068 = !DILocalVariable(name: "authors", arg: 5, scope: !3053, file: !444, line: 201, type: !3056)
!3069 = !DILocalVariable(name: "n_authors", scope: !3053, file: !444, line: 203, type: !69)
!3070 = !DILocalVariable(name: "authtab", scope: !3053, file: !444, line: 204, type: !3071)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!3072 = !DILocation(line: 0, scope: !3053)
!3073 = !DILocation(line: 204, column: 3, scope: !3053)
!3074 = !DILocation(line: 204, column: 15, scope: !3053)
!3075 = !DILocation(line: 0, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !444, line: 206, column: 3)
!3077 = distinct !DILexicalBlock(scope: !3053, file: !444, line: 206, column: 3)
!3078 = !DILocation(line: 208, column: 35, scope: !3076)
!3079 = !DILocation(line: 208, column: 14, scope: !3076)
!3080 = !DILocation(line: 208, column: 33, scope: !3076)
!3081 = !DILocation(line: 208, column: 67, scope: !3076)
!3082 = !DILocation(line: 206, column: 3, scope: !3077)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocation(line: 211, column: 3, scope: !3053)
!3085 = !DILocation(line: 213, column: 1, scope: !3053)
!3086 = distinct !DISubprogram(name: "version_etc", scope: !444, file: !444, line: 230, type: !3087, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !2987, !6, !6, !6, null}
!3089 = !{!3090, !3091, !3092, !3093, !3094}
!3090 = !DILocalVariable(name: "stream", arg: 1, scope: !3086, file: !444, line: 230, type: !2987)
!3091 = !DILocalVariable(name: "command_name", arg: 2, scope: !3086, file: !444, line: 231, type: !6)
!3092 = !DILocalVariable(name: "package", arg: 3, scope: !3086, file: !444, line: 231, type: !6)
!3093 = !DILocalVariable(name: "version", arg: 4, scope: !3086, file: !444, line: 232, type: !6)
!3094 = !DILocalVariable(name: "authors", scope: !3086, file: !444, line: 234, type: !3095)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !3096)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1382, line: 32, baseType: !3097)
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !444, line: 234, baseType: !3098)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3057, size: 192, elements: !52)
!3099 = !DILocation(line: 0, scope: !3086)
!3100 = !DILocation(line: 234, column: 3, scope: !3086)
!3101 = !DILocation(line: 234, column: 11, scope: !3086)
!3102 = !DILocation(line: 236, column: 3, scope: !3086)
!3103 = !DILocation(line: 237, column: 3, scope: !3086)
!3104 = !DILocation(line: 238, column: 3, scope: !3086)
!3105 = !DILocation(line: 239, column: 1, scope: !3086)
!3106 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !444, file: !444, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4)
!3107 = !DILocation(line: 244, column: 3, scope: !3106)
!3108 = !DILocation(line: 249, column: 3, scope: !3106)
!3109 = !DILocation(line: 255, column: 3, scope: !3106)
!3110 = !DILocation(line: 260, column: 3, scope: !3106)
!3111 = !DILocation(line: 262, column: 1, scope: !3106)
!3112 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !3113, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!67, !69, !69}
!3115 = !{!3116, !3117}
!3116 = !DILocalVariable(name: "n", arg: 1, scope: !3112, file: !249, line: 99, type: !69)
!3117 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !249, line: 99, type: !69)
!3118 = !DILocation(line: 0, scope: !3112)
!3119 = !DILocation(line: 101, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3112, file: !249, line: 101, column: 7)
!3121 = !DILocation(line: 101, column: 7, scope: !3112)
!3122 = !DILocation(line: 102, column: 5, scope: !3120)
!3123 = !DILocation(line: 103, column: 21, scope: !3112)
!3124 = !DILocalVariable(name: "n", arg: 1, scope: !3125, file: !486, line: 39, type: !69)
!3125 = distinct !DISubprogram(name: "xmalloc", scope: !486, file: !486, line: 39, type: !3126, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!67, !69}
!3128 = !{!3124, !3129}
!3129 = !DILocalVariable(name: "p", scope: !3125, file: !486, line: 41, type: !67)
!3130 = !DILocation(line: 0, scope: !3125, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 103, column: 10, scope: !3112)
!3132 = !DILocation(line: 41, column: 13, scope: !3125, inlinedAt: !3131)
!3133 = !DILocation(line: 42, column: 8, scope: !3134, inlinedAt: !3131)
!3134 = distinct !DILexicalBlock(scope: !3125, file: !486, line: 42, column: 7)
!3135 = !DILocation(line: 42, column: 15, scope: !3134, inlinedAt: !3131)
!3136 = !DILocation(line: 42, column: 10, scope: !3134, inlinedAt: !3131)
!3137 = !DILocation(line: 43, column: 5, scope: !3134, inlinedAt: !3131)
!3138 = !DILocation(line: 103, column: 3, scope: !3112)
!3139 = !DILocation(line: 0, scope: !3125)
!3140 = !DILocation(line: 41, column: 13, scope: !3125)
!3141 = !DILocation(line: 42, column: 8, scope: !3134)
!3142 = !DILocation(line: 42, column: 15, scope: !3134)
!3143 = !DILocation(line: 42, column: 10, scope: !3134)
!3144 = !DILocation(line: 43, column: 5, scope: !3134)
!3145 = !DILocation(line: 44, column: 3, scope: !3125)
!3146 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3147, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3149)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!67, !67, !69, !69}
!3149 = !{!3150, !3151, !3152}
!3150 = !DILocalVariable(name: "p", arg: 1, scope: !3146, file: !249, line: 112, type: !67)
!3151 = !DILocalVariable(name: "n", arg: 2, scope: !3146, file: !249, line: 112, type: !69)
!3152 = !DILocalVariable(name: "s", arg: 3, scope: !3146, file: !249, line: 112, type: !69)
!3153 = !DILocation(line: 0, scope: !3146)
!3154 = !DILocation(line: 114, column: 7, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3146, file: !249, line: 114, column: 7)
!3156 = !DILocation(line: 114, column: 7, scope: !3146)
!3157 = !DILocation(line: 115, column: 5, scope: !3155)
!3158 = !DILocation(line: 116, column: 25, scope: !3146)
!3159 = !DILocalVariable(name: "p", arg: 1, scope: !3160, file: !486, line: 51, type: !67)
!3160 = distinct !DISubprogram(name: "xrealloc", scope: !486, file: !486, line: 51, type: !3161, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!67, !67, !69}
!3163 = !{!3159, !3164}
!3164 = !DILocalVariable(name: "n", arg: 2, scope: !3160, file: !486, line: 51, type: !69)
!3165 = !DILocation(line: 0, scope: !3160, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 116, column: 10, scope: !3146)
!3167 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3166)
!3168 = distinct !DILexicalBlock(scope: !3160, file: !486, line: 53, column: 7)
!3169 = !DILocation(line: 53, column: 13, scope: !3168, inlinedAt: !3166)
!3170 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3166)
!3171 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3166)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !486, line: 54, column: 5)
!3173 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3166)
!3174 = !DILocation(line: 61, column: 7, scope: !3160, inlinedAt: !3166)
!3175 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3166)
!3176 = distinct !DILexicalBlock(scope: !3160, file: !486, line: 62, column: 7)
!3177 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3166)
!3178 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3166)
!3179 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3166)
!3180 = !DILocation(line: 116, column: 3, scope: !3146)
!3181 = !DILocation(line: 0, scope: !3160)
!3182 = !DILocation(line: 53, column: 8, scope: !3168)
!3183 = !DILocation(line: 53, column: 13, scope: !3168)
!3184 = !DILocation(line: 53, column: 10, scope: !3168)
!3185 = !DILocation(line: 57, column: 7, scope: !3172)
!3186 = !DILocation(line: 58, column: 7, scope: !3172)
!3187 = !DILocation(line: 61, column: 7, scope: !3160)
!3188 = !DILocation(line: 62, column: 8, scope: !3176)
!3189 = !DILocation(line: 62, column: 13, scope: !3176)
!3190 = !DILocation(line: 62, column: 10, scope: !3176)
!3191 = !DILocation(line: 63, column: 5, scope: !3176)
!3192 = !DILocation(line: 65, column: 1, scope: !3160)
!3193 = !DILocation(line: 0, scope: !489)
!3194 = !DILocation(line: 176, column: 14, scope: !489)
!3195 = !DILocation(line: 178, column: 9, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !489, file: !249, line: 178, column: 7)
!3197 = !DILocation(line: 178, column: 7, scope: !489)
!3198 = !DILocation(line: 180, column: 13, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !249, line: 180, column: 11)
!3200 = distinct !DILexicalBlock(scope: !3196, file: !249, line: 179, column: 5)
!3201 = !DILocation(line: 180, column: 11, scope: !3200)
!3202 = !DILocation(line: 188, column: 30, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3199, file: !249, line: 181, column: 9)
!3204 = !DILocation(line: 189, column: 16, scope: !3203)
!3205 = !DILocation(line: 189, column: 13, scope: !3203)
!3206 = !DILocation(line: 190, column: 9, scope: !3203)
!3207 = !DILocation(line: 191, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3200, file: !249, line: 191, column: 11)
!3209 = !DILocation(line: 191, column: 11, scope: !3200)
!3210 = !DILocation(line: 206, column: 7, scope: !489)
!3211 = !DILocation(line: 207, column: 25, scope: !489)
!3212 = !DILocation(line: 0, scope: !3160, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 207, column: 10, scope: !489)
!3214 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3213)
!3215 = !DILocation(line: 192, column: 9, scope: !3208)
!3216 = !DILocation(line: 200, column: 69, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !249, line: 200, column: 11)
!3218 = distinct !DILexicalBlock(scope: !3196, file: !249, line: 195, column: 5)
!3219 = !DILocation(line: 201, column: 11, scope: !3217)
!3220 = !DILocation(line: 200, column: 11, scope: !3218)
!3221 = !DILocation(line: 202, column: 9, scope: !3217)
!3222 = !DILocation(line: 203, column: 14, scope: !3218)
!3223 = !DILocation(line: 203, column: 18, scope: !3218)
!3224 = !DILocation(line: 203, column: 9, scope: !3218)
!3225 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3213)
!3226 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3213)
!3227 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3213)
!3228 = !DILocation(line: 61, column: 7, scope: !3160, inlinedAt: !3213)
!3229 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3213)
!3230 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3213)
!3231 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3213)
!3232 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3213)
!3233 = !DILocation(line: 207, column: 3, scope: !489)
!3234 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2364, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3235)
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "n", arg: 1, scope: !3234, file: !249, line: 216, type: !69)
!3237 = !DILocation(line: 0, scope: !3234)
!3238 = !DILocation(line: 0, scope: !3125, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 218, column: 10, scope: !3234)
!3240 = !DILocation(line: 41, column: 13, scope: !3125, inlinedAt: !3239)
!3241 = !DILocation(line: 42, column: 8, scope: !3134, inlinedAt: !3239)
!3242 = !DILocation(line: 42, column: 15, scope: !3134, inlinedAt: !3239)
!3243 = !DILocation(line: 42, column: 10, scope: !3134, inlinedAt: !3239)
!3244 = !DILocation(line: 43, column: 5, scope: !3134, inlinedAt: !3239)
!3245 = !DILocation(line: 218, column: 3, scope: !3234)
!3246 = distinct !DISubprogram(name: "x2realloc", scope: !486, file: !486, line: 74, type: !3247, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!67, !67, !492}
!3249 = !{!3250, !3251}
!3250 = !DILocalVariable(name: "p", arg: 1, scope: !3246, file: !486, line: 74, type: !67)
!3251 = !DILocalVariable(name: "pn", arg: 2, scope: !3246, file: !486, line: 74, type: !492)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 0, scope: !489, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 76, column: 10, scope: !3246)
!3255 = !DILocation(line: 176, column: 14, scope: !489, inlinedAt: !3254)
!3256 = !DILocation(line: 178, column: 9, scope: !3196, inlinedAt: !3254)
!3257 = !DILocation(line: 178, column: 7, scope: !489, inlinedAt: !3254)
!3258 = !DILocation(line: 180, column: 13, scope: !3199, inlinedAt: !3254)
!3259 = !DILocation(line: 180, column: 11, scope: !3200, inlinedAt: !3254)
!3260 = !DILocation(line: 191, column: 11, scope: !3208, inlinedAt: !3254)
!3261 = !DILocation(line: 191, column: 11, scope: !3200, inlinedAt: !3254)
!3262 = !DILocation(line: 206, column: 7, scope: !489, inlinedAt: !3254)
!3263 = !DILocation(line: 0, scope: !3160, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 207, column: 10, scope: !489, inlinedAt: !3254)
!3265 = !DILocation(line: 53, column: 10, scope: !3168, inlinedAt: !3264)
!3266 = !DILocation(line: 192, column: 9, scope: !3208, inlinedAt: !3254)
!3267 = !DILocation(line: 201, column: 11, scope: !3217, inlinedAt: !3254)
!3268 = !DILocation(line: 200, column: 11, scope: !3218, inlinedAt: !3254)
!3269 = !DILocation(line: 202, column: 9, scope: !3217, inlinedAt: !3254)
!3270 = !DILocation(line: 203, column: 14, scope: !3218, inlinedAt: !3254)
!3271 = !DILocation(line: 203, column: 18, scope: !3218, inlinedAt: !3254)
!3272 = !DILocation(line: 203, column: 9, scope: !3218, inlinedAt: !3254)
!3273 = !DILocation(line: 53, column: 8, scope: !3168, inlinedAt: !3264)
!3274 = !DILocation(line: 57, column: 7, scope: !3172, inlinedAt: !3264)
!3275 = !DILocation(line: 58, column: 7, scope: !3172, inlinedAt: !3264)
!3276 = !DILocation(line: 61, column: 7, scope: !3160, inlinedAt: !3264)
!3277 = !DILocation(line: 62, column: 8, scope: !3176, inlinedAt: !3264)
!3278 = !DILocation(line: 62, column: 13, scope: !3176, inlinedAt: !3264)
!3279 = !DILocation(line: 62, column: 10, scope: !3176, inlinedAt: !3264)
!3280 = !DILocation(line: 63, column: 5, scope: !3176, inlinedAt: !3264)
!3281 = !DILocation(line: 76, column: 3, scope: !3246)
!3282 = distinct !DISubprogram(name: "xzalloc", scope: !486, file: !486, line: 84, type: !3126, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !486, line: 84, type: !69)
!3285 = !DILocation(line: 0, scope: !3282)
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !486, line: 93, type: !69)
!3287 = distinct !DISubprogram(name: "xcalloc", scope: !486, file: !486, line: 93, type: !3113, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3288)
!3288 = !{!3286, !3289, !3290}
!3289 = !DILocalVariable(name: "s", arg: 2, scope: !3287, file: !486, line: 93, type: !69)
!3290 = !DILocalVariable(name: "p", scope: !3287, file: !486, line: 95, type: !67)
!3291 = !DILocation(line: 0, scope: !3287, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 86, column: 10, scope: !3282)
!3293 = !DILocation(line: 100, column: 7, scope: !3294, inlinedAt: !3292)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !486, line: 100, column: 7)
!3295 = !DILocation(line: 101, column: 7, scope: !3294, inlinedAt: !3292)
!3296 = !DILocation(line: 101, column: 18, scope: !3294, inlinedAt: !3292)
!3297 = !DILocation(line: 101, column: 16, scope: !3294, inlinedAt: !3292)
!3298 = !DILocation(line: 100, column: 7, scope: !3287, inlinedAt: !3292)
!3299 = !DILocation(line: 102, column: 5, scope: !3294, inlinedAt: !3292)
!3300 = !DILocation(line: 86, column: 3, scope: !3282)
!3301 = !DILocation(line: 0, scope: !3287)
!3302 = !DILocation(line: 100, column: 7, scope: !3294)
!3303 = !DILocation(line: 101, column: 7, scope: !3294)
!3304 = !DILocation(line: 101, column: 18, scope: !3294)
!3305 = !DILocation(line: 101, column: 16, scope: !3294)
!3306 = !DILocation(line: 100, column: 7, scope: !3287)
!3307 = !DILocation(line: 102, column: 5, scope: !3294)
!3308 = !DILocation(line: 103, column: 3, scope: !3287)
!3309 = distinct !DISubprogram(name: "xmemdup", scope: !486, file: !486, line: 111, type: !3310, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!67, !252, !69}
!3312 = !{!3313, !3314}
!3313 = !DILocalVariable(name: "p", arg: 1, scope: !3309, file: !486, line: 111, type: !252)
!3314 = !DILocalVariable(name: "s", arg: 2, scope: !3309, file: !486, line: 111, type: !69)
!3315 = !DILocation(line: 0, scope: !3309)
!3316 = !DILocation(line: 0, scope: !3125, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 113, column: 18, scope: !3309)
!3318 = !DILocation(line: 41, column: 13, scope: !3125, inlinedAt: !3317)
!3319 = !DILocation(line: 42, column: 8, scope: !3134, inlinedAt: !3317)
!3320 = !DILocation(line: 42, column: 15, scope: !3134, inlinedAt: !3317)
!3321 = !DILocation(line: 42, column: 10, scope: !3134, inlinedAt: !3317)
!3322 = !DILocation(line: 43, column: 5, scope: !3134, inlinedAt: !3317)
!3323 = !DILocalVariable(name: "__dest", arg: 1, scope: !3324, file: !1240, line: 31, type: !1243)
!3324 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 31, type: !1241, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3325)
!3325 = !{!3323, !3326, !3327}
!3326 = !DILocalVariable(name: "__src", arg: 2, scope: !3324, file: !1240, line: 31, type: !1244)
!3327 = !DILocalVariable(name: "__len", arg: 3, scope: !3324, file: !1240, line: 31, type: !69)
!3328 = !DILocation(line: 0, scope: !3324, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 113, column: 10, scope: !3309)
!3330 = !DILocation(line: 34, column: 10, scope: !3324, inlinedAt: !3329)
!3331 = !DILocation(line: 113, column: 3, scope: !3309)
!3332 = distinct !DISubprogram(name: "xstrdup", scope: !486, file: !486, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !485, retainedNodes: !3333)
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "string", arg: 1, scope: !3332, file: !486, line: 119, type: !6)
!3335 = !DILocation(line: 0, scope: !3332)
!3336 = !DILocation(line: 121, column: 27, scope: !3332)
!3337 = !DILocation(line: 121, column: 43, scope: !3332)
!3338 = !DILocation(line: 0, scope: !3309, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 121, column: 10, scope: !3332)
!3340 = !DILocation(line: 0, scope: !3125, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 113, column: 18, scope: !3309, inlinedAt: !3339)
!3342 = !DILocation(line: 41, column: 13, scope: !3125, inlinedAt: !3341)
!3343 = !DILocation(line: 42, column: 8, scope: !3134, inlinedAt: !3341)
!3344 = !DILocation(line: 42, column: 15, scope: !3134, inlinedAt: !3341)
!3345 = !DILocation(line: 42, column: 10, scope: !3134, inlinedAt: !3341)
!3346 = !DILocation(line: 43, column: 5, scope: !3134, inlinedAt: !3341)
!3347 = !DILocation(line: 0, scope: !3324, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 113, column: 10, scope: !3309, inlinedAt: !3339)
!3349 = !DILocation(line: 34, column: 10, scope: !3324, inlinedAt: !3348)
!3350 = !DILocation(line: 121, column: 3, scope: !3332)
!3351 = distinct !DISubprogram(name: "xalloc_die", scope: !507, file: !507, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !4)
!3352 = !DILocation(line: 34, column: 10, scope: !3351)
!3353 = !DILocation(line: 34, column: 33, scope: !3351)
!3354 = !DILocation(line: 34, column: 3, scope: !3351)
!3355 = !DILocation(line: 40, column: 3, scope: !3351)
!3356 = distinct !DISubprogram(name: "rpl_calloc", scope: !510, file: !510, line: 42, type: !3113, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3357)
!3357 = !{!3358, !3359, !3360, !3361}
!3358 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !510, line: 42, type: !69)
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3356, file: !510, line: 42, type: !69)
!3360 = !DILocalVariable(name: "result", scope: !3356, file: !510, line: 44, type: !67)
!3361 = !DILocalVariable(name: "bytes", scope: !3362, file: !510, line: 56, type: !69)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !510, line: 53, column: 5)
!3363 = distinct !DILexicalBlock(scope: !3356, file: !510, line: 47, column: 7)
!3364 = !DILocation(line: 0, scope: !3356)
!3365 = !DILocation(line: 47, column: 9, scope: !3363)
!3366 = !DILocation(line: 47, column: 19, scope: !3363)
!3367 = !DILocation(line: 47, column: 14, scope: !3363)
!3368 = !DILocation(line: 0, scope: !3362)
!3369 = !DILocation(line: 57, column: 21, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !510, line: 57, column: 11)
!3371 = !DILocation(line: 57, column: 11, scope: !3362)
!3372 = !DILocation(line: 59, column: 11, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !510, line: 58, column: 9)
!3374 = !DILocation(line: 59, column: 17, scope: !3373)
!3375 = !DILocation(line: 65, column: 12, scope: !3356)
!3376 = !DILocation(line: 72, column: 3, scope: !3356)
!3377 = !DILocation(line: 73, column: 1, scope: !3356)
!3378 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !513, file: !513, line: 86, type: !3379, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3385)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!69, !3381, !6, !69, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1640, line: 6, baseType: !3384)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !519)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392}
!3386 = !DILocalVariable(name: "pwc", arg: 1, scope: !3378, file: !513, line: 86, type: !3381)
!3387 = !DILocalVariable(name: "s", arg: 2, scope: !3378, file: !513, line: 86, type: !6)
!3388 = !DILocalVariable(name: "n", arg: 3, scope: !3378, file: !513, line: 86, type: !69)
!3389 = !DILocalVariable(name: "ps", arg: 4, scope: !3378, file: !513, line: 86, type: !3382)
!3390 = !DILocalVariable(name: "ret", scope: !3378, file: !513, line: 88, type: !69)
!3391 = !DILocalVariable(name: "wc", scope: !3378, file: !513, line: 89, type: !1644)
!3392 = !DILocalVariable(name: "uc", scope: !3393, file: !513, line: 156, type: !1517)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !513, line: 155, column: 5)
!3394 = distinct !DILexicalBlock(scope: !3378, file: !513, line: 154, column: 7)
!3395 = !DILocation(line: 0, scope: !3378)
!3396 = !DILocation(line: 89, column: 3, scope: !3378)
!3397 = !DILocation(line: 105, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3378, file: !513, line: 105, column: 7)
!3399 = !DILocation(line: 105, column: 7, scope: !3378)
!3400 = !DILocation(line: 145, column: 9, scope: !3378)
!3401 = !DILocation(line: 154, column: 19, scope: !3394)
!3402 = !DILocation(line: 154, column: 31, scope: !3394)
!3403 = !DILocation(line: 154, column: 26, scope: !3394)
!3404 = !DILocation(line: 154, column: 41, scope: !3394)
!3405 = !DILocation(line: 154, column: 7, scope: !3378)
!3406 = !DILocation(line: 156, column: 26, scope: !3393)
!3407 = !DILocation(line: 0, scope: !3393)
!3408 = !DILocation(line: 157, column: 14, scope: !3393)
!3409 = !DILocation(line: 157, column: 12, scope: !3393)
!3410 = !DILocation(line: 163, column: 1, scope: !3378)
!3411 = distinct !DISubprogram(name: "close_stream", scope: !532, file: !532, line: 56, type: !3412, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3416)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!18, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2989, line: 7, baseType: !539)
!3416 = !{!3417, !3418, !3420, !3421}
!3417 = !DILocalVariable(name: "stream", arg: 1, scope: !3411, file: !532, line: 56, type: !3414)
!3418 = !DILocalVariable(name: "some_pending", scope: !3411, file: !532, line: 58, type: !3419)
!3419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3420 = !DILocalVariable(name: "prev_fail", scope: !3411, file: !532, line: 59, type: !3419)
!3421 = !DILocalVariable(name: "fclose_fail", scope: !3411, file: !532, line: 60, type: !3419)
!3422 = !DILocation(line: 0, scope: !3411)
!3423 = !DILocation(line: 58, column: 30, scope: !3411)
!3424 = !DILocalVariable(name: "__stream", arg: 1, scope: !3425, file: !3426, line: 135, type: !3414)
!3425 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3426, file: !3426, line: 135, type: !3412, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3427)
!3426 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3427 = !{!3424}
!3428 = !DILocation(line: 0, scope: !3425, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 59, column: 27, scope: !3411)
!3430 = !DILocation(line: 137, column: 10, scope: !3425, inlinedAt: !3429)
!3431 = !{!3432, !1203, i64 0}
!3432 = !{!"_IO_FILE", !1203, i64 0, !1134, i64 8, !1134, i64 16, !1134, i64 24, !1134, i64 32, !1134, i64 40, !1134, i64 48, !1134, i64 56, !1134, i64 64, !1134, i64 72, !1134, i64 80, !1134, i64 88, !1134, i64 96, !1134, i64 104, !1203, i64 112, !1203, i64 116, !2400, i64 120, !1891, i64 128, !1135, i64 130, !1135, i64 131, !1134, i64 136, !2400, i64 144, !1134, i64 152, !1134, i64 160, !1134, i64 168, !1134, i64 176, !2400, i64 184, !1203, i64 192, !1135, i64 196}
!3433 = !DILocation(line: 59, column: 43, scope: !3411)
!3434 = !DILocation(line: 60, column: 29, scope: !3411)
!3435 = !DILocation(line: 60, column: 45, scope: !3411)
!3436 = !DILocation(line: 70, column: 17, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3411, file: !532, line: 70, column: 7)
!3438 = !DILocation(line: 58, column: 50, scope: !3411)
!3439 = !DILocation(line: 70, column: 33, scope: !3437)
!3440 = !DILocation(line: 70, column: 53, scope: !3437)
!3441 = !DILocation(line: 70, column: 59, scope: !3437)
!3442 = !DILocation(line: 70, column: 7, scope: !3411)
!3443 = !DILocation(line: 72, column: 11, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !532, line: 71, column: 5)
!3445 = !DILocation(line: 73, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !532, line: 72, column: 11)
!3447 = !DILocation(line: 73, column: 15, scope: !3446)
!3448 = !DILocation(line: 78, column: 1, scope: !3411)
!3449 = distinct !DISubprogram(name: "hard_locale", scope: !571, file: !571, line: 27, type: !529, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3450)
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "category", arg: 1, scope: !3449, file: !571, line: 27, type: !18)
!3452 = !DILocalVariable(name: "locale", scope: !3449, file: !571, line: 29, type: !3453)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3454)
!3454 = !{!3455}
!3455 = !DISubrange(count: 257)
!3456 = !DILocation(line: 0, scope: !3449)
!3457 = !DILocation(line: 29, column: 3, scope: !3449)
!3458 = !DILocation(line: 29, column: 8, scope: !3449)
!3459 = !DILocation(line: 31, column: 7, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3449, file: !571, line: 31, column: 7)
!3461 = !DILocation(line: 31, column: 7, scope: !3449)
!3462 = !DILocation(line: 34, column: 12, scope: !3449)
!3463 = !DILocation(line: 34, column: 38, scope: !3449)
!3464 = !DILocation(line: 34, column: 41, scope: !3449)
!3465 = !DILocation(line: 34, column: 66, scope: !3449)
!3466 = !DILocation(line: 35, column: 1, scope: !3449)
!3467 = distinct !DISubprogram(name: "locale_charset", scope: !578, file: !578, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3468)
!3468 = !{!3469}
!3469 = !DILocalVariable(name: "codeset", scope: !3467, file: !578, line: 833, type: !6)
!3470 = !DILocation(line: 847, column: 13, scope: !3467)
!3471 = !DILocation(line: 0, scope: !3467)
!3472 = !DILocation(line: 911, column: 15, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3467, file: !578, line: 911, column: 7)
!3474 = !DILocation(line: 911, column: 7, scope: !3467)
!3475 = !DILocation(line: 1070, column: 13, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !578, line: 1070, column: 13)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !578, line: 1060, column: 7)
!3478 = distinct !DILexicalBlock(scope: !3467, file: !578, line: 1019, column: 3)
!3479 = !DILocation(line: 1070, column: 24, scope: !3476)
!3480 = !DILocation(line: 1070, column: 13, scope: !3477)
!3481 = !DILocation(line: 1158, column: 3, scope: !3467)
!3482 = distinct !DISubprogram(name: "setlocale_null_r", scope: !971, file: !971, line: 269, type: !3483, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3485)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!18, !18, !25, !69}
!3485 = !{!3486, !3487, !3488}
!3486 = !DILocalVariable(name: "category", arg: 1, scope: !3482, file: !971, line: 269, type: !18)
!3487 = !DILocalVariable(name: "buf", arg: 2, scope: !3482, file: !971, line: 269, type: !25)
!3488 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3482, file: !971, line: 269, type: !69)
!3489 = !DILocation(line: 0, scope: !3482)
!3490 = !DILocalVariable(name: "category", arg: 1, scope: !3491, file: !971, line: 91, type: !18)
!3491 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !971, file: !971, line: 91, type: !3483, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3492)
!3492 = !{!3490, !3493, !3494, !3495, !3496}
!3493 = !DILocalVariable(name: "buf", arg: 2, scope: !3491, file: !971, line: 91, type: !25)
!3494 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3491, file: !971, line: 91, type: !69)
!3495 = !DILocalVariable(name: "result", scope: !3491, file: !971, line: 140, type: !6)
!3496 = !DILocalVariable(name: "length", scope: !3497, file: !971, line: 154, type: !69)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !971, line: 153, column: 5)
!3498 = distinct !DILexicalBlock(scope: !3491, file: !971, line: 142, column: 7)
!3499 = !DILocation(line: 0, scope: !3491, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 274, column: 10, scope: !3482)
!3501 = !DILocalVariable(name: "category", arg: 1, scope: !3502, file: !971, line: 60, type: !18)
!3502 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !971, file: !971, line: 60, type: !3503, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!6, !18}
!3505 = !{!3501, !3506}
!3506 = !DILocalVariable(name: "result", scope: !3502, file: !971, line: 62, type: !6)
!3507 = !DILocation(line: 0, scope: !3502, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 140, column: 24, scope: !3491, inlinedAt: !3500)
!3509 = !DILocation(line: 62, column: 24, scope: !3502, inlinedAt: !3508)
!3510 = !DILocation(line: 142, column: 14, scope: !3498, inlinedAt: !3500)
!3511 = !DILocation(line: 142, column: 7, scope: !3491, inlinedAt: !3500)
!3512 = !DILocation(line: 145, column: 19, scope: !3513, inlinedAt: !3500)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !971, line: 145, column: 11)
!3514 = distinct !DILexicalBlock(scope: !3498, file: !971, line: 143, column: 5)
!3515 = !DILocation(line: 145, column: 11, scope: !3514, inlinedAt: !3500)
!3516 = !DILocation(line: 149, column: 16, scope: !3513, inlinedAt: !3500)
!3517 = !DILocation(line: 149, column: 9, scope: !3513, inlinedAt: !3500)
!3518 = !DILocation(line: 154, column: 23, scope: !3497, inlinedAt: !3500)
!3519 = !DILocation(line: 0, scope: !3497, inlinedAt: !3500)
!3520 = !DILocation(line: 155, column: 18, scope: !3521, inlinedAt: !3500)
!3521 = distinct !DILexicalBlock(scope: !3497, file: !971, line: 155, column: 11)
!3522 = !DILocation(line: 155, column: 11, scope: !3497, inlinedAt: !3500)
!3523 = !DILocation(line: 157, column: 39, scope: !3524, inlinedAt: !3500)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !971, line: 156, column: 9)
!3525 = !DILocalVariable(name: "__dest", arg: 1, scope: !3526, file: !1240, line: 31, type: !1243)
!3526 = distinct !DISubprogram(name: "memcpy", scope: !1240, file: !1240, line: 31, type: !1241, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3527)
!3527 = !{!3525, !3528, !3529}
!3528 = !DILocalVariable(name: "__src", arg: 2, scope: !3526, file: !1240, line: 31, type: !1244)
!3529 = !DILocalVariable(name: "__len", arg: 3, scope: !3526, file: !1240, line: 31, type: !69)
!3530 = !DILocation(line: 0, scope: !3526, inlinedAt: !3531)
!3531 = distinct !DILocation(line: 157, column: 11, scope: !3524, inlinedAt: !3500)
!3532 = !DILocation(line: 34, column: 10, scope: !3526, inlinedAt: !3531)
!3533 = !DILocation(line: 158, column: 11, scope: !3524, inlinedAt: !3500)
!3534 = !DILocation(line: 162, column: 23, scope: !3535, inlinedAt: !3500)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !971, line: 162, column: 15)
!3536 = distinct !DILexicalBlock(scope: !3521, file: !971, line: 161, column: 9)
!3537 = !DILocation(line: 162, column: 15, scope: !3536, inlinedAt: !3500)
!3538 = !DILocation(line: 167, column: 44, scope: !3539, inlinedAt: !3500)
!3539 = distinct !DILexicalBlock(scope: !3535, file: !971, line: 163, column: 13)
!3540 = !DILocation(line: 0, scope: !3526, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 167, column: 15, scope: !3539, inlinedAt: !3500)
!3542 = !DILocation(line: 34, column: 10, scope: !3526, inlinedAt: !3541)
!3543 = !DILocation(line: 168, column: 15, scope: !3539, inlinedAt: !3500)
!3544 = !DILocation(line: 168, column: 32, scope: !3539, inlinedAt: !3500)
!3545 = !DILocation(line: 169, column: 13, scope: !3539, inlinedAt: !3500)
!3546 = !DILocation(line: 0, scope: !3498, inlinedAt: !3500)
!3547 = !DILocation(line: 274, column: 3, scope: !3482)
!3548 = distinct !DISubprogram(name: "setlocale_null", scope: !971, file: !971, line: 301, type: !3503, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3549)
!3549 = !{!3550}
!3550 = !DILocalVariable(name: "category", arg: 1, scope: !3548, file: !971, line: 301, type: !18)
!3551 = !DILocation(line: 0, scope: !3548)
!3552 = !DILocation(line: 0, scope: !3502, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 304, column: 10, scope: !3548)
!3554 = !DILocation(line: 62, column: 24, scope: !3502, inlinedAt: !3553)
!3555 = !DILocation(line: 304, column: 3, scope: !3548)
!3556 = distinct !DISubprogram(name: "rpl_fclose", scope: !974, file: !974, line: 58, type: !3557, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3561)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!18, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2989, line: 7, baseType: !980)
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DILocalVariable(name: "fp", arg: 1, scope: !3556, file: !974, line: 58, type: !3559)
!3563 = !DILocalVariable(name: "saved_errno", scope: !3556, file: !974, line: 60, type: !18)
!3564 = !DILocalVariable(name: "fd", scope: !3556, file: !974, line: 61, type: !18)
!3565 = !DILocalVariable(name: "result", scope: !3556, file: !974, line: 62, type: !18)
!3566 = !DILocation(line: 0, scope: !3556)
!3567 = !DILocation(line: 65, column: 8, scope: !3556)
!3568 = !DILocation(line: 66, column: 10, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3556, file: !974, line: 66, column: 7)
!3570 = !DILocation(line: 66, column: 7, scope: !3556)
!3571 = !DILocation(line: 67, column: 12, scope: !3569)
!3572 = !DILocation(line: 67, column: 5, scope: !3569)
!3573 = !DILocation(line: 72, column: 9, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3556, file: !974, line: 72, column: 7)
!3575 = !DILocation(line: 72, column: 23, scope: !3574)
!3576 = !DILocation(line: 72, column: 33, scope: !3574)
!3577 = !DILocation(line: 72, column: 26, scope: !3574)
!3578 = !DILocation(line: 72, column: 59, scope: !3574)
!3579 = !DILocation(line: 73, column: 7, scope: !3574)
!3580 = !DILocation(line: 73, column: 10, scope: !3574)
!3581 = !DILocation(line: 72, column: 7, scope: !3556)
!3582 = !DILocation(line: 100, column: 12, scope: !3556)
!3583 = !DILocation(line: 105, column: 7, scope: !3556)
!3584 = !DILocation(line: 74, column: 19, scope: !3574)
!3585 = !DILocation(line: 105, column: 19, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3556, file: !974, line: 105, column: 7)
!3587 = !DILocation(line: 107, column: 13, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3586, file: !974, line: 106, column: 5)
!3589 = !DILocation(line: 109, column: 5, scope: !3588)
!3590 = !DILocation(line: 112, column: 1, scope: !3556)
!3591 = distinct !DISubprogram(name: "rpl_fflush", scope: !1017, file: !1017, line: 129, type: !3592, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !3596)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!18, !3594}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2989, line: 7, baseType: !1023)
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "stream", arg: 1, scope: !3591, file: !1017, line: 129, type: !3594)
!3598 = !DILocation(line: 0, scope: !3591)
!3599 = !DILocation(line: 150, column: 14, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3591, file: !1017, line: 150, column: 7)
!3601 = !DILocation(line: 150, column: 22, scope: !3600)
!3602 = !DILocation(line: 150, column: 27, scope: !3600)
!3603 = !DILocation(line: 150, column: 7, scope: !3591)
!3604 = !DILocation(line: 151, column: 12, scope: !3600)
!3605 = !DILocation(line: 151, column: 5, scope: !3600)
!3606 = !DILocalVariable(name: "fp", arg: 1, scope: !3607, file: !1017, line: 41, type: !3594)
!3607 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1017, file: !1017, line: 41, type: !3608, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3594}
!3610 = !{!3606}
!3611 = !DILocation(line: 0, scope: !3607, inlinedAt: !3612)
!3612 = distinct !DILocation(line: 156, column: 3, scope: !3591)
!3613 = !DILocation(line: 43, column: 11, scope: !3614, inlinedAt: !3612)
!3614 = distinct !DILexicalBlock(scope: !3607, file: !1017, line: 43, column: 7)
!3615 = !DILocation(line: 43, column: 18, scope: !3614, inlinedAt: !3612)
!3616 = !DILocation(line: 43, column: 7, scope: !3607, inlinedAt: !3612)
!3617 = !DILocation(line: 45, column: 5, scope: !3614, inlinedAt: !3612)
!3618 = !DILocation(line: 158, column: 10, scope: !3591)
!3619 = !DILocation(line: 158, column: 3, scope: !3591)
!3620 = !DILocation(line: 235, column: 1, scope: !3591)
!3621 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1058, file: !1058, line: 28, type: !3622, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !3627)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!18, !3624, !3626, !18}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2989, line: 7, baseType: !1064)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3627 = !{!3628, !3629, !3630, !3631}
!3628 = !DILocalVariable(name: "fp", arg: 1, scope: !3621, file: !1058, line: 28, type: !3624)
!3629 = !DILocalVariable(name: "offset", arg: 2, scope: !3621, file: !1058, line: 28, type: !3626)
!3630 = !DILocalVariable(name: "whence", arg: 3, scope: !3621, file: !1058, line: 28, type: !18)
!3631 = !DILocalVariable(name: "pos", scope: !3632, file: !1058, line: 117, type: !3626)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !1058, line: 113, column: 5)
!3633 = distinct !DILexicalBlock(scope: !3621, file: !1058, line: 52, column: 7)
!3634 = !DILocation(line: 0, scope: !3621)
!3635 = !DILocation(line: 52, column: 11, scope: !3633)
!3636 = !{!3432, !1134, i64 16}
!3637 = !DILocation(line: 52, column: 31, scope: !3633)
!3638 = !{!3432, !1134, i64 8}
!3639 = !DILocation(line: 52, column: 24, scope: !3633)
!3640 = !DILocation(line: 53, column: 7, scope: !3633)
!3641 = !DILocation(line: 53, column: 14, scope: !3633)
!3642 = !{!3432, !1134, i64 40}
!3643 = !DILocation(line: 53, column: 35, scope: !3633)
!3644 = !{!3432, !1134, i64 32}
!3645 = !DILocation(line: 53, column: 28, scope: !3633)
!3646 = !DILocation(line: 54, column: 7, scope: !3633)
!3647 = !DILocation(line: 54, column: 14, scope: !3633)
!3648 = !{!3432, !1134, i64 72}
!3649 = !DILocation(line: 54, column: 28, scope: !3633)
!3650 = !DILocation(line: 52, column: 7, scope: !3621)
!3651 = !DILocation(line: 117, column: 26, scope: !3632)
!3652 = !DILocation(line: 117, column: 19, scope: !3632)
!3653 = !DILocation(line: 0, scope: !3632)
!3654 = !DILocation(line: 118, column: 15, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3632, file: !1058, line: 118, column: 11)
!3656 = !DILocation(line: 118, column: 11, scope: !3632)
!3657 = !DILocation(line: 129, column: 11, scope: !3632)
!3658 = !DILocation(line: 129, column: 18, scope: !3632)
!3659 = !DILocation(line: 130, column: 11, scope: !3632)
!3660 = !DILocation(line: 130, column: 19, scope: !3632)
!3661 = !{!3432, !2400, i64 144}
!3662 = !DILocation(line: 161, column: 7, scope: !3632)
!3663 = !DILocation(line: 163, column: 10, scope: !3621)
!3664 = !DILocation(line: 163, column: 3, scope: !3621)
!3665 = !DILocation(line: 164, column: 1, scope: !3621)
