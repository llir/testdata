; ModuleID = 'coreutils-8.32/src/dirname.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !131
@.str.31 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !159
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !164
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !208
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !210
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !216
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !257
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !364
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !370
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !372
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !379
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !386
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !374
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !388
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !394
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1071 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1076, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %0, metadata !1075, metadata !DIExpression()), !dbg !1097
  %3 = icmp eq i32 %0, 0, !dbg !1098
  br i1 %3, label %9, label %4, !dbg !1099

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1100, !tbaa !1102
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1100
  %7 = load i8*, i8** @program_name, align 8, !dbg !1100, !tbaa !1102
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1100
  br label %64, !dbg !1100

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1106
  %11 = load i8*, i8** @program_name, align 8, !dbg !1106, !tbaa !1102
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1106
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1107
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1107, !tbaa !1102
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1107
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1108
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1108, !tbaa !1102
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1108
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1109
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !1102
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1109
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1110
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1110, !tbaa !1102
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1110
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1111
  %26 = load i8*, i8** @program_name, align 8, !dbg !1111, !tbaa !1102
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* %26, i8* %26, i8* %26) #20, !dbg !1111
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), metadata !1080, metadata !DIExpression()) #20, !dbg !1112
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1113
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1113
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %28, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1093
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), metadata !1081, metadata !DIExpression()) #20, !dbg !1112
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  br label %30, !dbg !1115

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  %33 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #22, !dbg !1116
  %34 = icmp eq i32 %33, 0, !dbg !1116
  br i1 %34, label %40, label %35, !dbg !1115

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !1117
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !1118
  %38 = load i8*, i8** %37, align 8, !dbg !1118, !tbaa !1119
  %39 = icmp eq i8* %38, null, !dbg !1121
  br i1 %39, label %40, label %30, !dbg !1122, !llvm.loop !1123

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1082, metadata !DIExpression()) #20, !dbg !1112
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !1124
  %43 = load i8*, i8** %42, align 8, !dbg !1124, !tbaa !1126
  %44 = icmp eq i8* %43, null, !dbg !1127
  %45 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !1128
  call void @llvm.dbg.value(metadata i8* %45, metadata !1081, metadata !DIExpression()) #20, !dbg !1112
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #20, !dbg !1129
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #20, !dbg !1129
  %48 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %48, metadata !1089, metadata !DIExpression()) #20, !dbg !1112
  %49 = icmp eq i8* %48, null, !dbg !1131
  br i1 %49, label %57, label %50, !dbg !1133

50:                                               ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #22, !dbg !1134
  %52 = icmp eq i32 %51, 0, !dbg !1134
  br i1 %52, label %57, label %53, !dbg !1135

53:                                               ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #20, !dbg !1136
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !1102
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #20, !dbg !1136
  br label %57, !dbg !1138

57:                                               ; preds = %40, %50, %53
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #20, !dbg !1139
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1139
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #20, !dbg !1140
  %61 = icmp eq i8* %45, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), !dbg !1140
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1140
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %45, i8* %62) #20, !dbg !1140
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #20, !dbg !1141
  br label %64

64:                                               ; preds = %57, %4
  tail call void @exit(i32 %0) #23, !dbg !1142
  unreachable, !dbg !1142
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !138, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8** %1, metadata !139, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 0, metadata !140, metadata !DIExpression()), !dbg !1143
  %3 = load i8*, i8** %1, align 8, !dbg !1144, !tbaa !1102
  tail call void @set_program_name(i8* %3) #20, !dbg !1145
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1146
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1147
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1148
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1149
  br label %8, !dbg !1150

8:                                                ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ], !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  %10 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #20, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %10, metadata !144, metadata !DIExpression()), !dbg !1153
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 122, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1154

11:                                               ; preds = %8
  tail call void @usage(i32 0) #24, !dbg !1155
  unreachable, !dbg !1155

12:                                               ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1157, !tbaa !1102
  %14 = load i8*, i8** @Version, align 8, !dbg !1157, !tbaa !1102
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* null) #20, !dbg !1157
  tail call void @exit(i32 0) #23, !dbg !1157
  unreachable, !dbg !1157

15:                                               ; preds = %8
  tail call void @usage(i32 1) #24, !dbg !1158
  unreachable, !dbg !1158

16:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 %9, metadata !140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8 1, metadata !140, metadata !DIExpression()), !dbg !1143
  %17 = load i32, i32* @optind, align 4, !dbg !1159, !tbaa !1161
  %18 = icmp slt i32 %17, %0, !dbg !1163
  br i1 %18, label %19, label %23, !dbg !1164

19:                                               ; preds = %16
  %20 = icmp eq i8 %9, 0, !dbg !1165
  %21 = select i1 %20, i32 10, i32 0, !dbg !1165
  %22 = trunc i32 %21 to i8, !dbg !1166
  br label %25, !dbg !1174

23:                                               ; preds = %16
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #20, !dbg !1175
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %24) #20, !dbg !1177
  tail call void @usage(i32 1) #24, !dbg !1178
  unreachable, !dbg !1178

25:                                               ; preds = %19, %46
  %26 = phi i32 [ %17, %19 ], [ %48, %46 ]
  %27 = sext i32 %26 to i64, !dbg !1179
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !1179
  %29 = load i8*, i8** %28, align 8, !dbg !1179, !tbaa !1102
  call void @llvm.dbg.value(metadata i8* %29, metadata !142, metadata !DIExpression()), !dbg !1143
  %30 = tail call i64 @dir_len(i8* %29) #22, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %30, metadata !143, metadata !DIExpression()), !dbg !1143
  %31 = icmp eq i64 %30, 0, !dbg !1181
  call void @llvm.dbg.value(metadata i8* undef, metadata !142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i64 undef, metadata !143, metadata !DIExpression()), !dbg !1143
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1165, !tbaa !1102
  %33 = select i1 %31, i8* @main.dot, i8* %29, !dbg !1183
  call void @llvm.dbg.value(metadata i8* %33, metadata !142, metadata !DIExpression()), !dbg !1143
  %34 = select i1 %31, i64 1, i64 %30, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %34, metadata !143, metadata !DIExpression()), !dbg !1143
  %35 = tail call i64 @fwrite_unlocked(i8* %33, i64 1, i64 %34, %struct._IO_FILE* %32), !dbg !1184
  call void @llvm.dbg.value(metadata i32 %21, metadata !1172, metadata !DIExpression()) #20, !dbg !1166
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1185, !tbaa !1102
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1185
  %38 = load i8*, i8** %37, align 8, !dbg !1185, !tbaa !1186
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1185
  %40 = load i8*, i8** %39, align 8, !dbg !1185, !tbaa !1190
  %41 = icmp ult i8* %38, %40, !dbg !1185
  br i1 %41, label %44, label %42, !dbg !1185, !prof !1191, !misexpect !1192

42:                                               ; preds = %25
  %43 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %21) #20, !dbg !1185
  br label %46, !dbg !1185

44:                                               ; preds = %25
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1185
  store i8* %45, i8** %37, align 8, !dbg !1185, !tbaa !1186
  store i8 %22, i8* %38, align 1, !dbg !1185, !tbaa !1193
  br label %46, !dbg !1185

46:                                               ; preds = %42, %44
  %47 = load i32, i32* @optind, align 4, !dbg !1194, !tbaa !1161
  %48 = add nsw i32 %47, 1, !dbg !1194
  store i32 %48, i32* @optind, align 4, !dbg !1194, !tbaa !1161
  %49 = icmp slt i32 %48, %0, !dbg !1195
  br i1 %49, label %25, label %50, !dbg !1174, !llvm.loop !1196

50:                                               ; preds = %46
  ret i32 0, !dbg !1198
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !116 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !124 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #9 !dbg !1199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1201, metadata !DIExpression()), !dbg !1202
  store i8* %0, i8** @file_name, align 8, !dbg !1203, !tbaa !1102
  ret void, !dbg !1204
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #9 !dbg !1205 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1211, !tbaa !1212
  ret void, !dbg !1214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1215 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1220, !tbaa !1102
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1221
  %3 = icmp eq i32 %2, 0, !dbg !1222
  br i1 %3, label %22, label %4, !dbg !1223

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1224, !tbaa !1212, !range !1225
  %6 = icmp eq i8 %5, 0, !dbg !1224
  br i1 %6, label %11, label %7, !dbg !1226

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1227
  %9 = load i32, i32* %8, align 4, !dbg !1227, !tbaa !1161
  %10 = icmp eq i32 %9, 32, !dbg !1228
  br i1 %10, label %22, label %11, !dbg !1229

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #20, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %12, metadata !1217, metadata !DIExpression()), !dbg !1231
  %13 = load i8*, i8** @file_name, align 8, !dbg !1232, !tbaa !1102
  %14 = icmp eq i8* %13, null, !dbg !1232
  %15 = tail call i32* @__errno_location() #25, !dbg !1234
  %16 = load i32, i32* %15, align 4, !dbg !1234, !tbaa !1161
  br i1 %14, label %19, label %17, !dbg !1235

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1236
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1237
  br label %20, !dbg !1237

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #20, !dbg !1238
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1239, !tbaa !1161
  tail call void @_exit(i32 %21) #23, !dbg !1240
  unreachable, !dbg !1240

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1241, !tbaa !1102
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1243
  %25 = icmp eq i32 %24, 0, !dbg !1244
  br i1 %25, label %28, label %26, !dbg !1245

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1246, !tbaa !1161
  tail call void @_exit(i32 %27) #23, !dbg !1247
  unreachable, !dbg !1247

28:                                               ; preds = %22
  ret void, !dbg !1248
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @dir_len(i8* %0) local_unnamed_addr #12 !dbg !1249 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1253, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 0, metadata !1254, metadata !DIExpression()), !dbg !1256
  %2 = load i8, i8* %0, align 1, !dbg !1257, !tbaa !1193
  %3 = icmp eq i8 %2, 47, !dbg !1257
  %4 = zext i1 %3 to i64, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %4, metadata !1254, metadata !DIExpression()), !dbg !1256
  %5 = tail call i8* @last_component(i8* nonnull %0) #22, !dbg !1259
  %6 = ptrtoint i8* %5 to i64, !dbg !1261
  %7 = ptrtoint i8* %0 to i64, !dbg !1261
  %8 = sub i64 %6, %7, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %8, metadata !1255, metadata !DIExpression()), !dbg !1256
  br label %9, !dbg !1262

9:                                                ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1263
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  %11 = icmp ugt i64 %10, %4, !dbg !1264
  br i1 %11, label %12, label %17, !dbg !1266

12:                                               ; preds = %9
  %13 = add i64 %10, -1, !dbg !1267
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1267
  %15 = load i8, i8* %14, align 1, !dbg !1267, !tbaa !1193
  %16 = icmp eq i8 %15, 47, !dbg !1267
  br i1 %16, label %9, label %17, !dbg !1269, !llvm.loop !1270

17:                                               ; preds = %12, %9
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()), !dbg !1256
  ret i64 %10, !dbg !1272
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i8* @mdir_name(i8* %0) local_unnamed_addr #13 !dbg !1273 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1275, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata i8* %0, metadata !1253, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 0, metadata !1254, metadata !DIExpression()) #20, !dbg !1280
  %2 = load i8, i8* %0, align 1, !dbg !1282, !tbaa !1193
  %3 = icmp eq i8 %2, 47, !dbg !1282
  %4 = zext i1 %3 to i64, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %4, metadata !1254, metadata !DIExpression()) #20, !dbg !1280
  %5 = tail call i8* @last_component(i8* nonnull %0) #22, !dbg !1284
  %6 = ptrtoint i8* %5 to i64, !dbg !1285
  %7 = ptrtoint i8* %0 to i64, !dbg !1285
  %8 = sub i64 %6, %7, !dbg !1285
  call void @llvm.dbg.value(metadata i64 %8, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  br label %9, !dbg !1286

9:                                                ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !1287
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  %11 = icmp ugt i64 %10, %4, !dbg !1288
  br i1 %11, label %12, label %17, !dbg !1289

12:                                               ; preds = %9
  %13 = add i64 %10, -1, !dbg !1290
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1290
  %15 = load i8, i8* %14, align 1, !dbg !1290, !tbaa !1193
  %16 = icmp eq i8 %15, 47, !dbg !1290
  br i1 %16, label %9, label %17, !dbg !1291, !llvm.loop !1292

17:                                               ; preds = %9, %12
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1255, metadata !DIExpression()) #20, !dbg !1280
  call void @llvm.dbg.value(metadata i64 %10, metadata !1276, metadata !DIExpression()), !dbg !1279
  %18 = icmp eq i64 %10, 0, !dbg !1294
  call void @llvm.dbg.value(metadata i1 %18, metadata !1277, metadata !DIExpression()), !dbg !1279
  %19 = zext i1 %18 to i64, !dbg !1295
  %20 = add i64 %10, 1, !dbg !1296
  %21 = add i64 %20, %19, !dbg !1297
  %22 = tail call noalias i8* @malloc(i64 %21) #20, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %22, metadata !1278, metadata !DIExpression()), !dbg !1279
  %23 = icmp eq i8* %22, null, !dbg !1299
  br i1 %23, label %29, label %24, !dbg !1301

24:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8* %22, metadata !1302, metadata !DIExpression()) #20, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %0, metadata !1310, metadata !DIExpression()) #20, !dbg !1312
  call void @llvm.dbg.value(metadata i64 %10, metadata !1311, metadata !DIExpression()) #20, !dbg !1312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %0, i64 %10, i1 false) #20, !dbg !1314
  br i1 %18, label %25, label %26, !dbg !1315

25:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !1276, metadata !DIExpression()), !dbg !1279
  store i8 46, i8* %22, align 1, !dbg !1316, !tbaa !1193
  br label %26, !dbg !1318

26:                                               ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ], !dbg !1279
  call void @llvm.dbg.value(metadata i64 %27, metadata !1276, metadata !DIExpression()), !dbg !1279
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !1319
  store i8 0, i8* %28, align 1, !dbg !1320, !tbaa !1193
  br label %29, !dbg !1321

29:                                               ; preds = %17, %26
  ret i8* %22, !dbg !1322
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #14 !dbg !1323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1325, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %0, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8 0, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %2, !dbg !1330

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1329
  call void @llvm.dbg.value(metadata i8* %3, metadata !1326, metadata !DIExpression()), !dbg !1329
  %4 = load i8, i8* %3, align 1, !dbg !1331, !tbaa !1193
  %5 = icmp eq i8 %4, 47, !dbg !1331
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %6, metadata !1326, metadata !DIExpression()), !dbg !1329
  br i1 %5, label %2, label %7, !dbg !1330, !llvm.loop !1333

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1334
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1337
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1338
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1329
  call void @llvm.dbg.value(metadata i8 %11, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %10, metadata !1327, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1339

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1340
  %14 = icmp eq i8 %13, 0, !dbg !1340
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1344
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1344
  br label %17, !dbg !1344

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1329
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1329
  call void @llvm.dbg.value(metadata i8 %19, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %18, metadata !1326, metadata !DIExpression()), !dbg !1329
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %20, metadata !1327, metadata !DIExpression()), !dbg !1329
  %21 = load i8, i8* %20, align 1, !dbg !1334, !tbaa !1193
  br label %7, !dbg !1346, !llvm.loop !1347

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i8* %9, metadata !1326, metadata !DIExpression()), !dbg !1329
  ret i8* %9, !dbg !1349
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #12 !dbg !1350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1352, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 0, metadata !1354, metadata !DIExpression()), !dbg !1355
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %2, metadata !1353, metadata !DIExpression()), !dbg !1355
  br label %3, !dbg !1358

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1359
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  %5 = icmp ugt i64 %4, 1, !dbg !1360
  br i1 %5, label %6, label %11, !dbg !1362

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !1363
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1363
  %9 = load i8, i8* %8, align 1, !dbg !1363, !tbaa !1193
  %10 = icmp eq i8 %9, 47, !dbg !1363
  br i1 %10, label %3, label %11, !dbg !1364, !llvm.loop !1365

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i64 %4, metadata !1353, metadata !DIExpression()), !dbg !1355
  ret i64 %4, !dbg !1367
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1370, metadata !DIExpression()), !dbg !1373
  %2 = icmp eq i8* %0, null, !dbg !1374
  br i1 %2, label %3, label %6, !dbg !1376

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1377, !tbaa !1102
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1379
  tail call void @abort() #23, !dbg !1380
  unreachable, !dbg !1380

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %7, metadata !1371, metadata !DIExpression()), !dbg !1373
  %8 = icmp eq i8* %7, null, !dbg !1382
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1383
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1383
  call void @llvm.dbg.value(metadata i8* %10, metadata !1372, metadata !DIExpression()), !dbg !1373
  %11 = ptrtoint i8* %10 to i64, !dbg !1384
  %12 = ptrtoint i8* %0 to i64, !dbg !1384
  %13 = sub i64 %11, %12, !dbg !1384
  %14 = icmp sgt i64 %13, 6, !dbg !1386
  br i1 %14, label %15, label %24, !dbg !1387

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1388
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #22, !dbg !1389
  %18 = icmp eq i32 %17, 0, !dbg !1390
  br i1 %18, label %19, label %24, !dbg !1391

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1370, metadata !DIExpression()), !dbg !1373
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #22, !dbg !1392
  %21 = icmp eq i32 %20, 0, !dbg !1395
  br i1 %21, label %22, label %24, !dbg !1396

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1397
  call void @llvm.dbg.value(metadata i8* %23, metadata !1370, metadata !DIExpression()), !dbg !1373
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1399, !tbaa !1102
  br label %24, !dbg !1400

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1370, metadata !DIExpression()), !dbg !1373
  store i8* %25, i8** @program_name, align 8, !dbg !1401, !tbaa !1102
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1402, !tbaa !1102
  ret void, !dbg !1403
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1404 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1409, metadata !DIExpression()), !dbg !1412
  %2 = tail call i32* @__errno_location() #25, !dbg !1413
  %3 = load i32, i32* %2, align 4, !dbg !1413, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %3, metadata !1410, metadata !DIExpression()), !dbg !1412
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1414
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1414
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1414
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !1415
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i32 %3, i32* %2, align 4, !dbg !1416, !tbaa !1161
  ret %struct.quoting_options* %8, !dbg !1417
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1418 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1422, metadata !DIExpression()), !dbg !1423
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1424
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1424
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1425
  %5 = load i32, i32* %4, align 8, !dbg !1425, !tbaa !1426
  ret i32 %5, !dbg !1428
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #9 !dbg !1429 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1433, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 %1, metadata !1434, metadata !DIExpression()), !dbg !1435
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1436
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1436
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1437
  store i32 %1, i32* %5, align 8, !dbg !1438, !tbaa !1426
  ret void, !dbg !1439
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1440 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1444, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %1, metadata !1445, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i32 %2, metadata !1446, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %1, metadata !1447, metadata !DIExpression()), !dbg !1452
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1453
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1453
  %6 = lshr i8 %1, 5, !dbg !1454
  %7 = zext i8 %6 to i64, !dbg !1454
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1455
  call void @llvm.dbg.value(metadata i32* %8, metadata !1448, metadata !DIExpression()), !dbg !1452
  %9 = and i8 %1, 31, !dbg !1456
  %10 = zext i8 %9 to i32, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %10, metadata !1450, metadata !DIExpression()), !dbg !1452
  %11 = load i32, i32* %8, align 4, !dbg !1457, !tbaa !1161
  %12 = lshr i32 %11, %10, !dbg !1458
  %13 = and i32 %12, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i32 %13, metadata !1451, metadata !DIExpression()), !dbg !1452
  %14 = and i32 %2, 1, !dbg !1460
  %15 = xor i32 %13, %14, !dbg !1461
  %16 = shl i32 %15, %10, !dbg !1462
  %17 = xor i32 %16, %11, !dbg !1463
  store i32 %17, i32* %8, align 4, !dbg !1463, !tbaa !1161
  ret i32 %13, !dbg !1464
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1465 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1469, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i32 %1, metadata !1470, metadata !DIExpression()), !dbg !1472
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1473
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1469, metadata !DIExpression()), !dbg !1472
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1476
  %6 = load i32, i32* %5, align 4, !dbg !1476, !tbaa !1477
  call void @llvm.dbg.value(metadata i32 %6, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i32 %1, i32* %5, align 4, !dbg !1478, !tbaa !1477
  ret i32 %6, !dbg !1479
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1480 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1484, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %1, metadata !1485, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8* %2, metadata !1486, metadata !DIExpression()), !dbg !1487
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1488
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1484, metadata !DIExpression()), !dbg !1487
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1491
  store i32 10, i32* %6, align 8, !dbg !1492, !tbaa !1426
  %7 = icmp ne i8* %1, null, !dbg !1493
  %8 = icmp ne i8* %2, null, !dbg !1495
  %9 = and i1 %7, %8, !dbg !1496
  br i1 %9, label %11, label %10, !dbg !1496

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1497
  unreachable, !dbg !1497

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1498
  store i8* %1, i8** %12, align 8, !dbg !1499, !tbaa !1500
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1501
  store i8* %2, i8** %13, align 8, !dbg !1502, !tbaa !1503
  ret void, !dbg !1504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1509, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %1, metadata !1510, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8* %2, metadata !1511, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i64 %3, metadata !1512, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1513, metadata !DIExpression()), !dbg !1517
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1518
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1514, metadata !DIExpression()), !dbg !1517
  %8 = tail call i32* @__errno_location() #25, !dbg !1519
  %9 = load i32, i32* %8, align 4, !dbg !1519, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %9, metadata !1515, metadata !DIExpression()), !dbg !1517
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1520
  %11 = load i32, i32* %10, align 8, !dbg !1520, !tbaa !1426
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1521
  %13 = load i32, i32* %12, align 4, !dbg !1521, !tbaa !1477
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1522
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1523
  %16 = load i8*, i8** %15, align 8, !dbg !1523, !tbaa !1500
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1524
  %18 = load i8*, i8** %17, align 8, !dbg !1524, !tbaa !1503
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1525
  call void @llvm.dbg.value(metadata i64 %19, metadata !1516, metadata !DIExpression()), !dbg !1517
  store i32 %9, i32* %8, align 4, !dbg !1526, !tbaa !1161
  ret i64 %19, !dbg !1527
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1528 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1534, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %1, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %2, metadata !1536, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %3, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %4, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %5, metadata !1539, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32* %6, metadata !1540, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %7, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %8, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* null, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1547, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()), !dbg !1592
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !1593
  %14 = icmp eq i64 %13, 1, !dbg !1594
  call void @llvm.dbg.value(metadata i1 %14, metadata !1549, metadata !DIExpression()), !dbg !1592
  %15 = lshr i32 %5, 1, !dbg !1595
  %16 = trunc i32 %15 to i8, !dbg !1595
  %17 = and i8 %16, 1, !dbg !1595
  call void @llvm.dbg.value(metadata i8 %17, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1553, metadata !DIExpression()), !dbg !1592
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1596
  %19 = and i32 %5, 4, !dbg !1598
  %20 = icmp eq i32 %19, 0, !dbg !1598
  %21 = and i32 %5, 1, !dbg !1601
  %22 = icmp eq i32 %21, 0, !dbg !1601
  %23 = bitcast i64* %10 to i8*, !dbg !1604
  %24 = bitcast i32* %12 to i8*, !dbg !1605
  %25 = icmp eq i32* %6, null, !dbg !1606
  br label %26, !dbg !1608

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1609
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1610
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1611
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1612
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1592
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1613
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1614
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1615
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %38, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %37, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %36, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %35, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %34, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %33, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %32, metadata !1547, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %31, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %30, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %29, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %28, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %27, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1586), !dbg !1616
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
  ], !dbg !1617

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %35, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 5, metadata !1538, metadata !DIExpression()), !dbg !1592
  br label %92, !dbg !1618

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 5, metadata !1538, metadata !DIExpression()), !dbg !1592
  %42 = and i8 %35, 1, !dbg !1620
  %43 = icmp eq i8 %42, 0, !dbg !1620
  br i1 %43, label %44, label %92, !dbg !1618

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1622
  br i1 %45, label %92, label %46, !dbg !1625

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1622, !tbaa !1193
  br label %92, !dbg !1622

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %27), !dbg !1626
  call void @llvm.dbg.value(metadata i8* %48, metadata !1541, metadata !DIExpression()), !dbg !1592
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %27), !dbg !1630
  call void @llvm.dbg.value(metadata i8* %49, metadata !1542, metadata !DIExpression()), !dbg !1592
  br label %50, !dbg !1631

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %51, metadata !1541, metadata !DIExpression()), !dbg !1592
  %53 = and i8 %35, 1, !dbg !1632
  %54 = icmp eq i8 %53, 0, !dbg !1632
  br i1 %54, label %55, label %70, !dbg !1634

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1544, metadata !DIExpression()), !dbg !1592
  %56 = load i8, i8* %51, align 1, !dbg !1635, !tbaa !1193
  %57 = icmp eq i8 %56, 0, !dbg !1638
  br i1 %57, label %70, label %58, !dbg !1638

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %61, metadata !1544, metadata !DIExpression()), !dbg !1592
  %62 = icmp ult i64 %61, %39, !dbg !1639
  br i1 %62, label %63, label %65, !dbg !1642

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1639
  store i8 %59, i8* %64, align 1, !dbg !1639, !tbaa !1193
  br label %65, !dbg !1639

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %66, metadata !1544, metadata !DIExpression()), !dbg !1592
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %67, metadata !1546, metadata !DIExpression()), !dbg !1592
  %68 = load i8, i8* %67, align 1, !dbg !1635, !tbaa !1193
  %69 = icmp eq i8 %68, 0, !dbg !1638
  br i1 %69, label %70, label %58, !dbg !1638, !llvm.loop !1644

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1646
  call void @llvm.dbg.value(metadata i64 %71, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %52, metadata !1546, metadata !DIExpression()), !dbg !1592
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %72, metadata !1547, metadata !DIExpression()), !dbg !1592
  br label %92, !dbg !1648

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1548, metadata !DIExpression()), !dbg !1592
  br label %74, !dbg !1649

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %75, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1550, metadata !DIExpression()), !dbg !1592
  br label %76, !dbg !1650

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1612
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %78, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %77, metadata !1548, metadata !DIExpression()), !dbg !1592
  %79 = and i8 %78, 1, !dbg !1651
  %80 = icmp eq i8 %79, 0, !dbg !1651
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1653
  br label %82, !dbg !1653

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1592
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1595
  call void @llvm.dbg.value(metadata i8 %84, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %83, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  %85 = and i8 %84, 1, !dbg !1654
  %86 = icmp eq i8 %85, 0, !dbg !1654
  br i1 %86, label %87, label %92, !dbg !1656

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1657
  br i1 %88, label %92, label %89, !dbg !1660

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1657, !tbaa !1193
  br label %92, !dbg !1657

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1550, metadata !DIExpression()), !dbg !1592
  br label %92, !dbg !1661

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1662
  unreachable, !dbg !1662

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1646
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %40 ], !dbg !1592
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1592
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1592
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %100, metadata !1550, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %98, metadata !1547, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %96, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %93, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 0, metadata !1543, metadata !DIExpression()), !dbg !1592
  %101 = and i8 %99, 1, !dbg !1663
  %102 = icmp ne i8 %101, 0, !dbg !1663
  %103 = icmp ne i32 %93, 2, !dbg !1663
  %104 = and i1 %103, %102, !dbg !1663
  %105 = icmp ne i64 %98, 0, !dbg !1663
  %106 = and i1 %105, %104, !dbg !1663
  %107 = icmp ugt i64 %98, 1, !dbg !1663
  %108 = and i8 %100, 1, !dbg !1665
  %109 = icmp eq i8 %108, 0, !dbg !1665
  %110 = icmp eq i32 %93, 2, !dbg !1668
  %111 = or i1 %103, %109, !dbg !1670
  %112 = icmp ne i8 %108, 0, !dbg !1672
  %113 = and i1 %110, %112, !dbg !1672
  %114 = xor i1 %102, true, !dbg !1673
  %115 = xor i1 %104, true, !dbg !1606
  %116 = and i1 %109, %115, !dbg !1606
  %117 = or i1 %25, %116, !dbg !1606
  %118 = and i8 %99, %100, !dbg !1674
  %119 = and i8 %118, 1, !dbg !1674
  %120 = icmp ne i8 %119, 0, !dbg !1674
  %121 = and i1 %120, %105, !dbg !1674
  br label %122, !dbg !1676

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1677
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1646
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1609
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1613
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1614
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1615
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %126, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %123, metadata !1543, metadata !DIExpression()), !dbg !1592
  %131 = icmp eq i64 %126, -1, !dbg !1678
  br i1 %131, label %132, label %136, !dbg !1679

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1680
  %134 = load i8, i8* %133, align 1, !dbg !1680, !tbaa !1193
  %135 = icmp eq i8 %134, 0, !dbg !1681
  br i1 %135, label %581, label %138, !dbg !1682

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1683
  br i1 %137, label %581, label %138, !dbg !1682

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1561, metadata !DIExpression()), !dbg !1684
  br i1 %106, label %139, label %154, !dbg !1685

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1686
  %141 = and i1 %107, %131, !dbg !1687
  br i1 %141, label %142, label %144, !dbg !1687

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %143, metadata !1537, metadata !DIExpression()), !dbg !1592
  br label %144, !dbg !1689

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1537, metadata !DIExpression()), !dbg !1592
  %146 = icmp ugt i64 %140, %145, !dbg !1690
  br i1 %146, label %154, label %147, !dbg !1691

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1692
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1693
  %150 = icmp ne i32 %149, 0, !dbg !1694
  %151 = or i1 %150, %109, !dbg !1695
  %152 = xor i1 %150, true, !dbg !1695
  %153 = zext i1 %152 to i8, !dbg !1695
  br i1 %151, label %154, label %639, !dbg !1695

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8 %156, metadata !1559, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %155, metadata !1537, metadata !DIExpression()), !dbg !1592
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1696
  %158 = load i8, i8* %157, align 1, !dbg !1696, !tbaa !1193
  call void @llvm.dbg.value(metadata i8 %158, metadata !1554, metadata !DIExpression()), !dbg !1684
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
  ], !dbg !1697

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1698

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1699

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1684
  %162 = and i8 %127, 1, !dbg !1702
  %163 = icmp eq i8 %162, 0, !dbg !1702
  %164 = and i1 %110, %163, !dbg !1702
  br i1 %164, label %165, label %181, !dbg !1702

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1704
  br i1 %166, label %167, label %169, !dbg !1708

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1704
  store i8 39, i8* %168, align 1, !dbg !1704, !tbaa !1193
  br label %169, !dbg !1704

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %170, metadata !1544, metadata !DIExpression()), !dbg !1592
  %171 = icmp ult i64 %170, %130, !dbg !1709
  br i1 %171, label %172, label %174, !dbg !1712

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1709
  store i8 36, i8* %173, align 1, !dbg !1709, !tbaa !1193
  br label %174, !dbg !1709

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %175, metadata !1544, metadata !DIExpression()), !dbg !1592
  %176 = icmp ult i64 %175, %130, !dbg !1713
  br i1 %176, label %177, label %179, !dbg !1716

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1713
  store i8 39, i8* %178, align 1, !dbg !1713, !tbaa !1193
  br label %179, !dbg !1713

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %180, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %181, !dbg !1717

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1592
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %183, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %182, metadata !1544, metadata !DIExpression()), !dbg !1592
  %184 = icmp ult i64 %182, %130, !dbg !1718
  br i1 %184, label %185, label %187, !dbg !1721

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1718
  store i8 92, i8* %186, align 1, !dbg !1718, !tbaa !1193
  br label %187, !dbg !1718

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %188, metadata !1544, metadata !DIExpression()), !dbg !1592
  br i1 %103, label %189, label %463, !dbg !1722

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1724
  %191 = icmp ult i64 %190, %155, !dbg !1725
  br i1 %191, label %192, label %463, !dbg !1726

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1727
  %194 = load i8, i8* %193, align 1, !dbg !1727, !tbaa !1193
  %195 = add i8 %194, -48, !dbg !1728
  %196 = icmp ult i8 %195, 10, !dbg !1728
  br i1 %196, label %197, label %463, !dbg !1728

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1729
  br i1 %198, label %199, label %201, !dbg !1733

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1729
  store i8 48, i8* %200, align 1, !dbg !1729, !tbaa !1193
  br label %201, !dbg !1729

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %202, metadata !1544, metadata !DIExpression()), !dbg !1592
  %203 = icmp ult i64 %202, %130, !dbg !1734
  br i1 %203, label %204, label %206, !dbg !1737

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1734
  store i8 48, i8* %205, align 1, !dbg !1734, !tbaa !1193
  br label %206, !dbg !1734

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %207, metadata !1544, metadata !DIExpression()), !dbg !1592
  br label %463, !dbg !1738

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1739

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1740

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1741

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1742

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1743
  %214 = icmp ult i64 %213, %155, !dbg !1744
  br i1 %214, label %215, label %463, !dbg !1745

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1746
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1747
  %218 = load i8, i8* %217, align 1, !dbg !1747, !tbaa !1193
  %219 = icmp eq i8 %218, 63, !dbg !1748
  br i1 %219, label %220, label %463, !dbg !1749

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1750
  %222 = load i8, i8* %221, align 1, !dbg !1750, !tbaa !1193
  %223 = sext i8 %222 to i32, !dbg !1750
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
  ], !dbg !1751

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1752

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %213, metadata !1543, metadata !DIExpression()), !dbg !1592
  %226 = icmp ult i64 %124, %130, !dbg !1754
  br i1 %226, label %227, label %229, !dbg !1757

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1754
  store i8 63, i8* %228, align 1, !dbg !1754, !tbaa !1193
  br label %229, !dbg !1754

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %230, metadata !1544, metadata !DIExpression()), !dbg !1592
  %231 = icmp ult i64 %230, %130, !dbg !1758
  br i1 %231, label %232, label %234, !dbg !1761

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1758
  store i8 34, i8* %233, align 1, !dbg !1758, !tbaa !1193
  br label %234, !dbg !1758

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %235, metadata !1544, metadata !DIExpression()), !dbg !1592
  %236 = icmp ult i64 %235, %130, !dbg !1762
  br i1 %236, label %237, label %239, !dbg !1765

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1762
  store i8 34, i8* %238, align 1, !dbg !1762, !tbaa !1193
  br label %239, !dbg !1762

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %240, metadata !1544, metadata !DIExpression()), !dbg !1592
  %241 = icmp ult i64 %240, %130, !dbg !1766
  br i1 %241, label %242, label %244, !dbg !1769

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1766
  store i8 63, i8* %243, align 1, !dbg !1766, !tbaa !1193
  br label %244, !dbg !1766

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %245, metadata !1544, metadata !DIExpression()), !dbg !1592
  br label %463, !dbg !1770

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1558, metadata !DIExpression()), !dbg !1684
  br label %256, !dbg !1771

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1558, metadata !DIExpression()), !dbg !1684
  br label %256, !dbg !1772

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1558, metadata !DIExpression()), !dbg !1684
  br label %254, !dbg !1773

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1558, metadata !DIExpression()), !dbg !1684
  br label %254, !dbg !1774

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1558, metadata !DIExpression()), !dbg !1684
  br label %256, !dbg !1775

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1558, metadata !DIExpression()), !dbg !1684
  br i1 %110, label %252, label %253, !dbg !1776

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1777

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1780

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1781
  call void @llvm.dbg.value(metadata i8 %255, metadata !1558, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.label(metadata !1587), !dbg !1782
  br i1 %111, label %256, label %625, !dbg !1783

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1781
  call void @llvm.dbg.value(metadata i8 %257, metadata !1558, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.label(metadata !1588), !dbg !1785
  br i1 %102, label %488, label %463, !dbg !1786

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1787

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1788, !tbaa !1193
  %261 = icmp eq i8 %260, 0, !dbg !1789
  br i1 %261, label %262, label %463, !dbg !1790

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1791
  br i1 %263, label %264, label %463, !dbg !1793

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1684
  br label %265, !dbg !1794

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8 %266, metadata !1561, metadata !DIExpression()), !dbg !1684
  br i1 %111, label %463, label %625, !dbg !1795

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1561, metadata !DIExpression()), !dbg !1684
  br i1 %110, label %268, label %463, !dbg !1796

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1797

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1799
  %271 = icmp ne i64 %125, 0, !dbg !1801
  %272 = or i1 %271, %270, !dbg !1802
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1802
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %274, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %273, metadata !1545, metadata !DIExpression()), !dbg !1592
  %275 = icmp ult i64 %124, %274, !dbg !1803
  br i1 %275, label %276, label %278, !dbg !1806

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1803
  store i8 39, i8* %277, align 1, !dbg !1803, !tbaa !1193
  br label %278, !dbg !1803

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %279, metadata !1544, metadata !DIExpression()), !dbg !1592
  %280 = icmp ult i64 %279, %274, !dbg !1807
  br i1 %280, label %281, label %283, !dbg !1810

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1807
  store i8 92, i8* %282, align 1, !dbg !1807, !tbaa !1193
  br label %283, !dbg !1807

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %284, metadata !1544, metadata !DIExpression()), !dbg !1592
  %285 = icmp ult i64 %284, %274, !dbg !1811
  br i1 %285, label %286, label %288, !dbg !1814

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1811
  store i8 39, i8* %287, align 1, !dbg !1811, !tbaa !1193
  br label %288, !dbg !1811

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %289, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %463, !dbg !1815

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1816

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1562, metadata !DIExpression()), !dbg !1817
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !1818
  %293 = load i16*, i16** %292, align 8, !dbg !1818, !tbaa !1102
  %294 = zext i8 %158 to i64, !dbg !1818
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1818
  %296 = load i16, i16* %295, align 2, !dbg !1818, !tbaa !1820
  %297 = lshr i16 %296, 14, !dbg !1821
  %298 = trunc i16 %297 to i8, !dbg !1821
  %299 = and i8 %298, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i8 %299, metadata !1565, metadata !DIExpression()), !dbg !1817
  br label %355, !dbg !1822

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1823
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1566, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* %23, metadata !1825, metadata !DIExpression()) #20, !dbg !1832
  call void @llvm.dbg.value(metadata i32 0, metadata !1830, metadata !DIExpression()) #20, !dbg !1832
  call void @llvm.dbg.value(metadata i64 8, metadata !1831, metadata !DIExpression()) #20, !dbg !1832
  store i64 0, i64* %10, align 8, !dbg !1834
  call void @llvm.dbg.value(metadata i64 0, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 1, metadata !1565, metadata !DIExpression()), !dbg !1817
  %301 = icmp eq i64 %155, -1, !dbg !1835
  br i1 %301, label %302, label %304, !dbg !1837

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %303, metadata !1537, metadata !DIExpression()), !dbg !1592
  br label %304, !dbg !1839

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1684
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  br label %306, !dbg !1840

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1841
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1842
  call void @llvm.dbg.value(metadata i8 %308, metadata !1565, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1843
  %309 = add i64 %307, %123, !dbg !1844
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1845
  %311 = sub i64 %305, %309, !dbg !1846
  call void @llvm.dbg.value(metadata i32* %12, metadata !1572, metadata !DIExpression(DW_OP_deref)), !dbg !1605
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %312, metadata !1575, metadata !DIExpression()), !dbg !1605
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1848

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  %314 = icmp ugt i64 %305, %309, !dbg !1849
  br i1 %314, label %315, label %340, !dbg !1851

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1852
  br label %317, !dbg !1852

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1562, metadata !DIExpression()), !dbg !1817
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1853
  %321 = load i8, i8* %320, align 1, !dbg !1853, !tbaa !1193
  %322 = icmp eq i8 %321, 0, !dbg !1851
  br i1 %322, label %340, label %323, !dbg !1852

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %324, metadata !1562, metadata !DIExpression()), !dbg !1817
  %325 = add i64 %324, %123, !dbg !1855
  %326 = icmp ult i64 %325, %305, !dbg !1849
  br i1 %326, label %317, label %340, !dbg !1851, !llvm.loop !1856

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1857
  %329 = and i1 %113, %328, !dbg !1860
  call void @llvm.dbg.value(metadata i64 1, metadata !1576, metadata !DIExpression()), !dbg !1861
  br i1 %329, label %330, label %343, !dbg !1860

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1576, metadata !DIExpression()), !dbg !1861
  %332 = add i64 %331, %309, !dbg !1862
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1863
  %334 = load i8, i8* %333, align 1, !dbg !1863, !tbaa !1193
  %335 = sext i8 %334 to i32, !dbg !1863
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1864

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %337, metadata !1576, metadata !DIExpression()), !dbg !1861
  %338 = icmp eq i64 %337, %312, !dbg !1857
  br i1 %338, label %343, label %330, !dbg !1866, !llvm.loop !1867

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %308, metadata !1565, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %307, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %308, metadata !1565, metadata !DIExpression()), !dbg !1817
  br label %340, !dbg !1869

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1869
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1870, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %344, metadata !1572, metadata !DIExpression()), !dbg !1605
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !1872
  %346 = icmp eq i32 %345, 0, !dbg !1872
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1873
  call void @llvm.dbg.value(metadata i8 %347, metadata !1565, metadata !DIExpression()), !dbg !1817
  %348 = add i64 %312, %307, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %348, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %347, metadata !1565, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %348, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1869
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1875
  %350 = icmp eq i32 %349, 0, !dbg !1876
  br i1 %350, label %306, label %351, !dbg !1877, !llvm.loop !1878

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1880
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 2, metadata !1538, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %99, metadata !1548, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %305, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1869
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1880
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1684
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1881
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1881
  call void @llvm.dbg.value(metadata i8 %358, metadata !1565, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %357, metadata !1562, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i64 %356, metadata !1537, metadata !DIExpression()), !dbg !1592
  %359 = and i8 %358, 1, !dbg !1882
  %360 = icmp ne i8 %359, 0, !dbg !1882
  call void @llvm.dbg.value(metadata i8 %359, metadata !1561, metadata !DIExpression()), !dbg !1684
  %361 = icmp ult i64 %357, 2, !dbg !1883
  %362 = or i1 %360, %114, !dbg !1884
  %363 = and i1 %361, %362, !dbg !1885
  br i1 %363, label %463, label %364, !dbg !1885

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %365, metadata !1583, metadata !DIExpression()), !dbg !1887
  br label %366, !dbg !1888

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1677
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1592
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1613
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1684
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1684
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1889
  call void @llvm.dbg.value(metadata i8 %372, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %371, metadata !1559, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %370, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %369, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %368, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %367, metadata !1543, metadata !DIExpression()), !dbg !1592
  br i1 %362, label %419, label %373, !dbg !1890

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1895

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1684
  %375 = and i8 %369, 1, !dbg !1898
  %376 = icmp eq i8 %375, 0, !dbg !1898
  %377 = and i1 %110, %376, !dbg !1898
  br i1 %377, label %378, label %394, !dbg !1898

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1900
  br i1 %379, label %380, label %382, !dbg !1904

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1900
  store i8 39, i8* %381, align 1, !dbg !1900, !tbaa !1193
  br label %382, !dbg !1900

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %383, metadata !1544, metadata !DIExpression()), !dbg !1592
  %384 = icmp ult i64 %383, %130, !dbg !1905
  br i1 %384, label %385, label %387, !dbg !1908

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1905
  store i8 36, i8* %386, align 1, !dbg !1905, !tbaa !1193
  br label %387, !dbg !1905

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %388, metadata !1544, metadata !DIExpression()), !dbg !1592
  %389 = icmp ult i64 %388, %130, !dbg !1909
  br i1 %389, label %390, label %392, !dbg !1912

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1909
  store i8 39, i8* %391, align 1, !dbg !1909, !tbaa !1193
  br label %392, !dbg !1909

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %393, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %394, !dbg !1913

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1592
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %396, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %395, metadata !1544, metadata !DIExpression()), !dbg !1592
  %397 = icmp ult i64 %395, %130, !dbg !1914
  br i1 %397, label %398, label %400, !dbg !1917

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1914
  store i8 92, i8* %399, align 1, !dbg !1914, !tbaa !1193
  br label %400, !dbg !1914

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %401, metadata !1544, metadata !DIExpression()), !dbg !1592
  %402 = icmp ult i64 %401, %130, !dbg !1918
  br i1 %402, label %403, label %407, !dbg !1921

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1918
  %405 = or i8 %404, 48, !dbg !1918
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1918
  store i8 %405, i8* %406, align 1, !dbg !1918, !tbaa !1193
  br label %407, !dbg !1918

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %408, metadata !1544, metadata !DIExpression()), !dbg !1592
  %409 = icmp ult i64 %408, %130, !dbg !1922
  br i1 %409, label %410, label %415, !dbg !1925

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1922
  %412 = and i8 %411, 7, !dbg !1922
  %413 = or i8 %412, 48, !dbg !1922
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1922
  store i8 %413, i8* %414, align 1, !dbg !1922, !tbaa !1193
  br label %415, !dbg !1922

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %416, metadata !1544, metadata !DIExpression()), !dbg !1592
  %417 = and i8 %370, 7, !dbg !1926
  %418 = or i8 %417, 48, !dbg !1927
  call void @llvm.dbg.value(metadata i8 %418, metadata !1554, metadata !DIExpression()), !dbg !1684
  br label %428, !dbg !1928

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1929
  %421 = icmp eq i8 %420, 0, !dbg !1929
  br i1 %421, label %428, label %422, !dbg !1931

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1932
  br i1 %423, label %424, label %426, !dbg !1936

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1932
  store i8 92, i8* %425, align 1, !dbg !1932, !tbaa !1193
  br label %426, !dbg !1932

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %427, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1559, metadata !DIExpression()), !dbg !1684
  br label %428, !dbg !1937

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1592
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1613
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1684
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1684
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8 %433, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %432, metadata !1559, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %431, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %430, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %429, metadata !1544, metadata !DIExpression()), !dbg !1592
  %434 = add i64 %367, 1, !dbg !1938
  %435 = icmp ugt i64 %365, %434, !dbg !1940
  br i1 %435, label %436, label %526, !dbg !1941

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1942
  %438 = icmp ne i8 %437, 0, !dbg !1942
  %439 = and i8 %433, 1, !dbg !1942
  %440 = icmp eq i8 %439, 0, !dbg !1942
  %441 = and i1 %438, %440, !dbg !1942
  br i1 %441, label %442, label %453, !dbg !1942

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1945
  br i1 %443, label %444, label %446, !dbg !1949

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1945
  store i8 39, i8* %445, align 1, !dbg !1945, !tbaa !1193
  br label %446, !dbg !1945

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %447, metadata !1544, metadata !DIExpression()), !dbg !1592
  %448 = icmp ult i64 %447, %130, !dbg !1950
  br i1 %448, label %449, label %451, !dbg !1953

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1950
  store i8 39, i8* %450, align 1, !dbg !1950, !tbaa !1193
  br label %451, !dbg !1950

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1953
  call void @llvm.dbg.value(metadata i64 %452, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %453, !dbg !1954

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1955
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %455, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %454, metadata !1544, metadata !DIExpression()), !dbg !1592
  %456 = icmp ult i64 %454, %130, !dbg !1956
  br i1 %456, label %457, label %459, !dbg !1959

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1956
  store i8 %431, i8* %458, align 1, !dbg !1956, !tbaa !1193
  br label %459, !dbg !1956

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %460, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %434, metadata !1543, metadata !DIExpression()), !dbg !1592
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1960
  %462 = load i8, i8* %461, align 1, !dbg !1960, !tbaa !1193
  call void @llvm.dbg.value(metadata i8 %462, metadata !1554, metadata !DIExpression()), !dbg !1684
  br label %366, !dbg !1961, !llvm.loop !1962

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1677
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1592
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1609
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1965
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1592
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1592
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1684
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1684
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1684
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %472, metadata !1561, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %471, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %156, metadata !1559, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %470, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %469, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %468, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %467, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %466, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %465, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %464, metadata !1543, metadata !DIExpression()), !dbg !1592
  br i1 %117, label %486, label %474, !dbg !1966

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1967
  %476 = zext i8 %475 to i64, !dbg !1967
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1968
  %478 = load i32, i32* %477, align 4, !dbg !1968, !tbaa !1161
  %479 = and i8 %470, 31, !dbg !1969
  %480 = zext i8 %479 to i32, !dbg !1969
  %481 = shl nuw i32 1, %480, !dbg !1970
  %482 = and i32 %478, %481, !dbg !1970
  %483 = icmp eq i32 %482, 0, !dbg !1970
  %484 = icmp eq i8 %156, 0, !dbg !1971
  %485 = and i1 %484, %483, !dbg !1972
  br i1 %485, label %526, label %488, !dbg !1972

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1971
  br i1 %487, label %526, label %488, !dbg !1973

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1974
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1592
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1609
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1965
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1613
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1614
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1684
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1684
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %496, metadata !1561, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %495, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %494, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %493, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %492, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %491, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %490, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %489, metadata !1543, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1589), !dbg !1975
  br i1 %109, label %498, label %629, !dbg !1976

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1560, metadata !DIExpression()), !dbg !1684
  %499 = and i8 %493, 1, !dbg !1978
  %500 = icmp eq i8 %499, 0, !dbg !1978
  %501 = and i1 %110, %500, !dbg !1978
  br i1 %501, label %502, label %518, !dbg !1978

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1980
  br i1 %503, label %504, label %506, !dbg !1984

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1980
  store i8 39, i8* %505, align 1, !dbg !1980, !tbaa !1193
  br label %506, !dbg !1980

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %507, metadata !1544, metadata !DIExpression()), !dbg !1592
  %508 = icmp ult i64 %507, %497, !dbg !1985
  br i1 %508, label %509, label %511, !dbg !1988

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1985
  store i8 36, i8* %510, align 1, !dbg !1985, !tbaa !1193
  br label %511, !dbg !1985

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %512, metadata !1544, metadata !DIExpression()), !dbg !1592
  %513 = icmp ult i64 %512, %497, !dbg !1989
  br i1 %513, label %514, label %516, !dbg !1992

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1989
  store i8 39, i8* %515, align 1, !dbg !1989, !tbaa !1193
  br label %516, !dbg !1989

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %517, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 1, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %518, !dbg !1993

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1684
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %520, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %519, metadata !1544, metadata !DIExpression()), !dbg !1592
  %521 = icmp ult i64 %519, %497, !dbg !1994
  br i1 %521, label %522, label %524, !dbg !1997

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1994
  store i8 92, i8* %523, align 1, !dbg !1994, !tbaa !1193
  br label %524, !dbg !1994

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %525, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %536, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %535, metadata !1561, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %534, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %533, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %532, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %531, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %530, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %529, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %528, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %527, metadata !1543, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1590), !dbg !1998
  br label %553, !dbg !1999

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1974
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1592
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1609
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1965
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1613
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1614
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2002
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1684
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1684
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %535, metadata !1561, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %534, metadata !1560, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %533, metadata !1554, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 %532, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %531, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %530, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %529, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %528, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %527, metadata !1543, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1590), !dbg !1998
  %537 = and i8 %531, 1, !dbg !1999
  %538 = icmp ne i8 %537, 0, !dbg !1999
  %539 = and i8 %534, 1, !dbg !1999
  %540 = icmp eq i8 %539, 0, !dbg !1999
  %541 = and i1 %538, %540, !dbg !1999
  br i1 %541, label %542, label %553, !dbg !1999

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2003
  br i1 %543, label %544, label %546, !dbg !2007

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2003
  store i8 39, i8* %545, align 1, !dbg !2003, !tbaa !1193
  br label %546, !dbg !2003

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %547, metadata !1544, metadata !DIExpression()), !dbg !1592
  %548 = icmp ult i64 %547, %536, !dbg !2008
  br i1 %548, label %549, label %551, !dbg !2011

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2008
  store i8 39, i8* %550, align 1, !dbg !2008, !tbaa !1193
  br label %551, !dbg !2008

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %552, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 0, metadata !1551, metadata !DIExpression()), !dbg !1592
  br label %553, !dbg !2012

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1684
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %562, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %561, metadata !1544, metadata !DIExpression()), !dbg !1592
  %563 = icmp ult i64 %561, %554, !dbg !2013
  br i1 %563, label %564, label %566, !dbg !2016

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2013
  store i8 %556, i8* %565, align 1, !dbg !2013, !tbaa !1193
  br label %566, !dbg !2013

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %567, metadata !1544, metadata !DIExpression()), !dbg !1592
  %568 = and i8 %555, 1, !dbg !2017
  %569 = icmp eq i8 %568, 0, !dbg !2017
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2019
  call void @llvm.dbg.value(metadata i8 %570, metadata !1553, metadata !DIExpression()), !dbg !1592
  br label %571, !dbg !2020

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1974
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1592
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1609
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1965
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1613
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1592
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1615
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %578, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %577, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %576, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %575, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %574, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %573, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %572, metadata !1543, metadata !DIExpression()), !dbg !1592
  %580 = add i64 %572, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %580, metadata !1543, metadata !DIExpression()), !dbg !1592
  br label %122, !dbg !2022, !llvm.loop !2023

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %127, metadata !1551, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %128, metadata !1552, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8 %129, metadata !1553, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  %583 = icmp eq i64 %124, 0, !dbg !2025
  %584 = and i1 %110, %583, !dbg !2027
  %585 = xor i1 %584, true, !dbg !2027
  %586 = or i1 %109, %585, !dbg !2027
  br i1 %586, label %587, label %629, !dbg !2027

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2028
  %589 = xor i1 %588, true, !dbg !2028
  %590 = and i8 %128, 1, !dbg !2030
  %591 = icmp eq i8 %590, 0, !dbg !2030
  %592 = or i1 %591, %589, !dbg !2028
  br i1 %592, label %602, label %593, !dbg !2028

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2031
  %595 = icmp eq i8 %594, 0, !dbg !2031
  br i1 %595, label %598, label %596, !dbg !2034

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %94, metadata !1541, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %95, metadata !1542, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %125, metadata !1545, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %582, metadata !1537, metadata !DIExpression()), !dbg !1592
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2035
  br label %645, !dbg !2036

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2037
  %600 = icmp ne i64 %125, 0, !dbg !2039
  %601 = and i1 %600, %599, !dbg !2040
  br i1 %601, label %26, label %602, !dbg !2040

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %130, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  %603 = icmp ne i8* %97, null, !dbg !2041
  %604 = and i1 %603, %109, !dbg !2043
  br i1 %604, label %605, label %620, !dbg !2043

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %124, metadata !1544, metadata !DIExpression()), !dbg !1592
  %606 = load i8, i8* %97, align 1, !dbg !2044, !tbaa !1193
  %607 = icmp eq i8 %606, 0, !dbg !2047
  br i1 %607, label %620, label %608, !dbg !2047

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1546, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %611, metadata !1544, metadata !DIExpression()), !dbg !1592
  %612 = icmp ult i64 %611, %130, !dbg !2048
  br i1 %612, label %613, label %615, !dbg !2051

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2048
  store i8 %609, i8* %614, align 1, !dbg !2048, !tbaa !1193
  br label %615, !dbg !2048

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %616, metadata !1544, metadata !DIExpression()), !dbg !1592
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2052
  call void @llvm.dbg.value(metadata i8* %617, metadata !1546, metadata !DIExpression()), !dbg !1592
  %618 = load i8, i8* %617, align 1, !dbg !2044, !tbaa !1193
  %619 = icmp eq i8 %618, 0, !dbg !2047
  br i1 %619, label %620, label %608, !dbg !2047, !llvm.loop !2053

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1646
  call void @llvm.dbg.value(metadata i64 %621, metadata !1544, metadata !DIExpression()), !dbg !1592
  %622 = icmp ult i64 %621, %130, !dbg !2055
  br i1 %622, label %623, label %645, !dbg !2057

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2058
  store i8 0, i8* %624, align 1, !dbg !2059, !tbaa !1193
  br label %645, !dbg !2058

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %630, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1591), !dbg !2060
  %627 = icmp eq i8 %101, 0, !dbg !2061
  %628 = select i1 %627, i32 2, i32 4, !dbg !2061
  br label %635, !dbg !2061

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1535, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i64 %630, metadata !1537, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.label(metadata !1591), !dbg !2060
  %632 = icmp eq i32 %93, 2, !dbg !2063
  %633 = icmp eq i8 %101, 0, !dbg !2061
  %634 = select i1 %633, i32 2, i32 4, !dbg !2061
  br i1 %632, label %635, label %639, !dbg !2061

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2061

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1538, metadata !DIExpression()), !dbg !1592
  %643 = and i32 %5, -3, !dbg !2064
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2065
  br label %645, !dbg !2066

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2067
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2068 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 %1, metadata !2073, metadata !DIExpression()), !dbg !2076
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2077
  call void @llvm.dbg.value(metadata i8* %3, metadata !2074, metadata !DIExpression()), !dbg !2076
  %4 = icmp eq i8* %3, %0, !dbg !2078
  br i1 %4, label %5, label %71, !dbg !2080

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2081
  call void @llvm.dbg.value(metadata i8* %6, metadata !2075, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i8* %6, metadata !2082, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8* undef, metadata !2088, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 85, metadata !2089, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 84, metadata !2090, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 70, metadata !2091, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 45, metadata !2092, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 56, metadata !2093, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2096, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2097, metadata !DIExpression()), !dbg !2098
  %7 = load i8, i8* %6, align 1, !dbg !2101, !tbaa !1193
  %8 = and i8 %7, -33, !dbg !2101
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2101

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2103, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8* undef, metadata !2108, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 84, metadata !2109, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 70, metadata !2110, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 45, metadata !2111, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 56, metadata !2112, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2117
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2121
  %11 = load i8, i8* %10, align 1, !dbg !2121, !tbaa !1193
  %12 = and i8 %11, -33, !dbg !2121
  %13 = icmp eq i8 %12, 84, !dbg !2121
  br i1 %13, label %14, label %68, !dbg !2121

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2123, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* undef, metadata !2128, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 70, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 45, metadata !2130, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 56, metadata !2131, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2136
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2140
  %16 = load i8, i8* %15, align 1, !dbg !2140, !tbaa !1193
  %17 = and i8 %16, -33, !dbg !2140
  %18 = icmp eq i8 %17, 70, !dbg !2140
  br i1 %18, label %19, label %68, !dbg !2140

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* undef, metadata !2147, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 45, metadata !2148, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 56, metadata !2149, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2154
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2158
  %21 = load i8, i8* %20, align 1, !dbg !2158, !tbaa !1193
  %22 = icmp eq i8 %21, 45, !dbg !2158
  br i1 %22, label %23, label %68, !dbg !2160

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8* undef, metadata !2166, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 56, metadata !2167, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2172
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2176
  %25 = load i8, i8* %24, align 1, !dbg !2176, !tbaa !1193
  %26 = icmp eq i8 %25, 56, !dbg !2176
  br i1 %26, label %27, label %68, !dbg !2178

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2179, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8* undef, metadata !2184, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2189
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2193
  %29 = load i8, i8* %28, align 1, !dbg !2193, !tbaa !1193
  %30 = icmp eq i8 %29, 0, !dbg !2193
  br i1 %30, label %31, label %68, !dbg !2195

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2196, !tbaa !1193
  %33 = icmp eq i8 %32, 96, !dbg !2197
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !2196
  br label %71, !dbg !2198

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2103, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* undef, metadata !2108, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 66, metadata !2109, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 49, metadata !2110, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 56, metadata !2111, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 48, metadata !2112, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 51, metadata !2113, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 48, metadata !2114, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2115, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2116, metadata !DIExpression()), !dbg !2199
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2203
  %37 = load i8, i8* %36, align 1, !dbg !2203, !tbaa !1193
  %38 = and i8 %37, -33, !dbg !2203
  %39 = icmp eq i8 %38, 66, !dbg !2203
  br i1 %39, label %40, label %68, !dbg !2203

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2123, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* undef, metadata !2128, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 49, metadata !2129, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 56, metadata !2130, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2131, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 51, metadata !2132, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2133, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2134, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2204
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2206
  %42 = load i8, i8* %41, align 1, !dbg !2206, !tbaa !1193
  %43 = icmp eq i8 %42, 49, !dbg !2206
  br i1 %43, label %44, label %68, !dbg !2207

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2142, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8* undef, metadata !2147, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 56, metadata !2148, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 48, metadata !2149, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 51, metadata !2150, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 48, metadata !2151, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2208
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2210
  %46 = load i8, i8* %45, align 1, !dbg !2210, !tbaa !1193
  %47 = icmp eq i8 %46, 56, !dbg !2210
  br i1 %47, label %48, label %68, !dbg !2211

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2161, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* undef, metadata !2166, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 48, metadata !2167, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 51, metadata !2168, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 48, metadata !2169, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2170, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2212
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2214
  %50 = load i8, i8* %49, align 1, !dbg !2214, !tbaa !1193
  %51 = icmp eq i8 %50, 48, !dbg !2214
  br i1 %51, label %52, label %68, !dbg !2215

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2179, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* undef, metadata !2184, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 51, metadata !2185, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 48, metadata !2186, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2187, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2188, metadata !DIExpression()), !dbg !2216
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2218
  %54 = load i8, i8* %53, align 1, !dbg !2218, !tbaa !1193
  %55 = icmp eq i8 %54, 51, !dbg !2218
  br i1 %55, label %56, label %68, !dbg !2219

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2220, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8* undef, metadata !2225, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 48, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2228, metadata !DIExpression()), !dbg !2229
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2233
  %58 = load i8, i8* %57, align 1, !dbg !2233, !tbaa !1193
  %59 = icmp eq i8 %58, 48, !dbg !2233
  br i1 %59, label %60, label %68, !dbg !2235

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2236, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* undef, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 0, metadata !2242, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 0, metadata !2243, metadata !DIExpression()), !dbg !2244
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2248
  %62 = load i8, i8* %61, align 1, !dbg !2248, !tbaa !1193
  %63 = icmp eq i8 %62, 0, !dbg !2248
  br i1 %63, label %64, label %68, !dbg !2250

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2251, !tbaa !1193
  %66 = icmp eq i8 %65, 96, !dbg !2252
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !2251
  br label %71, !dbg !2253

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2254
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !2255
  br label %71, !dbg !2256

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2076
  ret i8* %72, !dbg !2257
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !338 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !342 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %1, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2264, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8* %0, metadata !2266, metadata !DIExpression()) #20, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %1, metadata !2271, metadata !DIExpression()) #20, !dbg !2279
  call void @llvm.dbg.value(metadata i64* null, metadata !2272, metadata !DIExpression()) #20, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2273, metadata !DIExpression()) #20, !dbg !2279
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2281
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2274, metadata !DIExpression()) #20, !dbg !2279
  %6 = tail call i32* @__errno_location() #25, !dbg !2282
  %7 = load i32, i32* %6, align 4, !dbg !2282, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %7, metadata !2275, metadata !DIExpression()) #20, !dbg !2279
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2283
  %9 = load i32, i32* %8, align 4, !dbg !2283, !tbaa !1477
  %10 = or i32 %9, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %10, metadata !2276, metadata !DIExpression()) #20, !dbg !2279
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2285
  %12 = load i32, i32* %11, align 8, !dbg !2285, !tbaa !1426
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2286
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2287
  %15 = load i8*, i8** %14, align 8, !dbg !2287, !tbaa !1500
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2288
  %17 = load i8*, i8** %16, align 8, !dbg !2288, !tbaa !1503
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !2289
  %19 = add i64 %18, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %19, metadata !2277, metadata !DIExpression()) #20, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %19, metadata !2291, metadata !DIExpression()) #20, !dbg !2296
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %20, metadata !2278, metadata !DIExpression()) #20, !dbg !2279
  %21 = load i32, i32* %11, align 8, !dbg !2299, !tbaa !1426
  %22 = load i8*, i8** %14, align 8, !dbg !2300, !tbaa !1500
  %23 = load i8*, i8** %16, align 8, !dbg !2301, !tbaa !1503
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !2302
  store i32 %7, i32* %6, align 4, !dbg !2303, !tbaa !1161
  ret i8* %20, !dbg !2304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2267 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2266, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %1, metadata !2271, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64* %2, metadata !2272, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2273, metadata !DIExpression()), !dbg !2305
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2306
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2274, metadata !DIExpression()), !dbg !2305
  %7 = tail call i32* @__errno_location() #25, !dbg !2307
  %8 = load i32, i32* %7, align 4, !dbg !2307, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %8, metadata !2275, metadata !DIExpression()), !dbg !2305
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2308
  %10 = load i32, i32* %9, align 4, !dbg !2308, !tbaa !1477
  %11 = icmp ne i64* %2, null, !dbg !2309
  %12 = xor i1 %11, true, !dbg !2309
  %13 = zext i1 %12 to i32, !dbg !2309
  %14 = or i32 %10, %13, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %14, metadata !2276, metadata !DIExpression()), !dbg !2305
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2311
  %16 = load i32, i32* %15, align 8, !dbg !2311, !tbaa !1426
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2312
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2313
  %19 = load i8*, i8** %18, align 8, !dbg !2313, !tbaa !1500
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2314
  %21 = load i8*, i8** %20, align 8, !dbg !2314, !tbaa !1503
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2315
  %23 = add i64 %22, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %23, metadata !2277, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %23, metadata !2291, metadata !DIExpression()) #20, !dbg !2317
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !2319
  call void @llvm.dbg.value(metadata i8* %24, metadata !2278, metadata !DIExpression()), !dbg !2305
  %25 = load i32, i32* %15, align 8, !dbg !2320, !tbaa !1426
  %26 = load i8*, i8** %18, align 8, !dbg !2321, !tbaa !1500
  %27 = load i8*, i8** %20, align 8, !dbg !2322, !tbaa !1503
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2323
  store i32 %8, i32* %7, align 4, !dbg !2324, !tbaa !1161
  br i1 %11, label %29, label %30, !dbg !2325

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2326, !tbaa !2328
  br label %30, !dbg !2329

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2331 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2335, !tbaa !1102
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 1, metadata !2334, metadata !DIExpression()), !dbg !2336
  %2 = load i32, i32* @nslots, align 4, !dbg !2337, !tbaa !1161
  %3 = icmp sgt i32 %2, 1, !dbg !2340
  br i1 %3, label %4, label %12, !dbg !2341

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2334, metadata !DIExpression()), !dbg !2336
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2342
  %7 = load i8*, i8** %6, align 8, !dbg !2342, !tbaa !2343
  tail call void @free(i8* %7) #20, !dbg !2345
  %8 = add nuw nsw i64 %5, 1, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %8, metadata !2334, metadata !DIExpression()), !dbg !2336
  %9 = load i32, i32* @nslots, align 4, !dbg !2337, !tbaa !1161
  %10 = sext i32 %9 to i64, !dbg !2340
  %11 = icmp slt i64 %8, %10, !dbg !2340
  br i1 %11, label %4, label %12, !dbg !2341, !llvm.loop !2347

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2349
  %14 = load i8*, i8** %13, align 8, !dbg !2349, !tbaa !2343
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2351
  br i1 %15, label %17, label %16, !dbg !2352

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !2353
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2355, !tbaa !2356
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2357, !tbaa !2343
  br label %17, !dbg !2358

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2359
  br i1 %18, label %21, label %19, !dbg !2361

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2362
  tail call void @free(i8* %20) #20, !dbg !2364
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2365, !tbaa !1102
  br label %21, !dbg !2366

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2367, !tbaa !1161
  ret void, !dbg !2368
}

; Function Attrs: nounwind
declare !dbg !317 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !2372, metadata !DIExpression()), !dbg !2373
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2374
  ret i8* %3, !dbg !2375
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %1, metadata !2381, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %2, metadata !2382, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2383, metadata !DIExpression()), !dbg !2395
  %5 = tail call i32* @__errno_location() #25, !dbg !2396
  %6 = load i32, i32* %5, align 4, !dbg !2396, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %6, metadata !2384, metadata !DIExpression()), !dbg !2395
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2397, !tbaa !1102
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2385, metadata !DIExpression()), !dbg !2395
  %8 = icmp slt i32 %0, 0, !dbg !2398
  br i1 %8, label %9, label %10, !dbg !2400

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2401
  unreachable, !dbg !2401

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2402, !tbaa !1161
  %12 = icmp sgt i32 %11, %0, !dbg !2403
  br i1 %12, label %34, label %13, !dbg !2404

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2405
  call void @llvm.dbg.value(metadata i1 %14, metadata !2386, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2389, metadata !DIExpression()), !dbg !2406
  %15 = icmp eq i32 %0, 2147483647, !dbg !2407
  br i1 %15, label %16, label %17, !dbg !2409

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2410
  unreachable, !dbg !2410

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2411
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2411
  %20 = add nuw nsw i32 %0, 1, !dbg !2412
  %21 = sext i32 %20 to i64, !dbg !2413
  %22 = shl nuw nsw i64 %21, 4, !dbg !2414
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !2415
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2385, metadata !DIExpression()), !dbg !2395
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2416, !tbaa !1102
  br i1 %14, label %25, label %26, !dbg !2417

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2418, !tbaa.struct !2420
  br label %26, !dbg !2421

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2422, !tbaa !1161
  %28 = sext i32 %27 to i64, !dbg !2423
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2423
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2424
  %31 = sub nsw i32 %20, %27, !dbg !2425
  %32 = sext i32 %31 to i64, !dbg !2426
  %33 = shl nsw i64 %32, 4, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %30, metadata !1825, metadata !DIExpression()) #20, !dbg !2428
  call void @llvm.dbg.value(metadata i32 0, metadata !1830, metadata !DIExpression()) #20, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %33, metadata !1831, metadata !DIExpression()) #20, !dbg !2428
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !2430
  store i32 %20, i32* @nslots, align 4, !dbg !2431, !tbaa !1161
  br label %34, !dbg !2432

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2395
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2385, metadata !DIExpression()), !dbg !2395
  %36 = zext i32 %0 to i64, !dbg !2433
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2434
  %38 = load i64, i64* %37, align 8, !dbg !2434, !tbaa !2356
  call void @llvm.dbg.value(metadata i64 %38, metadata !2390, metadata !DIExpression()), !dbg !2435
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2436
  %40 = load i8*, i8** %39, align 8, !dbg !2436, !tbaa !2343
  call void @llvm.dbg.value(metadata i8* %40, metadata !2392, metadata !DIExpression()), !dbg !2435
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2437
  %42 = load i32, i32* %41, align 4, !dbg !2437, !tbaa !1477
  %43 = or i32 %42, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %43, metadata !2393, metadata !DIExpression()), !dbg !2435
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2439
  %45 = load i32, i32* %44, align 8, !dbg !2439, !tbaa !1426
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2440
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2441
  %48 = load i8*, i8** %47, align 8, !dbg !2441, !tbaa !1500
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2442
  %50 = load i8*, i8** %49, align 8, !dbg !2442, !tbaa !1503
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %51, metadata !2394, metadata !DIExpression()), !dbg !2435
  %52 = icmp ugt i64 %38, %51, !dbg !2444
  br i1 %52, label %63, label %53, !dbg !2446

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i64 %54, metadata !2390, metadata !DIExpression()), !dbg !2435
  store i64 %54, i64* %37, align 8, !dbg !2449, !tbaa !2356
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2450
  br i1 %55, label %57, label %56, !dbg !2452

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !2453
  br label %57, !dbg !2453

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2291, metadata !DIExpression()) #20, !dbg !2454
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %58, metadata !2392, metadata !DIExpression()), !dbg !2435
  store i8* %58, i8** %39, align 8, !dbg !2457, !tbaa !2343
  %59 = load i32, i32* %44, align 8, !dbg !2458, !tbaa !1426
  %60 = load i8*, i8** %47, align 8, !dbg !2459, !tbaa !1500
  %61 = load i8*, i8** %49, align 8, !dbg !2460, !tbaa !1503
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2461
  br label %63, !dbg !2462

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2435
  call void @llvm.dbg.value(metadata i8* %64, metadata !2392, metadata !DIExpression()), !dbg !2435
  store i32 %6, i32* %5, align 4, !dbg !2463, !tbaa !1161
  ret i8* %64, !dbg !2464
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %1, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %2, metadata !2471, metadata !DIExpression()), !dbg !2472
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2473
  ret i8* %4, !dbg !2474
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()) #20, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %0, metadata !2372, metadata !DIExpression()) #20, !dbg !2479
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !2481
  ret i8* %2, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i64 %1, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 0, metadata !2469, metadata !DIExpression()) #20, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()) #20, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %1, metadata !2471, metadata !DIExpression()) #20, !dbg !2490
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !2492
  ret i8* %3, !dbg !2493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2494 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %1, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %2, metadata !2500, metadata !DIExpression()), !dbg !2502
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2503
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()) #20, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2510, metadata !DIExpression()) #20, !dbg !2513
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !2513, !alias.scope !2514
  %6 = icmp eq i32 %1, 10, !dbg !2517
  br i1 %6, label %7, label %8, !dbg !2519

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2520, !noalias !2514
  unreachable, !dbg !2520

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2521
  store i32 %1, i32* %9, align 8, !dbg !2522, !tbaa !1426, !alias.scope !2514
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2524
  ret i8* %10, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2526 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %1, metadata !2531, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %2, metadata !2532, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %3, metadata !2533, metadata !DIExpression()), !dbg !2535
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2536
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()) #20, !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2510, metadata !DIExpression()) #20, !dbg !2540
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !2540, !alias.scope !2541
  %7 = icmp eq i32 %1, 10, !dbg !2544
  br i1 %7, label %8, label %9, !dbg !2545

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2546, !noalias !2541
  unreachable, !dbg !2546

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2547
  store i32 %1, i32* %10, align 8, !dbg !2548, !tbaa !1426, !alias.scope !2541
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2550
  ret i8* %11, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2552 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2510, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2501, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2557, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()) #20, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %0, metadata !2499, metadata !DIExpression()) #20, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()) #20, !dbg !2563
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2564
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()) #20, !dbg !2565
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !2558, !alias.scope !2566
  %5 = icmp eq i32 %0, 10, !dbg !2569
  br i1 %5, label %6, label %7, !dbg !2570

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2571, !noalias !2566
  unreachable, !dbg !2571

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2572
  store i32 %0, i32* %8, align 8, !dbg !2573, !tbaa !1426, !alias.scope !2566
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2575
  ret i8* %9, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2577 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2510, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2534, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %2, metadata !2583, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2530, metadata !DIExpression()) #20, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()) #20, !dbg !2589
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #20, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()) #20, !dbg !2589
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2590
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()) #20, !dbg !2591
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !2584, !alias.scope !2592
  %6 = icmp eq i32 %0, 10, !dbg !2595
  br i1 %6, label %7, label %8, !dbg !2596

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2597, !noalias !2592
  unreachable, !dbg !2597

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2598
  store i32 %0, i32* %9, align 8, !dbg !2599, !tbaa !1426, !alias.scope !2592
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !2600
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2601
  ret i8* %10, !dbg !2602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2603 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %1, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 %2, metadata !2609, metadata !DIExpression()), !dbg !2611
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2612
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2614, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1444, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %2, metadata !1445, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 %2, metadata !1447, metadata !DIExpression()), !dbg !2616
  %6 = lshr i8 %2, 5, !dbg !2618
  %7 = zext i8 %6 to i64, !dbg !2618
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2619
  call void @llvm.dbg.value(metadata i32* %8, metadata !1448, metadata !DIExpression()), !dbg !2616
  %9 = and i8 %2, 31, !dbg !2620
  %10 = zext i8 %9 to i32, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %10, metadata !1450, metadata !DIExpression()), !dbg !2616
  %11 = load i32, i32* %8, align 4, !dbg !2621, !tbaa !1161
  %12 = lshr i32 %11, %10, !dbg !2622
  %13 = and i32 %12, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %13, metadata !1451, metadata !DIExpression()), !dbg !2616
  %14 = xor i32 %13, 1, !dbg !2624
  %15 = shl i32 %14, %10, !dbg !2625
  %16 = xor i32 %15, %11, !dbg !2626
  store i32 %16, i32* %8, align 4, !dbg !2626, !tbaa !1161
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2628
  ret i8* %17, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2630 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2610, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 %1, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()) #20, !dbg !2639
  call void @llvm.dbg.value(metadata i64 -1, metadata !2608, metadata !DIExpression()) #20, !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !2609, metadata !DIExpression()) #20, !dbg !2639
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2641, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1444, metadata !DIExpression()) #20, !dbg !2642
  call void @llvm.dbg.value(metadata i8 %1, metadata !1445, metadata !DIExpression()) #20, !dbg !2642
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()) #20, !dbg !2642
  call void @llvm.dbg.value(metadata i8 %1, metadata !1447, metadata !DIExpression()) #20, !dbg !2642
  %5 = lshr i8 %1, 5, !dbg !2644
  %6 = zext i8 %5 to i64, !dbg !2644
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2645
  call void @llvm.dbg.value(metadata i32* %7, metadata !1448, metadata !DIExpression()) #20, !dbg !2642
  %8 = and i8 %1, 31, !dbg !2646
  %9 = zext i8 %8 to i32, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %9, metadata !1450, metadata !DIExpression()) #20, !dbg !2642
  %10 = load i32, i32* %7, align 4, !dbg !2647, !tbaa !1161
  %11 = lshr i32 %10, %9, !dbg !2648
  %12 = and i32 %11, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %12, metadata !1451, metadata !DIExpression()) #20, !dbg !2642
  %13 = xor i32 %12, 1, !dbg !2650
  %14 = shl i32 %13, %9, !dbg !2651
  %15 = xor i32 %14, %10, !dbg !2652
  store i32 %15, i32* %7, align 4, !dbg !2652, !tbaa !1161
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !2653
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2654
  ret i8* %16, !dbg !2655
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2656 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2610, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %0, metadata !2658, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* %0, metadata !2634, metadata !DIExpression()) #20, !dbg !2663
  call void @llvm.dbg.value(metadata i8 58, metadata !2635, metadata !DIExpression()) #20, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()) #20, !dbg !2664
  call void @llvm.dbg.value(metadata i64 -1, metadata !2608, metadata !DIExpression()) #20, !dbg !2664
  call void @llvm.dbg.value(metadata i8 58, metadata !2609, metadata !DIExpression()) #20, !dbg !2664
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2665
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !2665
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2666, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1444, metadata !DIExpression()) #20, !dbg !2667
  call void @llvm.dbg.value(metadata i8 58, metadata !1445, metadata !DIExpression()) #20, !dbg !2667
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()) #20, !dbg !2667
  call void @llvm.dbg.value(metadata i8 58, metadata !1447, metadata !DIExpression()) #20, !dbg !2667
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2669
  call void @llvm.dbg.value(metadata i32* %4, metadata !1448, metadata !DIExpression()) #20, !dbg !2667
  call void @llvm.dbg.value(metadata i32 26, metadata !1450, metadata !DIExpression()) #20, !dbg !2667
  %5 = load i32, i32* %4, align 4, !dbg !2670, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %5, metadata !1451, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !2667
  %6 = or i32 %5, 67108864, !dbg !2671
  store i32 %6, i32* %4, align 4, !dbg !2671, !tbaa !1161
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !2673
  ret i8* %7, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2675 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2610, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %0, metadata !2677, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %1, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2607, metadata !DIExpression()) #20, !dbg !2682
  call void @llvm.dbg.value(metadata i64 %1, metadata !2608, metadata !DIExpression()) #20, !dbg !2682
  call void @llvm.dbg.value(metadata i8 58, metadata !2609, metadata !DIExpression()) #20, !dbg !2682
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2684, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1444, metadata !DIExpression()) #20, !dbg !2685
  call void @llvm.dbg.value(metadata i8 58, metadata !1445, metadata !DIExpression()) #20, !dbg !2685
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()) #20, !dbg !2685
  call void @llvm.dbg.value(metadata i8 58, metadata !1447, metadata !DIExpression()) #20, !dbg !2685
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2687
  call void @llvm.dbg.value(metadata i32* %5, metadata !1448, metadata !DIExpression()) #20, !dbg !2685
  call void @llvm.dbg.value(metadata i32 26, metadata !1450, metadata !DIExpression()) #20, !dbg !2685
  %6 = load i32, i32* %5, align 4, !dbg !2688, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %6, metadata !1451, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !2685
  %7 = or i32 %6, 67108864, !dbg !2689
  store i32 %7, i32* %5, align 4, !dbg !2689, !tbaa !1161
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !2690
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2691
  ret i8* %8, !dbg !2692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2693 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2510, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2699
  call void @llvm.dbg.value(metadata i32 %0, metadata !2695, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2696, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %2, metadata !2697, metadata !DIExpression()), !dbg !2701
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2702
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2698, metadata !DIExpression()), !dbg !2703
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2704
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2704
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()) #20, !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2705
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2699, !alias.scope !2706
  %8 = icmp eq i32 %1, 10, !dbg !2709
  br i1 %8, label %9, label %10, !dbg !2710

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2711, !noalias !2706
  unreachable, !dbg !2711

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2510, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2705
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2704
  store i32 %1, i32* %11, align 8, !dbg !2704, !tbaa.struct !2615
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2704
  %13 = bitcast i32* %12 to i8*, !dbg !2704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2704, !tbaa.struct !2615
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1444, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 58, metadata !1445, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 1, metadata !1446, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8 58, metadata !1447, metadata !DIExpression()), !dbg !2712
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2714
  call void @llvm.dbg.value(metadata i32* %14, metadata !1448, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 26, metadata !1450, metadata !DIExpression()), !dbg !2712
  %15 = load i32, i32* %14, align 4, !dbg !2715, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %15, metadata !1451, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2712
  %16 = or i32 %15, 67108864, !dbg !2716
  store i32 %16, i32* %14, align 4, !dbg !2716, !tbaa !1161
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2717
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2718
  ret i8* %17, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2720 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2728, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %2, metadata !2726, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %3, metadata !2727, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()) #20, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %1, metadata !2734, metadata !DIExpression()) #20, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %2, metadata !2735, metadata !DIExpression()) #20, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %3, metadata !2736, metadata !DIExpression()) #20, !dbg !2741
  call void @llvm.dbg.value(metadata i64 -1, metadata !2737, metadata !DIExpression()) #20, !dbg !2741
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2743, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1484, metadata !DIExpression()) #20, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %1, metadata !1485, metadata !DIExpression()) #20, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %2, metadata !1486, metadata !DIExpression()) #20, !dbg !2744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1484, metadata !DIExpression()) #20, !dbg !2744
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2746
  store i32 10, i32* %7, align 8, !dbg !2747, !tbaa !1426
  %8 = icmp ne i8* %1, null, !dbg !2748
  %9 = icmp ne i8* %2, null, !dbg !2749
  %10 = and i1 %8, %9, !dbg !2750
  br i1 %10, label %12, label %11, !dbg !2750

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2751
  unreachable, !dbg !2751

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2752
  store i8* %1, i8** %13, align 8, !dbg !2753, !tbaa !1500
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2754
  store i8* %2, i8** %14, align 8, !dbg !2755, !tbaa !1503
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2757
  ret i8* %15, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2729 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2734, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2735, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %3, metadata !2736, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 %4, metadata !2737, metadata !DIExpression()), !dbg !2759
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2760
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2728, metadata !DIExpression()), !dbg !2761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2762, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1484, metadata !DIExpression()) #20, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %1, metadata !1485, metadata !DIExpression()) #20, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %2, metadata !1486, metadata !DIExpression()) #20, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1484, metadata !DIExpression()) #20, !dbg !2763
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2765
  store i32 10, i32* %8, align 8, !dbg !2766, !tbaa !1426
  %9 = icmp ne i8* %1, null, !dbg !2767
  %10 = icmp ne i8* %2, null, !dbg !2768
  %11 = and i1 %9, %10, !dbg !2769
  br i1 %11, label %13, label %12, !dbg !2769

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2770
  unreachable, !dbg !2770

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2771
  store i8* %1, i8** %14, align 8, !dbg !2772, !tbaa !1500
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2773
  store i8* %2, i8** %15, align 8, !dbg !2774, !tbaa !1503
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2775
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !2776
  ret i8* %16, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2778 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2728, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !2783, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %2, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()) #20, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %0, metadata !2725, metadata !DIExpression()) #20, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2726, metadata !DIExpression()) #20, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !2727, metadata !DIExpression()) #20, !dbg !2789
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2735, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2736, metadata !DIExpression()) #20, !dbg !2790
  call void @llvm.dbg.value(metadata i64 -1, metadata !2737, metadata !DIExpression()) #20, !dbg !2790
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2792, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1484, metadata !DIExpression()) #20, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %0, metadata !1485, metadata !DIExpression()) #20, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !1486, metadata !DIExpression()) #20, !dbg !2793
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1484, metadata !DIExpression()) #20, !dbg !2793
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2795
  store i32 10, i32* %6, align 8, !dbg !2796, !tbaa !1426
  %7 = icmp ne i8* %0, null, !dbg !2797
  %8 = icmp ne i8* %1, null, !dbg !2798
  %9 = and i1 %7, %8, !dbg !2799
  br i1 %9, label %11, label %10, !dbg !2799

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2800
  unreachable, !dbg !2800

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2801
  store i8* %0, i8** %12, align 8, !dbg !2802, !tbaa !1500
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2803
  store i8* %1, i8** %13, align 8, !dbg !2804, !tbaa !1503
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2806
  ret i8* %14, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2808 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2728, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !2813, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %2, metadata !2814, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %3, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()) #20, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()) #20, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %1, metadata !2735, metadata !DIExpression()) #20, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %2, metadata !2736, metadata !DIExpression()) #20, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %3, metadata !2737, metadata !DIExpression()) #20, !dbg !2819
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2820
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2821, !tbaa.struct !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1484, metadata !DIExpression()) #20, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %0, metadata !1485, metadata !DIExpression()) #20, !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !1486, metadata !DIExpression()) #20, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1484, metadata !DIExpression()) #20, !dbg !2822
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2824
  store i32 10, i32* %7, align 8, !dbg !2825, !tbaa !1426
  %8 = icmp ne i8* %0, null, !dbg !2826
  %9 = icmp ne i8* %1, null, !dbg !2827
  %10 = and i1 %8, %9, !dbg !2828
  br i1 %10, label %12, label %11, !dbg !2828

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2829
  unreachable, !dbg !2829

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2830
  store i8* %0, i8** %13, align 8, !dbg !2831, !tbaa !1500
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2832
  store i8* %1, i8** %14, align 8, !dbg !2833, !tbaa !1503
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !2834
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2835
  ret i8* %15, !dbg !2836
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %1, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %2, metadata !2843, metadata !DIExpression()), !dbg !2844
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2845
  ret i8* %4, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()) #20, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %0, metadata !2842, metadata !DIExpression()) #20, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2843, metadata !DIExpression()) #20, !dbg !2854
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2856
  ret i8* %3, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2858 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %0, metadata !2841, metadata !DIExpression()) #20, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %1, metadata !2842, metadata !DIExpression()) #20, !dbg !2865
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()) #20, !dbg !2865
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2867
  ret i8* %3, !dbg !2868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2862, metadata !DIExpression()) #20, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()) #20, !dbg !2875
  call void @llvm.dbg.value(metadata i32 0, metadata !2841, metadata !DIExpression()) #20, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2842, metadata !DIExpression()) #20, !dbg !2877
  call void @llvm.dbg.value(metadata i64 -1, metadata !2843, metadata !DIExpression()) #20, !dbg !2877
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2879
  ret i8* %2, !dbg !2880
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2881 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2888, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %2, metadata !2890, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %3, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8** %4, metadata !2892, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %5, metadata !2893, metadata !DIExpression()), !dbg !2894
  %7 = icmp eq i8* %1, null, !dbg !2895
  br i1 %7, label %10, label %8, !dbg !2897

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !2898
  br label %12, !dbg !2898

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !2899
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 5) #20, !dbg !2900
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !2900
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2901
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.76, i64 0, i64 0), i32 5) #20, !dbg !2902
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.77, i64 0, i64 0)) #20, !dbg !2902
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2903
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
  ], !dbg !2904

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.78, i64 0, i64 0), i32 5) #20, !dbg !2905
  %21 = load i8*, i8** %4, align 8, !dbg !2905, !tbaa !1102
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !2905
  br label %147, !dbg !2907

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.79, i64 0, i64 0), i32 5) #20, !dbg !2908
  %25 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !1102
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %27 = load i8*, i8** %26, align 8, !dbg !2908, !tbaa !1102
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !2908
  br label %147, !dbg !2909

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.80, i64 0, i64 0), i32 5) #20, !dbg !2910
  %31 = load i8*, i8** %4, align 8, !dbg !2910, !tbaa !1102
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2910
  %33 = load i8*, i8** %32, align 8, !dbg !2910, !tbaa !1102
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2910
  %35 = load i8*, i8** %34, align 8, !dbg !2910, !tbaa !1102
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !2910
  br label %147, !dbg !2911

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.81, i64 0, i64 0), i32 5) #20, !dbg !2912
  %39 = load i8*, i8** %4, align 8, !dbg !2912, !tbaa !1102
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2912
  %41 = load i8*, i8** %40, align 8, !dbg !2912, !tbaa !1102
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2912
  %43 = load i8*, i8** %42, align 8, !dbg !2912, !tbaa !1102
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2912
  %45 = load i8*, i8** %44, align 8, !dbg !2912, !tbaa !1102
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !2912
  br label %147, !dbg !2913

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.82, i64 0, i64 0), i32 5) #20, !dbg !2914
  %49 = load i8*, i8** %4, align 8, !dbg !2914, !tbaa !1102
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2914
  %51 = load i8*, i8** %50, align 8, !dbg !2914, !tbaa !1102
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2914
  %53 = load i8*, i8** %52, align 8, !dbg !2914, !tbaa !1102
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2914
  %55 = load i8*, i8** %54, align 8, !dbg !2914, !tbaa !1102
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2914
  %57 = load i8*, i8** %56, align 8, !dbg !2914, !tbaa !1102
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !2914
  br label %147, !dbg !2915

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.83, i64 0, i64 0), i32 5) #20, !dbg !2916
  %61 = load i8*, i8** %4, align 8, !dbg !2916, !tbaa !1102
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2916
  %63 = load i8*, i8** %62, align 8, !dbg !2916, !tbaa !1102
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2916
  %65 = load i8*, i8** %64, align 8, !dbg !2916, !tbaa !1102
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2916
  %67 = load i8*, i8** %66, align 8, !dbg !2916, !tbaa !1102
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2916
  %69 = load i8*, i8** %68, align 8, !dbg !2916, !tbaa !1102
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2916
  %71 = load i8*, i8** %70, align 8, !dbg !2916, !tbaa !1102
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !2916
  br label %147, !dbg !2917

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.84, i64 0, i64 0), i32 5) #20, !dbg !2918
  %75 = load i8*, i8** %4, align 8, !dbg !2918, !tbaa !1102
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2918
  %77 = load i8*, i8** %76, align 8, !dbg !2918, !tbaa !1102
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2918
  %79 = load i8*, i8** %78, align 8, !dbg !2918, !tbaa !1102
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2918
  %81 = load i8*, i8** %80, align 8, !dbg !2918, !tbaa !1102
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2918
  %83 = load i8*, i8** %82, align 8, !dbg !2918, !tbaa !1102
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2918
  %85 = load i8*, i8** %84, align 8, !dbg !2918, !tbaa !1102
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2918
  %87 = load i8*, i8** %86, align 8, !dbg !2918, !tbaa !1102
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !2918
  br label %147, !dbg !2919

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.85, i64 0, i64 0), i32 5) #20, !dbg !2920
  %91 = load i8*, i8** %4, align 8, !dbg !2920, !tbaa !1102
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2920
  %93 = load i8*, i8** %92, align 8, !dbg !2920, !tbaa !1102
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2920
  %95 = load i8*, i8** %94, align 8, !dbg !2920, !tbaa !1102
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2920
  %97 = load i8*, i8** %96, align 8, !dbg !2920, !tbaa !1102
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2920
  %99 = load i8*, i8** %98, align 8, !dbg !2920, !tbaa !1102
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2920
  %101 = load i8*, i8** %100, align 8, !dbg !2920, !tbaa !1102
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2920
  %103 = load i8*, i8** %102, align 8, !dbg !2920, !tbaa !1102
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2920
  %105 = load i8*, i8** %104, align 8, !dbg !2920, !tbaa !1102
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !2920
  br label %147, !dbg !2921

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #20, !dbg !2922
  %109 = load i8*, i8** %4, align 8, !dbg !2922, !tbaa !1102
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2922
  %111 = load i8*, i8** %110, align 8, !dbg !2922, !tbaa !1102
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2922
  %113 = load i8*, i8** %112, align 8, !dbg !2922, !tbaa !1102
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2922
  %115 = load i8*, i8** %114, align 8, !dbg !2922, !tbaa !1102
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2922
  %117 = load i8*, i8** %116, align 8, !dbg !2922, !tbaa !1102
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2922
  %119 = load i8*, i8** %118, align 8, !dbg !2922, !tbaa !1102
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2922
  %121 = load i8*, i8** %120, align 8, !dbg !2922, !tbaa !1102
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2922
  %123 = load i8*, i8** %122, align 8, !dbg !2922, !tbaa !1102
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2922
  %125 = load i8*, i8** %124, align 8, !dbg !2922, !tbaa !1102
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !2922
  br label %147, !dbg !2923

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.87, i64 0, i64 0), i32 5) #20, !dbg !2924
  %129 = load i8*, i8** %4, align 8, !dbg !2924, !tbaa !1102
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2924
  %131 = load i8*, i8** %130, align 8, !dbg !2924, !tbaa !1102
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2924
  %133 = load i8*, i8** %132, align 8, !dbg !2924, !tbaa !1102
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2924
  %135 = load i8*, i8** %134, align 8, !dbg !2924, !tbaa !1102
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2924
  %137 = load i8*, i8** %136, align 8, !dbg !2924, !tbaa !1102
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2924
  %139 = load i8*, i8** %138, align 8, !dbg !2924, !tbaa !1102
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2924
  %141 = load i8*, i8** %140, align 8, !dbg !2924, !tbaa !1102
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2924
  %143 = load i8*, i8** %142, align 8, !dbg !2924, !tbaa !1102
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2924
  %145 = load i8*, i8** %144, align 8, !dbg !2924, !tbaa !1102
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !2924
  br label %147, !dbg !2925

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2927 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2931, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %1, metadata !2932, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %3, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8** %4, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 0, metadata !2936, metadata !DIExpression()), !dbg !2937
  br label %6, !dbg !2938

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2940
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2941
  %9 = load i8*, i8** %8, align 8, !dbg !2941, !tbaa !1102
  %10 = icmp eq i8* %9, null, !dbg !2943
  %11 = add i64 %7, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %11, metadata !2936, metadata !DIExpression()), !dbg !2937
  br i1 %10, label %12, label %6, !dbg !2943, !llvm.loop !2945

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2936, metadata !DIExpression()), !dbg !2937
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2947
  ret void, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2949 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2960, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2961, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %3, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2964, metadata !DIExpression()), !dbg !2968
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !2969
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 0, metadata !2965, metadata !DIExpression()), !dbg !2968
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2971
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2971
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2971
  %11 = load i32, i32* %8, align 8, !dbg !2974
  %12 = icmp ult i32 %11, 41, !dbg !2974
  br i1 %12, label %13, label %18, !dbg !2974

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2974
  %15 = zext i32 %11 to i64, !dbg !2974
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2974
  %17 = add nuw nsw i32 %11, 8, !dbg !2974
  store i32 %17, i32* %8, align 8, !dbg !2974
  br label %21, !dbg !2974

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2974
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2974
  store i8* %20, i8** %9, align 8, !dbg !2974
  br label %21, !dbg !2974

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2974
  %25 = load i8*, i8** %24, align 8, !dbg !2974
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2975
  store i8* %25, i8** %26, align 16, !dbg !2976, !tbaa !1102
  %27 = icmp eq i8* %25, null, !dbg !2977
  br i1 %27, label %30, label %28, !dbg !2978

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2965, metadata !DIExpression()), !dbg !2968
  %29 = icmp ult i32 %22, 41, !dbg !2974
  br i1 %29, label %35, label %32, !dbg !2974

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2979
  call void @llvm.dbg.value(metadata i64 %31, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %31, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !2981
  ret void, !dbg !2981

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2974
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2974
  store i8* %34, i8** %9, align 8, !dbg !2974
  br label %40, !dbg !2974

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2974
  %37 = zext i32 %22 to i64, !dbg !2974
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2974
  %39 = add nuw nsw i32 %22, 8, !dbg !2974
  store i32 %39, i32* %8, align 8, !dbg !2974
  br label %40, !dbg !2974

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2974
  %44 = load i8*, i8** %43, align 8, !dbg !2974
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2975
  store i8* %44, i8** %45, align 8, !dbg !2976, !tbaa !1102
  %46 = icmp eq i8* %44, null, !dbg !2977
  br i1 %46, label %30, label %47, !dbg !2978

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2965, metadata !DIExpression()), !dbg !2968
  %48 = icmp ult i32 %41, 41, !dbg !2974
  br i1 %48, label %52, label %49, !dbg !2974

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2974
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2974
  store i8* %51, i8** %9, align 8, !dbg !2974
  br label %57, !dbg !2974

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2974
  %54 = zext i32 %41 to i64, !dbg !2974
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2974
  %56 = add nuw nsw i32 %41, 8, !dbg !2974
  store i32 %56, i32* %8, align 8, !dbg !2974
  br label %57, !dbg !2974

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2974
  %61 = load i8*, i8** %60, align 8, !dbg !2974
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2975
  store i8* %61, i8** %62, align 16, !dbg !2976, !tbaa !1102
  %63 = icmp eq i8* %61, null, !dbg !2977
  br i1 %63, label %30, label %64, !dbg !2978

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2965, metadata !DIExpression()), !dbg !2968
  %65 = icmp ult i32 %58, 41, !dbg !2974
  br i1 %65, label %69, label %66, !dbg !2974

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2974
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2974
  store i8* %68, i8** %9, align 8, !dbg !2974
  br label %74, !dbg !2974

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2974
  %71 = zext i32 %58 to i64, !dbg !2974
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2974
  %73 = add nuw nsw i32 %58, 8, !dbg !2974
  store i32 %73, i32* %8, align 8, !dbg !2974
  br label %74, !dbg !2974

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2974
  %78 = load i8*, i8** %77, align 8, !dbg !2974
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2975
  store i8* %78, i8** %79, align 8, !dbg !2976, !tbaa !1102
  %80 = icmp eq i8* %78, null, !dbg !2977
  br i1 %80, label %30, label %81, !dbg !2978

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2965, metadata !DIExpression()), !dbg !2968
  %82 = icmp ult i32 %75, 41, !dbg !2974
  br i1 %82, label %86, label %83, !dbg !2974

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2974
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2974
  store i8* %85, i8** %9, align 8, !dbg !2974
  br label %91, !dbg !2974

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2974
  %88 = zext i32 %75 to i64, !dbg !2974
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2974
  %90 = add nuw nsw i32 %75, 8, !dbg !2974
  store i32 %90, i32* %8, align 8, !dbg !2974
  br label %91, !dbg !2974

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2974
  %95 = load i8*, i8** %94, align 8, !dbg !2974
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2975
  store i8* %95, i8** %96, align 16, !dbg !2976, !tbaa !1102
  %97 = icmp eq i8* %95, null, !dbg !2977
  br i1 %97, label %30, label %98, !dbg !2978

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2965, metadata !DIExpression()), !dbg !2968
  %99 = icmp ult i32 %92, 41, !dbg !2974
  br i1 %99, label %103, label %100, !dbg !2974

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2974
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2974
  store i8* %102, i8** %9, align 8, !dbg !2974
  br label %108, !dbg !2974

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2974
  %105 = zext i32 %92 to i64, !dbg !2974
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2974
  %107 = add nuw nsw i32 %92, 8, !dbg !2974
  store i32 %107, i32* %8, align 8, !dbg !2974
  br label %108, !dbg !2974

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2974
  %111 = load i8*, i8** %110, align 8, !dbg !2974
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2975
  store i8* %111, i8** %112, align 8, !dbg !2976, !tbaa !1102
  %113 = icmp eq i8* %111, null, !dbg !2977
  br i1 %113, label %30, label %114, !dbg !2978

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2965, metadata !DIExpression()), !dbg !2968
  %115 = load i8*, i8** %9, align 8, !dbg !2974
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2974
  store i8* %116, i8** %9, align 8, !dbg !2974
  %117 = bitcast i8* %115 to i8**, !dbg !2974
  %118 = load i8*, i8** %117, align 8, !dbg !2974
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2975
  store i8* %118, i8** %119, align 16, !dbg !2976, !tbaa !1102
  %120 = icmp eq i8* %118, null, !dbg !2977
  br i1 %120, label %30, label %121, !dbg !2978

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2965, metadata !DIExpression()), !dbg !2968
  %122 = load i8*, i8** %9, align 8, !dbg !2974
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2974
  store i8* %123, i8** %9, align 8, !dbg !2974
  %124 = bitcast i8* %122 to i8**, !dbg !2974
  %125 = load i8*, i8** %124, align 8, !dbg !2974
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2975
  store i8* %125, i8** %126, align 8, !dbg !2976, !tbaa !1102
  %127 = icmp eq i8* %125, null, !dbg !2977
  br i1 %127, label %30, label %128, !dbg !2978

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2965, metadata !DIExpression()), !dbg !2968
  %129 = load i8*, i8** %9, align 8, !dbg !2974
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2974
  store i8* %130, i8** %9, align 8, !dbg !2974
  %131 = bitcast i8* %129 to i8**, !dbg !2974
  %132 = load i8*, i8** %131, align 8, !dbg !2974
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2975
  store i8* %132, i8** %133, align 16, !dbg !2976, !tbaa !1102
  %134 = icmp eq i8* %132, null, !dbg !2977
  br i1 %134, label %30, label %135, !dbg !2978

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2965, metadata !DIExpression()), !dbg !2968
  %136 = load i8*, i8** %9, align 8, !dbg !2974
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2974
  store i8* %137, i8** %9, align 8, !dbg !2974
  %138 = bitcast i8* %136 to i8**, !dbg !2974
  %139 = load i8*, i8** %138, align 8, !dbg !2974
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2975
  store i8* %139, i8** %140, align 8, !dbg !2976, !tbaa !1102
  %141 = icmp eq i8* %139, null, !dbg !2977
  %142 = select i1 %141, i64 9, i64 10, !dbg !2978
  br label %30, !dbg !2978
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2982 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2986, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* %2, metadata !2988, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* %3, metadata !2989, metadata !DIExpression()), !dbg !2996
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2997
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !2997
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2990, metadata !DIExpression()), !dbg !2998
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2999
  call void @llvm.va_start(i8* nonnull %6), !dbg !2999
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3000
  call void @llvm.va_end(i8* nonnull %6), !dbg !3001
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3002
  ret void, !dbg !3002
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3003 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3004, !tbaa !1102
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.75, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3004
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i32 5) #20, !dbg !3005
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.91, i64 0, i64 0)) #20, !dbg !3005
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.92, i64 0, i64 0), i32 5) #20, !dbg !3006
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.94, i64 0, i64 0)) #20, !dbg !3006
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.95, i64 0, i64 0), i32 5) #20, !dbg !3007
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.96, i64 0, i64 0)) #20, !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3009 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  %3 = udiv i64 9223372036854775807, %1, !dbg !3016
  %4 = icmp ult i64 %3, %0, !dbg !3016
  br i1 %4, label %5, label %6, !dbg !3018

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3019
  unreachable, !dbg !3019

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %7, metadata !3021, metadata !DIExpression()) #20, !dbg !3027
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %8, metadata !3026, metadata !DIExpression()) #20, !dbg !3027
  %9 = icmp eq i8* %8, null, !dbg !3030
  %10 = icmp ne i64 %7, 0, !dbg !3032
  %11 = and i1 %10, %9, !dbg !3033
  br i1 %11, label %12, label %13, !dbg !3033

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3034
  unreachable, !dbg !3034

13:                                               ; preds = %6
  ret i8* %8, !dbg !3035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3022 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3021, metadata !DIExpression()), !dbg !3036
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %2, metadata !3026, metadata !DIExpression()), !dbg !3036
  %3 = icmp eq i8* %2, null, !dbg !3038
  %4 = icmp ne i64 %0, 0, !dbg !3039
  %5 = and i1 %4, %3, !dbg !3040
  br i1 %5, label %6, label %7, !dbg !3040

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3041
  unreachable, !dbg !3041

7:                                                ; preds = %1
  ret i8* %2, !dbg !3042
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %2, metadata !3049, metadata !DIExpression()), !dbg !3050
  %4 = udiv i64 9223372036854775807, %2, !dbg !3051
  %5 = icmp ult i64 %4, %1, !dbg !3051
  br i1 %5, label %6, label %7, !dbg !3053

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3054
  unreachable, !dbg !3054

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %8, metadata !3061, metadata !DIExpression()) #20, !dbg !3062
  %9 = icmp eq i64 %8, 0, !dbg !3064
  %10 = icmp ne i8* %0, null, !dbg !3066
  %11 = and i1 %10, %9, !dbg !3067
  br i1 %11, label %12, label %13, !dbg !3067

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3068
  br label %19, !dbg !3070

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %14, metadata !3056, metadata !DIExpression()) #20, !dbg !3062
  %15 = icmp eq i8* %14, null, !dbg !3072
  %16 = icmp ne i64 %8, 0, !dbg !3074
  %17 = and i1 %16, %15, !dbg !3075
  br i1 %17, label %18, label %19, !dbg !3075

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3076
  unreachable, !dbg !3076

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3062
  ret i8* %20, !dbg !3077
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3057 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3078
  %3 = icmp eq i64 %1, 0, !dbg !3079
  %4 = icmp ne i8* %0, null, !dbg !3080
  %5 = and i1 %4, %3, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3081

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3082
  br label %13, !dbg !3083

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3084
  call void @llvm.dbg.value(metadata i8* %8, metadata !3056, metadata !DIExpression()), !dbg !3078
  %9 = icmp eq i8* %8, null, !dbg !3085
  %10 = icmp ne i64 %1, 0, !dbg !3086
  %11 = and i1 %10, %9, !dbg !3087
  br i1 %11, label %12, label %13, !dbg !3087

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3088
  unreachable, !dbg !3088

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3078
  ret i8* %14, !dbg !3089
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !455 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64* %1, metadata !461, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !462, metadata !DIExpression()), !dbg !3090
  %4 = load i64, i64* %1, align 8, !dbg !3091, !tbaa !2328
  call void @llvm.dbg.value(metadata i64 %4, metadata !463, metadata !DIExpression()), !dbg !3090
  %5 = icmp eq i8* %0, null, !dbg !3092
  br i1 %5, label %6, label %20, !dbg !3094

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3095
  br i1 %7, label %8, label %13, !dbg !3098

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %9, metadata !463, metadata !DIExpression()), !dbg !3090
  %10 = icmp ugt i64 %2, 128, !dbg !3101
  %11 = zext i1 %10 to i64, !dbg !3101
  %12 = add nuw nsw i64 %9, %11, !dbg !3102
  call void @llvm.dbg.value(metadata i64 %12, metadata !463, metadata !DIExpression()), !dbg !3090
  br label %13, !dbg !3103

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3090
  call void @llvm.dbg.value(metadata i64 %14, metadata !463, metadata !DIExpression()), !dbg !3090
  %15 = udiv i64 9223372036854775807, %2, !dbg !3104
  %16 = icmp ult i64 %15, %14, !dbg !3104
  br i1 %16, label %19, label %17, !dbg !3106

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !463, metadata !DIExpression()), !dbg !3090
  store i64 %14, i64* %1, align 8, !dbg !3107, !tbaa !2328
  %18 = mul i64 %14, %2, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %28, metadata !3061, metadata !DIExpression()) #20, !dbg !3109
  br label %31, !dbg !3111

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3112
  unreachable, !dbg !3112

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3113
  %22 = icmp ugt i64 %21, %4, !dbg !3116
  br i1 %22, label %24, label %23, !dbg !3117

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3118
  unreachable, !dbg !3118

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3119
  %26 = add nuw i64 %4, 1, !dbg !3120
  %27 = add i64 %26, %25, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %27, metadata !463, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %27, metadata !463, metadata !DIExpression()), !dbg !3090
  store i64 %27, i64* %1, align 8, !dbg !3107, !tbaa !2328
  %28 = mul i64 %27, %2, !dbg !3108
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %28, metadata !3061, metadata !DIExpression()) #20, !dbg !3109
  %29 = icmp eq i64 %28, 0, !dbg !3122
  br i1 %29, label %30, label %31, !dbg !3111

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3123
  br label %38, !dbg !3124

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %33, metadata !3056, metadata !DIExpression()) #20, !dbg !3109
  %34 = icmp eq i8* %33, null, !dbg !3126
  %35 = icmp ne i64 %32, 0, !dbg !3127
  %36 = and i1 %35, %34, !dbg !3128
  br i1 %36, label %37, label %38, !dbg !3128

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3129
  unreachable, !dbg !3129

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3109
  ret i8* %39, !dbg !3130
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3131 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %0, metadata !3021, metadata !DIExpression()) #20, !dbg !3135
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %2, metadata !3026, metadata !DIExpression()) #20, !dbg !3135
  %3 = icmp eq i8* %2, null, !dbg !3138
  %4 = icmp ne i64 %0, 0, !dbg !3139
  %5 = and i1 %4, %3, !dbg !3140
  br i1 %5, label %6, label %7, !dbg !3140

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3141
  unreachable, !dbg !3141

7:                                                ; preds = %1
  ret i8* %2, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3143 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64* %1, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !460, metadata !DIExpression()) #20, !dbg !3150
  call void @llvm.dbg.value(metadata i64* %1, metadata !461, metadata !DIExpression()) #20, !dbg !3150
  call void @llvm.dbg.value(metadata i64 1, metadata !462, metadata !DIExpression()) #20, !dbg !3150
  %3 = load i64, i64* %1, align 8, !dbg !3152, !tbaa !2328
  call void @llvm.dbg.value(metadata i64 %3, metadata !463, metadata !DIExpression()) #20, !dbg !3150
  %4 = icmp eq i8* %0, null, !dbg !3153
  br i1 %4, label %5, label %12, !dbg !3154

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3155
  br i1 %6, label %9, label %7, !dbg !3156

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !463, metadata !DIExpression()) #20, !dbg !3150
  %8 = icmp slt i64 %3, 0, !dbg !3157
  br i1 %8, label %11, label %9, !dbg !3158

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !463, metadata !DIExpression()) #20, !dbg !3150
  store i64 %10, i64* %1, align 8, !dbg !3159, !tbaa !2328
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %18, metadata !3061, metadata !DIExpression()) #20, !dbg !3160
  br label %21, !dbg !3162

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3163
  unreachable, !dbg !3163

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3164
  br i1 %13, label %15, label %14, !dbg !3165

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3166
  unreachable, !dbg !3166

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3167
  %17 = add nuw nsw i64 %3, 1, !dbg !3168
  %18 = add nuw nsw i64 %17, %16, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %18, metadata !463, metadata !DIExpression()) #20, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %18, metadata !463, metadata !DIExpression()) #20, !dbg !3150
  store i64 %18, i64* %1, align 8, !dbg !3159, !tbaa !2328
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()) #20, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %18, metadata !3061, metadata !DIExpression()) #20, !dbg !3160
  %19 = icmp eq i64 %18, 0, !dbg !3170
  br i1 %19, label %20, label %21, !dbg !3162

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3171
  br label %28, !dbg !3172

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %23, metadata !3056, metadata !DIExpression()) #20, !dbg !3160
  %24 = icmp eq i8* %23, null, !dbg !3174
  %25 = icmp ne i64 %22, 0, !dbg !3175
  %26 = and i1 %25, %24, !dbg !3176
  br i1 %26, label %27, label %28, !dbg !3176

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3177
  unreachable, !dbg !3177

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3160
  ret i8* %29, !dbg !3178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %0, metadata !3183, metadata !DIExpression()) #20, !dbg !3188
  call void @llvm.dbg.value(metadata i64 1, metadata !3186, metadata !DIExpression()) #20, !dbg !3188
  %2 = icmp slt i64 %0, 0, !dbg !3190
  br i1 %2, label %6, label %3, !dbg !3192

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3193
  call void @llvm.dbg.value(metadata i8* %4, metadata !3187, metadata !DIExpression()) #20, !dbg !3188
  %5 = icmp eq i8* %4, null, !dbg !3194
  br i1 %5, label %6, label %7, !dbg !3195

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3196
  unreachable, !dbg !3196

7:                                                ; preds = %3
  ret i8* %4, !dbg !3197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3184 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3183, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3198
  %3 = udiv i64 9223372036854775807, %1, !dbg !3199
  %4 = icmp ult i64 %3, %0, !dbg !3199
  br i1 %4, label %8, label %5, !dbg !3200

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %6, metadata !3187, metadata !DIExpression()), !dbg !3198
  %7 = icmp eq i8* %6, null, !dbg !3202
  br i1 %7, label %8, label %9, !dbg !3203

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3204
  unreachable, !dbg !3204

9:                                                ; preds = %5
  ret i8* %6, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3210, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()) #20, !dbg !3213
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %3, metadata !3026, metadata !DIExpression()) #20, !dbg !3213
  %4 = icmp eq i8* %3, null, !dbg !3216
  %5 = icmp ne i64 %1, 0, !dbg !3217
  %6 = and i1 %5, %4, !dbg !3218
  br i1 %6, label %7, label %8, !dbg !3218

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3219
  unreachable, !dbg !3219

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3220, metadata !DIExpression()) #20, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #20, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #20, !dbg !3225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3227
  ret i8* %3, !dbg !3228
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3231, metadata !DIExpression()), !dbg !3232
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3233
  %3 = add i64 %2, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %0, metadata !3210, metadata !DIExpression()) #20, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %3, metadata !3211, metadata !DIExpression()) #20, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %3, metadata !3021, metadata !DIExpression()) #20, !dbg !3237
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %4, metadata !3026, metadata !DIExpression()) #20, !dbg !3237
  %5 = icmp eq i8* %4, null, !dbg !3240
  %6 = icmp ne i64 %3, 0, !dbg !3241
  %7 = and i1 %6, %5, !dbg !3242
  br i1 %7, label %8, label %9, !dbg !3242

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3243
  unreachable, !dbg !3243

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3220, metadata !DIExpression()) #20, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()) #20, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %3, metadata !3224, metadata !DIExpression()) #20, !dbg !3244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3246
  ret i8* %4, !dbg !3247
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3248 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3249, !tbaa !1161
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #20, !dbg !3250
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #20, !dbg !3251
  tail call void @abort() #23, !dbg !3252
  unreachable, !dbg !3252
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #13 !dbg !3253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3255, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %1, metadata !3256, metadata !DIExpression()), !dbg !3261
  %3 = icmp eq i64 %0, 0, !dbg !3262
  %4 = icmp eq i64 %1, 0, !dbg !3263
  %5 = or i1 %3, %4, !dbg !3264
  br i1 %5, label %11, label %6, !dbg !3264

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3258, metadata !DIExpression()), !dbg !3265
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3266
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3266
  br i1 %8, label %9, label %11, !dbg !3268

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3269
  store i32 12, i32* %10, align 4, !dbg !3271, !tbaa !1161
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3255, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 %12, metadata !3256, metadata !DIExpression()), !dbg !3261
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %14, metadata !3257, metadata !DIExpression()), !dbg !3261
  br label %15, !dbg !3273

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3261
  ret i8* %16, !dbg !3274
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3275 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3283, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3285, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3286, metadata !DIExpression()), !dbg !3292
  %6 = bitcast i32* %5 to i8*, !dbg !3293
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3293
  %7 = icmp eq i32* %0, null, !dbg !3294
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3296
  call void @llvm.dbg.value(metadata i32* %8, metadata !3283, metadata !DIExpression()), !dbg !3292
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %9, metadata !3287, metadata !DIExpression()), !dbg !3292
  %10 = icmp ugt i64 %9, -3, !dbg !3298
  %11 = icmp ne i64 %2, 0, !dbg !3299
  %12 = and i1 %11, %10, !dbg !3300
  br i1 %12, label %13, label %18, !dbg !3300

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !3301
  br i1 %14, label %18, label %15, !dbg !3302

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3303, !tbaa !1193
  call void @llvm.dbg.value(metadata i8 %16, metadata !3289, metadata !DIExpression()), !dbg !3304
  %17 = zext i8 %16 to i32, !dbg !3305
  store i32 %17, i32* %8, align 4, !dbg !3306, !tbaa !1161
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3307
  ret i64 %19, !dbg !3307
}

; Function Attrs: nounwind
declare !dbg !481 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3308 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3314, metadata !DIExpression()), !dbg !3319
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !3320
  call void @llvm.dbg.value(metadata i1 undef, metadata !3315, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3321, metadata !DIExpression()), !dbg !3324
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3326
  %4 = load i32, i32* %3, align 8, !dbg !3326, !tbaa !3327
  %5 = and i32 %4, 32, !dbg !3326
  %6 = icmp eq i32 %5, 0, !dbg !3328
  call void @llvm.dbg.value(metadata i1 %6, metadata !3317, metadata !DIExpression()), !dbg !3319
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !3329
  %8 = icmp ne i32 %7, 0, !dbg !3330
  call void @llvm.dbg.value(metadata i1 %8, metadata !3318, metadata !DIExpression()), !dbg !3319
  br i1 %6, label %9, label %19, !dbg !3331

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3333
  call void @llvm.dbg.value(metadata i1 %10, metadata !3315, metadata !DIExpression()), !dbg !3319
  %11 = xor i1 %8, true, !dbg !3334
  %12 = or i1 %10, %11, !dbg !3334
  %13 = sext i1 %8 to i32, !dbg !3334
  br i1 %12, label %22, label %14, !dbg !3334

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3335
  %16 = load i32, i32* %15, align 4, !dbg !3335, !tbaa !1161
  %17 = icmp ne i32 %16, 9, !dbg !3336
  %18 = sext i1 %17 to i32, !dbg !3337
  br label %22, !dbg !3337

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3338

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3340
  store i32 0, i32* %21, align 4, !dbg !3342, !tbaa !1161
  br label %22, !dbg !3340

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3319
  ret i32 %23, !dbg !3343
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3344 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3346, metadata !DIExpression()), !dbg !3351
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3352
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !3352
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3347, metadata !DIExpression()), !dbg !3353
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !3354
  %5 = icmp eq i32 %4, 0, !dbg !3354
  br i1 %5, label %6, label %13, !dbg !3356

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3357
  %8 = load i16, i16* %7, align 16, !dbg !3357
  %9 = icmp eq i16 %8, 67, !dbg !3357
  br i1 %9, label %13, label %10, !dbg !3358

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i64 6), !dbg !3359
  %12 = icmp ne i32 %11, 0, !dbg !3360
  br label %13, !dbg !3358

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3351
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !3361
  ret i1 %14, !dbg !3361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3362 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %1, metadata !3364, metadata !DIExpression()), !dbg !3366
  %2 = icmp eq i8* %1, null, !dbg !3367
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %1, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %3, metadata !3364, metadata !DIExpression()), !dbg !3366
  %4 = load i8, i8* %3, align 1, !dbg !3370, !tbaa !1193
  %5 = icmp eq i8 %4, 0, !dbg !3374
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i8* %3, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %6, metadata !3364, metadata !DIExpression()), !dbg !3366
  ret i8* %6, !dbg !3376
}

; Function Attrs: nounwind
declare !dbg !933 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3377 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i8* %1, metadata !3382, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %2, metadata !3383, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %0, metadata !3385, metadata !DIExpression()) #20, !dbg !3394
  call void @llvm.dbg.value(metadata i8* %1, metadata !3388, metadata !DIExpression()) #20, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %2, metadata !3389, metadata !DIExpression()) #20, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()) #20, !dbg !3402
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %4, metadata !3401, metadata !DIExpression()) #20, !dbg !3402
  call void @llvm.dbg.value(metadata i8* %4, metadata !3390, metadata !DIExpression()) #20, !dbg !3394
  %5 = icmp eq i8* %4, null, !dbg !3405
  br i1 %5, label %6, label %9, !dbg !3406

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3407
  br i1 %7, label %19, label %8, !dbg !3410

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3411, !tbaa !1193
  br label %19, !dbg !3412

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %10, metadata !3391, metadata !DIExpression()) #20, !dbg !3414
  %11 = icmp ult i64 %10, %2, !dbg !3415
  br i1 %11, label %12, label %14, !dbg !3417

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()) #20, !dbg !3425
  call void @llvm.dbg.value(metadata i8* %4, metadata !3423, metadata !DIExpression()) #20, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %13, metadata !3424, metadata !DIExpression()) #20, !dbg !3425
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !3427
  br label %19, !dbg !3428

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3429
  br i1 %15, label %19, label %16, !dbg !3432

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.dbg.value(metadata i8* %4, metadata !3423, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %17, metadata !3424, metadata !DIExpression()) #20, !dbg !3435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !3437
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3438
  store i8 0, i8* %18, align 1, !dbg !3439, !tbaa !1193
  br label %19, !dbg !3440

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3441
  ret i32 %20, !dbg !3442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %0, metadata !3396, metadata !DIExpression()) #20, !dbg !3447
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3449
  call void @llvm.dbg.value(metadata i8* %2, metadata !3401, metadata !DIExpression()) #20, !dbg !3447
  ret i8* %2, !dbg !3450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3451 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3457, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3458, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()), !dbg !3461
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %2, metadata !3459, metadata !DIExpression()), !dbg !3461
  %3 = icmp slt i32 %2, 0, !dbg !3463
  br i1 %3, label %4, label %6, !dbg !3465

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3466
  br label %24, !dbg !3467

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3468
  %8 = icmp eq i32 %7, 0, !dbg !3468
  br i1 %8, label %13, label %9, !dbg !3470

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3471
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !3472
  %12 = icmp eq i64 %11, -1, !dbg !3473
  br i1 %12, label %16, label %13, !dbg !3474

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !3475
  %15 = icmp eq i32 %14, 0, !dbg !3475
  br i1 %15, label %16, label %18, !dbg !3476

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3458, metadata !DIExpression()), !dbg !3461
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3477
  call void @llvm.dbg.value(metadata i32 %21, metadata !3460, metadata !DIExpression()), !dbg !3461
  br label %24, !dbg !3478

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3479
  %20 = load i32, i32* %19, align 4, !dbg !3479, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 %20, metadata !3458, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %20, metadata !3458, metadata !DIExpression()), !dbg !3461
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3477
  call void @llvm.dbg.value(metadata i32 %21, metadata !3460, metadata !DIExpression()), !dbg !3461
  %22 = icmp eq i32 %20, 0, !dbg !3480
  br i1 %22, label %24, label %23, !dbg !3478

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3482, !tbaa !1161
  call void @llvm.dbg.value(metadata i32 -1, metadata !3460, metadata !DIExpression()), !dbg !3461
  br label %24, !dbg !3484

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3461
  ret i32 %25, !dbg !3485
}

; Function Attrs: nofree nounwind
declare !dbg !942 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !977 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !978 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3486 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3492, metadata !DIExpression()), !dbg !3493
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3494
  br i1 %2, label %6, label %3, !dbg !3496

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3497
  %5 = icmp eq i32 %4, 0, !dbg !3497
  br i1 %5, label %6, label %8, !dbg !3498

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3499
  br label %17, !dbg !3500

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3501, metadata !DIExpression()) #20, !dbg !3506
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3508
  %10 = load i32, i32* %9, align 8, !dbg !3508, !tbaa !3327
  %11 = and i32 %10, 256, !dbg !3510
  %12 = icmp eq i32 %11, 0, !dbg !3510
  br i1 %12, label %15, label %13, !dbg !3511

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !3512
  br label %15, !dbg !3512

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3513
  br label %17, !dbg !3514

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3493
  ret i32 %18, !dbg !3515
}

; Function Attrs: nofree nounwind
declare !dbg !986 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3516 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i32 %2, metadata !3525, metadata !DIExpression()), !dbg !3529
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3530
  %5 = load i8*, i8** %4, align 8, !dbg !3530, !tbaa !3531
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3532
  %7 = load i8*, i8** %6, align 8, !dbg !3532, !tbaa !3533
  %8 = icmp eq i8* %5, %7, !dbg !3534
  br i1 %8, label %9, label %28, !dbg !3535

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3536
  %11 = load i8*, i8** %10, align 8, !dbg !3536, !tbaa !1186
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3537
  %13 = load i8*, i8** %12, align 8, !dbg !3537, !tbaa !3538
  %14 = icmp eq i8* %11, %13, !dbg !3539
  br i1 %14, label %15, label %28, !dbg !3540

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3541
  %17 = load i8*, i8** %16, align 8, !dbg !3541, !tbaa !3542
  %18 = icmp eq i8* %17, null, !dbg !3543
  br i1 %18, label %19, label %28, !dbg !3544

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3545
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %21, metadata !3526, metadata !DIExpression()), !dbg !3547
  %22 = icmp eq i64 %21, -1, !dbg !3548
  br i1 %22, label %30, label %23, !dbg !3550

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3551
  %25 = load i32, i32* %24, align 8, !dbg !3552, !tbaa !3327
  %26 = and i32 %25, -17, !dbg !3552
  store i32 %26, i32* %24, align 8, !dbg !3552, !tbaa !3327
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3553
  store i64 %21, i64* %27, align 8, !dbg !3554, !tbaa !3555
  br label %30, !dbg !3556

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3557
  br label %30, !dbg !3558

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3529
  ret i32 %31, !dbg !3559
}

; Function Attrs: nofree nounwind
declare !dbg !1062 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !161, !166, !402, !406, !212, !218, !259, !409, !396, !451, !472, !475, !478, !497, !536, !543, !936, !939, !983, !1024}
!llvm.ident = !{!1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065, !1065}
!llvm.module.flags = !{!1066, !1067, !1068, !1069, !1070}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 35, type: !156, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dirname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !10, !66, !112, !116, !120, !68, !12, !124, !129}
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
!116 = !DISubprogram(name: "error", scope: !117, file: !117, line: 52, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !14, !14, !12, null}
!120 = !DISubprogram(name: "dir_len", scope: !121, file: !121, line: 45, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!70, !12}
!124 = !DISubprogram(name: "fwrite_unlocked", scope: !16, file: !16, line: 675, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{!70, !127, !70, !70, !19}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131, !0}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "dot", scope: !133, file: !3, line: 80, type: !13, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !134, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!134 = !DISubroutineType(types: !135)
!135 = !{!14, !14, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!137 = !{!138, !139, !140, !142, !143, !144, !146, !151, !155}
!138 = !DILocalVariable(name: "argc", arg: 1, scope: !133, file: !3, line: 78, type: !14)
!139 = !DILocalVariable(name: "argv", arg: 2, scope: !133, file: !3, line: 78, type: !136)
!140 = !DILocalVariable(name: "use_nuls", scope: !133, file: !3, line: 81, type: !141)
!141 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!142 = !DILocalVariable(name: "result", scope: !133, file: !3, line: 82, type: !12)
!143 = !DILocalVariable(name: "len", scope: !133, file: !3, line: 83, type: !68)
!144 = !DILocalVariable(name: "c", scope: !145, file: !3, line: 95, type: !14)
!145 = distinct !DILexicalBlock(scope: !133, file: !3, line: 94, column: 5)
!146 = !DILocalVariable(name: "__ptr", scope: !147, file: !3, line: 131, type: !12)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 131, column: 7)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 121, column: 5)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 120, column: 3)
!150 = distinct !DILexicalBlock(scope: !133, file: !3, line: 120, column: 3)
!151 = !DILocalVariable(name: "__stream", scope: !147, file: !3, line: 131, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !20)
!154 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!155 = !DILocalVariable(name: "__cnt", scope: !147, file: !3, line: 131, type: !68)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 4)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "Version", scope: !161, file: !162, line: 2, type: !12, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !163, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!163 = !{!159}
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "file_name", scope: !166, file: !167, line: 46, type: !12, isLocal: true, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !168, globals: !207, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = !{!169, !6, !205, !116}
!169 = !DISubprogram(name: "close_stream", scope: !170, file: !170, line: 2, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!170 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !174, file: !21, line: 51, baseType: !14, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !174, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !174, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !174, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !174, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !174, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !174, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !174, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !174, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !174, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !174, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !174, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !174, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !174, file: !21, line: 70, baseType: !173, size: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !174, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !174, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !174, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !174, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !174, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !174, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !174, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !174, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !174, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !174, file: !21, line: 93, baseType: !173, size: 64, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !174, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !174, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !174, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !174, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!205 = !DISubprogram(name: "quotearg_colon", scope: !206, file: !206, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!206 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !{!164, !208}
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !166, file: !167, line: 56, type: !141, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "exit_failure", scope: !212, file: !213, line: 24, type: !215, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !214, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!210}
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "program_name", scope: !218, file: !219, line: 33, type: !12, isLocal: false, isDefinition: true)
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !220, globals: !256, splitDebugInlining: false, nameTableKind: None)
!219 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!220 = !{!66, !221, !10}
!221 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!222 = !DISubroutineType(types: !223)
!223 = !{!14, !12, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !225, file: !21, line: 51, baseType: !14, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !225, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !225, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !225, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !225, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !225, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !225, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !225, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !225, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !225, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !225, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !225, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !225, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !225, file: !21, line: 70, baseType: !224, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !225, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !225, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !225, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !225, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !225, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !225, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !225, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !225, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !225, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !225, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !225, file: !21, line: 93, baseType: !224, size: 64, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !225, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !225, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !225, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !225, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!256 = !{!216}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !259, file: !260, line: 85, type: !390, isLocal: false, isDefinition: true)
!259 = distinct !DICompileUnit(language: DW_LANG_C99, file: !260, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !296, globals: !363, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!261 = !{!262, !276, !281}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !206, line: 32, baseType: !263, size: 32, elements: !264)
!263 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!265 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!266 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!267 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!268 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!269 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!270 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!271 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!272 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!273 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!274 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!275 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !206, line: 242, baseType: !263, size: 32, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!279 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!280 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !282, line: 46, baseType: !263, size: 32, elements: !283)
!282 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!284 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!285 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!286 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!287 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!288 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!289 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!290 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!291 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!292 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!293 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!294 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!295 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!296 = !{!297, !301, !317, !320, !14, !46, !323, !68, !338, !342, !6, !348, !352, !10, !356, !359, !360}
!297 = !DISubprogram(name: "xmemdup", scope: !298, file: !298, line: 62, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!298 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !DISubroutineType(types: !300)
!300 = !{!66, !127, !70}
!301 = !DISubprogram(name: "quotearg_alloc_mem", scope: !206, file: !206, line: 342, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!302 = !DISubroutineType(types: !303)
!303 = !{!10, !12, !70, !304, !305}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !260, line: 65, size: 448, elements: !308)
!308 = !{!309, !310, !311, !315, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !307, file: !260, line: 68, baseType: !262, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !260, line: 71, baseType: !14, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !307, file: !260, line: 75, baseType: !312, size: 256, offset: 64)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !307, file: !260, line: 78, baseType: !12, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !307, file: !260, line: 81, baseType: !12, size: 64, offset: 384)
!317 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !66}
!320 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !206, file: !206, line: 408, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!321 = !DISubroutineType(types: !322)
!322 = !{!10, !14, !12, !12, !12, !70}
!323 = !DISubprogram(name: "rpl_mbrtowc", scope: !324, file: !324, line: 717, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!324 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!325 = !DISubroutineType(types: !326)
!326 = !{!70, !110, !12, !70, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 13, size: 64, elements: !330)
!329 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !328, file: !329, line: 15, baseType: !14, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !328, file: !329, line: 20, baseType: !333, size: 32, offset: 32)
!333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 16, size: 32, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !333, file: !329, line: 18, baseType: !263, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !333, file: !329, line: 19, baseType: !337, size: 32)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !157)
!338 = !DISubprogram(name: "iswprint", scope: !339, file: !339, line: 120, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!339 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!340 = !DISubroutineType(types: !341)
!341 = !{!14, !263}
!342 = !DISubprogram(name: "mbsinit", scope: !343, file: !343, line: 292, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!343 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!344 = !DISubroutineType(types: !345)
!345 = !{!14, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!348 = !DISubprogram(name: "locale_charset", scope: !349, file: !349, line: 35, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!349 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DISubroutineType(types: !351)
!351 = !{!12}
!352 = !DISubprogram(name: "c_strcasecmp", scope: !353, file: !353, line: 42, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!353 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !DISubroutineType(types: !355)
!355 = !{!14, !12, !12}
!356 = !DISubprogram(name: "xmalloc", scope: !298, file: !298, line: 53, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!357 = !DISubroutineType(types: !358)
!358 = !{!66, !70}
!359 = !DISubprogram(name: "xalloc_die", scope: !298, file: !298, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!360 = !DISubprogram(name: "xrealloc", scope: !298, file: !298, line: 59, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!361 = !DISubroutineType(types: !362)
!362 = !{!66, !66, !70}
!363 = !{!257, !364, !370, !372, !374, !379, !386, !388}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !259, file: !260, line: 101, type: !366, isLocal: false, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 320, elements: !368)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!368 = !{!369}
!369 = !DISubrange(count: 10)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !259, file: !260, line: 1052, type: !307, isLocal: false, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !259, file: !260, line: 116, type: !307, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "slot0", scope: !259, file: !260, line: 842, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 256)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "slotvec", scope: !259, file: !260, line: 845, type: !381, isLocal: true, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !260, line: 834, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !260, line: 836, baseType: !68, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !260, line: 837, baseType: !10, size: 64, offset: 64)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "nslots", scope: !259, file: !260, line: 843, type: !14, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "slotvec0", scope: !259, file: !260, line: 844, type: !382, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 704, elements: !392)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!392 = !{!393}
!393 = !DISubrange(count: 11)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !396, file: !397, line: 26, type: !399, isLocal: false, isDefinition: true)
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !398, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!398 = !{!394}
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 47)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !404, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!404 = !{!405}
!405 = !DISubprogram(name: "last_component", scope: !121, file: !121, line: 46, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!406 = distinct !DICompileUnit(language: DW_LANG_C99, file: !407, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!407 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!408 = !{!10}
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !411, retainedTypes: !415, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!411 = !{!412}
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !410, line: 40, baseType: !263, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!415 = !{!6, !416, !66}
!416 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!417 = !DISubroutineType(types: !418)
!418 = !{!14, !12, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !420, file: !21, line: 51, baseType: !14, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !420, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !420, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !420, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !420, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !420, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !420, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !420, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !420, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !420, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !420, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !420, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !420, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !420, file: !21, line: 70, baseType: !419, size: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !420, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !420, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !420, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !420, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !420, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !420, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !420, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !420, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !420, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !420, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !420, file: !21, line: 93, baseType: !419, size: 64, offset: 1344)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !420, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !420, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !420, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !420, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !453, retainedTypes: !466, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!453 = !{!454}
!454 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !455, file: !298, line: 186, baseType: !263, size: 32, elements: !464)
!455 = distinct !DISubprogram(name: "x2nrealloc", scope: !298, file: !298, line: 174, type: !456, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !459)
!456 = !DISubroutineType(types: !457)
!457 = !{!66, !66, !458, !68}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!459 = !{!460, !461, !462, !463}
!460 = !DILocalVariable(name: "p", arg: 1, scope: !455, file: !298, line: 174, type: !66)
!461 = !DILocalVariable(name: "pn", arg: 2, scope: !455, file: !298, line: 174, type: !458)
!462 = !DILocalVariable(name: "s", arg: 3, scope: !455, file: !298, line: 174, type: !68)
!463 = !DILocalVariable(name: "n", scope: !455, file: !298, line: 176, type: !68)
!464 = !{!465}
!465 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!466 = !{!68, !359, !356, !360, !10, !317, !66, !467, !470}
!467 = !DISubprogram(name: "xcalloc", scope: !298, file: !298, line: 57, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!468 = !DISubroutineType(types: !469)
!469 = !{!66, !70, !70}
!470 = !DISubprogram(name: "rpl_calloc", scope: !471, file: !471, line: 688, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!471 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !474, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!474 = !{!6, !116}
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !477, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!477 = !{!66}
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !480, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!480 = !{!481, !68, !493}
!481 = !DISubprogram(name: "mbrtowc", scope: !343, file: !343, line: 296, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{!70, !110, !12, !70, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 13, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !485, file: !329, line: 15, baseType: !14, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !485, file: !329, line: 20, baseType: !489, size: 32, offset: 32)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !329, line: 16, size: 32, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !489, file: !329, line: 18, baseType: !263, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !489, file: !329, line: 19, baseType: !337, size: 32)
!493 = !DISubprogram(name: "hard_locale", scope: !494, file: !494, line: 26, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!494 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = !DISubroutineType(types: !496)
!496 = !{!141, !14}
!497 = distinct !DICompileUnit(language: DW_LANG_C99, file: !498, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !499, splitDebugInlining: false, nameTableKind: None)
!498 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!499 = !{!500}
!500 = !DISubprogram(name: "rpl_fclose", scope: !501, file: !501, line: 672, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!501 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !DISubroutineType(types: !503)
!503 = !{!14, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !505, file: !21, line: 51, baseType: !14, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !505, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !505, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !505, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !505, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !505, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !505, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !505, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !505, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !505, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !505, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !505, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !505, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !505, file: !21, line: 70, baseType: !504, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !505, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !505, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !505, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !505, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !505, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !505, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !505, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !505, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !505, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !505, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !505, file: !21, line: 93, baseType: !504, size: 64, offset: 1344)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !505, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !505, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !505, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !505, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !538, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!538 = !{!539}
!539 = !DISubprogram(name: "setlocale_null_r", scope: !540, file: !540, line: 64, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!540 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!541 = !DISubroutineType(types: !542)
!542 = !{!14, !14, !10, !70}
!543 = distinct !DICompileUnit(language: DW_LANG_C99, file: !544, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !545, retainedTypes: !932, splitDebugInlining: false, nameTableKind: None)
!544 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!545 = !{!546}
!546 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !547, line: 41, baseType: !263, size: 32, elements: !548)
!547 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931}
!549 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!550 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!551 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!552 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!553 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!554 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!555 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!556 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!557 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!558 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!559 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!560 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!561 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!562 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!563 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!564 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!565 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!566 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!567 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!568 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!569 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!570 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!571 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!572 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!573 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!574 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!575 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!576 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!577 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!578 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!579 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!580 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!581 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!582 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!583 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!584 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!585 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!586 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!587 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!588 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!589 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!590 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!591 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!592 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!593 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!594 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!595 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!596 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!597 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!598 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!657 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!660 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!661 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!662 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!663 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!664 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!665 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!666 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!667 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!668 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!669 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!670 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!671 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!744 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!817 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!818 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!819 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!820 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!821 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!822 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!823 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!824 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!825 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!826 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!827 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!828 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!829 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!830 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!831 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!833 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!834 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!835 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!836 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!837 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!838 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!864 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!865 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!866 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!867 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!868 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!873 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!874 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!875 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!876 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!932 = !{!933, !66}
!933 = !DISubprogram(name: "nl_langinfo", scope: !547, file: !547, line: 661, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!934 = !DISubroutineType(types: !935)
!935 = !{!10, !14}
!936 = distinct !DICompileUnit(language: DW_LANG_C99, file: !937, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !938, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!938 = !{!66, !80}
!939 = distinct !DICompileUnit(language: DW_LANG_C99, file: !940, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !941, splitDebugInlining: false, nameTableKind: None)
!940 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!941 = !{!942, !977, !978, !982}
!942 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!943 = !DISubroutineType(types: !944)
!944 = !{!14, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !946, file: !21, line: 51, baseType: !14, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !946, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !946, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !946, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !946, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !946, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !946, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !946, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !946, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !946, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !946, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !946, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !946, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !946, file: !21, line: 70, baseType: !945, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !946, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !946, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !946, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !946, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !946, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !946, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !946, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !946, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !946, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !946, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !946, file: !21, line: 93, baseType: !945, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !946, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !946, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !946, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !946, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!977 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!978 = !DISubprogram(name: "lseek", scope: !979, file: !979, line: 334, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!979 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!980 = !DISubroutineType(types: !981)
!981 = !{!44, !14, !44, !14}
!982 = !DISubprogram(name: "rpl_fflush", scope: !501, file: !501, line: 718, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!983 = distinct !DICompileUnit(language: DW_LANG_C99, file: !984, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !985, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!985 = !{!66, !986, !1021}
!986 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!987 = !DISubroutineType(types: !988)
!988 = !{!14, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !990, file: !21, line: 51, baseType: !14, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !990, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !990, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !990, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !990, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !990, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !990, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !990, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !990, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !990, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !990, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !990, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !990, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !990, file: !21, line: 70, baseType: !989, size: 64, offset: 832)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !990, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !990, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !990, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !990, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !990, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !990, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !990, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !990, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !990, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !990, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !990, file: !21, line: 93, baseType: !989, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !990, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !990, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !990, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !990, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1021 = !DISubprogram(name: "rpl_fseeko", scope: !501, file: !501, line: 1034, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!14, !989, !44, !14}
!1024 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1025, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1026, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1026 = !{!66, !1027, !978, !1062}
!1027 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!14, !1030}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1031, file: !21, line: 51, baseType: !14, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1031, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1031, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1031, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1031, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1031, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1031, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1031, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1031, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1031, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1031, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1031, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1031, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1031, file: !21, line: 70, baseType: !1030, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1031, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1031, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1031, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1031, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1031, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1031, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1031, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1031, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1031, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1031, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1031, file: !21, line: 93, baseType: !1030, size: 64, offset: 1344)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1031, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1031, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1031, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1031, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1062 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!14, !1030, !44, !14}
!1065 = !{!"clang version 10.0.0 "}
!1066 = !{i32 7, !"Dwarf Version", i32 4}
!1067 = !{i32 2, !"Debug Info Version", i32 3}
!1068 = !{i32 1, !"wchar_size", i32 4}
!1069 = !{i32 7, !"PIC Level", i32 2}
!1070 = !{i32 7, !"PIE Level", i32 2}
!1071 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !1072, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !14}
!1074 = !{!1075}
!1075 = !DILocalVariable(name: "status", arg: 1, scope: !1071, file: !3, line: 44, type: !14)
!1076 = !DILocalVariable(name: "infomap", scope: !1077, file: !1078, line: 636, type: !1090)
!1077 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1078, file: !1078, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1078 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1079 = !{!1080, !1076, !1081, !1082, !1089}
!1080 = !DILocalVariable(name: "program", arg: 1, scope: !1077, file: !1078, line: 634, type: !12)
!1081 = !DILocalVariable(name: "node", scope: !1077, file: !1078, line: 646, type: !12)
!1082 = !DILocalVariable(name: "map_prog", scope: !1077, file: !1078, line: 647, type: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1077, file: !1078, line: 636, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1085, file: !1078, line: 636, baseType: !12, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1085, file: !1078, line: 636, baseType: !12, size: 64, offset: 64)
!1089 = !DILocalVariable(name: "lc_messages", scope: !1077, file: !1078, line: 659, type: !12)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 896, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 7)
!1093 = !DILocation(line: 636, column: 67, scope: !1077, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 72, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 49, column: 5)
!1096 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 46, column: 7)
!1097 = !DILocation(line: 0, scope: !1071)
!1098 = !DILocation(line: 46, column: 14, scope: !1096)
!1099 = !DILocation(line: 46, column: 7, scope: !1071)
!1100 = !DILocation(line: 47, column: 5, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 47, column: 5)
!1102 = !{!1103, !1103, i64 0}
!1103 = !{!"any pointer", !1104, i64 0}
!1104 = !{!"omnipotent char", !1105, i64 0}
!1105 = !{!"Simple C/C++ TBAA"}
!1106 = !DILocation(line: 50, column: 7, scope: !1095)
!1107 = !DILocation(line: 54, column: 7, scope: !1095)
!1108 = !DILocation(line: 59, column: 7, scope: !1095)
!1109 = !DILocation(line: 62, column: 7, scope: !1095)
!1110 = !DILocation(line: 63, column: 7, scope: !1095)
!1111 = !DILocation(line: 64, column: 7, scope: !1095)
!1112 = !DILocation(line: 0, scope: !1077, inlinedAt: !1094)
!1113 = !DILocation(line: 636, column: 3, scope: !1077, inlinedAt: !1094)
!1114 = !DILocation(line: 647, column: 36, scope: !1077, inlinedAt: !1094)
!1115 = !DILocation(line: 649, column: 3, scope: !1077, inlinedAt: !1094)
!1116 = !DILocation(line: 649, column: 33, scope: !1077, inlinedAt: !1094)
!1117 = !DILocation(line: 650, column: 13, scope: !1077, inlinedAt: !1094)
!1118 = !DILocation(line: 649, column: 20, scope: !1077, inlinedAt: !1094)
!1119 = !{!1120, !1103, i64 0}
!1120 = !{!"infomap", !1103, i64 0, !1103, i64 8}
!1121 = !DILocation(line: 649, column: 10, scope: !1077, inlinedAt: !1094)
!1122 = !DILocation(line: 649, column: 28, scope: !1077, inlinedAt: !1094)
!1123 = distinct !{!1123, !1115, !1117}
!1124 = !DILocation(line: 652, column: 17, scope: !1125, inlinedAt: !1094)
!1125 = distinct !DILexicalBlock(scope: !1077, file: !1078, line: 652, column: 7)
!1126 = !{!1120, !1103, i64 8}
!1127 = !DILocation(line: 652, column: 7, scope: !1125, inlinedAt: !1094)
!1128 = !DILocation(line: 652, column: 7, scope: !1077, inlinedAt: !1094)
!1129 = !DILocation(line: 655, column: 3, scope: !1077, inlinedAt: !1094)
!1130 = !DILocation(line: 659, column: 29, scope: !1077, inlinedAt: !1094)
!1131 = !DILocation(line: 660, column: 7, scope: !1132, inlinedAt: !1094)
!1132 = distinct !DILexicalBlock(scope: !1077, file: !1078, line: 660, column: 7)
!1133 = !DILocation(line: 660, column: 19, scope: !1132, inlinedAt: !1094)
!1134 = !DILocation(line: 660, column: 22, scope: !1132, inlinedAt: !1094)
!1135 = !DILocation(line: 660, column: 7, scope: !1077, inlinedAt: !1094)
!1136 = !DILocation(line: 666, column: 7, scope: !1137, inlinedAt: !1094)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !1078, line: 661, column: 5)
!1138 = !DILocation(line: 668, column: 5, scope: !1137, inlinedAt: !1094)
!1139 = !DILocation(line: 669, column: 3, scope: !1077, inlinedAt: !1094)
!1140 = !DILocation(line: 671, column: 3, scope: !1077, inlinedAt: !1094)
!1141 = !DILocation(line: 673, column: 1, scope: !1077, inlinedAt: !1094)
!1142 = !DILocation(line: 74, column: 3, scope: !1071)
!1143 = !DILocation(line: 0, scope: !133)
!1144 = !DILocation(line: 86, column: 21, scope: !133)
!1145 = !DILocation(line: 86, column: 3, scope: !133)
!1146 = !DILocation(line: 87, column: 3, scope: !133)
!1147 = !DILocation(line: 88, column: 3, scope: !133)
!1148 = !DILocation(line: 89, column: 3, scope: !133)
!1149 = !DILocation(line: 91, column: 3, scope: !133)
!1150 = !DILocation(line: 93, column: 3, scope: !133)
!1151 = !DILocation(line: 81, column: 8, scope: !133)
!1152 = !DILocation(line: 95, column: 15, scope: !145)
!1153 = !DILocation(line: 0, scope: !145)
!1154 = !DILocation(line: 97, column: 11, scope: !145)
!1155 = !DILocation(line: 106, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !145, file: !3, line: 101, column: 9)
!1157 = !DILocation(line: 107, column: 9, scope: !1156)
!1158 = !DILocation(line: 110, column: 11, scope: !1156)
!1159 = !DILocation(line: 114, column: 14, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !133, file: !3, line: 114, column: 7)
!1161 = !{!1162, !1162, i64 0}
!1162 = !{!"int", !1104, i64 0}
!1163 = !DILocation(line: 114, column: 12, scope: !1160)
!1164 = !DILocation(line: 114, column: 7, scope: !133)
!1165 = !DILocation(line: 0, scope: !148)
!1166 = !DILocation(line: 0, scope: !1167, inlinedAt: !1173)
!1167 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1168, file: !1168, line: 108, type: !1169, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1168 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!14, !14}
!1171 = !{!1172}
!1172 = !DILocalVariable(name: "__c", arg: 1, scope: !1167, file: !1168, line: 108, type: !14)
!1173 = distinct !DILocation(line: 132, column: 7, scope: !148)
!1174 = !DILocation(line: 120, column: 3, scope: !150)
!1175 = !DILocation(line: 116, column: 20, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 115, column: 5)
!1177 = !DILocation(line: 116, column: 7, scope: !1176)
!1178 = !DILocation(line: 117, column: 7, scope: !1176)
!1179 = !DILocation(line: 122, column: 16, scope: !148)
!1180 = !DILocation(line: 123, column: 13, scope: !148)
!1181 = !DILocation(line: 125, column: 13, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !148, file: !3, line: 125, column: 11)
!1183 = !DILocation(line: 125, column: 11, scope: !148)
!1184 = !DILocation(line: 131, column: 7, scope: !148)
!1185 = !DILocation(line: 110, column: 10, scope: !1167, inlinedAt: !1173)
!1186 = !{!1187, !1103, i64 40}
!1187 = !{!"_IO_FILE", !1162, i64 0, !1103, i64 8, !1103, i64 16, !1103, i64 24, !1103, i64 32, !1103, i64 40, !1103, i64 48, !1103, i64 56, !1103, i64 64, !1103, i64 72, !1103, i64 80, !1103, i64 88, !1103, i64 96, !1103, i64 104, !1162, i64 112, !1162, i64 116, !1188, i64 120, !1189, i64 128, !1104, i64 130, !1104, i64 131, !1103, i64 136, !1188, i64 144, !1103, i64 152, !1103, i64 160, !1103, i64 168, !1103, i64 176, !1188, i64 184, !1162, i64 192, !1104, i64 196}
!1188 = !{!"long", !1104, i64 0}
!1189 = !{!"short", !1104, i64 0}
!1190 = !{!1187, !1103, i64 48}
!1191 = !{!"branch_weights", i32 2000, i32 1}
!1192 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1193 = !{!1104, !1104, i64 0}
!1194 = !DILocation(line: 120, column: 31, scope: !149)
!1195 = !DILocation(line: 120, column: 17, scope: !149)
!1196 = distinct !{!1196, !1174, !1197}
!1197 = !DILocation(line: 133, column: 5, scope: !150)
!1198 = !DILocation(line: 136, column: 1, scope: !133)
!1199 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !167, file: !167, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1200)
!1200 = !{!1201}
!1201 = !DILocalVariable(name: "file", arg: 1, scope: !1199, file: !167, line: 51, type: !12)
!1202 = !DILocation(line: 0, scope: !1199)
!1203 = !DILocation(line: 53, column: 13, scope: !1199)
!1204 = !DILocation(line: 54, column: 1, scope: !1199)
!1205 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !167, file: !167, line: 88, type: !1206, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !141}
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "ignore", arg: 1, scope: !1205, file: !167, line: 88, type: !141)
!1210 = !DILocation(line: 0, scope: !1205)
!1211 = !DILocation(line: 90, column: 16, scope: !1205)
!1212 = !{!1213, !1213, i64 0}
!1213 = !{!"_Bool", !1104, i64 0}
!1214 = !DILocation(line: 91, column: 1, scope: !1205)
!1215 = distinct !DISubprogram(name: "close_stdout", scope: !167, file: !167, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "write_error", scope: !1218, file: !167, line: 122, type: !12)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !167, line: 121, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !167, line: 119, column: 7)
!1220 = !DILocation(line: 119, column: 21, scope: !1219)
!1221 = !DILocation(line: 119, column: 7, scope: !1219)
!1222 = !DILocation(line: 119, column: 29, scope: !1219)
!1223 = !DILocation(line: 120, column: 7, scope: !1219)
!1224 = !DILocation(line: 120, column: 12, scope: !1219)
!1225 = !{i8 0, i8 2}
!1226 = !DILocation(line: 120, column: 25, scope: !1219)
!1227 = !DILocation(line: 120, column: 28, scope: !1219)
!1228 = !DILocation(line: 120, column: 34, scope: !1219)
!1229 = !DILocation(line: 119, column: 7, scope: !1215)
!1230 = !DILocation(line: 122, column: 33, scope: !1218)
!1231 = !DILocation(line: 0, scope: !1218)
!1232 = !DILocation(line: 123, column: 11, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1218, file: !167, line: 123, column: 11)
!1234 = !DILocation(line: 0, scope: !1233)
!1235 = !DILocation(line: 123, column: 11, scope: !1218)
!1236 = !DILocation(line: 124, column: 36, scope: !1233)
!1237 = !DILocation(line: 124, column: 9, scope: !1233)
!1238 = !DILocation(line: 127, column: 9, scope: !1233)
!1239 = !DILocation(line: 129, column: 14, scope: !1218)
!1240 = !DILocation(line: 129, column: 7, scope: !1218)
!1241 = !DILocation(line: 134, column: 42, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1215, file: !167, line: 134, column: 7)
!1243 = !DILocation(line: 134, column: 28, scope: !1242)
!1244 = !DILocation(line: 134, column: 50, scope: !1242)
!1245 = !DILocation(line: 134, column: 7, scope: !1215)
!1246 = !DILocation(line: 135, column: 12, scope: !1242)
!1247 = !DILocation(line: 135, column: 5, scope: !1242)
!1248 = !DILocation(line: 136, column: 1, scope: !1215)
!1249 = distinct !DISubprogram(name: "dir_len", scope: !403, file: !403, line: 32, type: !1250, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!68, !12}
!1252 = !{!1253, !1254, !1255}
!1253 = !DILocalVariable(name: "file", arg: 1, scope: !1249, file: !403, line: 32, type: !12)
!1254 = !DILocalVariable(name: "prefix_length", scope: !1249, file: !403, line: 34, type: !68)
!1255 = !DILocalVariable(name: "length", scope: !1249, file: !403, line: 35, type: !68)
!1256 = !DILocation(line: 0, scope: !1249)
!1257 = !DILocation(line: 41, column: 24, scope: !1249)
!1258 = !DILocation(line: 38, column: 20, scope: !1249)
!1259 = !DILocation(line: 48, column: 17, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1249, file: !403, line: 48, column: 3)
!1261 = !DILocation(line: 48, column: 39, scope: !1260)
!1262 = !DILocation(line: 48, column: 8, scope: !1260)
!1263 = !DILocation(line: 0, scope: !1260)
!1264 = !DILocation(line: 49, column: 22, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !403, line: 48, column: 3)
!1266 = !DILocation(line: 48, column: 3, scope: !1260)
!1267 = !DILocation(line: 50, column: 11, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !403, line: 50, column: 9)
!1269 = !DILocation(line: 50, column: 9, scope: !1265)
!1270 = distinct !{!1270, !1266, !1271}
!1271 = !DILocation(line: 51, column: 7, scope: !1260)
!1272 = !DILocation(line: 52, column: 3, scope: !1249)
!1273 = distinct !DISubprogram(name: "mdir_name", scope: !403, file: !403, line: 71, type: !88, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1274)
!1274 = !{!1275, !1276, !1277, !1278}
!1275 = !DILocalVariable(name: "file", arg: 1, scope: !1273, file: !403, line: 71, type: !12)
!1276 = !DILocalVariable(name: "length", scope: !1273, file: !403, line: 73, type: !68)
!1277 = !DILocalVariable(name: "append_dot", scope: !1273, file: !403, line: 74, type: !141)
!1278 = !DILocalVariable(name: "dir", scope: !1273, file: !403, line: 78, type: !10)
!1279 = !DILocation(line: 0, scope: !1273)
!1280 = !DILocation(line: 0, scope: !1249, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 73, column: 19, scope: !1273)
!1282 = !DILocation(line: 41, column: 24, scope: !1249, inlinedAt: !1281)
!1283 = !DILocation(line: 38, column: 20, scope: !1249, inlinedAt: !1281)
!1284 = !DILocation(line: 48, column: 17, scope: !1260, inlinedAt: !1281)
!1285 = !DILocation(line: 48, column: 39, scope: !1260, inlinedAt: !1281)
!1286 = !DILocation(line: 48, column: 8, scope: !1260, inlinedAt: !1281)
!1287 = !DILocation(line: 0, scope: !1260, inlinedAt: !1281)
!1288 = !DILocation(line: 49, column: 22, scope: !1265, inlinedAt: !1281)
!1289 = !DILocation(line: 48, column: 3, scope: !1260, inlinedAt: !1281)
!1290 = !DILocation(line: 50, column: 11, scope: !1268, inlinedAt: !1281)
!1291 = !DILocation(line: 50, column: 9, scope: !1265, inlinedAt: !1281)
!1292 = distinct !{!1292, !1289, !1293}
!1293 = !DILocation(line: 51, column: 7, scope: !1260, inlinedAt: !1281)
!1294 = !DILocation(line: 74, column: 29, scope: !1273)
!1295 = !DILocation(line: 78, column: 32, scope: !1273)
!1296 = !DILocation(line: 78, column: 30, scope: !1273)
!1297 = !DILocation(line: 78, column: 43, scope: !1273)
!1298 = !DILocation(line: 78, column: 15, scope: !1273)
!1299 = !DILocation(line: 79, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1273, file: !403, line: 79, column: 7)
!1301 = !DILocation(line: 79, column: 7, scope: !1273)
!1302 = !DILocalVariable(name: "__dest", arg: 1, scope: !1303, file: !1304, line: 31, type: !1307)
!1303 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 31, type: !1305, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !1309)
!1304 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!66, !1307, !1308, !68}
!1307 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!1308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!1309 = !{!1302, !1310, !1311}
!1310 = !DILocalVariable(name: "__src", arg: 2, scope: !1303, file: !1304, line: 31, type: !1308)
!1311 = !DILocalVariable(name: "__len", arg: 3, scope: !1303, file: !1304, line: 31, type: !68)
!1312 = !DILocation(line: 0, scope: !1303, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 81, column: 3, scope: !1273)
!1314 = !DILocation(line: 34, column: 10, scope: !1303, inlinedAt: !1313)
!1315 = !DILocation(line: 82, column: 7, scope: !1273)
!1316 = !DILocation(line: 83, column: 19, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1273, file: !403, line: 82, column: 7)
!1318 = !DILocation(line: 83, column: 5, scope: !1317)
!1319 = !DILocation(line: 84, column: 3, scope: !1273)
!1320 = !DILocation(line: 84, column: 15, scope: !1273)
!1321 = !DILocation(line: 85, column: 3, scope: !1273)
!1322 = !DILocation(line: 86, column: 1, scope: !1273)
!1323 = distinct !DISubprogram(name: "last_component", scope: !407, file: !407, line: 30, type: !88, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328}
!1325 = !DILocalVariable(name: "name", arg: 1, scope: !1323, file: !407, line: 30, type: !12)
!1326 = !DILocalVariable(name: "base", scope: !1323, file: !407, line: 32, type: !12)
!1327 = !DILocalVariable(name: "p", scope: !1323, file: !407, line: 33, type: !12)
!1328 = !DILocalVariable(name: "saw_slash", scope: !1323, file: !407, line: 34, type: !141)
!1329 = !DILocation(line: 0, scope: !1323)
!1330 = !DILocation(line: 36, column: 3, scope: !1323)
!1331 = !DILocation(line: 36, column: 10, scope: !1323)
!1332 = !DILocation(line: 37, column: 9, scope: !1323)
!1333 = distinct !{!1333, !1330, !1332}
!1334 = !DILocation(line: 39, column: 18, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !407, line: 39, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1323, file: !407, line: 39, column: 3)
!1337 = !DILocation(line: 32, column: 15, scope: !1323)
!1338 = !DILocation(line: 0, scope: !1336)
!1339 = !DILocation(line: 39, column: 3, scope: !1336)
!1340 = !DILocation(line: 43, column: 16, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !407, line: 43, column: 16)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !407, line: 41, column: 11)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !407, line: 40, column: 5)
!1344 = !DILocation(line: 43, column: 16, scope: !1342)
!1345 = !DILocation(line: 39, column: 23, scope: !1335)
!1346 = !DILocation(line: 39, column: 3, scope: !1335)
!1347 = distinct !{!1347, !1339, !1348}
!1348 = !DILocation(line: 48, column: 5, scope: !1336)
!1349 = !DILocation(line: 50, column: 3, scope: !1323)
!1350 = distinct !DISubprogram(name: "base_len", scope: !407, file: !407, line: 58, type: !1250, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DILocalVariable(name: "name", arg: 1, scope: !1350, file: !407, line: 58, type: !12)
!1353 = !DILocalVariable(name: "len", scope: !1350, file: !407, line: 60, type: !68)
!1354 = !DILocalVariable(name: "prefix_len", scope: !1350, file: !407, line: 61, type: !68)
!1355 = !DILocation(line: 0, scope: !1350)
!1356 = !DILocation(line: 63, column: 14, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !407, line: 63, column: 3)
!1358 = !DILocation(line: 63, column: 8, scope: !1357)
!1359 = !DILocation(line: 0, scope: !1357)
!1360 = !DILocation(line: 63, column: 32, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !407, line: 63, column: 3)
!1362 = !DILocation(line: 63, column: 38, scope: !1361)
!1363 = !DILocation(line: 63, column: 41, scope: !1361)
!1364 = !DILocation(line: 63, column: 3, scope: !1357)
!1365 = distinct !{!1365, !1364, !1366}
!1366 = !DILocation(line: 64, column: 5, scope: !1357)
!1367 = !DILocation(line: 74, column: 3, scope: !1350)
!1368 = distinct !DISubprogram(name: "set_program_name", scope: !219, file: !219, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !218, retainedNodes: !1369)
!1369 = !{!1370, !1371, !1372}
!1370 = !DILocalVariable(name: "argv0", arg: 1, scope: !1368, file: !219, line: 39, type: !12)
!1371 = !DILocalVariable(name: "slash", scope: !1368, file: !219, line: 46, type: !12)
!1372 = !DILocalVariable(name: "base", scope: !1368, file: !219, line: 47, type: !12)
!1373 = !DILocation(line: 0, scope: !1368)
!1374 = !DILocation(line: 51, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !219, line: 51, column: 7)
!1376 = !DILocation(line: 51, column: 7, scope: !1368)
!1377 = !DILocation(line: 55, column: 14, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !219, line: 52, column: 5)
!1379 = !DILocation(line: 54, column: 7, scope: !1378)
!1380 = !DILocation(line: 56, column: 7, scope: !1378)
!1381 = !DILocation(line: 59, column: 11, scope: !1368)
!1382 = !DILocation(line: 60, column: 17, scope: !1368)
!1383 = !DILocation(line: 60, column: 11, scope: !1368)
!1384 = !DILocation(line: 61, column: 12, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1368, file: !219, line: 61, column: 7)
!1386 = !DILocation(line: 61, column: 20, scope: !1385)
!1387 = !DILocation(line: 61, column: 25, scope: !1385)
!1388 = !DILocation(line: 61, column: 42, scope: !1385)
!1389 = !DILocation(line: 61, column: 28, scope: !1385)
!1390 = !DILocation(line: 61, column: 61, scope: !1385)
!1391 = !DILocation(line: 61, column: 7, scope: !1368)
!1392 = !DILocation(line: 64, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !219, line: 64, column: 11)
!1394 = distinct !DILexicalBlock(scope: !1385, file: !219, line: 62, column: 5)
!1395 = !DILocation(line: 64, column: 36, scope: !1393)
!1396 = !DILocation(line: 64, column: 11, scope: !1394)
!1397 = !DILocation(line: 66, column: 24, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1393, file: !219, line: 65, column: 9)
!1399 = !DILocation(line: 70, column: 41, scope: !1398)
!1400 = !DILocation(line: 72, column: 9, scope: !1398)
!1401 = !DILocation(line: 84, column: 16, scope: !1368)
!1402 = !DILocation(line: 90, column: 27, scope: !1368)
!1403 = !DILocation(line: 92, column: 1, scope: !1368)
!1404 = distinct !DISubprogram(name: "clone_quoting_options", scope: !260, file: !260, line: 122, type: !1405, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1408)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1407, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!1408 = !{!1409, !1410, !1411}
!1409 = !DILocalVariable(name: "o", arg: 1, scope: !1404, file: !260, line: 122, type: !1407)
!1410 = !DILocalVariable(name: "e", scope: !1404, file: !260, line: 124, type: !14)
!1411 = !DILocalVariable(name: "p", scope: !1404, file: !260, line: 125, type: !1407)
!1412 = !DILocation(line: 0, scope: !1404)
!1413 = !DILocation(line: 124, column: 11, scope: !1404)
!1414 = !DILocation(line: 125, column: 40, scope: !1404)
!1415 = !DILocation(line: 125, column: 31, scope: !1404)
!1416 = !DILocation(line: 127, column: 9, scope: !1404)
!1417 = !DILocation(line: 128, column: 3, scope: !1404)
!1418 = distinct !DISubprogram(name: "get_quoting_style", scope: !260, file: !260, line: 133, type: !1419, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!262, !305}
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "o", arg: 1, scope: !1418, file: !260, line: 133, type: !305)
!1423 = !DILocation(line: 0, scope: !1418)
!1424 = !DILocation(line: 135, column: 11, scope: !1418)
!1425 = !DILocation(line: 135, column: 46, scope: !1418)
!1426 = !{!1427, !1104, i64 0}
!1427 = !{!"quoting_options", !1104, i64 0, !1162, i64 4, !1104, i64 8, !1103, i64 40, !1103, i64 48}
!1428 = !DILocation(line: 135, column: 3, scope: !1418)
!1429 = distinct !DISubprogram(name: "set_quoting_style", scope: !260, file: !260, line: 141, type: !1430, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !1407, !262}
!1432 = !{!1433, !1434}
!1433 = !DILocalVariable(name: "o", arg: 1, scope: !1429, file: !260, line: 141, type: !1407)
!1434 = !DILocalVariable(name: "s", arg: 2, scope: !1429, file: !260, line: 141, type: !262)
!1435 = !DILocation(line: 0, scope: !1429)
!1436 = !DILocation(line: 143, column: 4, scope: !1429)
!1437 = !DILocation(line: 143, column: 39, scope: !1429)
!1438 = !DILocation(line: 143, column: 45, scope: !1429)
!1439 = !DILocation(line: 144, column: 1, scope: !1429)
!1440 = distinct !DISubprogram(name: "set_char_quoting", scope: !260, file: !260, line: 152, type: !1441, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!14, !1407, !11, !14}
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1450, !1451}
!1444 = !DILocalVariable(name: "o", arg: 1, scope: !1440, file: !260, line: 152, type: !1407)
!1445 = !DILocalVariable(name: "c", arg: 2, scope: !1440, file: !260, line: 152, type: !11)
!1446 = !DILocalVariable(name: "i", arg: 3, scope: !1440, file: !260, line: 152, type: !14)
!1447 = !DILocalVariable(name: "uc", scope: !1440, file: !260, line: 154, type: !129)
!1448 = !DILocalVariable(name: "p", scope: !1440, file: !260, line: 155, type: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1450 = !DILocalVariable(name: "shift", scope: !1440, file: !260, line: 157, type: !14)
!1451 = !DILocalVariable(name: "r", scope: !1440, file: !260, line: 158, type: !14)
!1452 = !DILocation(line: 0, scope: !1440)
!1453 = !DILocation(line: 156, column: 6, scope: !1440)
!1454 = !DILocation(line: 156, column: 62, scope: !1440)
!1455 = !DILocation(line: 156, column: 57, scope: !1440)
!1456 = !DILocation(line: 157, column: 15, scope: !1440)
!1457 = !DILocation(line: 158, column: 12, scope: !1440)
!1458 = !DILocation(line: 158, column: 15, scope: !1440)
!1459 = !DILocation(line: 158, column: 25, scope: !1440)
!1460 = !DILocation(line: 159, column: 13, scope: !1440)
!1461 = !DILocation(line: 159, column: 18, scope: !1440)
!1462 = !DILocation(line: 159, column: 23, scope: !1440)
!1463 = !DILocation(line: 159, column: 6, scope: !1440)
!1464 = !DILocation(line: 160, column: 3, scope: !1440)
!1465 = distinct !DISubprogram(name: "set_quoting_flags", scope: !260, file: !260, line: 168, type: !1466, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!14, !1407, !14}
!1468 = !{!1469, !1470, !1471}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !260, line: 168, type: !1407)
!1470 = !DILocalVariable(name: "i", arg: 2, scope: !1465, file: !260, line: 168, type: !14)
!1471 = !DILocalVariable(name: "r", scope: !1465, file: !260, line: 170, type: !14)
!1472 = !DILocation(line: 0, scope: !1465)
!1473 = !DILocation(line: 171, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !260, line: 171, column: 7)
!1475 = !DILocation(line: 171, column: 7, scope: !1465)
!1476 = !DILocation(line: 173, column: 10, scope: !1465)
!1477 = !{!1427, !1162, i64 4}
!1478 = !DILocation(line: 174, column: 12, scope: !1465)
!1479 = !DILocation(line: 175, column: 3, scope: !1465)
!1480 = distinct !DISubprogram(name: "set_custom_quoting", scope: !260, file: !260, line: 179, type: !1481, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1407, !12, !12}
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "o", arg: 1, scope: !1480, file: !260, line: 179, type: !1407)
!1485 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1480, file: !260, line: 180, type: !12)
!1486 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1480, file: !260, line: 180, type: !12)
!1487 = !DILocation(line: 0, scope: !1480)
!1488 = !DILocation(line: 182, column: 8, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !260, line: 182, column: 7)
!1490 = !DILocation(line: 182, column: 7, scope: !1480)
!1491 = !DILocation(line: 184, column: 6, scope: !1480)
!1492 = !DILocation(line: 184, column: 12, scope: !1480)
!1493 = !DILocation(line: 185, column: 8, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1480, file: !260, line: 185, column: 7)
!1495 = !DILocation(line: 185, column: 23, scope: !1494)
!1496 = !DILocation(line: 185, column: 19, scope: !1494)
!1497 = !DILocation(line: 186, column: 5, scope: !1494)
!1498 = !DILocation(line: 187, column: 6, scope: !1480)
!1499 = !DILocation(line: 187, column: 17, scope: !1480)
!1500 = !{!1427, !1103, i64 40}
!1501 = !DILocation(line: 188, column: 6, scope: !1480)
!1502 = !DILocation(line: 188, column: 18, scope: !1480)
!1503 = !{!1427, !1103, i64 48}
!1504 = !DILocation(line: 189, column: 1, scope: !1480)
!1505 = distinct !DISubprogram(name: "quotearg_buffer", scope: !260, file: !260, line: 784, type: !1506, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!68, !10, !68, !12, !68, !305}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516}
!1509 = !DILocalVariable(name: "buffer", arg: 1, scope: !1505, file: !260, line: 784, type: !10)
!1510 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1505, file: !260, line: 784, type: !68)
!1511 = !DILocalVariable(name: "arg", arg: 3, scope: !1505, file: !260, line: 785, type: !12)
!1512 = !DILocalVariable(name: "argsize", arg: 4, scope: !1505, file: !260, line: 785, type: !68)
!1513 = !DILocalVariable(name: "o", arg: 5, scope: !1505, file: !260, line: 786, type: !305)
!1514 = !DILocalVariable(name: "p", scope: !1505, file: !260, line: 788, type: !305)
!1515 = !DILocalVariable(name: "e", scope: !1505, file: !260, line: 789, type: !14)
!1516 = !DILocalVariable(name: "r", scope: !1505, file: !260, line: 790, type: !68)
!1517 = !DILocation(line: 0, scope: !1505)
!1518 = !DILocation(line: 788, column: 37, scope: !1505)
!1519 = !DILocation(line: 789, column: 11, scope: !1505)
!1520 = !DILocation(line: 791, column: 43, scope: !1505)
!1521 = !DILocation(line: 791, column: 53, scope: !1505)
!1522 = !DILocation(line: 791, column: 60, scope: !1505)
!1523 = !DILocation(line: 792, column: 43, scope: !1505)
!1524 = !DILocation(line: 792, column: 58, scope: !1505)
!1525 = !DILocation(line: 790, column: 14, scope: !1505)
!1526 = !DILocation(line: 793, column: 9, scope: !1505)
!1527 = !DILocation(line: 794, column: 3, scope: !1505)
!1528 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !260, file: !260, line: 256, type: !1529, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1533)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!68, !10, !68, !12, !68, !262, !14, !1531, !12, !12}
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1558, !1559, !1560, !1561, !1562, !1565, !1566, !1572, !1575, !1576, !1583, !1586, !1587, !1588, !1589, !1590, !1591}
!1534 = !DILocalVariable(name: "buffer", arg: 1, scope: !1528, file: !260, line: 256, type: !10)
!1535 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1528, file: !260, line: 256, type: !68)
!1536 = !DILocalVariable(name: "arg", arg: 3, scope: !1528, file: !260, line: 257, type: !12)
!1537 = !DILocalVariable(name: "argsize", arg: 4, scope: !1528, file: !260, line: 257, type: !68)
!1538 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1528, file: !260, line: 258, type: !262)
!1539 = !DILocalVariable(name: "flags", arg: 6, scope: !1528, file: !260, line: 258, type: !14)
!1540 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1528, file: !260, line: 259, type: !1531)
!1541 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1528, file: !260, line: 260, type: !12)
!1542 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1528, file: !260, line: 261, type: !12)
!1543 = !DILocalVariable(name: "i", scope: !1528, file: !260, line: 263, type: !68)
!1544 = !DILocalVariable(name: "len", scope: !1528, file: !260, line: 264, type: !68)
!1545 = !DILocalVariable(name: "orig_buffersize", scope: !1528, file: !260, line: 265, type: !68)
!1546 = !DILocalVariable(name: "quote_string", scope: !1528, file: !260, line: 266, type: !12)
!1547 = !DILocalVariable(name: "quote_string_len", scope: !1528, file: !260, line: 267, type: !68)
!1548 = !DILocalVariable(name: "backslash_escapes", scope: !1528, file: !260, line: 268, type: !141)
!1549 = !DILocalVariable(name: "unibyte_locale", scope: !1528, file: !260, line: 269, type: !141)
!1550 = !DILocalVariable(name: "elide_outer_quotes", scope: !1528, file: !260, line: 270, type: !141)
!1551 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1528, file: !260, line: 271, type: !141)
!1552 = !DILocalVariable(name: "encountered_single_quote", scope: !1528, file: !260, line: 272, type: !141)
!1553 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1528, file: !260, line: 273, type: !141)
!1554 = !DILocalVariable(name: "c", scope: !1555, file: !260, line: 402, type: !129)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !260, line: 401, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !260, line: 400, column: 3)
!1557 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 400, column: 3)
!1558 = !DILocalVariable(name: "esc", scope: !1555, file: !260, line: 403, type: !129)
!1559 = !DILocalVariable(name: "is_right_quote", scope: !1555, file: !260, line: 404, type: !141)
!1560 = !DILocalVariable(name: "escaping", scope: !1555, file: !260, line: 405, type: !141)
!1561 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1555, file: !260, line: 406, type: !141)
!1562 = !DILocalVariable(name: "m", scope: !1563, file: !260, line: 610, type: !68)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 608, column: 11)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 426, column: 9)
!1565 = !DILocalVariable(name: "printable", scope: !1563, file: !260, line: 612, type: !141)
!1566 = !DILocalVariable(name: "mbstate", scope: !1567, file: !260, line: 621, type: !1569)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !260, line: 620, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !260, line: 614, column: 17)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1570, line: 6, baseType: !1571)
!1570 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !329, line: 21, baseType: !328)
!1572 = !DILocalVariable(name: "w", scope: !1573, file: !260, line: 631, type: !1574)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !260, line: 630, column: 19)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1575 = !DILocalVariable(name: "bytes", scope: !1573, file: !260, line: 632, type: !68)
!1576 = !DILocalVariable(name: "j", scope: !1577, file: !260, line: 657, type: !68)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !260, line: 656, column: 27)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !260, line: 654, column: 29)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !260, line: 649, column: 23)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !260, line: 641, column: 30)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !260, line: 636, column: 30)
!1582 = distinct !DILexicalBlock(scope: !1573, file: !260, line: 634, column: 25)
!1583 = !DILocalVariable(name: "ilim", scope: !1584, file: !260, line: 684, type: !68)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !260, line: 681, column: 15)
!1585 = distinct !DILexicalBlock(scope: !1563, file: !260, line: 680, column: 17)
!1586 = !DILabel(scope: !1528, name: "process_input", file: !260, line: 314)
!1587 = !DILabel(scope: !1564, name: "c_and_shell_escape", file: !260, line: 512)
!1588 = !DILabel(scope: !1564, name: "c_escape", file: !260, line: 517)
!1589 = !DILabel(scope: !1555, name: "store_escape", file: !260, line: 719)
!1590 = !DILabel(scope: !1555, name: "store_c", file: !260, line: 722)
!1591 = !DILabel(scope: !1528, name: "force_outer_quoting_style", file: !260, line: 763)
!1592 = !DILocation(line: 0, scope: !1528)
!1593 = !DILocation(line: 269, column: 25, scope: !1528)
!1594 = !DILocation(line: 269, column: 36, scope: !1528)
!1595 = !DILocation(line: 270, column: 8, scope: !1528)
!1596 = !DILocation(line: 0, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 526, column: 15)
!1598 = !DILocation(line: 0, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !260, line: 462, column: 19)
!1600 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 455, column: 13)
!1601 = !DILocation(line: 0, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !260, line: 449, column: 20)
!1603 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 428, column: 15)
!1604 = !DILocation(line: 0, scope: !1567)
!1605 = !DILocation(line: 0, scope: !1573)
!1606 = !DILocation(line: 0, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 712, column: 11)
!1608 = !DILocation(line: 273, column: 3, scope: !1528)
!1609 = !DILocation(line: 265, column: 10, scope: !1528)
!1610 = !DILocation(line: 266, column: 15, scope: !1528)
!1611 = !DILocation(line: 267, column: 10, scope: !1528)
!1612 = !DILocation(line: 268, column: 8, scope: !1528)
!1613 = !DILocation(line: 271, column: 8, scope: !1528)
!1614 = !DILocation(line: 272, column: 8, scope: !1528)
!1615 = !DILocation(line: 273, column: 8, scope: !1528)
!1616 = !DILocation(line: 314, column: 2, scope: !1528)
!1617 = !DILocation(line: 316, column: 3, scope: !1528)
!1618 = !DILocation(line: 323, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 317, column: 5)
!1620 = !DILocation(line: 323, column: 12, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1619, file: !260, line: 323, column: 11)
!1622 = !DILocation(line: 324, column: 9, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !260, line: 324, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !260, line: 324, column: 9)
!1625 = !DILocation(line: 324, column: 9, scope: !1624)
!1626 = !DILocation(line: 362, column: 26, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !260, line: 340, column: 11)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !260, line: 339, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !260, line: 338, column: 7)
!1630 = !DILocation(line: 363, column: 27, scope: !1627)
!1631 = !DILocation(line: 364, column: 11, scope: !1627)
!1632 = !DILocation(line: 365, column: 14, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !260, line: 365, column: 13)
!1634 = !DILocation(line: 365, column: 13, scope: !1629)
!1635 = !DILocation(line: 366, column: 43, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !260, line: 366, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !260, line: 366, column: 11)
!1638 = !DILocation(line: 366, column: 11, scope: !1637)
!1639 = !DILocation(line: 367, column: 13, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !260, line: 367, column: 13)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !260, line: 367, column: 13)
!1642 = !DILocation(line: 367, column: 13, scope: !1641)
!1643 = !DILocation(line: 366, column: 70, scope: !1636)
!1644 = distinct !{!1644, !1638, !1645}
!1645 = !DILocation(line: 367, column: 13, scope: !1637)
!1646 = !DILocation(line: 264, column: 10, scope: !1528)
!1647 = !DILocation(line: 370, column: 28, scope: !1629)
!1648 = !DILocation(line: 372, column: 7, scope: !1619)
!1649 = !DILocation(line: 376, column: 7, scope: !1619)
!1650 = !DILocation(line: 379, column: 7, scope: !1619)
!1651 = !DILocation(line: 381, column: 12, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1619, file: !260, line: 381, column: 11)
!1653 = !DILocation(line: 381, column: 11, scope: !1619)
!1654 = !DILocation(line: 386, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1619, file: !260, line: 386, column: 11)
!1656 = !DILocation(line: 386, column: 11, scope: !1619)
!1657 = !DILocation(line: 387, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !260, line: 387, column: 9)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !260, line: 387, column: 9)
!1660 = !DILocation(line: 387, column: 9, scope: !1659)
!1661 = !DILocation(line: 394, column: 7, scope: !1619)
!1662 = !DILocation(line: 397, column: 7, scope: !1619)
!1663 = !DILocation(line: 0, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 408, column: 11)
!1665 = !DILocation(line: 0, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !260, line: 419, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !260, line: 418, column: 9)
!1668 = !DILocation(line: 0, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 556, column: 15)
!1670 = !DILocation(line: 0, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 548, column: 15)
!1672 = !DILocation(line: 0, scope: !1578)
!1673 = !DILocation(line: 0, scope: !1585)
!1674 = !DILocation(line: 0, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 509, column: 15)
!1676 = !DILocation(line: 400, column: 8, scope: !1557)
!1677 = !DILocation(line: 0, scope: !1557)
!1678 = !DILocation(line: 400, column: 27, scope: !1556)
!1679 = !DILocation(line: 400, column: 19, scope: !1556)
!1680 = !DILocation(line: 400, column: 41, scope: !1556)
!1681 = !DILocation(line: 400, column: 48, scope: !1556)
!1682 = !DILocation(line: 400, column: 3, scope: !1557)
!1683 = !DILocation(line: 400, column: 60, scope: !1556)
!1684 = !DILocation(line: 0, scope: !1555)
!1685 = !DILocation(line: 409, column: 11, scope: !1664)
!1686 = !DILocation(line: 411, column: 17, scope: !1664)
!1687 = !DILocation(line: 412, column: 39, scope: !1664)
!1688 = !DILocation(line: 416, column: 32, scope: !1664)
!1689 = !DILocation(line: 412, column: 19, scope: !1664)
!1690 = !DILocation(line: 412, column: 15, scope: !1664)
!1691 = !DILocation(line: 417, column: 11, scope: !1664)
!1692 = !DILocation(line: 417, column: 26, scope: !1664)
!1693 = !DILocation(line: 417, column: 14, scope: !1664)
!1694 = !DILocation(line: 417, column: 63, scope: !1664)
!1695 = !DILocation(line: 408, column: 11, scope: !1555)
!1696 = !DILocation(line: 424, column: 11, scope: !1555)
!1697 = !DILocation(line: 425, column: 7, scope: !1555)
!1698 = !DILocation(line: 428, column: 15, scope: !1564)
!1699 = !DILocation(line: 430, column: 15, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !260, line: 430, column: 15)
!1701 = distinct !DILexicalBlock(scope: !1603, file: !260, line: 429, column: 13)
!1702 = !DILocation(line: 430, column: 15, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !260, line: 430, column: 15)
!1704 = !DILocation(line: 430, column: 15, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !260, line: 430, column: 15)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !260, line: 430, column: 15)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !260, line: 430, column: 15)
!1708 = !DILocation(line: 430, column: 15, scope: !1706)
!1709 = !DILocation(line: 430, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !260, line: 430, column: 15)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !260, line: 430, column: 15)
!1712 = !DILocation(line: 430, column: 15, scope: !1711)
!1713 = !DILocation(line: 430, column: 15, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !260, line: 430, column: 15)
!1715 = distinct !DILexicalBlock(scope: !1707, file: !260, line: 430, column: 15)
!1716 = !DILocation(line: 430, column: 15, scope: !1715)
!1717 = !DILocation(line: 430, column: 15, scope: !1707)
!1718 = !DILocation(line: 430, column: 15, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !260, line: 430, column: 15)
!1720 = distinct !DILexicalBlock(scope: !1700, file: !260, line: 430, column: 15)
!1721 = !DILocation(line: 430, column: 15, scope: !1720)
!1722 = !DILocation(line: 438, column: 19, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1701, file: !260, line: 437, column: 19)
!1724 = !DILocation(line: 438, column: 24, scope: !1723)
!1725 = !DILocation(line: 438, column: 28, scope: !1723)
!1726 = !DILocation(line: 438, column: 38, scope: !1723)
!1727 = !DILocation(line: 438, column: 48, scope: !1723)
!1728 = !DILocation(line: 438, column: 59, scope: !1723)
!1729 = !DILocation(line: 440, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !260, line: 440, column: 19)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !260, line: 440, column: 19)
!1732 = distinct !DILexicalBlock(scope: !1723, file: !260, line: 439, column: 17)
!1733 = !DILocation(line: 440, column: 19, scope: !1731)
!1734 = !DILocation(line: 441, column: 19, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !260, line: 441, column: 19)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !260, line: 441, column: 19)
!1737 = !DILocation(line: 441, column: 19, scope: !1736)
!1738 = !DILocation(line: 442, column: 17, scope: !1732)
!1739 = !DILocation(line: 449, column: 20, scope: !1603)
!1740 = !DILocation(line: 454, column: 11, scope: !1564)
!1741 = !DILocation(line: 457, column: 19, scope: !1600)
!1742 = !DILocation(line: 463, column: 19, scope: !1599)
!1743 = !DILocation(line: 463, column: 24, scope: !1599)
!1744 = !DILocation(line: 463, column: 28, scope: !1599)
!1745 = !DILocation(line: 463, column: 38, scope: !1599)
!1746 = !DILocation(line: 463, column: 47, scope: !1599)
!1747 = !DILocation(line: 463, column: 41, scope: !1599)
!1748 = !DILocation(line: 463, column: 52, scope: !1599)
!1749 = !DILocation(line: 462, column: 19, scope: !1600)
!1750 = !DILocation(line: 464, column: 25, scope: !1599)
!1751 = !DILocation(line: 464, column: 17, scope: !1599)
!1752 = !DILocation(line: 471, column: 25, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1599, file: !260, line: 465, column: 19)
!1754 = !DILocation(line: 475, column: 21, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !260, line: 475, column: 21)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !260, line: 475, column: 21)
!1757 = !DILocation(line: 475, column: 21, scope: !1756)
!1758 = !DILocation(line: 476, column: 21, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !260, line: 476, column: 21)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !260, line: 476, column: 21)
!1761 = !DILocation(line: 476, column: 21, scope: !1760)
!1762 = !DILocation(line: 477, column: 21, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !260, line: 477, column: 21)
!1764 = distinct !DILexicalBlock(scope: !1753, file: !260, line: 477, column: 21)
!1765 = !DILocation(line: 477, column: 21, scope: !1764)
!1766 = !DILocation(line: 478, column: 21, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !260, line: 478, column: 21)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !260, line: 478, column: 21)
!1769 = !DILocation(line: 478, column: 21, scope: !1768)
!1770 = !DILocation(line: 479, column: 21, scope: !1753)
!1771 = !DILocation(line: 492, column: 31, scope: !1564)
!1772 = !DILocation(line: 493, column: 31, scope: !1564)
!1773 = !DILocation(line: 495, column: 31, scope: !1564)
!1774 = !DILocation(line: 496, column: 31, scope: !1564)
!1775 = !DILocation(line: 497, column: 31, scope: !1564)
!1776 = !DILocation(line: 500, column: 15, scope: !1564)
!1777 = !DILocation(line: 502, column: 19, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !260, line: 501, column: 13)
!1779 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 500, column: 15)
!1780 = !DILocation(line: 509, column: 33, scope: !1675)
!1781 = !DILocation(line: 0, scope: !1564)
!1782 = !DILocation(line: 512, column: 9, scope: !1564)
!1783 = !DILocation(line: 514, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 513, column: 15)
!1785 = !DILocation(line: 517, column: 9, scope: !1564)
!1786 = !DILocation(line: 518, column: 15, scope: !1564)
!1787 = !DILocation(line: 526, column: 15, scope: !1564)
!1788 = !DILocation(line: 526, column: 40, scope: !1597)
!1789 = !DILocation(line: 526, column: 47, scope: !1597)
!1790 = !DILocation(line: 526, column: 18, scope: !1597)
!1791 = !DILocation(line: 530, column: 17, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1564, file: !260, line: 530, column: 15)
!1793 = !DILocation(line: 530, column: 15, scope: !1564)
!1794 = !DILocation(line: 535, column: 11, scope: !1564)
!1795 = !DILocation(line: 549, column: 15, scope: !1671)
!1796 = !DILocation(line: 556, column: 15, scope: !1564)
!1797 = !DILocation(line: 558, column: 19, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1669, file: !260, line: 557, column: 13)
!1799 = !DILocation(line: 561, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1798, file: !260, line: 561, column: 19)
!1801 = !DILocation(line: 561, column: 35, scope: !1800)
!1802 = !DILocation(line: 561, column: 30, scope: !1800)
!1803 = !DILocation(line: 570, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !260, line: 570, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !260, line: 570, column: 15)
!1806 = !DILocation(line: 570, column: 15, scope: !1805)
!1807 = !DILocation(line: 571, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !260, line: 571, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1798, file: !260, line: 571, column: 15)
!1810 = !DILocation(line: 571, column: 15, scope: !1809)
!1811 = !DILocation(line: 572, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !260, line: 572, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1798, file: !260, line: 572, column: 15)
!1814 = !DILocation(line: 572, column: 15, scope: !1813)
!1815 = !DILocation(line: 574, column: 13, scope: !1798)
!1816 = !DILocation(line: 614, column: 17, scope: !1563)
!1817 = !DILocation(line: 0, scope: !1563)
!1818 = !DILocation(line: 617, column: 29, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1568, file: !260, line: 615, column: 15)
!1820 = !{!1189, !1189, i64 0}
!1821 = !DILocation(line: 617, column: 27, scope: !1819)
!1822 = !DILocation(line: 618, column: 15, scope: !1819)
!1823 = !DILocation(line: 621, column: 17, scope: !1567)
!1824 = !DILocation(line: 621, column: 27, scope: !1567)
!1825 = !DILocalVariable(name: "__dest", arg: 1, scope: !1826, file: !1304, line: 59, type: !66)
!1826 = distinct !DISubprogram(name: "memset", scope: !1304, file: !1304, line: 59, type: !1827, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!66, !66, !14, !68}
!1829 = !{!1825, !1830, !1831}
!1830 = !DILocalVariable(name: "__ch", arg: 2, scope: !1826, file: !1304, line: 59, type: !14)
!1831 = !DILocalVariable(name: "__len", arg: 3, scope: !1826, file: !1304, line: 59, type: !68)
!1832 = !DILocation(line: 0, scope: !1826, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 622, column: 17, scope: !1567)
!1834 = !DILocation(line: 71, column: 10, scope: !1826, inlinedAt: !1833)
!1835 = !DILocation(line: 626, column: 29, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1567, file: !260, line: 626, column: 21)
!1837 = !DILocation(line: 626, column: 21, scope: !1567)
!1838 = !DILocation(line: 627, column: 29, scope: !1836)
!1839 = !DILocation(line: 627, column: 19, scope: !1836)
!1840 = !DILocation(line: 629, column: 17, scope: !1567)
!1841 = !DILocation(line: 624, column: 19, scope: !1567)
!1842 = !DILocation(line: 625, column: 27, scope: !1567)
!1843 = !DILocation(line: 631, column: 21, scope: !1573)
!1844 = !DILocation(line: 632, column: 56, scope: !1573)
!1845 = !DILocation(line: 632, column: 50, scope: !1573)
!1846 = !DILocation(line: 633, column: 53, scope: !1573)
!1847 = !DILocation(line: 632, column: 36, scope: !1573)
!1848 = !DILocation(line: 634, column: 25, scope: !1573)
!1849 = !DILocation(line: 644, column: 38, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1580, file: !260, line: 642, column: 23)
!1851 = !DILocation(line: 644, column: 48, scope: !1850)
!1852 = !DILocation(line: 644, column: 25, scope: !1850)
!1853 = !DILocation(line: 644, column: 51, scope: !1850)
!1854 = !DILocation(line: 645, column: 28, scope: !1850)
!1855 = !DILocation(line: 644, column: 34, scope: !1850)
!1856 = distinct !{!1856, !1852, !1854}
!1857 = !DILocation(line: 658, column: 43, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !260, line: 658, column: 29)
!1859 = distinct !DILexicalBlock(scope: !1577, file: !260, line: 658, column: 29)
!1860 = !DILocation(line: 655, column: 29, scope: !1578)
!1861 = !DILocation(line: 0, scope: !1577)
!1862 = !DILocation(line: 659, column: 49, scope: !1858)
!1863 = !DILocation(line: 659, column: 39, scope: !1858)
!1864 = !DILocation(line: 659, column: 31, scope: !1858)
!1865 = !DILocation(line: 658, column: 53, scope: !1858)
!1866 = !DILocation(line: 658, column: 29, scope: !1859)
!1867 = distinct !{!1867, !1866, !1868}
!1868 = !DILocation(line: 667, column: 33, scope: !1859)
!1869 = !DILocation(line: 674, column: 19, scope: !1567)
!1870 = !DILocation(line: 670, column: 41, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1579, file: !260, line: 670, column: 29)
!1872 = !DILocation(line: 670, column: 31, scope: !1871)
!1873 = !DILocation(line: 670, column: 29, scope: !1579)
!1874 = !DILocation(line: 672, column: 27, scope: !1579)
!1875 = !DILocation(line: 675, column: 26, scope: !1567)
!1876 = !DILocation(line: 675, column: 24, scope: !1567)
!1877 = !DILocation(line: 674, column: 19, scope: !1573)
!1878 = distinct !{!1878, !1840, !1879}
!1879 = !DILocation(line: 675, column: 44, scope: !1567)
!1880 = !DILocation(line: 676, column: 15, scope: !1568)
!1881 = !DILocation(line: 0, scope: !1568)
!1882 = !DILocation(line: 678, column: 40, scope: !1563)
!1883 = !DILocation(line: 680, column: 19, scope: !1585)
!1884 = !DILocation(line: 680, column: 45, scope: !1585)
!1885 = !DILocation(line: 680, column: 23, scope: !1585)
!1886 = !DILocation(line: 684, column: 33, scope: !1584)
!1887 = !DILocation(line: 0, scope: !1584)
!1888 = !DILocation(line: 686, column: 17, scope: !1584)
!1889 = !DILocation(line: 405, column: 12, scope: !1555)
!1890 = !DILocation(line: 688, column: 43, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !260, line: 688, column: 25)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !260, line: 687, column: 19)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !260, line: 686, column: 17)
!1894 = distinct !DILexicalBlock(scope: !1584, file: !260, line: 686, column: 17)
!1895 = !DILocation(line: 690, column: 25, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !260, line: 690, column: 25)
!1897 = distinct !DILexicalBlock(scope: !1891, file: !260, line: 689, column: 23)
!1898 = !DILocation(line: 690, column: 25, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1896, file: !260, line: 690, column: 25)
!1900 = !DILocation(line: 690, column: 25, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !260, line: 690, column: 25)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !260, line: 690, column: 25)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !260, line: 690, column: 25)
!1904 = !DILocation(line: 690, column: 25, scope: !1902)
!1905 = !DILocation(line: 690, column: 25, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !260, line: 690, column: 25)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !260, line: 690, column: 25)
!1908 = !DILocation(line: 690, column: 25, scope: !1907)
!1909 = !DILocation(line: 690, column: 25, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !260, line: 690, column: 25)
!1911 = distinct !DILexicalBlock(scope: !1903, file: !260, line: 690, column: 25)
!1912 = !DILocation(line: 690, column: 25, scope: !1911)
!1913 = !DILocation(line: 690, column: 25, scope: !1903)
!1914 = !DILocation(line: 690, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !260, line: 690, column: 25)
!1916 = distinct !DILexicalBlock(scope: !1896, file: !260, line: 690, column: 25)
!1917 = !DILocation(line: 690, column: 25, scope: !1916)
!1918 = !DILocation(line: 691, column: 25, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !260, line: 691, column: 25)
!1920 = distinct !DILexicalBlock(scope: !1897, file: !260, line: 691, column: 25)
!1921 = !DILocation(line: 691, column: 25, scope: !1920)
!1922 = !DILocation(line: 692, column: 25, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !260, line: 692, column: 25)
!1924 = distinct !DILexicalBlock(scope: !1897, file: !260, line: 692, column: 25)
!1925 = !DILocation(line: 692, column: 25, scope: !1924)
!1926 = !DILocation(line: 693, column: 38, scope: !1897)
!1927 = !DILocation(line: 693, column: 33, scope: !1897)
!1928 = !DILocation(line: 694, column: 23, scope: !1897)
!1929 = !DILocation(line: 695, column: 30, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1891, file: !260, line: 695, column: 30)
!1931 = !DILocation(line: 695, column: 30, scope: !1891)
!1932 = !DILocation(line: 697, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !260, line: 697, column: 25)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !260, line: 697, column: 25)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !260, line: 696, column: 23)
!1936 = !DILocation(line: 697, column: 25, scope: !1934)
!1937 = !DILocation(line: 699, column: 23, scope: !1935)
!1938 = !DILocation(line: 700, column: 35, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1892, file: !260, line: 700, column: 25)
!1940 = !DILocation(line: 700, column: 30, scope: !1939)
!1941 = !DILocation(line: 700, column: 25, scope: !1892)
!1942 = !DILocation(line: 702, column: 21, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !260, line: 702, column: 21)
!1944 = distinct !DILexicalBlock(scope: !1892, file: !260, line: 702, column: 21)
!1945 = !DILocation(line: 702, column: 21, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !260, line: 702, column: 21)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !260, line: 702, column: 21)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !260, line: 702, column: 21)
!1949 = !DILocation(line: 702, column: 21, scope: !1947)
!1950 = !DILocation(line: 702, column: 21, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !260, line: 702, column: 21)
!1952 = distinct !DILexicalBlock(scope: !1948, file: !260, line: 702, column: 21)
!1953 = !DILocation(line: 702, column: 21, scope: !1952)
!1954 = !DILocation(line: 702, column: 21, scope: !1948)
!1955 = !DILocation(line: 0, scope: !1892)
!1956 = !DILocation(line: 703, column: 21, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !260, line: 703, column: 21)
!1958 = distinct !DILexicalBlock(scope: !1892, file: !260, line: 703, column: 21)
!1959 = !DILocation(line: 703, column: 21, scope: !1958)
!1960 = !DILocation(line: 704, column: 25, scope: !1892)
!1961 = !DILocation(line: 686, column: 17, scope: !1893)
!1962 = distinct !{!1962, !1963, !1964}
!1963 = !DILocation(line: 686, column: 17, scope: !1894)
!1964 = !DILocation(line: 705, column: 19, scope: !1894)
!1965 = !DILocation(line: 416, column: 30, scope: !1664)
!1966 = !DILocation(line: 712, column: 34, scope: !1607)
!1967 = !DILocation(line: 715, column: 35, scope: !1607)
!1968 = !DILocation(line: 715, column: 17, scope: !1607)
!1969 = !DILocation(line: 715, column: 47, scope: !1607)
!1970 = !DILocation(line: 715, column: 65, scope: !1607)
!1971 = !DILocation(line: 716, column: 15, scope: !1607)
!1972 = !DILocation(line: 716, column: 11, scope: !1607)
!1973 = !DILocation(line: 712, column: 11, scope: !1555)
!1974 = !DILocation(line: 400, column: 10, scope: !1557)
!1975 = !DILocation(line: 719, column: 5, scope: !1555)
!1976 = !DILocation(line: 720, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 720, column: 7)
!1978 = !DILocation(line: 720, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1977, file: !260, line: 720, column: 7)
!1980 = !DILocation(line: 720, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !260, line: 720, column: 7)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !260, line: 720, column: 7)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !260, line: 720, column: 7)
!1984 = !DILocation(line: 720, column: 7, scope: !1982)
!1985 = !DILocation(line: 720, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !260, line: 720, column: 7)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !260, line: 720, column: 7)
!1988 = !DILocation(line: 720, column: 7, scope: !1987)
!1989 = !DILocation(line: 720, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !260, line: 720, column: 7)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !260, line: 720, column: 7)
!1992 = !DILocation(line: 720, column: 7, scope: !1991)
!1993 = !DILocation(line: 720, column: 7, scope: !1983)
!1994 = !DILocation(line: 720, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !260, line: 720, column: 7)
!1996 = distinct !DILexicalBlock(scope: !1977, file: !260, line: 720, column: 7)
!1997 = !DILocation(line: 720, column: 7, scope: !1996)
!1998 = !DILocation(line: 722, column: 5, scope: !1555)
!1999 = !DILocation(line: 723, column: 7, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !260, line: 723, column: 7)
!2001 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 723, column: 7)
!2002 = !DILocation(line: 424, column: 9, scope: !1555)
!2003 = !DILocation(line: 723, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !260, line: 723, column: 7)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !260, line: 723, column: 7)
!2006 = distinct !DILexicalBlock(scope: !2000, file: !260, line: 723, column: 7)
!2007 = !DILocation(line: 723, column: 7, scope: !2005)
!2008 = !DILocation(line: 723, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !260, line: 723, column: 7)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !260, line: 723, column: 7)
!2011 = !DILocation(line: 723, column: 7, scope: !2010)
!2012 = !DILocation(line: 723, column: 7, scope: !2006)
!2013 = !DILocation(line: 724, column: 7, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !260, line: 724, column: 7)
!2015 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 724, column: 7)
!2016 = !DILocation(line: 724, column: 7, scope: !2015)
!2017 = !DILocation(line: 726, column: 13, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1555, file: !260, line: 726, column: 11)
!2019 = !DILocation(line: 726, column: 11, scope: !1555)
!2020 = !DILocation(line: 728, column: 5, scope: !1556)
!2021 = !DILocation(line: 400, column: 75, scope: !1556)
!2022 = !DILocation(line: 400, column: 3, scope: !1556)
!2023 = distinct !{!2023, !1682, !2024}
!2024 = !DILocation(line: 728, column: 5, scope: !1557)
!2025 = !DILocation(line: 730, column: 11, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 730, column: 7)
!2027 = !DILocation(line: 730, column: 16, scope: !2026)
!2028 = !DILocation(line: 738, column: 51, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 738, column: 7)
!2030 = !DILocation(line: 739, column: 10, scope: !2029)
!2031 = !DILocation(line: 741, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !260, line: 741, column: 11)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !260, line: 740, column: 5)
!2034 = !DILocation(line: 741, column: 11, scope: !2033)
!2035 = !DILocation(line: 742, column: 16, scope: !2032)
!2036 = !DILocation(line: 742, column: 9, scope: !2032)
!2037 = !DILocation(line: 746, column: 18, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2032, file: !260, line: 746, column: 16)
!2039 = !DILocation(line: 746, column: 32, scope: !2038)
!2040 = !DILocation(line: 746, column: 29, scope: !2038)
!2041 = !DILocation(line: 755, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 755, column: 7)
!2043 = !DILocation(line: 755, column: 20, scope: !2042)
!2044 = !DILocation(line: 756, column: 12, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !260, line: 756, column: 5)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !260, line: 756, column: 5)
!2047 = !DILocation(line: 756, column: 5, scope: !2046)
!2048 = !DILocation(line: 757, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !260, line: 757, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !260, line: 757, column: 7)
!2051 = !DILocation(line: 757, column: 7, scope: !2050)
!2052 = !DILocation(line: 756, column: 39, scope: !2045)
!2053 = distinct !{!2053, !2047, !2054}
!2054 = !DILocation(line: 757, column: 7, scope: !2046)
!2055 = !DILocation(line: 759, column: 11, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 759, column: 7)
!2057 = !DILocation(line: 759, column: 7, scope: !1528)
!2058 = !DILocation(line: 760, column: 5, scope: !2056)
!2059 = !DILocation(line: 760, column: 17, scope: !2056)
!2060 = !DILocation(line: 763, column: 2, scope: !1528)
!2061 = !DILocation(line: 766, column: 51, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1528, file: !260, line: 766, column: 7)
!2063 = !DILocation(line: 766, column: 21, scope: !2062)
!2064 = !DILocation(line: 770, column: 42, scope: !1528)
!2065 = !DILocation(line: 768, column: 10, scope: !1528)
!2066 = !DILocation(line: 768, column: 3, scope: !1528)
!2067 = !DILocation(line: 772, column: 1, scope: !1528)
!2068 = distinct !DISubprogram(name: "gettext_quote", scope: !260, file: !260, line: 207, type: !2069, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2071)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!12, !12, !262}
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DILocalVariable(name: "msgid", arg: 1, scope: !2068, file: !260, line: 207, type: !12)
!2073 = !DILocalVariable(name: "s", arg: 2, scope: !2068, file: !260, line: 207, type: !262)
!2074 = !DILocalVariable(name: "translation", scope: !2068, file: !260, line: 209, type: !12)
!2075 = !DILocalVariable(name: "locale_code", scope: !2068, file: !260, line: 210, type: !12)
!2076 = !DILocation(line: 0, scope: !2068)
!2077 = !DILocation(line: 209, column: 29, scope: !2068)
!2078 = !DILocation(line: 212, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2068, file: !260, line: 212, column: 7)
!2080 = !DILocation(line: 212, column: 7, scope: !2068)
!2081 = !DILocation(line: 233, column: 17, scope: !2068)
!2082 = !DILocalVariable(name: "s1", arg: 1, scope: !2083, file: !2084, line: 160, type: !12)
!2083 = distinct !DISubprogram(name: "strcaseeq0", scope: !2084, file: !2084, line: 160, type: !2085, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2087)
!2084 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2087 = !{!2082, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2088 = !DILocalVariable(name: "s2", arg: 2, scope: !2083, file: !2084, line: 160, type: !12)
!2089 = !DILocalVariable(name: "s20", arg: 3, scope: !2083, file: !2084, line: 160, type: !11)
!2090 = !DILocalVariable(name: "s21", arg: 4, scope: !2083, file: !2084, line: 160, type: !11)
!2091 = !DILocalVariable(name: "s22", arg: 5, scope: !2083, file: !2084, line: 160, type: !11)
!2092 = !DILocalVariable(name: "s23", arg: 6, scope: !2083, file: !2084, line: 160, type: !11)
!2093 = !DILocalVariable(name: "s24", arg: 7, scope: !2083, file: !2084, line: 160, type: !11)
!2094 = !DILocalVariable(name: "s25", arg: 8, scope: !2083, file: !2084, line: 160, type: !11)
!2095 = !DILocalVariable(name: "s26", arg: 9, scope: !2083, file: !2084, line: 160, type: !11)
!2096 = !DILocalVariable(name: "s27", arg: 10, scope: !2083, file: !2084, line: 160, type: !11)
!2097 = !DILocalVariable(name: "s28", arg: 11, scope: !2083, file: !2084, line: 160, type: !11)
!2098 = !DILocation(line: 0, scope: !2083, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 234, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2068, file: !260, line: 234, column: 7)
!2101 = !DILocation(line: 162, column: 7, scope: !2102, inlinedAt: !2099)
!2102 = distinct !DILexicalBlock(scope: !2083, file: !2084, line: 162, column: 7)
!2103 = !DILocalVariable(name: "s1", arg: 1, scope: !2104, file: !2084, line: 146, type: !12)
!2104 = distinct !DISubprogram(name: "strcaseeq1", scope: !2084, file: !2084, line: 146, type: !2105, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2107 = !{!2103, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2108 = !DILocalVariable(name: "s2", arg: 2, scope: !2104, file: !2084, line: 146, type: !12)
!2109 = !DILocalVariable(name: "s21", arg: 3, scope: !2104, file: !2084, line: 146, type: !11)
!2110 = !DILocalVariable(name: "s22", arg: 4, scope: !2104, file: !2084, line: 146, type: !11)
!2111 = !DILocalVariable(name: "s23", arg: 5, scope: !2104, file: !2084, line: 146, type: !11)
!2112 = !DILocalVariable(name: "s24", arg: 6, scope: !2104, file: !2084, line: 146, type: !11)
!2113 = !DILocalVariable(name: "s25", arg: 7, scope: !2104, file: !2084, line: 146, type: !11)
!2114 = !DILocalVariable(name: "s26", arg: 8, scope: !2104, file: !2084, line: 146, type: !11)
!2115 = !DILocalVariable(name: "s27", arg: 9, scope: !2104, file: !2084, line: 146, type: !11)
!2116 = !DILocalVariable(name: "s28", arg: 10, scope: !2104, file: !2084, line: 146, type: !11)
!2117 = !DILocation(line: 0, scope: !2104, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 167, column: 16, scope: !2119, inlinedAt: !2099)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !2084, line: 164, column: 11)
!2120 = distinct !DILexicalBlock(scope: !2102, file: !2084, line: 163, column: 5)
!2121 = !DILocation(line: 148, column: 7, scope: !2122, inlinedAt: !2118)
!2122 = distinct !DILexicalBlock(scope: !2104, file: !2084, line: 148, column: 7)
!2123 = !DILocalVariable(name: "s1", arg: 1, scope: !2124, file: !2084, line: 132, type: !12)
!2124 = distinct !DISubprogram(name: "strcaseeq2", scope: !2084, file: !2084, line: 132, type: !2125, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2127 = !{!2123, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2128 = !DILocalVariable(name: "s2", arg: 2, scope: !2124, file: !2084, line: 132, type: !12)
!2129 = !DILocalVariable(name: "s22", arg: 3, scope: !2124, file: !2084, line: 132, type: !11)
!2130 = !DILocalVariable(name: "s23", arg: 4, scope: !2124, file: !2084, line: 132, type: !11)
!2131 = !DILocalVariable(name: "s24", arg: 5, scope: !2124, file: !2084, line: 132, type: !11)
!2132 = !DILocalVariable(name: "s25", arg: 6, scope: !2124, file: !2084, line: 132, type: !11)
!2133 = !DILocalVariable(name: "s26", arg: 7, scope: !2124, file: !2084, line: 132, type: !11)
!2134 = !DILocalVariable(name: "s27", arg: 8, scope: !2124, file: !2084, line: 132, type: !11)
!2135 = !DILocalVariable(name: "s28", arg: 9, scope: !2124, file: !2084, line: 132, type: !11)
!2136 = !DILocation(line: 0, scope: !2124, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 153, column: 16, scope: !2138, inlinedAt: !2118)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !2084, line: 150, column: 11)
!2139 = distinct !DILexicalBlock(scope: !2122, file: !2084, line: 149, column: 5)
!2140 = !DILocation(line: 134, column: 7, scope: !2141, inlinedAt: !2137)
!2141 = distinct !DILexicalBlock(scope: !2124, file: !2084, line: 134, column: 7)
!2142 = !DILocalVariable(name: "s1", arg: 1, scope: !2143, file: !2084, line: 118, type: !12)
!2143 = distinct !DISubprogram(name: "strcaseeq3", scope: !2084, file: !2084, line: 118, type: !2144, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2146 = !{!2142, !2147, !2148, !2149, !2150, !2151, !2152, !2153}
!2147 = !DILocalVariable(name: "s2", arg: 2, scope: !2143, file: !2084, line: 118, type: !12)
!2148 = !DILocalVariable(name: "s23", arg: 3, scope: !2143, file: !2084, line: 118, type: !11)
!2149 = !DILocalVariable(name: "s24", arg: 4, scope: !2143, file: !2084, line: 118, type: !11)
!2150 = !DILocalVariable(name: "s25", arg: 5, scope: !2143, file: !2084, line: 118, type: !11)
!2151 = !DILocalVariable(name: "s26", arg: 6, scope: !2143, file: !2084, line: 118, type: !11)
!2152 = !DILocalVariable(name: "s27", arg: 7, scope: !2143, file: !2084, line: 118, type: !11)
!2153 = !DILocalVariable(name: "s28", arg: 8, scope: !2143, file: !2084, line: 118, type: !11)
!2154 = !DILocation(line: 0, scope: !2143, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 139, column: 16, scope: !2156, inlinedAt: !2137)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !2084, line: 136, column: 11)
!2157 = distinct !DILexicalBlock(scope: !2141, file: !2084, line: 135, column: 5)
!2158 = !DILocation(line: 120, column: 7, scope: !2159, inlinedAt: !2155)
!2159 = distinct !DILexicalBlock(scope: !2143, file: !2084, line: 120, column: 7)
!2160 = !DILocation(line: 120, column: 7, scope: !2143, inlinedAt: !2155)
!2161 = !DILocalVariable(name: "s1", arg: 1, scope: !2162, file: !2084, line: 104, type: !12)
!2162 = distinct !DISubprogram(name: "strcaseeq4", scope: !2084, file: !2084, line: 104, type: !2163, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2165 = !{!2161, !2166, !2167, !2168, !2169, !2170, !2171}
!2166 = !DILocalVariable(name: "s2", arg: 2, scope: !2162, file: !2084, line: 104, type: !12)
!2167 = !DILocalVariable(name: "s24", arg: 3, scope: !2162, file: !2084, line: 104, type: !11)
!2168 = !DILocalVariable(name: "s25", arg: 4, scope: !2162, file: !2084, line: 104, type: !11)
!2169 = !DILocalVariable(name: "s26", arg: 5, scope: !2162, file: !2084, line: 104, type: !11)
!2170 = !DILocalVariable(name: "s27", arg: 6, scope: !2162, file: !2084, line: 104, type: !11)
!2171 = !DILocalVariable(name: "s28", arg: 7, scope: !2162, file: !2084, line: 104, type: !11)
!2172 = !DILocation(line: 0, scope: !2162, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 125, column: 16, scope: !2174, inlinedAt: !2155)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !2084, line: 122, column: 11)
!2175 = distinct !DILexicalBlock(scope: !2159, file: !2084, line: 121, column: 5)
!2176 = !DILocation(line: 106, column: 7, scope: !2177, inlinedAt: !2173)
!2177 = distinct !DILexicalBlock(scope: !2162, file: !2084, line: 106, column: 7)
!2178 = !DILocation(line: 106, column: 7, scope: !2162, inlinedAt: !2173)
!2179 = !DILocalVariable(name: "s1", arg: 1, scope: !2180, file: !2084, line: 90, type: !12)
!2180 = distinct !DISubprogram(name: "strcaseeq5", scope: !2084, file: !2084, line: 90, type: !2181, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!14, !12, !12, !11, !11, !11, !11}
!2183 = !{!2179, !2184, !2185, !2186, !2187, !2188}
!2184 = !DILocalVariable(name: "s2", arg: 2, scope: !2180, file: !2084, line: 90, type: !12)
!2185 = !DILocalVariable(name: "s25", arg: 3, scope: !2180, file: !2084, line: 90, type: !11)
!2186 = !DILocalVariable(name: "s26", arg: 4, scope: !2180, file: !2084, line: 90, type: !11)
!2187 = !DILocalVariable(name: "s27", arg: 5, scope: !2180, file: !2084, line: 90, type: !11)
!2188 = !DILocalVariable(name: "s28", arg: 6, scope: !2180, file: !2084, line: 90, type: !11)
!2189 = !DILocation(line: 0, scope: !2180, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 111, column: 16, scope: !2191, inlinedAt: !2173)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2084, line: 108, column: 11)
!2192 = distinct !DILexicalBlock(scope: !2177, file: !2084, line: 107, column: 5)
!2193 = !DILocation(line: 92, column: 7, scope: !2194, inlinedAt: !2190)
!2194 = distinct !DILexicalBlock(scope: !2180, file: !2084, line: 92, column: 7)
!2195 = !DILocation(line: 92, column: 7, scope: !2180, inlinedAt: !2190)
!2196 = !DILocation(line: 235, column: 12, scope: !2100)
!2197 = !DILocation(line: 235, column: 21, scope: !2100)
!2198 = !DILocation(line: 235, column: 5, scope: !2100)
!2199 = !DILocation(line: 0, scope: !2104, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 167, column: 16, scope: !2119, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 236, column: 7, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2068, file: !260, line: 236, column: 7)
!2203 = !DILocation(line: 148, column: 7, scope: !2122, inlinedAt: !2200)
!2204 = !DILocation(line: 0, scope: !2124, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 153, column: 16, scope: !2138, inlinedAt: !2200)
!2206 = !DILocation(line: 134, column: 7, scope: !2141, inlinedAt: !2205)
!2207 = !DILocation(line: 134, column: 7, scope: !2124, inlinedAt: !2205)
!2208 = !DILocation(line: 0, scope: !2143, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 139, column: 16, scope: !2156, inlinedAt: !2205)
!2210 = !DILocation(line: 120, column: 7, scope: !2159, inlinedAt: !2209)
!2211 = !DILocation(line: 120, column: 7, scope: !2143, inlinedAt: !2209)
!2212 = !DILocation(line: 0, scope: !2162, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 125, column: 16, scope: !2174, inlinedAt: !2209)
!2214 = !DILocation(line: 106, column: 7, scope: !2177, inlinedAt: !2213)
!2215 = !DILocation(line: 106, column: 7, scope: !2162, inlinedAt: !2213)
!2216 = !DILocation(line: 0, scope: !2180, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 111, column: 16, scope: !2191, inlinedAt: !2213)
!2218 = !DILocation(line: 92, column: 7, scope: !2194, inlinedAt: !2217)
!2219 = !DILocation(line: 92, column: 7, scope: !2180, inlinedAt: !2217)
!2220 = !DILocalVariable(name: "s1", arg: 1, scope: !2221, file: !2084, line: 76, type: !12)
!2221 = distinct !DISubprogram(name: "strcaseeq6", scope: !2084, file: !2084, line: 76, type: !2222, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2224)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!14, !12, !12, !11, !11, !11}
!2224 = !{!2220, !2225, !2226, !2227, !2228}
!2225 = !DILocalVariable(name: "s2", arg: 2, scope: !2221, file: !2084, line: 76, type: !12)
!2226 = !DILocalVariable(name: "s26", arg: 3, scope: !2221, file: !2084, line: 76, type: !11)
!2227 = !DILocalVariable(name: "s27", arg: 4, scope: !2221, file: !2084, line: 76, type: !11)
!2228 = !DILocalVariable(name: "s28", arg: 5, scope: !2221, file: !2084, line: 76, type: !11)
!2229 = !DILocation(line: 0, scope: !2221, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 97, column: 16, scope: !2231, inlinedAt: !2217)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !2084, line: 94, column: 11)
!2232 = distinct !DILexicalBlock(scope: !2194, file: !2084, line: 93, column: 5)
!2233 = !DILocation(line: 78, column: 7, scope: !2234, inlinedAt: !2230)
!2234 = distinct !DILexicalBlock(scope: !2221, file: !2084, line: 78, column: 7)
!2235 = !DILocation(line: 78, column: 7, scope: !2221, inlinedAt: !2230)
!2236 = !DILocalVariable(name: "s1", arg: 1, scope: !2237, file: !2084, line: 62, type: !12)
!2237 = distinct !DISubprogram(name: "strcaseeq7", scope: !2084, file: !2084, line: 62, type: !2238, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!14, !12, !12, !11, !11}
!2240 = !{!2236, !2241, !2242, !2243}
!2241 = !DILocalVariable(name: "s2", arg: 2, scope: !2237, file: !2084, line: 62, type: !12)
!2242 = !DILocalVariable(name: "s27", arg: 3, scope: !2237, file: !2084, line: 62, type: !11)
!2243 = !DILocalVariable(name: "s28", arg: 4, scope: !2237, file: !2084, line: 62, type: !11)
!2244 = !DILocation(line: 0, scope: !2237, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 83, column: 16, scope: !2246, inlinedAt: !2230)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2084, line: 80, column: 11)
!2247 = distinct !DILexicalBlock(scope: !2234, file: !2084, line: 79, column: 5)
!2248 = !DILocation(line: 64, column: 7, scope: !2249, inlinedAt: !2245)
!2249 = distinct !DILexicalBlock(scope: !2237, file: !2084, line: 64, column: 7)
!2250 = !DILocation(line: 236, column: 7, scope: !2068)
!2251 = !DILocation(line: 237, column: 12, scope: !2202)
!2252 = !DILocation(line: 237, column: 21, scope: !2202)
!2253 = !DILocation(line: 237, column: 5, scope: !2202)
!2254 = !DILocation(line: 239, column: 13, scope: !2068)
!2255 = !DILocation(line: 239, column: 11, scope: !2068)
!2256 = !DILocation(line: 239, column: 3, scope: !2068)
!2257 = !DILocation(line: 240, column: 1, scope: !2068)
!2258 = distinct !DISubprogram(name: "quotearg_alloc", scope: !260, file: !260, line: 799, type: !2259, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!10, !12, !68, !305}
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "arg", arg: 1, scope: !2258, file: !260, line: 799, type: !12)
!2263 = !DILocalVariable(name: "argsize", arg: 2, scope: !2258, file: !260, line: 799, type: !68)
!2264 = !DILocalVariable(name: "o", arg: 3, scope: !2258, file: !260, line: 800, type: !305)
!2265 = !DILocation(line: 0, scope: !2258)
!2266 = !DILocalVariable(name: "arg", arg: 1, scope: !2267, file: !260, line: 812, type: !12)
!2267 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !260, file: !260, line: 812, type: !2268, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!10, !12, !68, !458, !305}
!2270 = !{!2266, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278}
!2271 = !DILocalVariable(name: "argsize", arg: 2, scope: !2267, file: !260, line: 812, type: !68)
!2272 = !DILocalVariable(name: "size", arg: 3, scope: !2267, file: !260, line: 812, type: !458)
!2273 = !DILocalVariable(name: "o", arg: 4, scope: !2267, file: !260, line: 813, type: !305)
!2274 = !DILocalVariable(name: "p", scope: !2267, file: !260, line: 815, type: !305)
!2275 = !DILocalVariable(name: "e", scope: !2267, file: !260, line: 816, type: !14)
!2276 = !DILocalVariable(name: "flags", scope: !2267, file: !260, line: 818, type: !14)
!2277 = !DILocalVariable(name: "bufsize", scope: !2267, file: !260, line: 819, type: !68)
!2278 = !DILocalVariable(name: "buf", scope: !2267, file: !260, line: 823, type: !10)
!2279 = !DILocation(line: 0, scope: !2267, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 802, column: 10, scope: !2258)
!2281 = !DILocation(line: 815, column: 37, scope: !2267, inlinedAt: !2280)
!2282 = !DILocation(line: 816, column: 11, scope: !2267, inlinedAt: !2280)
!2283 = !DILocation(line: 818, column: 18, scope: !2267, inlinedAt: !2280)
!2284 = !DILocation(line: 818, column: 24, scope: !2267, inlinedAt: !2280)
!2285 = !DILocation(line: 819, column: 69, scope: !2267, inlinedAt: !2280)
!2286 = !DILocation(line: 820, column: 53, scope: !2267, inlinedAt: !2280)
!2287 = !DILocation(line: 821, column: 49, scope: !2267, inlinedAt: !2280)
!2288 = !DILocation(line: 822, column: 49, scope: !2267, inlinedAt: !2280)
!2289 = !DILocation(line: 819, column: 20, scope: !2267, inlinedAt: !2280)
!2290 = !DILocation(line: 822, column: 62, scope: !2267, inlinedAt: !2280)
!2291 = !DILocalVariable(name: "n", arg: 1, scope: !2292, file: !298, line: 216, type: !68)
!2292 = distinct !DISubprogram(name: "xcharalloc", scope: !298, file: !298, line: 216, type: !2293, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!10, !68}
!2295 = !{!2291}
!2296 = !DILocation(line: 0, scope: !2292, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 823, column: 15, scope: !2267, inlinedAt: !2280)
!2298 = !DILocation(line: 218, column: 10, scope: !2292, inlinedAt: !2297)
!2299 = !DILocation(line: 824, column: 60, scope: !2267, inlinedAt: !2280)
!2300 = !DILocation(line: 826, column: 32, scope: !2267, inlinedAt: !2280)
!2301 = !DILocation(line: 826, column: 47, scope: !2267, inlinedAt: !2280)
!2302 = !DILocation(line: 824, column: 3, scope: !2267, inlinedAt: !2280)
!2303 = !DILocation(line: 827, column: 9, scope: !2267, inlinedAt: !2280)
!2304 = !DILocation(line: 802, column: 3, scope: !2258)
!2305 = !DILocation(line: 0, scope: !2267)
!2306 = !DILocation(line: 815, column: 37, scope: !2267)
!2307 = !DILocation(line: 816, column: 11, scope: !2267)
!2308 = !DILocation(line: 818, column: 18, scope: !2267)
!2309 = !DILocation(line: 818, column: 27, scope: !2267)
!2310 = !DILocation(line: 818, column: 24, scope: !2267)
!2311 = !DILocation(line: 819, column: 69, scope: !2267)
!2312 = !DILocation(line: 820, column: 53, scope: !2267)
!2313 = !DILocation(line: 821, column: 49, scope: !2267)
!2314 = !DILocation(line: 822, column: 49, scope: !2267)
!2315 = !DILocation(line: 819, column: 20, scope: !2267)
!2316 = !DILocation(line: 822, column: 62, scope: !2267)
!2317 = !DILocation(line: 0, scope: !2292, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 823, column: 15, scope: !2267)
!2319 = !DILocation(line: 218, column: 10, scope: !2292, inlinedAt: !2318)
!2320 = !DILocation(line: 824, column: 60, scope: !2267)
!2321 = !DILocation(line: 826, column: 32, scope: !2267)
!2322 = !DILocation(line: 826, column: 47, scope: !2267)
!2323 = !DILocation(line: 824, column: 3, scope: !2267)
!2324 = !DILocation(line: 827, column: 9, scope: !2267)
!2325 = !DILocation(line: 828, column: 7, scope: !2267)
!2326 = !DILocation(line: 829, column: 11, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2267, file: !260, line: 828, column: 7)
!2328 = !{!1188, !1188, i64 0}
!2329 = !DILocation(line: 829, column: 5, scope: !2327)
!2330 = !DILocation(line: 830, column: 3, scope: !2267)
!2331 = distinct !DISubprogram(name: "quotearg_free", scope: !260, file: !260, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2332)
!2332 = !{!2333, !2334}
!2333 = !DILocalVariable(name: "sv", scope: !2331, file: !260, line: 850, type: !381)
!2334 = !DILocalVariable(name: "i", scope: !2331, file: !260, line: 851, type: !14)
!2335 = !DILocation(line: 850, column: 24, scope: !2331)
!2336 = !DILocation(line: 0, scope: !2331)
!2337 = !DILocation(line: 852, column: 19, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !260, line: 852, column: 3)
!2339 = distinct !DILexicalBlock(scope: !2331, file: !260, line: 852, column: 3)
!2340 = !DILocation(line: 852, column: 17, scope: !2338)
!2341 = !DILocation(line: 852, column: 3, scope: !2339)
!2342 = !DILocation(line: 853, column: 17, scope: !2338)
!2343 = !{!2344, !1103, i64 8}
!2344 = !{!"slotvec", !1188, i64 0, !1103, i64 8}
!2345 = !DILocation(line: 853, column: 5, scope: !2338)
!2346 = !DILocation(line: 852, column: 28, scope: !2338)
!2347 = distinct !{!2347, !2341, !2348}
!2348 = !DILocation(line: 853, column: 20, scope: !2339)
!2349 = !DILocation(line: 854, column: 13, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2331, file: !260, line: 854, column: 7)
!2351 = !DILocation(line: 854, column: 17, scope: !2350)
!2352 = !DILocation(line: 854, column: 7, scope: !2331)
!2353 = !DILocation(line: 856, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !260, line: 855, column: 5)
!2355 = !DILocation(line: 857, column: 21, scope: !2354)
!2356 = !{!2344, !1188, i64 0}
!2357 = !DILocation(line: 858, column: 20, scope: !2354)
!2358 = !DILocation(line: 859, column: 5, scope: !2354)
!2359 = !DILocation(line: 860, column: 10, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2331, file: !260, line: 860, column: 7)
!2361 = !DILocation(line: 860, column: 7, scope: !2331)
!2362 = !DILocation(line: 862, column: 13, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !260, line: 861, column: 5)
!2364 = !DILocation(line: 862, column: 7, scope: !2363)
!2365 = !DILocation(line: 863, column: 15, scope: !2363)
!2366 = !DILocation(line: 864, column: 5, scope: !2363)
!2367 = !DILocation(line: 865, column: 10, scope: !2331)
!2368 = !DILocation(line: 866, column: 1, scope: !2331)
!2369 = distinct !DISubprogram(name: "quotearg_n", scope: !260, file: !260, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2370)
!2370 = !{!2371, !2372}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2369, file: !260, line: 931, type: !14)
!2372 = !DILocalVariable(name: "arg", arg: 2, scope: !2369, file: !260, line: 931, type: !12)
!2373 = !DILocation(line: 0, scope: !2369)
!2374 = !DILocation(line: 933, column: 10, scope: !2369)
!2375 = !DILocation(line: 933, column: 3, scope: !2369)
!2376 = distinct !DISubprogram(name: "quotearg_n_options", scope: !260, file: !260, line: 877, type: !2377, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!10, !14, !12, !68, !305}
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2389, !2390, !2392, !2393, !2394}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !260, line: 877, type: !14)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !260, line: 877, type: !12)
!2382 = !DILocalVariable(name: "argsize", arg: 3, scope: !2376, file: !260, line: 877, type: !68)
!2383 = !DILocalVariable(name: "options", arg: 4, scope: !2376, file: !260, line: 878, type: !305)
!2384 = !DILocalVariable(name: "e", scope: !2376, file: !260, line: 880, type: !14)
!2385 = !DILocalVariable(name: "sv", scope: !2376, file: !260, line: 882, type: !381)
!2386 = !DILocalVariable(name: "preallocated", scope: !2387, file: !260, line: 889, type: !141)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !260, line: 888, column: 5)
!2388 = distinct !DILexicalBlock(scope: !2376, file: !260, line: 887, column: 7)
!2389 = !DILocalVariable(name: "nmax", scope: !2387, file: !260, line: 890, type: !14)
!2390 = !DILocalVariable(name: "size", scope: !2391, file: !260, line: 903, type: !68)
!2391 = distinct !DILexicalBlock(scope: !2376, file: !260, line: 902, column: 3)
!2392 = !DILocalVariable(name: "val", scope: !2391, file: !260, line: 904, type: !10)
!2393 = !DILocalVariable(name: "flags", scope: !2391, file: !260, line: 906, type: !14)
!2394 = !DILocalVariable(name: "qsize", scope: !2391, file: !260, line: 907, type: !68)
!2395 = !DILocation(line: 0, scope: !2376)
!2396 = !DILocation(line: 880, column: 11, scope: !2376)
!2397 = !DILocation(line: 882, column: 24, scope: !2376)
!2398 = !DILocation(line: 884, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2376, file: !260, line: 884, column: 7)
!2400 = !DILocation(line: 884, column: 7, scope: !2376)
!2401 = !DILocation(line: 885, column: 5, scope: !2399)
!2402 = !DILocation(line: 887, column: 7, scope: !2388)
!2403 = !DILocation(line: 887, column: 14, scope: !2388)
!2404 = !DILocation(line: 887, column: 7, scope: !2376)
!2405 = !DILocation(line: 889, column: 31, scope: !2387)
!2406 = !DILocation(line: 0, scope: !2387)
!2407 = !DILocation(line: 892, column: 16, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2387, file: !260, line: 892, column: 11)
!2409 = !DILocation(line: 892, column: 11, scope: !2387)
!2410 = !DILocation(line: 893, column: 9, scope: !2408)
!2411 = !DILocation(line: 895, column: 32, scope: !2387)
!2412 = !DILocation(line: 895, column: 61, scope: !2387)
!2413 = !DILocation(line: 895, column: 58, scope: !2387)
!2414 = !DILocation(line: 895, column: 66, scope: !2387)
!2415 = !DILocation(line: 895, column: 22, scope: !2387)
!2416 = !DILocation(line: 895, column: 15, scope: !2387)
!2417 = !DILocation(line: 896, column: 11, scope: !2387)
!2418 = !DILocation(line: 897, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2387, file: !260, line: 896, column: 11)
!2420 = !{i64 0, i64 8, !2328, i64 8, i64 8, !1102}
!2421 = !DILocation(line: 897, column: 9, scope: !2419)
!2422 = !DILocation(line: 898, column: 20, scope: !2387)
!2423 = !DILocation(line: 898, column: 18, scope: !2387)
!2424 = !DILocation(line: 898, column: 15, scope: !2387)
!2425 = !DILocation(line: 898, column: 38, scope: !2387)
!2426 = !DILocation(line: 898, column: 31, scope: !2387)
!2427 = !DILocation(line: 898, column: 48, scope: !2387)
!2428 = !DILocation(line: 0, scope: !1826, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 898, column: 7, scope: !2387)
!2430 = !DILocation(line: 71, column: 10, scope: !1826, inlinedAt: !2429)
!2431 = !DILocation(line: 899, column: 14, scope: !2387)
!2432 = !DILocation(line: 900, column: 5, scope: !2387)
!2433 = !DILocation(line: 903, column: 19, scope: !2391)
!2434 = !DILocation(line: 903, column: 25, scope: !2391)
!2435 = !DILocation(line: 0, scope: !2391)
!2436 = !DILocation(line: 904, column: 23, scope: !2391)
!2437 = !DILocation(line: 906, column: 26, scope: !2391)
!2438 = !DILocation(line: 906, column: 32, scope: !2391)
!2439 = !DILocation(line: 908, column: 55, scope: !2391)
!2440 = !DILocation(line: 909, column: 46, scope: !2391)
!2441 = !DILocation(line: 910, column: 55, scope: !2391)
!2442 = !DILocation(line: 911, column: 55, scope: !2391)
!2443 = !DILocation(line: 907, column: 20, scope: !2391)
!2444 = !DILocation(line: 913, column: 14, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2391, file: !260, line: 913, column: 9)
!2446 = !DILocation(line: 913, column: 9, scope: !2391)
!2447 = !DILocation(line: 915, column: 35, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !260, line: 914, column: 7)
!2449 = !DILocation(line: 915, column: 20, scope: !2448)
!2450 = !DILocation(line: 916, column: 17, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !260, line: 916, column: 13)
!2452 = !DILocation(line: 916, column: 13, scope: !2448)
!2453 = !DILocation(line: 917, column: 11, scope: !2451)
!2454 = !DILocation(line: 0, scope: !2292, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 918, column: 27, scope: !2448)
!2456 = !DILocation(line: 218, column: 10, scope: !2292, inlinedAt: !2455)
!2457 = !DILocation(line: 918, column: 19, scope: !2448)
!2458 = !DILocation(line: 919, column: 69, scope: !2448)
!2459 = !DILocation(line: 921, column: 44, scope: !2448)
!2460 = !DILocation(line: 922, column: 44, scope: !2448)
!2461 = !DILocation(line: 919, column: 9, scope: !2448)
!2462 = !DILocation(line: 923, column: 7, scope: !2448)
!2463 = !DILocation(line: 925, column: 11, scope: !2391)
!2464 = !DILocation(line: 926, column: 5, scope: !2391)
!2465 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !260, file: !260, line: 937, type: !2466, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!10, !14, !12, !68}
!2468 = !{!2469, !2470, !2471}
!2469 = !DILocalVariable(name: "n", arg: 1, scope: !2465, file: !260, line: 937, type: !14)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !260, line: 937, type: !12)
!2471 = !DILocalVariable(name: "argsize", arg: 3, scope: !2465, file: !260, line: 937, type: !68)
!2472 = !DILocation(line: 0, scope: !2465)
!2473 = !DILocation(line: 939, column: 10, scope: !2465)
!2474 = !DILocation(line: 939, column: 3, scope: !2465)
!2475 = distinct !DISubprogram(name: "quotearg", scope: !260, file: !260, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2476)
!2476 = !{!2477}
!2477 = !DILocalVariable(name: "arg", arg: 1, scope: !2475, file: !260, line: 943, type: !12)
!2478 = !DILocation(line: 0, scope: !2475)
!2479 = !DILocation(line: 0, scope: !2369, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 945, column: 10, scope: !2475)
!2481 = !DILocation(line: 933, column: 10, scope: !2369, inlinedAt: !2480)
!2482 = !DILocation(line: 945, column: 3, scope: !2475)
!2483 = distinct !DISubprogram(name: "quotearg_mem", scope: !260, file: !260, line: 949, type: !2484, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!10, !12, !68}
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "arg", arg: 1, scope: !2483, file: !260, line: 949, type: !12)
!2488 = !DILocalVariable(name: "argsize", arg: 2, scope: !2483, file: !260, line: 949, type: !68)
!2489 = !DILocation(line: 0, scope: !2483)
!2490 = !DILocation(line: 0, scope: !2465, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 951, column: 10, scope: !2483)
!2492 = !DILocation(line: 939, column: 10, scope: !2465, inlinedAt: !2491)
!2493 = !DILocation(line: 951, column: 3, scope: !2483)
!2494 = distinct !DISubprogram(name: "quotearg_n_style", scope: !260, file: !260, line: 955, type: !2495, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!10, !14, !262, !12}
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "n", arg: 1, scope: !2494, file: !260, line: 955, type: !14)
!2499 = !DILocalVariable(name: "s", arg: 2, scope: !2494, file: !260, line: 955, type: !262)
!2500 = !DILocalVariable(name: "arg", arg: 3, scope: !2494, file: !260, line: 955, type: !12)
!2501 = !DILocalVariable(name: "o", scope: !2494, file: !260, line: 957, type: !306)
!2502 = !DILocation(line: 0, scope: !2494)
!2503 = !DILocation(line: 957, column: 3, scope: !2494)
!2504 = !DILocation(line: 957, column: 32, scope: !2494)
!2505 = !DILocalVariable(name: "style", arg: 1, scope: !2506, file: !260, line: 193, type: !262)
!2506 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !260, file: !260, line: 193, type: !2507, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!307, !262}
!2509 = !{!2505, !2510}
!2510 = !DILocalVariable(name: "o", scope: !2506, file: !260, line: 195, type: !307)
!2511 = !DILocation(line: 0, scope: !2506, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 957, column: 36, scope: !2494)
!2513 = !DILocation(line: 195, column: 26, scope: !2506, inlinedAt: !2512)
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"quoting_options_from_style: argument 0"}
!2516 = distinct !{!2516, !"quoting_options_from_style"}
!2517 = !DILocation(line: 196, column: 13, scope: !2518, inlinedAt: !2512)
!2518 = distinct !DILexicalBlock(scope: !2506, file: !260, line: 196, column: 7)
!2519 = !DILocation(line: 196, column: 7, scope: !2506, inlinedAt: !2512)
!2520 = !DILocation(line: 197, column: 5, scope: !2518, inlinedAt: !2512)
!2521 = !DILocation(line: 198, column: 5, scope: !2506, inlinedAt: !2512)
!2522 = !DILocation(line: 198, column: 11, scope: !2506, inlinedAt: !2512)
!2523 = !DILocation(line: 958, column: 10, scope: !2494)
!2524 = !DILocation(line: 959, column: 1, scope: !2494)
!2525 = !DILocation(line: 958, column: 3, scope: !2494)
!2526 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !260, file: !260, line: 962, type: !2527, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!10, !14, !262, !12, !68}
!2529 = !{!2530, !2531, !2532, !2533, !2534}
!2530 = !DILocalVariable(name: "n", arg: 1, scope: !2526, file: !260, line: 962, type: !14)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !260, line: 962, type: !262)
!2532 = !DILocalVariable(name: "arg", arg: 3, scope: !2526, file: !260, line: 963, type: !12)
!2533 = !DILocalVariable(name: "argsize", arg: 4, scope: !2526, file: !260, line: 963, type: !68)
!2534 = !DILocalVariable(name: "o", scope: !2526, file: !260, line: 965, type: !306)
!2535 = !DILocation(line: 0, scope: !2526)
!2536 = !DILocation(line: 965, column: 3, scope: !2526)
!2537 = !DILocation(line: 965, column: 32, scope: !2526)
!2538 = !DILocation(line: 0, scope: !2506, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 965, column: 36, scope: !2526)
!2540 = !DILocation(line: 195, column: 26, scope: !2506, inlinedAt: !2539)
!2541 = !{!2542}
!2542 = distinct !{!2542, !2543, !"quoting_options_from_style: argument 0"}
!2543 = distinct !{!2543, !"quoting_options_from_style"}
!2544 = !DILocation(line: 196, column: 13, scope: !2518, inlinedAt: !2539)
!2545 = !DILocation(line: 196, column: 7, scope: !2506, inlinedAt: !2539)
!2546 = !DILocation(line: 197, column: 5, scope: !2518, inlinedAt: !2539)
!2547 = !DILocation(line: 198, column: 5, scope: !2506, inlinedAt: !2539)
!2548 = !DILocation(line: 198, column: 11, scope: !2506, inlinedAt: !2539)
!2549 = !DILocation(line: 966, column: 10, scope: !2526)
!2550 = !DILocation(line: 967, column: 1, scope: !2526)
!2551 = !DILocation(line: 966, column: 3, scope: !2526)
!2552 = distinct !DISubprogram(name: "quotearg_style", scope: !260, file: !260, line: 970, type: !2553, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!10, !262, !12}
!2555 = !{!2556, !2557}
!2556 = !DILocalVariable(name: "s", arg: 1, scope: !2552, file: !260, line: 970, type: !262)
!2557 = !DILocalVariable(name: "arg", arg: 2, scope: !2552, file: !260, line: 970, type: !12)
!2558 = !DILocation(line: 195, column: 26, scope: !2506, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 957, column: 36, scope: !2494, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 972, column: 10, scope: !2552)
!2561 = !DILocation(line: 957, column: 32, scope: !2494, inlinedAt: !2560)
!2562 = !DILocation(line: 0, scope: !2552)
!2563 = !DILocation(line: 0, scope: !2494, inlinedAt: !2560)
!2564 = !DILocation(line: 957, column: 3, scope: !2494, inlinedAt: !2560)
!2565 = !DILocation(line: 0, scope: !2506, inlinedAt: !2559)
!2566 = !{!2567}
!2567 = distinct !{!2567, !2568, !"quoting_options_from_style: argument 0"}
!2568 = distinct !{!2568, !"quoting_options_from_style"}
!2569 = !DILocation(line: 196, column: 13, scope: !2518, inlinedAt: !2559)
!2570 = !DILocation(line: 196, column: 7, scope: !2506, inlinedAt: !2559)
!2571 = !DILocation(line: 197, column: 5, scope: !2518, inlinedAt: !2559)
!2572 = !DILocation(line: 198, column: 5, scope: !2506, inlinedAt: !2559)
!2573 = !DILocation(line: 198, column: 11, scope: !2506, inlinedAt: !2559)
!2574 = !DILocation(line: 958, column: 10, scope: !2494, inlinedAt: !2560)
!2575 = !DILocation(line: 959, column: 1, scope: !2494, inlinedAt: !2560)
!2576 = !DILocation(line: 972, column: 3, scope: !2552)
!2577 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !260, file: !260, line: 976, type: !2578, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!10, !262, !12, !68}
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "s", arg: 1, scope: !2577, file: !260, line: 976, type: !262)
!2582 = !DILocalVariable(name: "arg", arg: 2, scope: !2577, file: !260, line: 976, type: !12)
!2583 = !DILocalVariable(name: "argsize", arg: 3, scope: !2577, file: !260, line: 976, type: !68)
!2584 = !DILocation(line: 195, column: 26, scope: !2506, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 965, column: 36, scope: !2526, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 978, column: 10, scope: !2577)
!2587 = !DILocation(line: 965, column: 32, scope: !2526, inlinedAt: !2586)
!2588 = !DILocation(line: 0, scope: !2577)
!2589 = !DILocation(line: 0, scope: !2526, inlinedAt: !2586)
!2590 = !DILocation(line: 965, column: 3, scope: !2526, inlinedAt: !2586)
!2591 = !DILocation(line: 0, scope: !2506, inlinedAt: !2585)
!2592 = !{!2593}
!2593 = distinct !{!2593, !2594, !"quoting_options_from_style: argument 0"}
!2594 = distinct !{!2594, !"quoting_options_from_style"}
!2595 = !DILocation(line: 196, column: 13, scope: !2518, inlinedAt: !2585)
!2596 = !DILocation(line: 196, column: 7, scope: !2506, inlinedAt: !2585)
!2597 = !DILocation(line: 197, column: 5, scope: !2518, inlinedAt: !2585)
!2598 = !DILocation(line: 198, column: 5, scope: !2506, inlinedAt: !2585)
!2599 = !DILocation(line: 198, column: 11, scope: !2506, inlinedAt: !2585)
!2600 = !DILocation(line: 966, column: 10, scope: !2526, inlinedAt: !2586)
!2601 = !DILocation(line: 967, column: 1, scope: !2526, inlinedAt: !2586)
!2602 = !DILocation(line: 978, column: 3, scope: !2577)
!2603 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !260, file: !260, line: 982, type: !2604, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!10, !12, !68, !11}
!2606 = !{!2607, !2608, !2609, !2610}
!2607 = !DILocalVariable(name: "arg", arg: 1, scope: !2603, file: !260, line: 982, type: !12)
!2608 = !DILocalVariable(name: "argsize", arg: 2, scope: !2603, file: !260, line: 982, type: !68)
!2609 = !DILocalVariable(name: "ch", arg: 3, scope: !2603, file: !260, line: 982, type: !11)
!2610 = !DILocalVariable(name: "options", scope: !2603, file: !260, line: 984, type: !307)
!2611 = !DILocation(line: 0, scope: !2603)
!2612 = !DILocation(line: 984, column: 3, scope: !2603)
!2613 = !DILocation(line: 984, column: 26, scope: !2603)
!2614 = !DILocation(line: 985, column: 13, scope: !2603)
!2615 = !{i64 0, i64 4, !1193, i64 4, i64 4, !1161, i64 8, i64 32, !1193, i64 40, i64 8, !1102, i64 48, i64 8, !1102}
!2616 = !DILocation(line: 0, scope: !1440, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 986, column: 3, scope: !2603)
!2618 = !DILocation(line: 156, column: 62, scope: !1440, inlinedAt: !2617)
!2619 = !DILocation(line: 156, column: 57, scope: !1440, inlinedAt: !2617)
!2620 = !DILocation(line: 157, column: 15, scope: !1440, inlinedAt: !2617)
!2621 = !DILocation(line: 158, column: 12, scope: !1440, inlinedAt: !2617)
!2622 = !DILocation(line: 158, column: 15, scope: !1440, inlinedAt: !2617)
!2623 = !DILocation(line: 158, column: 25, scope: !1440, inlinedAt: !2617)
!2624 = !DILocation(line: 159, column: 18, scope: !1440, inlinedAt: !2617)
!2625 = !DILocation(line: 159, column: 23, scope: !1440, inlinedAt: !2617)
!2626 = !DILocation(line: 159, column: 6, scope: !1440, inlinedAt: !2617)
!2627 = !DILocation(line: 987, column: 10, scope: !2603)
!2628 = !DILocation(line: 988, column: 1, scope: !2603)
!2629 = !DILocation(line: 987, column: 3, scope: !2603)
!2630 = distinct !DISubprogram(name: "quotearg_char", scope: !260, file: !260, line: 991, type: !2631, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!10, !12, !11}
!2633 = !{!2634, !2635}
!2634 = !DILocalVariable(name: "arg", arg: 1, scope: !2630, file: !260, line: 991, type: !12)
!2635 = !DILocalVariable(name: "ch", arg: 2, scope: !2630, file: !260, line: 991, type: !11)
!2636 = !DILocation(line: 984, column: 26, scope: !2603, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 993, column: 10, scope: !2630)
!2638 = !DILocation(line: 0, scope: !2630)
!2639 = !DILocation(line: 0, scope: !2603, inlinedAt: !2637)
!2640 = !DILocation(line: 984, column: 3, scope: !2603, inlinedAt: !2637)
!2641 = !DILocation(line: 985, column: 13, scope: !2603, inlinedAt: !2637)
!2642 = !DILocation(line: 0, scope: !1440, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 986, column: 3, scope: !2603, inlinedAt: !2637)
!2644 = !DILocation(line: 156, column: 62, scope: !1440, inlinedAt: !2643)
!2645 = !DILocation(line: 156, column: 57, scope: !1440, inlinedAt: !2643)
!2646 = !DILocation(line: 157, column: 15, scope: !1440, inlinedAt: !2643)
!2647 = !DILocation(line: 158, column: 12, scope: !1440, inlinedAt: !2643)
!2648 = !DILocation(line: 158, column: 15, scope: !1440, inlinedAt: !2643)
!2649 = !DILocation(line: 158, column: 25, scope: !1440, inlinedAt: !2643)
!2650 = !DILocation(line: 159, column: 18, scope: !1440, inlinedAt: !2643)
!2651 = !DILocation(line: 159, column: 23, scope: !1440, inlinedAt: !2643)
!2652 = !DILocation(line: 159, column: 6, scope: !1440, inlinedAt: !2643)
!2653 = !DILocation(line: 987, column: 10, scope: !2603, inlinedAt: !2637)
!2654 = !DILocation(line: 988, column: 1, scope: !2603, inlinedAt: !2637)
!2655 = !DILocation(line: 993, column: 3, scope: !2630)
!2656 = distinct !DISubprogram(name: "quotearg_colon", scope: !260, file: !260, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2657)
!2657 = !{!2658}
!2658 = !DILocalVariable(name: "arg", arg: 1, scope: !2656, file: !260, line: 997, type: !12)
!2659 = !DILocation(line: 984, column: 26, scope: !2603, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 993, column: 10, scope: !2630, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 999, column: 10, scope: !2656)
!2662 = !DILocation(line: 0, scope: !2656)
!2663 = !DILocation(line: 0, scope: !2630, inlinedAt: !2661)
!2664 = !DILocation(line: 0, scope: !2603, inlinedAt: !2660)
!2665 = !DILocation(line: 984, column: 3, scope: !2603, inlinedAt: !2660)
!2666 = !DILocation(line: 985, column: 13, scope: !2603, inlinedAt: !2660)
!2667 = !DILocation(line: 0, scope: !1440, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 986, column: 3, scope: !2603, inlinedAt: !2660)
!2669 = !DILocation(line: 156, column: 57, scope: !1440, inlinedAt: !2668)
!2670 = !DILocation(line: 158, column: 12, scope: !1440, inlinedAt: !2668)
!2671 = !DILocation(line: 159, column: 6, scope: !1440, inlinedAt: !2668)
!2672 = !DILocation(line: 987, column: 10, scope: !2603, inlinedAt: !2660)
!2673 = !DILocation(line: 988, column: 1, scope: !2603, inlinedAt: !2660)
!2674 = !DILocation(line: 999, column: 3, scope: !2656)
!2675 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !260, file: !260, line: 1003, type: !2484, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2676)
!2676 = !{!2677, !2678}
!2677 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !260, line: 1003, type: !12)
!2678 = !DILocalVariable(name: "argsize", arg: 2, scope: !2675, file: !260, line: 1003, type: !68)
!2679 = !DILocation(line: 984, column: 26, scope: !2603, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1005, column: 10, scope: !2675)
!2681 = !DILocation(line: 0, scope: !2675)
!2682 = !DILocation(line: 0, scope: !2603, inlinedAt: !2680)
!2683 = !DILocation(line: 984, column: 3, scope: !2603, inlinedAt: !2680)
!2684 = !DILocation(line: 985, column: 13, scope: !2603, inlinedAt: !2680)
!2685 = !DILocation(line: 0, scope: !1440, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 986, column: 3, scope: !2603, inlinedAt: !2680)
!2687 = !DILocation(line: 156, column: 57, scope: !1440, inlinedAt: !2686)
!2688 = !DILocation(line: 158, column: 12, scope: !1440, inlinedAt: !2686)
!2689 = !DILocation(line: 159, column: 6, scope: !1440, inlinedAt: !2686)
!2690 = !DILocation(line: 987, column: 10, scope: !2603, inlinedAt: !2680)
!2691 = !DILocation(line: 988, column: 1, scope: !2603, inlinedAt: !2680)
!2692 = !DILocation(line: 1005, column: 3, scope: !2675)
!2693 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !260, file: !260, line: 1009, type: !2495, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2694)
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !260, line: 1009, type: !14)
!2696 = !DILocalVariable(name: "s", arg: 2, scope: !2693, file: !260, line: 1009, type: !262)
!2697 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !260, line: 1009, type: !12)
!2698 = !DILocalVariable(name: "options", scope: !2693, file: !260, line: 1011, type: !307)
!2699 = !DILocation(line: 195, column: 26, scope: !2506, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1012, column: 13, scope: !2693)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 1011, column: 3, scope: !2693)
!2703 = !DILocation(line: 1011, column: 26, scope: !2693)
!2704 = !DILocation(line: 1012, column: 13, scope: !2693)
!2705 = !DILocation(line: 0, scope: !2506, inlinedAt: !2700)
!2706 = !{!2707}
!2707 = distinct !{!2707, !2708, !"quoting_options_from_style: argument 0"}
!2708 = distinct !{!2708, !"quoting_options_from_style"}
!2709 = !DILocation(line: 196, column: 13, scope: !2518, inlinedAt: !2700)
!2710 = !DILocation(line: 196, column: 7, scope: !2506, inlinedAt: !2700)
!2711 = !DILocation(line: 197, column: 5, scope: !2518, inlinedAt: !2700)
!2712 = !DILocation(line: 0, scope: !1440, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1013, column: 3, scope: !2693)
!2714 = !DILocation(line: 156, column: 57, scope: !1440, inlinedAt: !2713)
!2715 = !DILocation(line: 158, column: 12, scope: !1440, inlinedAt: !2713)
!2716 = !DILocation(line: 159, column: 6, scope: !1440, inlinedAt: !2713)
!2717 = !DILocation(line: 1014, column: 10, scope: !2693)
!2718 = !DILocation(line: 1015, column: 1, scope: !2693)
!2719 = !DILocation(line: 1014, column: 3, scope: !2693)
!2720 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !260, file: !260, line: 1018, type: !2721, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!10, !14, !12, !12, !12}
!2723 = !{!2724, !2725, !2726, !2727}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !260, line: 1018, type: !14)
!2725 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2720, file: !260, line: 1018, type: !12)
!2726 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2720, file: !260, line: 1019, type: !12)
!2727 = !DILocalVariable(name: "arg", arg: 4, scope: !2720, file: !260, line: 1019, type: !12)
!2728 = !DILocalVariable(name: "o", scope: !2729, file: !260, line: 1030, type: !307)
!2729 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !260, file: !260, line: 1026, type: !2730, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!10, !14, !12, !12, !12, !68}
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2728}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !260, line: 1026, type: !14)
!2734 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2729, file: !260, line: 1026, type: !12)
!2735 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2729, file: !260, line: 1027, type: !12)
!2736 = !DILocalVariable(name: "arg", arg: 4, scope: !2729, file: !260, line: 1028, type: !12)
!2737 = !DILocalVariable(name: "argsize", arg: 5, scope: !2729, file: !260, line: 1028, type: !68)
!2738 = !DILocation(line: 1030, column: 26, scope: !2729, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1021, column: 10, scope: !2720)
!2740 = !DILocation(line: 0, scope: !2720)
!2741 = !DILocation(line: 0, scope: !2729, inlinedAt: !2739)
!2742 = !DILocation(line: 1030, column: 3, scope: !2729, inlinedAt: !2739)
!2743 = !DILocation(line: 1030, column: 30, scope: !2729, inlinedAt: !2739)
!2744 = !DILocation(line: 0, scope: !1480, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1031, column: 3, scope: !2729, inlinedAt: !2739)
!2746 = !DILocation(line: 184, column: 6, scope: !1480, inlinedAt: !2745)
!2747 = !DILocation(line: 184, column: 12, scope: !1480, inlinedAt: !2745)
!2748 = !DILocation(line: 185, column: 8, scope: !1494, inlinedAt: !2745)
!2749 = !DILocation(line: 185, column: 23, scope: !1494, inlinedAt: !2745)
!2750 = !DILocation(line: 185, column: 19, scope: !1494, inlinedAt: !2745)
!2751 = !DILocation(line: 186, column: 5, scope: !1494, inlinedAt: !2745)
!2752 = !DILocation(line: 187, column: 6, scope: !1480, inlinedAt: !2745)
!2753 = !DILocation(line: 187, column: 17, scope: !1480, inlinedAt: !2745)
!2754 = !DILocation(line: 188, column: 6, scope: !1480, inlinedAt: !2745)
!2755 = !DILocation(line: 188, column: 18, scope: !1480, inlinedAt: !2745)
!2756 = !DILocation(line: 1032, column: 10, scope: !2729, inlinedAt: !2739)
!2757 = !DILocation(line: 1033, column: 1, scope: !2729, inlinedAt: !2739)
!2758 = !DILocation(line: 1021, column: 3, scope: !2720)
!2759 = !DILocation(line: 0, scope: !2729)
!2760 = !DILocation(line: 1030, column: 3, scope: !2729)
!2761 = !DILocation(line: 1030, column: 26, scope: !2729)
!2762 = !DILocation(line: 1030, column: 30, scope: !2729)
!2763 = !DILocation(line: 0, scope: !1480, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 1031, column: 3, scope: !2729)
!2765 = !DILocation(line: 184, column: 6, scope: !1480, inlinedAt: !2764)
!2766 = !DILocation(line: 184, column: 12, scope: !1480, inlinedAt: !2764)
!2767 = !DILocation(line: 185, column: 8, scope: !1494, inlinedAt: !2764)
!2768 = !DILocation(line: 185, column: 23, scope: !1494, inlinedAt: !2764)
!2769 = !DILocation(line: 185, column: 19, scope: !1494, inlinedAt: !2764)
!2770 = !DILocation(line: 186, column: 5, scope: !1494, inlinedAt: !2764)
!2771 = !DILocation(line: 187, column: 6, scope: !1480, inlinedAt: !2764)
!2772 = !DILocation(line: 187, column: 17, scope: !1480, inlinedAt: !2764)
!2773 = !DILocation(line: 188, column: 6, scope: !1480, inlinedAt: !2764)
!2774 = !DILocation(line: 188, column: 18, scope: !1480, inlinedAt: !2764)
!2775 = !DILocation(line: 1032, column: 10, scope: !2729)
!2776 = !DILocation(line: 1033, column: 1, scope: !2729)
!2777 = !DILocation(line: 1032, column: 3, scope: !2729)
!2778 = distinct !DISubprogram(name: "quotearg_custom", scope: !260, file: !260, line: 1036, type: !2779, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!10, !12, !12, !12}
!2781 = !{!2782, !2783, !2784}
!2782 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2778, file: !260, line: 1036, type: !12)
!2783 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2778, file: !260, line: 1036, type: !12)
!2784 = !DILocalVariable(name: "arg", arg: 3, scope: !2778, file: !260, line: 1037, type: !12)
!2785 = !DILocation(line: 1030, column: 26, scope: !2729, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1021, column: 10, scope: !2720, inlinedAt: !2787)
!2787 = distinct !DILocation(line: 1039, column: 10, scope: !2778)
!2788 = !DILocation(line: 0, scope: !2778)
!2789 = !DILocation(line: 0, scope: !2720, inlinedAt: !2787)
!2790 = !DILocation(line: 0, scope: !2729, inlinedAt: !2786)
!2791 = !DILocation(line: 1030, column: 3, scope: !2729, inlinedAt: !2786)
!2792 = !DILocation(line: 1030, column: 30, scope: !2729, inlinedAt: !2786)
!2793 = !DILocation(line: 0, scope: !1480, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 1031, column: 3, scope: !2729, inlinedAt: !2786)
!2795 = !DILocation(line: 184, column: 6, scope: !1480, inlinedAt: !2794)
!2796 = !DILocation(line: 184, column: 12, scope: !1480, inlinedAt: !2794)
!2797 = !DILocation(line: 185, column: 8, scope: !1494, inlinedAt: !2794)
!2798 = !DILocation(line: 185, column: 23, scope: !1494, inlinedAt: !2794)
!2799 = !DILocation(line: 185, column: 19, scope: !1494, inlinedAt: !2794)
!2800 = !DILocation(line: 186, column: 5, scope: !1494, inlinedAt: !2794)
!2801 = !DILocation(line: 187, column: 6, scope: !1480, inlinedAt: !2794)
!2802 = !DILocation(line: 187, column: 17, scope: !1480, inlinedAt: !2794)
!2803 = !DILocation(line: 188, column: 6, scope: !1480, inlinedAt: !2794)
!2804 = !DILocation(line: 188, column: 18, scope: !1480, inlinedAt: !2794)
!2805 = !DILocation(line: 1032, column: 10, scope: !2729, inlinedAt: !2786)
!2806 = !DILocation(line: 1033, column: 1, scope: !2729, inlinedAt: !2786)
!2807 = !DILocation(line: 1039, column: 3, scope: !2778)
!2808 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !260, file: !260, line: 1043, type: !2809, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!10, !12, !12, !12, !68}
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2808, file: !260, line: 1043, type: !12)
!2813 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2808, file: !260, line: 1043, type: !12)
!2814 = !DILocalVariable(name: "arg", arg: 3, scope: !2808, file: !260, line: 1044, type: !12)
!2815 = !DILocalVariable(name: "argsize", arg: 4, scope: !2808, file: !260, line: 1044, type: !68)
!2816 = !DILocation(line: 1030, column: 26, scope: !2729, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 1046, column: 10, scope: !2808)
!2818 = !DILocation(line: 0, scope: !2808)
!2819 = !DILocation(line: 0, scope: !2729, inlinedAt: !2817)
!2820 = !DILocation(line: 1030, column: 3, scope: !2729, inlinedAt: !2817)
!2821 = !DILocation(line: 1030, column: 30, scope: !2729, inlinedAt: !2817)
!2822 = !DILocation(line: 0, scope: !1480, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1031, column: 3, scope: !2729, inlinedAt: !2817)
!2824 = !DILocation(line: 184, column: 6, scope: !1480, inlinedAt: !2823)
!2825 = !DILocation(line: 184, column: 12, scope: !1480, inlinedAt: !2823)
!2826 = !DILocation(line: 185, column: 8, scope: !1494, inlinedAt: !2823)
!2827 = !DILocation(line: 185, column: 23, scope: !1494, inlinedAt: !2823)
!2828 = !DILocation(line: 185, column: 19, scope: !1494, inlinedAt: !2823)
!2829 = !DILocation(line: 186, column: 5, scope: !1494, inlinedAt: !2823)
!2830 = !DILocation(line: 187, column: 6, scope: !1480, inlinedAt: !2823)
!2831 = !DILocation(line: 187, column: 17, scope: !1480, inlinedAt: !2823)
!2832 = !DILocation(line: 188, column: 6, scope: !1480, inlinedAt: !2823)
!2833 = !DILocation(line: 188, column: 18, scope: !1480, inlinedAt: !2823)
!2834 = !DILocation(line: 1032, column: 10, scope: !2729, inlinedAt: !2817)
!2835 = !DILocation(line: 1033, column: 1, scope: !2729, inlinedAt: !2817)
!2836 = !DILocation(line: 1046, column: 3, scope: !2808)
!2837 = distinct !DISubprogram(name: "quote_n_mem", scope: !260, file: !260, line: 1061, type: !2838, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!12, !14, !12, !68}
!2840 = !{!2841, !2842, !2843}
!2841 = !DILocalVariable(name: "n", arg: 1, scope: !2837, file: !260, line: 1061, type: !14)
!2842 = !DILocalVariable(name: "arg", arg: 2, scope: !2837, file: !260, line: 1061, type: !12)
!2843 = !DILocalVariable(name: "argsize", arg: 3, scope: !2837, file: !260, line: 1061, type: !68)
!2844 = !DILocation(line: 0, scope: !2837)
!2845 = !DILocation(line: 1063, column: 10, scope: !2837)
!2846 = !DILocation(line: 1063, column: 3, scope: !2837)
!2847 = distinct !DISubprogram(name: "quote_mem", scope: !260, file: !260, line: 1067, type: !2848, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!12, !12, !68}
!2850 = !{!2851, !2852}
!2851 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !260, line: 1067, type: !12)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !260, line: 1067, type: !68)
!2853 = !DILocation(line: 0, scope: !2847)
!2854 = !DILocation(line: 0, scope: !2837, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1069, column: 10, scope: !2847)
!2856 = !DILocation(line: 1063, column: 10, scope: !2837, inlinedAt: !2855)
!2857 = !DILocation(line: 1069, column: 3, scope: !2847)
!2858 = distinct !DISubprogram(name: "quote_n", scope: !260, file: !260, line: 1073, type: !2859, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!12, !14, !12}
!2861 = !{!2862, !2863}
!2862 = !DILocalVariable(name: "n", arg: 1, scope: !2858, file: !260, line: 1073, type: !14)
!2863 = !DILocalVariable(name: "arg", arg: 2, scope: !2858, file: !260, line: 1073, type: !12)
!2864 = !DILocation(line: 0, scope: !2858)
!2865 = !DILocation(line: 0, scope: !2837, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1075, column: 10, scope: !2858)
!2867 = !DILocation(line: 1063, column: 10, scope: !2837, inlinedAt: !2866)
!2868 = !DILocation(line: 1075, column: 3, scope: !2858)
!2869 = distinct !DISubprogram(name: "quote", scope: !260, file: !260, line: 1079, type: !2870, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !259, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!12, !12}
!2872 = !{!2873}
!2873 = !DILocalVariable(name: "arg", arg: 1, scope: !2869, file: !260, line: 1079, type: !12)
!2874 = !DILocation(line: 0, scope: !2869)
!2875 = !DILocation(line: 0, scope: !2858, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 1081, column: 10, scope: !2869)
!2877 = !DILocation(line: 0, scope: !2837, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1075, column: 10, scope: !2858, inlinedAt: !2876)
!2879 = !DILocation(line: 1063, column: 10, scope: !2837, inlinedAt: !2878)
!2880 = !DILocation(line: 1081, column: 3, scope: !2869)
!2881 = distinct !DISubprogram(name: "version_etc_arn", scope: !410, file: !410, line: 61, type: !2882, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2887)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2884, !12, !12, !12, !2886, !68}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !420)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893}
!2888 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !410, line: 61, type: !2884)
!2889 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !410, line: 62, type: !12)
!2890 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !410, line: 62, type: !12)
!2891 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !410, line: 63, type: !12)
!2892 = !DILocalVariable(name: "authors", arg: 5, scope: !2881, file: !410, line: 64, type: !2886)
!2893 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2881, file: !410, line: 64, type: !68)
!2894 = !DILocation(line: 0, scope: !2881)
!2895 = !DILocation(line: 66, column: 7, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2881, file: !410, line: 66, column: 7)
!2897 = !DILocation(line: 66, column: 7, scope: !2881)
!2898 = !DILocation(line: 67, column: 5, scope: !2896)
!2899 = !DILocation(line: 69, column: 5, scope: !2896)
!2900 = !DILocation(line: 83, column: 3, scope: !2881)
!2901 = !DILocation(line: 85, column: 3, scope: !2881)
!2902 = !DILocation(line: 88, column: 3, scope: !2881)
!2903 = !DILocation(line: 95, column: 3, scope: !2881)
!2904 = !DILocation(line: 97, column: 3, scope: !2881)
!2905 = !DILocation(line: 105, column: 7, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2881, file: !410, line: 98, column: 5)
!2907 = !DILocation(line: 106, column: 7, scope: !2906)
!2908 = !DILocation(line: 109, column: 7, scope: !2906)
!2909 = !DILocation(line: 110, column: 7, scope: !2906)
!2910 = !DILocation(line: 113, column: 7, scope: !2906)
!2911 = !DILocation(line: 115, column: 7, scope: !2906)
!2912 = !DILocation(line: 120, column: 7, scope: !2906)
!2913 = !DILocation(line: 122, column: 7, scope: !2906)
!2914 = !DILocation(line: 127, column: 7, scope: !2906)
!2915 = !DILocation(line: 129, column: 7, scope: !2906)
!2916 = !DILocation(line: 134, column: 7, scope: !2906)
!2917 = !DILocation(line: 137, column: 7, scope: !2906)
!2918 = !DILocation(line: 142, column: 7, scope: !2906)
!2919 = !DILocation(line: 145, column: 7, scope: !2906)
!2920 = !DILocation(line: 150, column: 7, scope: !2906)
!2921 = !DILocation(line: 154, column: 7, scope: !2906)
!2922 = !DILocation(line: 159, column: 7, scope: !2906)
!2923 = !DILocation(line: 163, column: 7, scope: !2906)
!2924 = !DILocation(line: 170, column: 7, scope: !2906)
!2925 = !DILocation(line: 174, column: 7, scope: !2906)
!2926 = !DILocation(line: 176, column: 1, scope: !2881)
!2927 = distinct !DISubprogram(name: "version_etc_ar", scope: !410, file: !410, line: 183, type: !2928, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{null, !2884, !12, !12, !12, !2886}
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936}
!2931 = !DILocalVariable(name: "stream", arg: 1, scope: !2927, file: !410, line: 183, type: !2884)
!2932 = !DILocalVariable(name: "command_name", arg: 2, scope: !2927, file: !410, line: 184, type: !12)
!2933 = !DILocalVariable(name: "package", arg: 3, scope: !2927, file: !410, line: 184, type: !12)
!2934 = !DILocalVariable(name: "version", arg: 4, scope: !2927, file: !410, line: 185, type: !12)
!2935 = !DILocalVariable(name: "authors", arg: 5, scope: !2927, file: !410, line: 185, type: !2886)
!2936 = !DILocalVariable(name: "n_authors", scope: !2927, file: !410, line: 187, type: !68)
!2937 = !DILocation(line: 0, scope: !2927)
!2938 = !DILocation(line: 189, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2927, file: !410, line: 189, column: 3)
!2940 = !DILocation(line: 0, scope: !2939)
!2941 = !DILocation(line: 189, column: 23, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !410, line: 189, column: 3)
!2943 = !DILocation(line: 189, column: 3, scope: !2939)
!2944 = !DILocation(line: 189, column: 52, scope: !2942)
!2945 = distinct !{!2945, !2943, !2946}
!2946 = !DILocation(line: 190, column: 5, scope: !2939)
!2947 = !DILocation(line: 191, column: 3, scope: !2927)
!2948 = !DILocation(line: 192, column: 1, scope: !2927)
!2949 = distinct !DISubprogram(name: "version_etc_va", scope: !410, file: !410, line: 199, type: !2950, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2959)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2884, !12, !12, !12, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !410, line: 192, size: 192, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2953, file: !410, line: 192, baseType: !263, size: 32)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2953, file: !410, line: 192, baseType: !263, size: 32, offset: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2953, file: !410, line: 192, baseType: !66, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2953, file: !410, line: 192, baseType: !66, size: 64, offset: 128)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DILocalVariable(name: "stream", arg: 1, scope: !2949, file: !410, line: 199, type: !2884)
!2961 = !DILocalVariable(name: "command_name", arg: 2, scope: !2949, file: !410, line: 200, type: !12)
!2962 = !DILocalVariable(name: "package", arg: 3, scope: !2949, file: !410, line: 200, type: !12)
!2963 = !DILocalVariable(name: "version", arg: 4, scope: !2949, file: !410, line: 201, type: !12)
!2964 = !DILocalVariable(name: "authors", arg: 5, scope: !2949, file: !410, line: 201, type: !2952)
!2965 = !DILocalVariable(name: "n_authors", scope: !2949, file: !410, line: 203, type: !68)
!2966 = !DILocalVariable(name: "authtab", scope: !2949, file: !410, line: 204, type: !2967)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !368)
!2968 = !DILocation(line: 0, scope: !2949)
!2969 = !DILocation(line: 204, column: 3, scope: !2949)
!2970 = !DILocation(line: 204, column: 15, scope: !2949)
!2971 = !DILocation(line: 0, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !410, line: 206, column: 3)
!2973 = distinct !DILexicalBlock(scope: !2949, file: !410, line: 206, column: 3)
!2974 = !DILocation(line: 208, column: 35, scope: !2972)
!2975 = !DILocation(line: 208, column: 14, scope: !2972)
!2976 = !DILocation(line: 208, column: 33, scope: !2972)
!2977 = !DILocation(line: 208, column: 67, scope: !2972)
!2978 = !DILocation(line: 206, column: 3, scope: !2973)
!2979 = !DILocation(line: 0, scope: !2973)
!2980 = !DILocation(line: 211, column: 3, scope: !2949)
!2981 = !DILocation(line: 213, column: 1, scope: !2949)
!2982 = distinct !DISubprogram(name: "version_etc", scope: !410, file: !410, line: 230, type: !2983, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2884, !12, !12, !12, null}
!2985 = !{!2986, !2987, !2988, !2989, !2990}
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2982, file: !410, line: 230, type: !2884)
!2987 = !DILocalVariable(name: "command_name", arg: 2, scope: !2982, file: !410, line: 231, type: !12)
!2988 = !DILocalVariable(name: "package", arg: 3, scope: !2982, file: !410, line: 231, type: !12)
!2989 = !DILocalVariable(name: "version", arg: 4, scope: !2982, file: !410, line: 232, type: !12)
!2990 = !DILocalVariable(name: "authors", scope: !2982, file: !410, line: 234, type: !2991)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2993, line: 32, baseType: !2994)
!2993 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !410, line: 234, baseType: !2995)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2953, size: 192, elements: !51)
!2996 = !DILocation(line: 0, scope: !2982)
!2997 = !DILocation(line: 234, column: 3, scope: !2982)
!2998 = !DILocation(line: 234, column: 11, scope: !2982)
!2999 = !DILocation(line: 236, column: 3, scope: !2982)
!3000 = !DILocation(line: 237, column: 3, scope: !2982)
!3001 = !DILocation(line: 238, column: 3, scope: !2982)
!3002 = !DILocation(line: 239, column: 1, scope: !2982)
!3003 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !410, file: !410, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !4)
!3004 = !DILocation(line: 244, column: 3, scope: !3003)
!3005 = !DILocation(line: 249, column: 3, scope: !3003)
!3006 = !DILocation(line: 255, column: 3, scope: !3003)
!3007 = !DILocation(line: 260, column: 3, scope: !3003)
!3008 = !DILocation(line: 262, column: 1, scope: !3003)
!3009 = distinct !DISubprogram(name: "xnmalloc", scope: !298, file: !298, line: 99, type: !3010, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!66, !68, !68}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !298, line: 99, type: !68)
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3009, file: !298, line: 99, type: !68)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocation(line: 101, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3009, file: !298, line: 101, column: 7)
!3018 = !DILocation(line: 101, column: 7, scope: !3009)
!3019 = !DILocation(line: 102, column: 5, scope: !3017)
!3020 = !DILocation(line: 103, column: 21, scope: !3009)
!3021 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !452, line: 39, type: !68)
!3022 = distinct !DISubprogram(name: "xmalloc", scope: !452, file: !452, line: 39, type: !3023, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!66, !68}
!3025 = !{!3021, !3026}
!3026 = !DILocalVariable(name: "p", scope: !3022, file: !452, line: 41, type: !66)
!3027 = !DILocation(line: 0, scope: !3022, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 103, column: 10, scope: !3009)
!3029 = !DILocation(line: 41, column: 13, scope: !3022, inlinedAt: !3028)
!3030 = !DILocation(line: 42, column: 8, scope: !3031, inlinedAt: !3028)
!3031 = distinct !DILexicalBlock(scope: !3022, file: !452, line: 42, column: 7)
!3032 = !DILocation(line: 42, column: 15, scope: !3031, inlinedAt: !3028)
!3033 = !DILocation(line: 42, column: 10, scope: !3031, inlinedAt: !3028)
!3034 = !DILocation(line: 43, column: 5, scope: !3031, inlinedAt: !3028)
!3035 = !DILocation(line: 103, column: 3, scope: !3009)
!3036 = !DILocation(line: 0, scope: !3022)
!3037 = !DILocation(line: 41, column: 13, scope: !3022)
!3038 = !DILocation(line: 42, column: 8, scope: !3031)
!3039 = !DILocation(line: 42, column: 15, scope: !3031)
!3040 = !DILocation(line: 42, column: 10, scope: !3031)
!3041 = !DILocation(line: 43, column: 5, scope: !3031)
!3042 = !DILocation(line: 44, column: 3, scope: !3022)
!3043 = distinct !DISubprogram(name: "xnrealloc", scope: !298, file: !298, line: 112, type: !3044, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!66, !66, !68, !68}
!3046 = !{!3047, !3048, !3049}
!3047 = !DILocalVariable(name: "p", arg: 1, scope: !3043, file: !298, line: 112, type: !66)
!3048 = !DILocalVariable(name: "n", arg: 2, scope: !3043, file: !298, line: 112, type: !68)
!3049 = !DILocalVariable(name: "s", arg: 3, scope: !3043, file: !298, line: 112, type: !68)
!3050 = !DILocation(line: 0, scope: !3043)
!3051 = !DILocation(line: 114, column: 7, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3043, file: !298, line: 114, column: 7)
!3053 = !DILocation(line: 114, column: 7, scope: !3043)
!3054 = !DILocation(line: 115, column: 5, scope: !3052)
!3055 = !DILocation(line: 116, column: 25, scope: !3043)
!3056 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !452, line: 51, type: !66)
!3057 = distinct !DISubprogram(name: "xrealloc", scope: !452, file: !452, line: 51, type: !3058, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!66, !66, !68}
!3060 = !{!3056, !3061}
!3061 = !DILocalVariable(name: "n", arg: 2, scope: !3057, file: !452, line: 51, type: !68)
!3062 = !DILocation(line: 0, scope: !3057, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 116, column: 10, scope: !3043)
!3064 = !DILocation(line: 53, column: 8, scope: !3065, inlinedAt: !3063)
!3065 = distinct !DILexicalBlock(scope: !3057, file: !452, line: 53, column: 7)
!3066 = !DILocation(line: 53, column: 13, scope: !3065, inlinedAt: !3063)
!3067 = !DILocation(line: 53, column: 10, scope: !3065, inlinedAt: !3063)
!3068 = !DILocation(line: 57, column: 7, scope: !3069, inlinedAt: !3063)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !452, line: 54, column: 5)
!3070 = !DILocation(line: 58, column: 7, scope: !3069, inlinedAt: !3063)
!3071 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3063)
!3072 = !DILocation(line: 62, column: 8, scope: !3073, inlinedAt: !3063)
!3073 = distinct !DILexicalBlock(scope: !3057, file: !452, line: 62, column: 7)
!3074 = !DILocation(line: 62, column: 13, scope: !3073, inlinedAt: !3063)
!3075 = !DILocation(line: 62, column: 10, scope: !3073, inlinedAt: !3063)
!3076 = !DILocation(line: 63, column: 5, scope: !3073, inlinedAt: !3063)
!3077 = !DILocation(line: 116, column: 3, scope: !3043)
!3078 = !DILocation(line: 0, scope: !3057)
!3079 = !DILocation(line: 53, column: 8, scope: !3065)
!3080 = !DILocation(line: 53, column: 13, scope: !3065)
!3081 = !DILocation(line: 53, column: 10, scope: !3065)
!3082 = !DILocation(line: 57, column: 7, scope: !3069)
!3083 = !DILocation(line: 58, column: 7, scope: !3069)
!3084 = !DILocation(line: 61, column: 7, scope: !3057)
!3085 = !DILocation(line: 62, column: 8, scope: !3073)
!3086 = !DILocation(line: 62, column: 13, scope: !3073)
!3087 = !DILocation(line: 62, column: 10, scope: !3073)
!3088 = !DILocation(line: 63, column: 5, scope: !3073)
!3089 = !DILocation(line: 65, column: 1, scope: !3057)
!3090 = !DILocation(line: 0, scope: !455)
!3091 = !DILocation(line: 176, column: 14, scope: !455)
!3092 = !DILocation(line: 178, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !455, file: !298, line: 178, column: 7)
!3094 = !DILocation(line: 178, column: 7, scope: !455)
!3095 = !DILocation(line: 180, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !298, line: 180, column: 11)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !298, line: 179, column: 5)
!3098 = !DILocation(line: 180, column: 11, scope: !3097)
!3099 = !DILocation(line: 188, column: 30, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !298, line: 181, column: 9)
!3101 = !DILocation(line: 189, column: 16, scope: !3100)
!3102 = !DILocation(line: 189, column: 13, scope: !3100)
!3103 = !DILocation(line: 190, column: 9, scope: !3100)
!3104 = !DILocation(line: 191, column: 11, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !298, line: 191, column: 11)
!3106 = !DILocation(line: 191, column: 11, scope: !3097)
!3107 = !DILocation(line: 206, column: 7, scope: !455)
!3108 = !DILocation(line: 207, column: 25, scope: !455)
!3109 = !DILocation(line: 0, scope: !3057, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 207, column: 10, scope: !455)
!3111 = !DILocation(line: 53, column: 10, scope: !3065, inlinedAt: !3110)
!3112 = !DILocation(line: 192, column: 9, scope: !3105)
!3113 = !DILocation(line: 200, column: 69, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !298, line: 200, column: 11)
!3115 = distinct !DILexicalBlock(scope: !3093, file: !298, line: 195, column: 5)
!3116 = !DILocation(line: 201, column: 11, scope: !3114)
!3117 = !DILocation(line: 200, column: 11, scope: !3115)
!3118 = !DILocation(line: 202, column: 9, scope: !3114)
!3119 = !DILocation(line: 203, column: 14, scope: !3115)
!3120 = !DILocation(line: 203, column: 18, scope: !3115)
!3121 = !DILocation(line: 203, column: 9, scope: !3115)
!3122 = !DILocation(line: 53, column: 8, scope: !3065, inlinedAt: !3110)
!3123 = !DILocation(line: 57, column: 7, scope: !3069, inlinedAt: !3110)
!3124 = !DILocation(line: 58, column: 7, scope: !3069, inlinedAt: !3110)
!3125 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3110)
!3126 = !DILocation(line: 62, column: 8, scope: !3073, inlinedAt: !3110)
!3127 = !DILocation(line: 62, column: 13, scope: !3073, inlinedAt: !3110)
!3128 = !DILocation(line: 62, column: 10, scope: !3073, inlinedAt: !3110)
!3129 = !DILocation(line: 63, column: 5, scope: !3073, inlinedAt: !3110)
!3130 = !DILocation(line: 207, column: 3, scope: !455)
!3131 = distinct !DISubprogram(name: "xcharalloc", scope: !298, file: !298, line: 216, type: !2293, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !298, line: 216, type: !68)
!3134 = !DILocation(line: 0, scope: !3131)
!3135 = !DILocation(line: 0, scope: !3022, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 218, column: 10, scope: !3131)
!3137 = !DILocation(line: 41, column: 13, scope: !3022, inlinedAt: !3136)
!3138 = !DILocation(line: 42, column: 8, scope: !3031, inlinedAt: !3136)
!3139 = !DILocation(line: 42, column: 15, scope: !3031, inlinedAt: !3136)
!3140 = !DILocation(line: 42, column: 10, scope: !3031, inlinedAt: !3136)
!3141 = !DILocation(line: 43, column: 5, scope: !3031, inlinedAt: !3136)
!3142 = !DILocation(line: 218, column: 3, scope: !3131)
!3143 = distinct !DISubprogram(name: "x2realloc", scope: !452, file: !452, line: 74, type: !3144, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!66, !66, !458}
!3146 = !{!3147, !3148}
!3147 = !DILocalVariable(name: "p", arg: 1, scope: !3143, file: !452, line: 74, type: !66)
!3148 = !DILocalVariable(name: "pn", arg: 2, scope: !3143, file: !452, line: 74, type: !458)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 0, scope: !455, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 76, column: 10, scope: !3143)
!3152 = !DILocation(line: 176, column: 14, scope: !455, inlinedAt: !3151)
!3153 = !DILocation(line: 178, column: 9, scope: !3093, inlinedAt: !3151)
!3154 = !DILocation(line: 178, column: 7, scope: !455, inlinedAt: !3151)
!3155 = !DILocation(line: 180, column: 13, scope: !3096, inlinedAt: !3151)
!3156 = !DILocation(line: 180, column: 11, scope: !3097, inlinedAt: !3151)
!3157 = !DILocation(line: 191, column: 11, scope: !3105, inlinedAt: !3151)
!3158 = !DILocation(line: 191, column: 11, scope: !3097, inlinedAt: !3151)
!3159 = !DILocation(line: 206, column: 7, scope: !455, inlinedAt: !3151)
!3160 = !DILocation(line: 0, scope: !3057, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 207, column: 10, scope: !455, inlinedAt: !3151)
!3162 = !DILocation(line: 53, column: 10, scope: !3065, inlinedAt: !3161)
!3163 = !DILocation(line: 192, column: 9, scope: !3105, inlinedAt: !3151)
!3164 = !DILocation(line: 201, column: 11, scope: !3114, inlinedAt: !3151)
!3165 = !DILocation(line: 200, column: 11, scope: !3115, inlinedAt: !3151)
!3166 = !DILocation(line: 202, column: 9, scope: !3114, inlinedAt: !3151)
!3167 = !DILocation(line: 203, column: 14, scope: !3115, inlinedAt: !3151)
!3168 = !DILocation(line: 203, column: 18, scope: !3115, inlinedAt: !3151)
!3169 = !DILocation(line: 203, column: 9, scope: !3115, inlinedAt: !3151)
!3170 = !DILocation(line: 53, column: 8, scope: !3065, inlinedAt: !3161)
!3171 = !DILocation(line: 57, column: 7, scope: !3069, inlinedAt: !3161)
!3172 = !DILocation(line: 58, column: 7, scope: !3069, inlinedAt: !3161)
!3173 = !DILocation(line: 61, column: 7, scope: !3057, inlinedAt: !3161)
!3174 = !DILocation(line: 62, column: 8, scope: !3073, inlinedAt: !3161)
!3175 = !DILocation(line: 62, column: 13, scope: !3073, inlinedAt: !3161)
!3176 = !DILocation(line: 62, column: 10, scope: !3073, inlinedAt: !3161)
!3177 = !DILocation(line: 63, column: 5, scope: !3073, inlinedAt: !3161)
!3178 = !DILocation(line: 76, column: 3, scope: !3143)
!3179 = distinct !DISubprogram(name: "xzalloc", scope: !452, file: !452, line: 84, type: !3023, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3180)
!3180 = !{!3181}
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !452, line: 84, type: !68)
!3182 = !DILocation(line: 0, scope: !3179)
!3183 = !DILocalVariable(name: "n", arg: 1, scope: !3184, file: !452, line: 93, type: !68)
!3184 = distinct !DISubprogram(name: "xcalloc", scope: !452, file: !452, line: 93, type: !3010, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3185)
!3185 = !{!3183, !3186, !3187}
!3186 = !DILocalVariable(name: "s", arg: 2, scope: !3184, file: !452, line: 93, type: !68)
!3187 = !DILocalVariable(name: "p", scope: !3184, file: !452, line: 95, type: !66)
!3188 = !DILocation(line: 0, scope: !3184, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 86, column: 10, scope: !3179)
!3190 = !DILocation(line: 100, column: 7, scope: !3191, inlinedAt: !3189)
!3191 = distinct !DILexicalBlock(scope: !3184, file: !452, line: 100, column: 7)
!3192 = !DILocation(line: 101, column: 7, scope: !3191, inlinedAt: !3189)
!3193 = !DILocation(line: 101, column: 18, scope: !3191, inlinedAt: !3189)
!3194 = !DILocation(line: 101, column: 16, scope: !3191, inlinedAt: !3189)
!3195 = !DILocation(line: 100, column: 7, scope: !3184, inlinedAt: !3189)
!3196 = !DILocation(line: 102, column: 5, scope: !3191, inlinedAt: !3189)
!3197 = !DILocation(line: 86, column: 3, scope: !3179)
!3198 = !DILocation(line: 0, scope: !3184)
!3199 = !DILocation(line: 100, column: 7, scope: !3191)
!3200 = !DILocation(line: 101, column: 7, scope: !3191)
!3201 = !DILocation(line: 101, column: 18, scope: !3191)
!3202 = !DILocation(line: 101, column: 16, scope: !3191)
!3203 = !DILocation(line: 100, column: 7, scope: !3184)
!3204 = !DILocation(line: 102, column: 5, scope: !3191)
!3205 = !DILocation(line: 103, column: 3, scope: !3184)
!3206 = distinct !DISubprogram(name: "xmemdup", scope: !452, file: !452, line: 111, type: !3207, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!66, !127, !68}
!3209 = !{!3210, !3211}
!3210 = !DILocalVariable(name: "p", arg: 1, scope: !3206, file: !452, line: 111, type: !127)
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3206, file: !452, line: 111, type: !68)
!3212 = !DILocation(line: 0, scope: !3206)
!3213 = !DILocation(line: 0, scope: !3022, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 113, column: 18, scope: !3206)
!3215 = !DILocation(line: 41, column: 13, scope: !3022, inlinedAt: !3214)
!3216 = !DILocation(line: 42, column: 8, scope: !3031, inlinedAt: !3214)
!3217 = !DILocation(line: 42, column: 15, scope: !3031, inlinedAt: !3214)
!3218 = !DILocation(line: 42, column: 10, scope: !3031, inlinedAt: !3214)
!3219 = !DILocation(line: 43, column: 5, scope: !3031, inlinedAt: !3214)
!3220 = !DILocalVariable(name: "__dest", arg: 1, scope: !3221, file: !1304, line: 31, type: !1307)
!3221 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 31, type: !1305, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3222)
!3222 = !{!3220, !3223, !3224}
!3223 = !DILocalVariable(name: "__src", arg: 2, scope: !3221, file: !1304, line: 31, type: !1308)
!3224 = !DILocalVariable(name: "__len", arg: 3, scope: !3221, file: !1304, line: 31, type: !68)
!3225 = !DILocation(line: 0, scope: !3221, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 113, column: 10, scope: !3206)
!3227 = !DILocation(line: 34, column: 10, scope: !3221, inlinedAt: !3226)
!3228 = !DILocation(line: 113, column: 3, scope: !3206)
!3229 = distinct !DISubprogram(name: "xstrdup", scope: !452, file: !452, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "string", arg: 1, scope: !3229, file: !452, line: 119, type: !12)
!3232 = !DILocation(line: 0, scope: !3229)
!3233 = !DILocation(line: 121, column: 27, scope: !3229)
!3234 = !DILocation(line: 121, column: 43, scope: !3229)
!3235 = !DILocation(line: 0, scope: !3206, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 121, column: 10, scope: !3229)
!3237 = !DILocation(line: 0, scope: !3022, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 113, column: 18, scope: !3206, inlinedAt: !3236)
!3239 = !DILocation(line: 41, column: 13, scope: !3022, inlinedAt: !3238)
!3240 = !DILocation(line: 42, column: 8, scope: !3031, inlinedAt: !3238)
!3241 = !DILocation(line: 42, column: 15, scope: !3031, inlinedAt: !3238)
!3242 = !DILocation(line: 42, column: 10, scope: !3031, inlinedAt: !3238)
!3243 = !DILocation(line: 43, column: 5, scope: !3031, inlinedAt: !3238)
!3244 = !DILocation(line: 0, scope: !3221, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 113, column: 10, scope: !3206, inlinedAt: !3236)
!3246 = !DILocation(line: 34, column: 10, scope: !3221, inlinedAt: !3245)
!3247 = !DILocation(line: 121, column: 3, scope: !3229)
!3248 = distinct !DISubprogram(name: "xalloc_die", scope: !473, file: !473, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !4)
!3249 = !DILocation(line: 34, column: 10, scope: !3248)
!3250 = !DILocation(line: 34, column: 33, scope: !3248)
!3251 = !DILocation(line: 34, column: 3, scope: !3248)
!3252 = !DILocation(line: 40, column: 3, scope: !3248)
!3253 = distinct !DISubprogram(name: "rpl_calloc", scope: !476, file: !476, line: 42, type: !3010, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !3254)
!3254 = !{!3255, !3256, !3257, !3258}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !476, line: 42, type: !68)
!3256 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !476, line: 42, type: !68)
!3257 = !DILocalVariable(name: "result", scope: !3253, file: !476, line: 44, type: !66)
!3258 = !DILocalVariable(name: "bytes", scope: !3259, file: !476, line: 56, type: !68)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !476, line: 53, column: 5)
!3260 = distinct !DILexicalBlock(scope: !3253, file: !476, line: 47, column: 7)
!3261 = !DILocation(line: 0, scope: !3253)
!3262 = !DILocation(line: 47, column: 9, scope: !3260)
!3263 = !DILocation(line: 47, column: 19, scope: !3260)
!3264 = !DILocation(line: 47, column: 14, scope: !3260)
!3265 = !DILocation(line: 0, scope: !3259)
!3266 = !DILocation(line: 57, column: 21, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3259, file: !476, line: 57, column: 11)
!3268 = !DILocation(line: 57, column: 11, scope: !3259)
!3269 = !DILocation(line: 59, column: 11, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !476, line: 58, column: 9)
!3271 = !DILocation(line: 59, column: 17, scope: !3270)
!3272 = !DILocation(line: 65, column: 12, scope: !3253)
!3273 = !DILocation(line: 72, column: 3, scope: !3253)
!3274 = !DILocation(line: 73, column: 1, scope: !3253)
!3275 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !479, file: !479, line: 86, type: !3276, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !3282)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!68, !3278, !12, !68, !3279}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1570, line: 6, baseType: !3281)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !329, line: 21, baseType: !485)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3283 = !DILocalVariable(name: "pwc", arg: 1, scope: !3275, file: !479, line: 86, type: !3278)
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !479, line: 86, type: !12)
!3285 = !DILocalVariable(name: "n", arg: 3, scope: !3275, file: !479, line: 86, type: !68)
!3286 = !DILocalVariable(name: "ps", arg: 4, scope: !3275, file: !479, line: 86, type: !3279)
!3287 = !DILocalVariable(name: "ret", scope: !3275, file: !479, line: 88, type: !68)
!3288 = !DILocalVariable(name: "wc", scope: !3275, file: !479, line: 89, type: !1574)
!3289 = !DILocalVariable(name: "uc", scope: !3290, file: !479, line: 156, type: !129)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !479, line: 155, column: 5)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !479, line: 154, column: 7)
!3292 = !DILocation(line: 0, scope: !3275)
!3293 = !DILocation(line: 89, column: 3, scope: !3275)
!3294 = !DILocation(line: 105, column: 9, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3275, file: !479, line: 105, column: 7)
!3296 = !DILocation(line: 105, column: 7, scope: !3275)
!3297 = !DILocation(line: 145, column: 9, scope: !3275)
!3298 = !DILocation(line: 154, column: 19, scope: !3291)
!3299 = !DILocation(line: 154, column: 31, scope: !3291)
!3300 = !DILocation(line: 154, column: 26, scope: !3291)
!3301 = !DILocation(line: 154, column: 41, scope: !3291)
!3302 = !DILocation(line: 154, column: 7, scope: !3275)
!3303 = !DILocation(line: 156, column: 26, scope: !3290)
!3304 = !DILocation(line: 0, scope: !3290)
!3305 = !DILocation(line: 157, column: 14, scope: !3290)
!3306 = !DILocation(line: 157, column: 12, scope: !3290)
!3307 = !DILocation(line: 163, column: 1, scope: !3275)
!3308 = distinct !DISubprogram(name: "close_stream", scope: !498, file: !498, line: 56, type: !3309, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3313)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!14, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !505)
!3313 = !{!3314, !3315, !3317, !3318}
!3314 = !DILocalVariable(name: "stream", arg: 1, scope: !3308, file: !498, line: 56, type: !3311)
!3315 = !DILocalVariable(name: "some_pending", scope: !3308, file: !498, line: 58, type: !3316)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!3317 = !DILocalVariable(name: "prev_fail", scope: !3308, file: !498, line: 59, type: !3316)
!3318 = !DILocalVariable(name: "fclose_fail", scope: !3308, file: !498, line: 60, type: !3316)
!3319 = !DILocation(line: 0, scope: !3308)
!3320 = !DILocation(line: 58, column: 30, scope: !3308)
!3321 = !DILocalVariable(name: "__stream", arg: 1, scope: !3322, file: !1168, line: 135, type: !3311)
!3322 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1168, file: !1168, line: 135, type: !3309, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !497, retainedNodes: !3323)
!3323 = !{!3321}
!3324 = !DILocation(line: 0, scope: !3322, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 59, column: 27, scope: !3308)
!3326 = !DILocation(line: 137, column: 10, scope: !3322, inlinedAt: !3325)
!3327 = !{!1187, !1162, i64 0}
!3328 = !DILocation(line: 59, column: 43, scope: !3308)
!3329 = !DILocation(line: 60, column: 29, scope: !3308)
!3330 = !DILocation(line: 60, column: 45, scope: !3308)
!3331 = !DILocation(line: 70, column: 17, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3308, file: !498, line: 70, column: 7)
!3333 = !DILocation(line: 58, column: 50, scope: !3308)
!3334 = !DILocation(line: 70, column: 33, scope: !3332)
!3335 = !DILocation(line: 70, column: 53, scope: !3332)
!3336 = !DILocation(line: 70, column: 59, scope: !3332)
!3337 = !DILocation(line: 70, column: 7, scope: !3308)
!3338 = !DILocation(line: 72, column: 11, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3332, file: !498, line: 71, column: 5)
!3340 = !DILocation(line: 73, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3339, file: !498, line: 72, column: 11)
!3342 = !DILocation(line: 73, column: 15, scope: !3341)
!3343 = !DILocation(line: 78, column: 1, scope: !3308)
!3344 = distinct !DISubprogram(name: "hard_locale", scope: !537, file: !537, line: 27, type: !495, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3345)
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "category", arg: 1, scope: !3344, file: !537, line: 27, type: !14)
!3347 = !DILocalVariable(name: "locale", scope: !3344, file: !537, line: 29, type: !3348)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3349)
!3349 = !{!3350}
!3350 = !DISubrange(count: 257)
!3351 = !DILocation(line: 0, scope: !3344)
!3352 = !DILocation(line: 29, column: 3, scope: !3344)
!3353 = !DILocation(line: 29, column: 8, scope: !3344)
!3354 = !DILocation(line: 31, column: 7, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3344, file: !537, line: 31, column: 7)
!3356 = !DILocation(line: 31, column: 7, scope: !3344)
!3357 = !DILocation(line: 34, column: 12, scope: !3344)
!3358 = !DILocation(line: 34, column: 38, scope: !3344)
!3359 = !DILocation(line: 34, column: 41, scope: !3344)
!3360 = !DILocation(line: 34, column: 66, scope: !3344)
!3361 = !DILocation(line: 35, column: 1, scope: !3344)
!3362 = distinct !DISubprogram(name: "locale_charset", scope: !544, file: !544, line: 831, type: !350, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !543, retainedNodes: !3363)
!3363 = !{!3364}
!3364 = !DILocalVariable(name: "codeset", scope: !3362, file: !544, line: 833, type: !12)
!3365 = !DILocation(line: 847, column: 13, scope: !3362)
!3366 = !DILocation(line: 0, scope: !3362)
!3367 = !DILocation(line: 911, column: 15, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3362, file: !544, line: 911, column: 7)
!3369 = !DILocation(line: 911, column: 7, scope: !3362)
!3370 = !DILocation(line: 1070, column: 13, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !544, line: 1070, column: 13)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !544, line: 1060, column: 7)
!3373 = distinct !DILexicalBlock(scope: !3362, file: !544, line: 1019, column: 3)
!3374 = !DILocation(line: 1070, column: 24, scope: !3371)
!3375 = !DILocation(line: 1070, column: 13, scope: !3372)
!3376 = !DILocation(line: 1158, column: 3, scope: !3362)
!3377 = distinct !DISubprogram(name: "setlocale_null_r", scope: !937, file: !937, line: 269, type: !3378, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!14, !14, !10, !68}
!3380 = !{!3381, !3382, !3383}
!3381 = !DILocalVariable(name: "category", arg: 1, scope: !3377, file: !937, line: 269, type: !14)
!3382 = !DILocalVariable(name: "buf", arg: 2, scope: !3377, file: !937, line: 269, type: !10)
!3383 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3377, file: !937, line: 269, type: !68)
!3384 = !DILocation(line: 0, scope: !3377)
!3385 = !DILocalVariable(name: "category", arg: 1, scope: !3386, file: !937, line: 91, type: !14)
!3386 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !937, file: !937, line: 91, type: !3378, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3387)
!3387 = !{!3385, !3388, !3389, !3390, !3391}
!3388 = !DILocalVariable(name: "buf", arg: 2, scope: !3386, file: !937, line: 91, type: !10)
!3389 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3386, file: !937, line: 91, type: !68)
!3390 = !DILocalVariable(name: "result", scope: !3386, file: !937, line: 140, type: !12)
!3391 = !DILocalVariable(name: "length", scope: !3392, file: !937, line: 154, type: !68)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !937, line: 153, column: 5)
!3393 = distinct !DILexicalBlock(scope: !3386, file: !937, line: 142, column: 7)
!3394 = !DILocation(line: 0, scope: !3386, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 274, column: 10, scope: !3377)
!3396 = !DILocalVariable(name: "category", arg: 1, scope: !3397, file: !937, line: 60, type: !14)
!3397 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !937, file: !937, line: 60, type: !3398, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3400)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!12, !14}
!3400 = !{!3396, !3401}
!3401 = !DILocalVariable(name: "result", scope: !3397, file: !937, line: 62, type: !12)
!3402 = !DILocation(line: 0, scope: !3397, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 140, column: 24, scope: !3386, inlinedAt: !3395)
!3404 = !DILocation(line: 62, column: 24, scope: !3397, inlinedAt: !3403)
!3405 = !DILocation(line: 142, column: 14, scope: !3393, inlinedAt: !3395)
!3406 = !DILocation(line: 142, column: 7, scope: !3386, inlinedAt: !3395)
!3407 = !DILocation(line: 145, column: 19, scope: !3408, inlinedAt: !3395)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !937, line: 145, column: 11)
!3409 = distinct !DILexicalBlock(scope: !3393, file: !937, line: 143, column: 5)
!3410 = !DILocation(line: 145, column: 11, scope: !3409, inlinedAt: !3395)
!3411 = !DILocation(line: 149, column: 16, scope: !3408, inlinedAt: !3395)
!3412 = !DILocation(line: 149, column: 9, scope: !3408, inlinedAt: !3395)
!3413 = !DILocation(line: 154, column: 23, scope: !3392, inlinedAt: !3395)
!3414 = !DILocation(line: 0, scope: !3392, inlinedAt: !3395)
!3415 = !DILocation(line: 155, column: 18, scope: !3416, inlinedAt: !3395)
!3416 = distinct !DILexicalBlock(scope: !3392, file: !937, line: 155, column: 11)
!3417 = !DILocation(line: 155, column: 11, scope: !3392, inlinedAt: !3395)
!3418 = !DILocation(line: 157, column: 39, scope: !3419, inlinedAt: !3395)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !937, line: 156, column: 9)
!3420 = !DILocalVariable(name: "__dest", arg: 1, scope: !3421, file: !1304, line: 31, type: !1307)
!3421 = distinct !DISubprogram(name: "memcpy", scope: !1304, file: !1304, line: 31, type: !1305, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3422)
!3422 = !{!3420, !3423, !3424}
!3423 = !DILocalVariable(name: "__src", arg: 2, scope: !3421, file: !1304, line: 31, type: !1308)
!3424 = !DILocalVariable(name: "__len", arg: 3, scope: !3421, file: !1304, line: 31, type: !68)
!3425 = !DILocation(line: 0, scope: !3421, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 157, column: 11, scope: !3419, inlinedAt: !3395)
!3427 = !DILocation(line: 34, column: 10, scope: !3421, inlinedAt: !3426)
!3428 = !DILocation(line: 158, column: 11, scope: !3419, inlinedAt: !3395)
!3429 = !DILocation(line: 162, column: 23, scope: !3430, inlinedAt: !3395)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !937, line: 162, column: 15)
!3431 = distinct !DILexicalBlock(scope: !3416, file: !937, line: 161, column: 9)
!3432 = !DILocation(line: 162, column: 15, scope: !3431, inlinedAt: !3395)
!3433 = !DILocation(line: 167, column: 44, scope: !3434, inlinedAt: !3395)
!3434 = distinct !DILexicalBlock(scope: !3430, file: !937, line: 163, column: 13)
!3435 = !DILocation(line: 0, scope: !3421, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 167, column: 15, scope: !3434, inlinedAt: !3395)
!3437 = !DILocation(line: 34, column: 10, scope: !3421, inlinedAt: !3436)
!3438 = !DILocation(line: 168, column: 15, scope: !3434, inlinedAt: !3395)
!3439 = !DILocation(line: 168, column: 32, scope: !3434, inlinedAt: !3395)
!3440 = !DILocation(line: 169, column: 13, scope: !3434, inlinedAt: !3395)
!3441 = !DILocation(line: 0, scope: !3393, inlinedAt: !3395)
!3442 = !DILocation(line: 274, column: 3, scope: !3377)
!3443 = distinct !DISubprogram(name: "setlocale_null", scope: !937, file: !937, line: 301, type: !3398, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !3444)
!3444 = !{!3445}
!3445 = !DILocalVariable(name: "category", arg: 1, scope: !3443, file: !937, line: 301, type: !14)
!3446 = !DILocation(line: 0, scope: !3443)
!3447 = !DILocation(line: 0, scope: !3397, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 304, column: 10, scope: !3443)
!3449 = !DILocation(line: 62, column: 24, scope: !3397, inlinedAt: !3448)
!3450 = !DILocation(line: 304, column: 3, scope: !3443)
!3451 = distinct !DISubprogram(name: "rpl_fclose", scope: !940, file: !940, line: 58, type: !3452, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !939, retainedNodes: !3456)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!14, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !946)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DILocalVariable(name: "fp", arg: 1, scope: !3451, file: !940, line: 58, type: !3454)
!3458 = !DILocalVariable(name: "saved_errno", scope: !3451, file: !940, line: 60, type: !14)
!3459 = !DILocalVariable(name: "fd", scope: !3451, file: !940, line: 61, type: !14)
!3460 = !DILocalVariable(name: "result", scope: !3451, file: !940, line: 62, type: !14)
!3461 = !DILocation(line: 0, scope: !3451)
!3462 = !DILocation(line: 65, column: 8, scope: !3451)
!3463 = !DILocation(line: 66, column: 10, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3451, file: !940, line: 66, column: 7)
!3465 = !DILocation(line: 66, column: 7, scope: !3451)
!3466 = !DILocation(line: 67, column: 12, scope: !3464)
!3467 = !DILocation(line: 67, column: 5, scope: !3464)
!3468 = !DILocation(line: 72, column: 9, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3451, file: !940, line: 72, column: 7)
!3470 = !DILocation(line: 72, column: 23, scope: !3469)
!3471 = !DILocation(line: 72, column: 33, scope: !3469)
!3472 = !DILocation(line: 72, column: 26, scope: !3469)
!3473 = !DILocation(line: 72, column: 59, scope: !3469)
!3474 = !DILocation(line: 73, column: 7, scope: !3469)
!3475 = !DILocation(line: 73, column: 10, scope: !3469)
!3476 = !DILocation(line: 72, column: 7, scope: !3451)
!3477 = !DILocation(line: 100, column: 12, scope: !3451)
!3478 = !DILocation(line: 105, column: 7, scope: !3451)
!3479 = !DILocation(line: 74, column: 19, scope: !3469)
!3480 = !DILocation(line: 105, column: 19, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3451, file: !940, line: 105, column: 7)
!3482 = !DILocation(line: 107, column: 13, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3481, file: !940, line: 106, column: 5)
!3484 = !DILocation(line: 109, column: 5, scope: !3483)
!3485 = !DILocation(line: 112, column: 1, scope: !3451)
!3486 = distinct !DISubprogram(name: "rpl_fflush", scope: !984, file: !984, line: 129, type: !3487, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !3491)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!14, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !990)
!3491 = !{!3492}
!3492 = !DILocalVariable(name: "stream", arg: 1, scope: !3486, file: !984, line: 129, type: !3489)
!3493 = !DILocation(line: 0, scope: !3486)
!3494 = !DILocation(line: 150, column: 14, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3486, file: !984, line: 150, column: 7)
!3496 = !DILocation(line: 150, column: 22, scope: !3495)
!3497 = !DILocation(line: 150, column: 27, scope: !3495)
!3498 = !DILocation(line: 150, column: 7, scope: !3486)
!3499 = !DILocation(line: 151, column: 12, scope: !3495)
!3500 = !DILocation(line: 151, column: 5, scope: !3495)
!3501 = !DILocalVariable(name: "fp", arg: 1, scope: !3502, file: !984, line: 41, type: !3489)
!3502 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !984, file: !984, line: 41, type: !3503, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !983, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{null, !3489}
!3505 = !{!3501}
!3506 = !DILocation(line: 0, scope: !3502, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 156, column: 3, scope: !3486)
!3508 = !DILocation(line: 43, column: 11, scope: !3509, inlinedAt: !3507)
!3509 = distinct !DILexicalBlock(scope: !3502, file: !984, line: 43, column: 7)
!3510 = !DILocation(line: 43, column: 18, scope: !3509, inlinedAt: !3507)
!3511 = !DILocation(line: 43, column: 7, scope: !3502, inlinedAt: !3507)
!3512 = !DILocation(line: 45, column: 5, scope: !3509, inlinedAt: !3507)
!3513 = !DILocation(line: 158, column: 10, scope: !3486)
!3514 = !DILocation(line: 158, column: 3, scope: !3486)
!3515 = !DILocation(line: 235, column: 1, scope: !3486)
!3516 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1025, file: !1025, line: 28, type: !3517, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !3522)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!14, !3519, !3521, !14}
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 7, baseType: !1031)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DILocalVariable(name: "fp", arg: 1, scope: !3516, file: !1025, line: 28, type: !3519)
!3524 = !DILocalVariable(name: "offset", arg: 2, scope: !3516, file: !1025, line: 28, type: !3521)
!3525 = !DILocalVariable(name: "whence", arg: 3, scope: !3516, file: !1025, line: 28, type: !14)
!3526 = !DILocalVariable(name: "pos", scope: !3527, file: !1025, line: 117, type: !3521)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !1025, line: 113, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3516, file: !1025, line: 52, column: 7)
!3529 = !DILocation(line: 0, scope: !3516)
!3530 = !DILocation(line: 52, column: 11, scope: !3528)
!3531 = !{!1187, !1103, i64 16}
!3532 = !DILocation(line: 52, column: 31, scope: !3528)
!3533 = !{!1187, !1103, i64 8}
!3534 = !DILocation(line: 52, column: 24, scope: !3528)
!3535 = !DILocation(line: 53, column: 7, scope: !3528)
!3536 = !DILocation(line: 53, column: 14, scope: !3528)
!3537 = !DILocation(line: 53, column: 35, scope: !3528)
!3538 = !{!1187, !1103, i64 32}
!3539 = !DILocation(line: 53, column: 28, scope: !3528)
!3540 = !DILocation(line: 54, column: 7, scope: !3528)
!3541 = !DILocation(line: 54, column: 14, scope: !3528)
!3542 = !{!1187, !1103, i64 72}
!3543 = !DILocation(line: 54, column: 28, scope: !3528)
!3544 = !DILocation(line: 52, column: 7, scope: !3516)
!3545 = !DILocation(line: 117, column: 26, scope: !3527)
!3546 = !DILocation(line: 117, column: 19, scope: !3527)
!3547 = !DILocation(line: 0, scope: !3527)
!3548 = !DILocation(line: 118, column: 15, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3527, file: !1025, line: 118, column: 11)
!3550 = !DILocation(line: 118, column: 11, scope: !3527)
!3551 = !DILocation(line: 129, column: 11, scope: !3527)
!3552 = !DILocation(line: 129, column: 18, scope: !3527)
!3553 = !DILocation(line: 130, column: 11, scope: !3527)
!3554 = !DILocation(line: 130, column: 19, scope: !3527)
!3555 = !{!1187, !1188, i64 144}
!3556 = !DILocation(line: 161, column: 7, scope: !3527)
!3557 = !DILocation(line: 163, column: 10, scope: !3516)
!3558 = !DILocation(line: 163, column: 3, scope: !3516)
!3559 = !DILocation(line: 164, column: 1, scope: !3516)
