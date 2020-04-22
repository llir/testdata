; ModuleID = 'coreutils-8.32/src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
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
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), align 8, !dbg !0
@.str.30 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
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
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.80 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.88 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.89 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.92 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.94 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.95 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.96 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.97 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.98 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1093 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1096, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1117
  %3 = icmp eq i32 %0, 0, !dbg !1118
  br i1 %3, label %9, label %4, !dbg !1119

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1120, !tbaa !1122
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1120
  %7 = load i8*, i8** @program_name, align 8, !dbg !1120, !tbaa !1122
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1120
  br label %58, !dbg !1120

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1126
  %11 = load i8*, i8** @program_name, align 8, !dbg !1126, !tbaa !1122
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !1126
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1127
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1127, !tbaa !1122
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1127
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1128
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1128, !tbaa !1122
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1128
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !1129
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !1122
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1129
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !1100, metadata !DIExpression()) #12, !dbg !1130
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1131
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1113
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), metadata !1101, metadata !DIExpression()) #12, !dbg !1130
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1132
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  br label %24, !dbg !1133

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1134
  %28 = icmp eq i32 %27, 0, !dbg !1134
  br i1 %28, label %34, label %29, !dbg !1133

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1135
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1136
  %32 = load i8*, i8** %31, align 8, !dbg !1136, !tbaa !1137
  %33 = icmp eq i8* %32, null, !dbg !1139
  br i1 %33, label %34, label %24, !dbg !1140, !llvm.loop !1141

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1102, metadata !DIExpression()) #12, !dbg !1130
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1142
  %37 = load i8*, i8** %36, align 8, !dbg !1142, !tbaa !1144
  %38 = icmp eq i8* %37, null, !dbg !1145
  %39 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %39, metadata !1101, metadata !DIExpression()) #12, !dbg !1130
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !1147
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !1147
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %42, metadata !1109, metadata !DIExpression()) #12, !dbg !1130
  %43 = icmp eq i8* %42, null, !dbg !1149
  br i1 %43, label %51, label %44, !dbg !1151

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #21, !dbg !1152
  %46 = icmp eq i32 %45, 0, !dbg !1152
  br i1 %46, label %51, label %47, !dbg !1153

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1154
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1154, !tbaa !1122
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !1154
  br label %51, !dbg !1156

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !1157
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1157
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !1158
  %55 = icmp eq i8* %39, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), !dbg !1158
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1158
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #12, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1159
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1160
  unreachable, !dbg !1160
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1161 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i8** %1, metadata !1166, metadata !DIExpression()), !dbg !1167
  %3 = load i8*, i8** %1, align 8, !dbg !1168, !tbaa !1122
  tail call void @set_program_name(i8* %3) #12, !dbg !1169
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1170
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1171
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1172
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1173
  %8 = load i8*, i8** @Version, align 8, !dbg !1174, !tbaa !1122
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #12, !dbg !1175
  %9 = load i32, i32* @optind, align 4, !dbg !1176, !tbaa !1178
  %10 = add nsw i32 %9, 2, !dbg !1180
  %11 = icmp sgt i32 %10, %0, !dbg !1181
  br i1 %11, label %12, label %24, !dbg !1182

12:                                               ; preds = %2
  %13 = icmp slt i32 %9, %0, !dbg !1183
  br i1 %13, label %16, label %14, !dbg !1186

14:                                               ; preds = %12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !1187
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %15) #12, !dbg !1188
  br label %23, !dbg !1188

16:                                               ; preds = %12
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !1189
  %18 = load i32, i32* @optind, align 4, !dbg !1190, !tbaa !1178
  %19 = sext i32 %18 to i64, !dbg !1191
  %20 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !1191
  %21 = load i8*, i8** %20, align 8, !dbg !1191, !tbaa !1122
  %22 = tail call i8* @quote(i8* %21) #12, !dbg !1192
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %22) #12, !dbg !1193
  br label %23

23:                                               ; preds = %16, %14
  tail call void @usage(i32 1) #23, !dbg !1194
  unreachable, !dbg !1194

24:                                               ; preds = %2
  %25 = icmp slt i32 %10, %0, !dbg !1195
  br i1 %25, label %26, label %34, !dbg !1197

26:                                               ; preds = %24
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !1198
  %28 = load i32, i32* @optind, align 4, !dbg !1200, !tbaa !1178
  %29 = add nsw i32 %28, 2, !dbg !1201
  %30 = sext i32 %29 to i64, !dbg !1202
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !1202
  %32 = load i8*, i8** %31, align 8, !dbg !1202, !tbaa !1122
  %33 = tail call i8* @quote(i8* %32) #12, !dbg !1203
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %27, i8* %33) #12, !dbg !1204
  tail call void @usage(i32 1) #23, !dbg !1205
  unreachable, !dbg !1205

34:                                               ; preds = %24
  %35 = sext i32 %9 to i64, !dbg !1206
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35, !dbg !1206
  %37 = load i8*, i8** %36, align 8, !dbg !1206, !tbaa !1122
  %38 = add nsw i32 %9, 1, !dbg !1208
  %39 = sext i32 %38 to i64, !dbg !1209
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !1209
  %41 = load i8*, i8** %40, align 8, !dbg !1209, !tbaa !1122
  %42 = tail call i32 @link(i8* %37, i8* %41) #12, !dbg !1210
  %43 = icmp eq i32 %42, 0, !dbg !1211
  br i1 %43, label %59, label %44, !dbg !1212

44:                                               ; preds = %34
  %45 = tail call i32* @__errno_location() #24, !dbg !1213
  %46 = load i32, i32* %45, align 4, !dbg !1213, !tbaa !1178
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 5) #12, !dbg !1213
  %48 = load i32, i32* @optind, align 4, !dbg !1213, !tbaa !1178
  %49 = add nsw i32 %48, 1, !dbg !1213
  %50 = sext i32 %49 to i64, !dbg !1213
  %51 = getelementptr inbounds i8*, i8** %1, i64 %50, !dbg !1213
  %52 = load i8*, i8** %51, align 8, !dbg !1213, !tbaa !1122
  %53 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %52) #12, !dbg !1213
  %54 = load i32, i32* @optind, align 4, !dbg !1213, !tbaa !1178
  %55 = sext i32 %54 to i64, !dbg !1213
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !1213
  %57 = load i8*, i8** %56, align 8, !dbg !1213, !tbaa !1122
  %58 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %57) #12, !dbg !1213
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %46, i8* %47, i8* %53, i8* %58) #12, !dbg !1213
  unreachable, !dbg !1213

59:                                               ; preds = %34
  ret i32 0, !dbg !1214
}

; Function Attrs: nounwind
declare !dbg !407 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !411 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !427 i32 @link(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1215 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1218
  store i8* %0, i8** @file_name, align 8, !dbg !1219, !tbaa !1122
  ret void, !dbg !1220
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1221 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1225, metadata !DIExpression()), !dbg !1226
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1227, !tbaa !1228
  ret void, !dbg !1230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1231 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1236, !tbaa !1122
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1237
  %3 = icmp eq i32 %2, 0, !dbg !1238
  br i1 %3, label %22, label %4, !dbg !1239

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1240, !tbaa !1228, !range !1241
  %6 = icmp eq i8 %5, 0, !dbg !1240
  br i1 %6, label %11, label %7, !dbg !1242

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1243
  %9 = load i32, i32* %8, align 4, !dbg !1243, !tbaa !1178
  %10 = icmp eq i32 %9, 32, !dbg !1244
  br i1 %10, label %22, label %11, !dbg !1245

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !1246
  call void @llvm.dbg.value(metadata i8* %12, metadata !1233, metadata !DIExpression()), !dbg !1247
  %13 = load i8*, i8** @file_name, align 8, !dbg !1248, !tbaa !1122
  %14 = icmp eq i8* %13, null, !dbg !1248
  %15 = tail call i32* @__errno_location() #24, !dbg !1250
  %16 = load i32, i32* %15, align 4, !dbg !1250, !tbaa !1178
  br i1 %14, label %19, label %17, !dbg !1251

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1252
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.34, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1253
  br label %20, !dbg !1253

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.35, i64 0, i64 0), i8* %12) #12, !dbg !1254
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1255, !tbaa !1178
  tail call void @_exit(i32 %21) #22, !dbg !1256
  unreachable, !dbg !1256

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1257, !tbaa !1122
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1259
  %25 = icmp eq i32 %24, 0, !dbg !1260
  br i1 %25, label %28, label %26, !dbg !1261

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1262, !tbaa !1178
  tail call void @_exit(i32 %27) #22, !dbg !1263
  unreachable, !dbg !1263

28:                                               ; preds = %22
  ret void, !dbg !1264
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1265 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1269, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8** %1, metadata !1270, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %2, metadata !1271, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %3, metadata !1272, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8* %4, metadata !1273, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1274, metadata !DIExpression()), !dbg !1287
  %8 = load i32, i32* @opterr, align 4, !dbg !1288, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %8, metadata !1276, metadata !DIExpression()), !dbg !1287
  store i32 0, i32* @opterr, align 4, !dbg !1289, !tbaa !1178
  %9 = icmp eq i32 %0, 2, !dbg !1290
  br i1 %9, label %10, label %17, !dbg !1291

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %11, metadata !1275, metadata !DIExpression()), !dbg !1287
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1293

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1294
  br label %17, !dbg !1295

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1296
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1277, metadata !DIExpression()), !dbg !1297
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1298
  call void @llvm.va_start(i8* nonnull %14), !dbg !1298
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1299, !tbaa !1122
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1300
  call void @exit(i32 0) #22, !dbg !1301
  unreachable, !dbg !1301

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1302, !tbaa !1178
  store i32 0, i32* @optind, align 4, !dbg !1303, !tbaa !1178
  ret void, !dbg !1304
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1305 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1307, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8** %1, metadata !1308, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %2, metadata !1309, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %3, metadata !1310, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %4, metadata !1311, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i1 %5, metadata !1312, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1313, metadata !DIExpression()), !dbg !1322
  %9 = load i32, i32* @opterr, align 4, !dbg !1323, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %9, metadata !1315, metadata !DIExpression()), !dbg !1322
  store i32 1, i32* @opterr, align 4, !dbg !1324, !tbaa !1178
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %10, metadata !1316, metadata !DIExpression()), !dbg !1322
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %11, metadata !1314, metadata !DIExpression()), !dbg !1322
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1327

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1328
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1328
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1317, metadata !DIExpression()), !dbg !1329
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1330
  call void @llvm.va_start(i8* nonnull %13), !dbg !1330
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1331, !tbaa !1122
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1332
  call void @exit(i32 0) #22, !dbg !1333
  unreachable, !dbg !1333

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1334, !tbaa !1178
  br label %18, !dbg !1335

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1336
  br label %20, !dbg !1337

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1337, !tbaa !1178
  ret void, !dbg !1338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1341, metadata !DIExpression()), !dbg !1344
  %2 = icmp eq i8* %0, null, !dbg !1345
  br i1 %2, label %3, label %6, !dbg !1347

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1348, !tbaa !1122
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1350
  tail call void @abort() #22, !dbg !1351
  unreachable, !dbg !1351

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %7, metadata !1342, metadata !DIExpression()), !dbg !1344
  %8 = icmp eq i8* %7, null, !dbg !1353
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1354
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %10, metadata !1343, metadata !DIExpression()), !dbg !1344
  %11 = ptrtoint i8* %10 to i64, !dbg !1355
  %12 = ptrtoint i8* %0 to i64, !dbg !1355
  %13 = sub i64 %11, %12, !dbg !1355
  %14 = icmp sgt i64 %13, 6, !dbg !1357
  br i1 %14, label %15, label %24, !dbg !1358

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1359
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #21, !dbg !1360
  %18 = icmp eq i32 %17, 0, !dbg !1361
  br i1 %18, label %19, label %24, !dbg !1362

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1341, metadata !DIExpression()), !dbg !1344
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #21, !dbg !1363
  %21 = icmp eq i32 %20, 0, !dbg !1366
  br i1 %21, label %22, label %24, !dbg !1367

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %23, metadata !1341, metadata !DIExpression()), !dbg !1344
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1370, !tbaa !1122
  br label %24, !dbg !1371

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1341, metadata !DIExpression()), !dbg !1344
  store i8* %25, i8** @program_name, align 8, !dbg !1372, !tbaa !1122
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1373, !tbaa !1122
  ret void, !dbg !1374
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1375 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1380, metadata !DIExpression()), !dbg !1383
  %2 = tail call i32* @__errno_location() #24, !dbg !1384
  %3 = load i32, i32* %2, align 4, !dbg !1384, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %3, metadata !1381, metadata !DIExpression()), !dbg !1383
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1385
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1385
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1385
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1386
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1382, metadata !DIExpression()), !dbg !1383
  store i32 %3, i32* %2, align 4, !dbg !1387, !tbaa !1178
  ret %struct.quoting_options* %8, !dbg !1388
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1389 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1393, metadata !DIExpression()), !dbg !1394
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1395
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1395
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1396
  %5 = load i32, i32* %4, align 8, !dbg !1396, !tbaa !1397
  ret i32 %5, !dbg !1399
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1400 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1404, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i32 %1, metadata !1405, metadata !DIExpression()), !dbg !1406
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1407
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1407
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1408
  store i32 %1, i32* %5, align 8, !dbg !1409, !tbaa !1397
  ret void, !dbg !1410
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1411 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1415, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %1, metadata !1416, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i32 %2, metadata !1417, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata i8 %1, metadata !1418, metadata !DIExpression()), !dbg !1424
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1425
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1425
  %6 = lshr i8 %1, 5, !dbg !1426
  %7 = zext i8 %6 to i64, !dbg !1426
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1427
  call void @llvm.dbg.value(metadata i32* %8, metadata !1420, metadata !DIExpression()), !dbg !1424
  %9 = and i8 %1, 31, !dbg !1428
  %10 = zext i8 %9 to i32, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %10, metadata !1422, metadata !DIExpression()), !dbg !1424
  %11 = load i32, i32* %8, align 4, !dbg !1429, !tbaa !1178
  %12 = lshr i32 %11, %10, !dbg !1430
  %13 = and i32 %12, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %13, metadata !1423, metadata !DIExpression()), !dbg !1424
  %14 = and i32 %2, 1, !dbg !1432
  %15 = xor i32 %13, %14, !dbg !1433
  %16 = shl i32 %15, %10, !dbg !1434
  %17 = xor i32 %16, %11, !dbg !1435
  store i32 %17, i32* %8, align 4, !dbg !1435, !tbaa !1178
  ret i32 %13, !dbg !1436
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1437 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1441, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %1, metadata !1442, metadata !DIExpression()), !dbg !1444
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1445
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1441, metadata !DIExpression()), !dbg !1444
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1448
  %6 = load i32, i32* %5, align 4, !dbg !1448, !tbaa !1449
  call void @llvm.dbg.value(metadata i32 %6, metadata !1443, metadata !DIExpression()), !dbg !1444
  store i32 %1, i32* %5, align 4, !dbg !1450, !tbaa !1449
  ret i32 %6, !dbg !1451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1452 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1456, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %1, metadata !1457, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %2, metadata !1458, metadata !DIExpression()), !dbg !1459
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1460
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1456, metadata !DIExpression()), !dbg !1459
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1463
  store i32 10, i32* %6, align 8, !dbg !1464, !tbaa !1397
  %7 = icmp ne i8* %1, null, !dbg !1465
  %8 = icmp ne i8* %2, null, !dbg !1467
  %9 = and i1 %7, %8, !dbg !1468
  br i1 %9, label %11, label %10, !dbg !1468

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1469
  unreachable, !dbg !1469

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1470
  store i8* %1, i8** %12, align 8, !dbg !1471, !tbaa !1472
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1473
  store i8* %2, i8** %13, align 8, !dbg !1474, !tbaa !1475
  ret void, !dbg !1476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1481, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %1, metadata !1482, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i64 %3, metadata !1484, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1485, metadata !DIExpression()), !dbg !1489
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1490
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1490
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1486, metadata !DIExpression()), !dbg !1489
  %8 = tail call i32* @__errno_location() #24, !dbg !1491
  %9 = load i32, i32* %8, align 4, !dbg !1491, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %9, metadata !1487, metadata !DIExpression()), !dbg !1489
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1492
  %11 = load i32, i32* %10, align 8, !dbg !1492, !tbaa !1397
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1493
  %13 = load i32, i32* %12, align 4, !dbg !1493, !tbaa !1449
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1494
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1495
  %16 = load i8*, i8** %15, align 8, !dbg !1495, !tbaa !1472
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1496
  %18 = load i8*, i8** %17, align 8, !dbg !1496, !tbaa !1475
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %19, metadata !1488, metadata !DIExpression()), !dbg !1489
  store i32 %9, i32* %8, align 4, !dbg !1498, !tbaa !1178
  ret i64 %19, !dbg !1499
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1500 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1506, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %1, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %2, metadata !1508, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %3, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %4, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %5, metadata !1511, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32* %6, metadata !1512, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %7, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %8, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* null, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1519, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1520, metadata !DIExpression()), !dbg !1564
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1565
  %14 = icmp eq i64 %13, 1, !dbg !1566
  call void @llvm.dbg.value(metadata i1 %14, metadata !1521, metadata !DIExpression()), !dbg !1564
  %15 = lshr i32 %5, 1, !dbg !1567
  %16 = trunc i32 %15 to i8, !dbg !1567
  %17 = and i8 %16, 1, !dbg !1567
  call void @llvm.dbg.value(metadata i8 %17, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1525, metadata !DIExpression()), !dbg !1564
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1568
  %19 = and i32 %5, 4, !dbg !1570
  %20 = icmp eq i32 %19, 0, !dbg !1570
  %21 = and i32 %5, 1, !dbg !1573
  %22 = icmp eq i32 %21, 0, !dbg !1573
  %23 = bitcast i64* %10 to i8*, !dbg !1576
  %24 = bitcast i32* %12 to i8*, !dbg !1577
  %25 = icmp eq i32* %6, null, !dbg !1578
  br label %26, !dbg !1580

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1581
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1582
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1583
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1584
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1564
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1585
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1586
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1587
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %38, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %37, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %36, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %35, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %34, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %33, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %32, metadata !1519, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %31, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %30, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %29, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %28, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %27, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1558), !dbg !1588
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
  ], !dbg !1589

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %35, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 5, metadata !1510, metadata !DIExpression()), !dbg !1564
  br label %92, !dbg !1590

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 5, metadata !1510, metadata !DIExpression()), !dbg !1564
  %42 = and i8 %35, 1, !dbg !1592
  %43 = icmp eq i8 %42, 0, !dbg !1592
  br i1 %43, label %44, label %92, !dbg !1590

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1594
  br i1 %45, label %92, label %46, !dbg !1597

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1594, !tbaa !1598
  br label %92, !dbg !1594

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %27), !dbg !1599
  call void @llvm.dbg.value(metadata i8* %48, metadata !1513, metadata !DIExpression()), !dbg !1564
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %27), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %49, metadata !1514, metadata !DIExpression()), !dbg !1564
  br label %50, !dbg !1604

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %51, metadata !1513, metadata !DIExpression()), !dbg !1564
  %53 = and i8 %35, 1, !dbg !1605
  %54 = icmp eq i8 %53, 0, !dbg !1605
  br i1 %54, label %55, label %70, !dbg !1607

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1516, metadata !DIExpression()), !dbg !1564
  %56 = load i8, i8* %51, align 1, !dbg !1608, !tbaa !1598
  %57 = icmp eq i8 %56, 0, !dbg !1611
  br i1 %57, label %70, label %58, !dbg !1611

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %61, metadata !1516, metadata !DIExpression()), !dbg !1564
  %62 = icmp ult i64 %61, %39, !dbg !1612
  br i1 %62, label %63, label %65, !dbg !1615

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1612
  store i8 %59, i8* %64, align 1, !dbg !1612, !tbaa !1598
  br label %65, !dbg !1612

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %66, metadata !1516, metadata !DIExpression()), !dbg !1564
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %67, metadata !1518, metadata !DIExpression()), !dbg !1564
  %68 = load i8, i8* %67, align 1, !dbg !1608, !tbaa !1598
  %69 = icmp eq i8 %68, 0, !dbg !1611
  br i1 %69, label %70, label %58, !dbg !1611, !llvm.loop !1617

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1619
  call void @llvm.dbg.value(metadata i64 %71, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %52, metadata !1518, metadata !DIExpression()), !dbg !1564
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %72, metadata !1519, metadata !DIExpression()), !dbg !1564
  br label %92, !dbg !1621

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1520, metadata !DIExpression()), !dbg !1564
  br label %74, !dbg !1622

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %75, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1522, metadata !DIExpression()), !dbg !1564
  br label %76, !dbg !1623

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1584
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %78, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %77, metadata !1520, metadata !DIExpression()), !dbg !1564
  %79 = and i8 %78, 1, !dbg !1624
  %80 = icmp eq i8 %79, 0, !dbg !1624
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1626
  br label %82, !dbg !1626

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1564
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1567
  call void @llvm.dbg.value(metadata i8 %84, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %83, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  %85 = and i8 %84, 1, !dbg !1627
  %86 = icmp eq i8 %85, 0, !dbg !1627
  br i1 %86, label %87, label %92, !dbg !1629

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1630
  br i1 %88, label %92, label %89, !dbg !1633

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1630, !tbaa !1598
  br label %92, !dbg !1630

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1522, metadata !DIExpression()), !dbg !1564
  br label %92, !dbg !1634

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1635
  unreachable, !dbg !1635

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1619
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %40 ], !dbg !1564
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1564
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1564
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %100, metadata !1522, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %98, metadata !1519, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %96, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 %93, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1515, metadata !DIExpression()), !dbg !1564
  %101 = and i8 %99, 1, !dbg !1636
  %102 = icmp ne i8 %101, 0, !dbg !1636
  %103 = icmp ne i32 %93, 2, !dbg !1636
  %104 = and i1 %103, %102, !dbg !1636
  %105 = icmp ne i64 %98, 0, !dbg !1636
  %106 = and i1 %105, %104, !dbg !1636
  %107 = icmp ugt i64 %98, 1, !dbg !1636
  %108 = and i8 %100, 1, !dbg !1638
  %109 = icmp eq i8 %108, 0, !dbg !1638
  %110 = icmp eq i32 %93, 2, !dbg !1641
  %111 = or i1 %103, %109, !dbg !1643
  %112 = icmp ne i8 %108, 0, !dbg !1645
  %113 = and i1 %110, %112, !dbg !1645
  %114 = xor i1 %102, true, !dbg !1646
  %115 = xor i1 %104, true, !dbg !1578
  %116 = and i1 %109, %115, !dbg !1578
  %117 = or i1 %25, %116, !dbg !1578
  %118 = and i8 %99, %100, !dbg !1647
  %119 = and i8 %118, 1, !dbg !1647
  %120 = icmp ne i8 %119, 0, !dbg !1647
  %121 = and i1 %120, %105, !dbg !1647
  br label %122, !dbg !1649

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1650
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1619
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1581
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1585
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1586
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1587
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %126, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %123, metadata !1515, metadata !DIExpression()), !dbg !1564
  %131 = icmp eq i64 %126, -1, !dbg !1651
  br i1 %131, label %132, label %136, !dbg !1652

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1653
  %134 = load i8, i8* %133, align 1, !dbg !1653, !tbaa !1598
  %135 = icmp eq i8 %134, 0, !dbg !1654
  br i1 %135, label %581, label %138, !dbg !1655

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1656
  br i1 %137, label %581, label %138, !dbg !1655

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 0, metadata !1533, metadata !DIExpression()), !dbg !1657
  br i1 %106, label %139, label %154, !dbg !1658

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1659
  %141 = and i1 %107, %131, !dbg !1660
  br i1 %141, label %142, label %144, !dbg !1660

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %143, metadata !1509, metadata !DIExpression()), !dbg !1564
  br label %144, !dbg !1662

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1509, metadata !DIExpression()), !dbg !1564
  %146 = icmp ugt i64 %140, %145, !dbg !1663
  br i1 %146, label %154, label %147, !dbg !1664

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1665
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1666
  %150 = icmp ne i32 %149, 0, !dbg !1667
  %151 = or i1 %150, %109, !dbg !1668
  %152 = xor i1 %150, true, !dbg !1668
  %153 = zext i1 %152 to i8, !dbg !1668
  br i1 %151, label %154, label %639, !dbg !1668

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8 %156, metadata !1531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %155, metadata !1509, metadata !DIExpression()), !dbg !1564
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1669
  %158 = load i8, i8* %157, align 1, !dbg !1669, !tbaa !1598
  call void @llvm.dbg.value(metadata i8 %158, metadata !1526, metadata !DIExpression()), !dbg !1657
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
  ], !dbg !1670

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1671

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1672

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1532, metadata !DIExpression()), !dbg !1657
  %162 = and i8 %127, 1, !dbg !1675
  %163 = icmp eq i8 %162, 0, !dbg !1675
  %164 = and i1 %110, %163, !dbg !1675
  br i1 %164, label %165, label %181, !dbg !1675

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1677
  br i1 %166, label %167, label %169, !dbg !1681

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1677
  store i8 39, i8* %168, align 1, !dbg !1677, !tbaa !1598
  br label %169, !dbg !1677

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %170, metadata !1516, metadata !DIExpression()), !dbg !1564
  %171 = icmp ult i64 %170, %130, !dbg !1682
  br i1 %171, label %172, label %174, !dbg !1685

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1682
  store i8 36, i8* %173, align 1, !dbg !1682, !tbaa !1598
  br label %174, !dbg !1682

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %175, metadata !1516, metadata !DIExpression()), !dbg !1564
  %176 = icmp ult i64 %175, %130, !dbg !1686
  br i1 %176, label %177, label %179, !dbg !1689

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1686
  store i8 39, i8* %178, align 1, !dbg !1686, !tbaa !1598
  br label %179, !dbg !1686

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %180, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %181, !dbg !1690

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1564
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %183, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %182, metadata !1516, metadata !DIExpression()), !dbg !1564
  %184 = icmp ult i64 %182, %130, !dbg !1691
  br i1 %184, label %185, label %187, !dbg !1694

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1691
  store i8 92, i8* %186, align 1, !dbg !1691, !tbaa !1598
  br label %187, !dbg !1691

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %188, metadata !1516, metadata !DIExpression()), !dbg !1564
  br i1 %103, label %189, label %463, !dbg !1695

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1697
  %191 = icmp ult i64 %190, %155, !dbg !1698
  br i1 %191, label %192, label %463, !dbg !1699

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1700
  %194 = load i8, i8* %193, align 1, !dbg !1700, !tbaa !1598
  %195 = add i8 %194, -48, !dbg !1701
  %196 = icmp ult i8 %195, 10, !dbg !1701
  br i1 %196, label %197, label %463, !dbg !1701

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1702
  br i1 %198, label %199, label %201, !dbg !1706

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1702
  store i8 48, i8* %200, align 1, !dbg !1702, !tbaa !1598
  br label %201, !dbg !1702

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %202, metadata !1516, metadata !DIExpression()), !dbg !1564
  %203 = icmp ult i64 %202, %130, !dbg !1707
  br i1 %203, label %204, label %206, !dbg !1710

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1707
  store i8 48, i8* %205, align 1, !dbg !1707, !tbaa !1598
  br label %206, !dbg !1707

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %207, metadata !1516, metadata !DIExpression()), !dbg !1564
  br label %463, !dbg !1711

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1712

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1713

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1714

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1715

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1716
  %214 = icmp ult i64 %213, %155, !dbg !1717
  br i1 %214, label %215, label %463, !dbg !1718

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1719
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1720
  %218 = load i8, i8* %217, align 1, !dbg !1720, !tbaa !1598
  %219 = icmp eq i8 %218, 63, !dbg !1721
  br i1 %219, label %220, label %463, !dbg !1722

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1723
  %222 = load i8, i8* %221, align 1, !dbg !1723, !tbaa !1598
  %223 = sext i8 %222 to i32, !dbg !1723
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
  ], !dbg !1724

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1725

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i64 %213, metadata !1515, metadata !DIExpression()), !dbg !1564
  %226 = icmp ult i64 %124, %130, !dbg !1727
  br i1 %226, label %227, label %229, !dbg !1730

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1727
  store i8 63, i8* %228, align 1, !dbg !1727, !tbaa !1598
  br label %229, !dbg !1727

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %230, metadata !1516, metadata !DIExpression()), !dbg !1564
  %231 = icmp ult i64 %230, %130, !dbg !1731
  br i1 %231, label %232, label %234, !dbg !1734

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1731
  store i8 34, i8* %233, align 1, !dbg !1731, !tbaa !1598
  br label %234, !dbg !1731

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %235, metadata !1516, metadata !DIExpression()), !dbg !1564
  %236 = icmp ult i64 %235, %130, !dbg !1735
  br i1 %236, label %237, label %239, !dbg !1738

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1735
  store i8 34, i8* %238, align 1, !dbg !1735, !tbaa !1598
  br label %239, !dbg !1735

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %240, metadata !1516, metadata !DIExpression()), !dbg !1564
  %241 = icmp ult i64 %240, %130, !dbg !1739
  br i1 %241, label %242, label %244, !dbg !1742

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1739
  store i8 63, i8* %243, align 1, !dbg !1739, !tbaa !1598
  br label %244, !dbg !1739

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %245, metadata !1516, metadata !DIExpression()), !dbg !1564
  br label %463, !dbg !1743

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1530, metadata !DIExpression()), !dbg !1657
  br label %256, !dbg !1744

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1530, metadata !DIExpression()), !dbg !1657
  br label %256, !dbg !1745

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1530, metadata !DIExpression()), !dbg !1657
  br label %254, !dbg !1746

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1530, metadata !DIExpression()), !dbg !1657
  br label %254, !dbg !1747

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1530, metadata !DIExpression()), !dbg !1657
  br label %256, !dbg !1748

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1530, metadata !DIExpression()), !dbg !1657
  br i1 %110, label %252, label %253, !dbg !1749

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1750

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1753

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %255, metadata !1530, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.label(metadata !1559), !dbg !1755
  br i1 %111, label %256, label %625, !dbg !1756

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1754
  call void @llvm.dbg.value(metadata i8 %257, metadata !1530, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.label(metadata !1560), !dbg !1758
  br i1 %102, label %488, label %463, !dbg !1759

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1760

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1761, !tbaa !1598
  %261 = icmp eq i8 %260, 0, !dbg !1762
  br i1 %261, label %262, label %463, !dbg !1763

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1764
  br i1 %263, label %264, label %463, !dbg !1766

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1533, metadata !DIExpression()), !dbg !1657
  br label %265, !dbg !1767

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8 %266, metadata !1533, metadata !DIExpression()), !dbg !1657
  br i1 %111, label %463, label %625, !dbg !1768

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1533, metadata !DIExpression()), !dbg !1657
  br i1 %110, label %268, label %463, !dbg !1769

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1770

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1772
  %271 = icmp ne i64 %125, 0, !dbg !1774
  %272 = or i1 %271, %270, !dbg !1775
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1775
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %274, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %273, metadata !1517, metadata !DIExpression()), !dbg !1564
  %275 = icmp ult i64 %124, %274, !dbg !1776
  br i1 %275, label %276, label %278, !dbg !1779

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1776
  store i8 39, i8* %277, align 1, !dbg !1776, !tbaa !1598
  br label %278, !dbg !1776

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %279, metadata !1516, metadata !DIExpression()), !dbg !1564
  %280 = icmp ult i64 %279, %274, !dbg !1780
  br i1 %280, label %281, label %283, !dbg !1783

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1780
  store i8 92, i8* %282, align 1, !dbg !1780, !tbaa !1598
  br label %283, !dbg !1780

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %284, metadata !1516, metadata !DIExpression()), !dbg !1564
  %285 = icmp ult i64 %284, %274, !dbg !1784
  br i1 %285, label %286, label %288, !dbg !1787

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1784
  store i8 39, i8* %287, align 1, !dbg !1784, !tbaa !1598
  br label %288, !dbg !1784

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %289, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %463, !dbg !1788

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1789

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1534, metadata !DIExpression()), !dbg !1790
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1791
  %293 = load i16*, i16** %292, align 8, !dbg !1791, !tbaa !1122
  %294 = zext i8 %158 to i64, !dbg !1791
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1791
  %296 = load i16, i16* %295, align 2, !dbg !1791, !tbaa !1793
  %297 = lshr i16 %296, 14, !dbg !1795
  %298 = trunc i16 %297 to i8, !dbg !1795
  %299 = and i8 %298, 1, !dbg !1795
  call void @llvm.dbg.value(metadata i8 %299, metadata !1537, metadata !DIExpression()), !dbg !1790
  br label %355, !dbg !1796

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1797
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1538, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %23, metadata !1799, metadata !DIExpression()) #12, !dbg !1807
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()) #12, !dbg !1807
  call void @llvm.dbg.value(metadata i64 8, metadata !1806, metadata !DIExpression()) #12, !dbg !1807
  store i64 0, i64* %10, align 8, !dbg !1809
  call void @llvm.dbg.value(metadata i64 0, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 1, metadata !1537, metadata !DIExpression()), !dbg !1790
  %301 = icmp eq i64 %155, -1, !dbg !1810
  br i1 %301, label %302, label %304, !dbg !1812

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %303, metadata !1509, metadata !DIExpression()), !dbg !1564
  br label %304, !dbg !1814

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1657
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  br label %306, !dbg !1815

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1816
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1817
  call void @llvm.dbg.value(metadata i8 %308, metadata !1537, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1818
  %309 = add i64 %307, %123, !dbg !1819
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1820
  %311 = sub i64 %305, %309, !dbg !1821
  call void @llvm.dbg.value(metadata i32* %12, metadata !1544, metadata !DIExpression(DW_OP_deref)), !dbg !1577
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %312, metadata !1547, metadata !DIExpression()), !dbg !1577
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1823

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  %314 = icmp ugt i64 %305, %309, !dbg !1824
  br i1 %314, label %315, label %340, !dbg !1826

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1827
  br label %317, !dbg !1827

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1534, metadata !DIExpression()), !dbg !1790
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1828
  %321 = load i8, i8* %320, align 1, !dbg !1828, !tbaa !1598
  %322 = icmp eq i8 %321, 0, !dbg !1826
  br i1 %322, label %340, label %323, !dbg !1827

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %324, metadata !1534, metadata !DIExpression()), !dbg !1790
  %325 = add i64 %324, %123, !dbg !1830
  %326 = icmp ult i64 %325, %305, !dbg !1824
  br i1 %326, label %317, label %340, !dbg !1826, !llvm.loop !1831

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1832
  %329 = and i1 %113, %328, !dbg !1835
  call void @llvm.dbg.value(metadata i64 1, metadata !1548, metadata !DIExpression()), !dbg !1836
  br i1 %329, label %330, label %343, !dbg !1835

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1548, metadata !DIExpression()), !dbg !1836
  %332 = add i64 %331, %309, !dbg !1837
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1838
  %334 = load i8, i8* %333, align 1, !dbg !1838, !tbaa !1598
  %335 = sext i8 %334 to i32, !dbg !1838
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1839

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %337, metadata !1548, metadata !DIExpression()), !dbg !1836
  %338 = icmp eq i64 %337, %312, !dbg !1832
  br i1 %338, label %343, label %330, !dbg !1841, !llvm.loop !1842

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %308, metadata !1537, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %307, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %308, metadata !1537, metadata !DIExpression()), !dbg !1790
  br label %340, !dbg !1844

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1844
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1845, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %344, metadata !1544, metadata !DIExpression()), !dbg !1577
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !1847
  %346 = icmp eq i32 %345, 0, !dbg !1847
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1848
  call void @llvm.dbg.value(metadata i8 %347, metadata !1537, metadata !DIExpression()), !dbg !1790
  %348 = add i64 %312, %307, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %348, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 %347, metadata !1537, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %348, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1844
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1850
  %350 = icmp eq i32 %349, 0, !dbg !1851
  br i1 %350, label %306, label %351, !dbg !1852, !llvm.loop !1853

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1855
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i32 2, metadata !1510, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %99, metadata !1520, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %305, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1844
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1855
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1657
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1856
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1856
  call void @llvm.dbg.value(metadata i8 %358, metadata !1537, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %357, metadata !1534, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 %356, metadata !1509, metadata !DIExpression()), !dbg !1564
  %359 = and i8 %358, 1, !dbg !1857
  %360 = icmp ne i8 %359, 0, !dbg !1857
  call void @llvm.dbg.value(metadata i8 %359, metadata !1533, metadata !DIExpression()), !dbg !1657
  %361 = icmp ult i64 %357, 2, !dbg !1858
  %362 = or i1 %360, %114, !dbg !1859
  %363 = and i1 %361, %362, !dbg !1860
  br i1 %363, label %463, label %364, !dbg !1860

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %365, metadata !1555, metadata !DIExpression()), !dbg !1862
  br label %366, !dbg !1863

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1650
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1564
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1585
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1657
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1657
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1864
  call void @llvm.dbg.value(metadata i8 %372, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %371, metadata !1531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %370, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %369, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %368, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %367, metadata !1515, metadata !DIExpression()), !dbg !1564
  br i1 %362, label %419, label %373, !dbg !1865

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1870

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1532, metadata !DIExpression()), !dbg !1657
  %375 = and i8 %369, 1, !dbg !1873
  %376 = icmp eq i8 %375, 0, !dbg !1873
  %377 = and i1 %110, %376, !dbg !1873
  br i1 %377, label %378, label %394, !dbg !1873

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1875
  br i1 %379, label %380, label %382, !dbg !1879

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1875
  store i8 39, i8* %381, align 1, !dbg !1875, !tbaa !1598
  br label %382, !dbg !1875

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %383, metadata !1516, metadata !DIExpression()), !dbg !1564
  %384 = icmp ult i64 %383, %130, !dbg !1880
  br i1 %384, label %385, label %387, !dbg !1883

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1880
  store i8 36, i8* %386, align 1, !dbg !1880, !tbaa !1598
  br label %387, !dbg !1880

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %388, metadata !1516, metadata !DIExpression()), !dbg !1564
  %389 = icmp ult i64 %388, %130, !dbg !1884
  br i1 %389, label %390, label %392, !dbg !1887

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1884
  store i8 39, i8* %391, align 1, !dbg !1884, !tbaa !1598
  br label %392, !dbg !1884

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %393, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %394, !dbg !1888

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1564
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %396, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %395, metadata !1516, metadata !DIExpression()), !dbg !1564
  %397 = icmp ult i64 %395, %130, !dbg !1889
  br i1 %397, label %398, label %400, !dbg !1892

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1889
  store i8 92, i8* %399, align 1, !dbg !1889, !tbaa !1598
  br label %400, !dbg !1889

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %401, metadata !1516, metadata !DIExpression()), !dbg !1564
  %402 = icmp ult i64 %401, %130, !dbg !1893
  br i1 %402, label %403, label %407, !dbg !1896

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1893
  %405 = or i8 %404, 48, !dbg !1893
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1893
  store i8 %405, i8* %406, align 1, !dbg !1893, !tbaa !1598
  br label %407, !dbg !1893

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %408, metadata !1516, metadata !DIExpression()), !dbg !1564
  %409 = icmp ult i64 %408, %130, !dbg !1897
  br i1 %409, label %410, label %415, !dbg !1900

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1897
  %412 = and i8 %411, 7, !dbg !1897
  %413 = or i8 %412, 48, !dbg !1897
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1897
  store i8 %413, i8* %414, align 1, !dbg !1897, !tbaa !1598
  br label %415, !dbg !1897

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %416, metadata !1516, metadata !DIExpression()), !dbg !1564
  %417 = and i8 %370, 7, !dbg !1901
  %418 = or i8 %417, 48, !dbg !1902
  call void @llvm.dbg.value(metadata i8 %418, metadata !1526, metadata !DIExpression()), !dbg !1657
  br label %428, !dbg !1903

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1904
  %421 = icmp eq i8 %420, 0, !dbg !1904
  br i1 %421, label %428, label %422, !dbg !1906

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1907
  br i1 %423, label %424, label %426, !dbg !1911

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1907
  store i8 92, i8* %425, align 1, !dbg !1907, !tbaa !1598
  br label %426, !dbg !1907

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %427, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1531, metadata !DIExpression()), !dbg !1657
  br label %428, !dbg !1912

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1564
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1585
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1657
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1657
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8 %433, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %432, metadata !1531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %431, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %430, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %429, metadata !1516, metadata !DIExpression()), !dbg !1564
  %434 = add i64 %367, 1, !dbg !1913
  %435 = icmp ugt i64 %365, %434, !dbg !1915
  br i1 %435, label %436, label %526, !dbg !1916

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1917
  %438 = icmp ne i8 %437, 0, !dbg !1917
  %439 = and i8 %433, 1, !dbg !1917
  %440 = icmp eq i8 %439, 0, !dbg !1917
  %441 = and i1 %438, %440, !dbg !1917
  br i1 %441, label %442, label %453, !dbg !1917

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1920
  br i1 %443, label %444, label %446, !dbg !1924

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1920
  store i8 39, i8* %445, align 1, !dbg !1920, !tbaa !1598
  br label %446, !dbg !1920

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %447, metadata !1516, metadata !DIExpression()), !dbg !1564
  %448 = icmp ult i64 %447, %130, !dbg !1925
  br i1 %448, label %449, label %451, !dbg !1928

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1925
  store i8 39, i8* %450, align 1, !dbg !1925, !tbaa !1598
  br label %451, !dbg !1925

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1928
  call void @llvm.dbg.value(metadata i64 %452, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %453, !dbg !1929

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1930
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %455, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %454, metadata !1516, metadata !DIExpression()), !dbg !1564
  %456 = icmp ult i64 %454, %130, !dbg !1931
  br i1 %456, label %457, label %459, !dbg !1934

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1931
  store i8 %431, i8* %458, align 1, !dbg !1931, !tbaa !1598
  br label %459, !dbg !1931

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %460, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %434, metadata !1515, metadata !DIExpression()), !dbg !1564
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1935
  %462 = load i8, i8* %461, align 1, !dbg !1935, !tbaa !1598
  call void @llvm.dbg.value(metadata i8 %462, metadata !1526, metadata !DIExpression()), !dbg !1657
  br label %366, !dbg !1936, !llvm.loop !1937

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1650
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1564
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1581
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1940
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1564
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1564
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1657
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1657
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1657
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %472, metadata !1533, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %471, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %156, metadata !1531, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %470, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %469, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %468, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %467, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %466, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %465, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %464, metadata !1515, metadata !DIExpression()), !dbg !1564
  br i1 %117, label %486, label %474, !dbg !1941

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1942
  %476 = zext i8 %475 to i64, !dbg !1942
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1943
  %478 = load i32, i32* %477, align 4, !dbg !1943, !tbaa !1178
  %479 = and i8 %470, 31, !dbg !1944
  %480 = zext i8 %479 to i32, !dbg !1944
  %481 = shl nuw i32 1, %480, !dbg !1945
  %482 = and i32 %478, %481, !dbg !1945
  %483 = icmp eq i32 %482, 0, !dbg !1945
  %484 = icmp eq i8 %156, 0, !dbg !1946
  %485 = and i1 %484, %483, !dbg !1947
  br i1 %485, label %526, label %488, !dbg !1947

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1946
  br i1 %487, label %526, label %488, !dbg !1948

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1949
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1564
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1581
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1940
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1585
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1586
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1657
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1657
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %496, metadata !1533, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %495, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %494, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %493, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %492, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %491, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %490, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %489, metadata !1515, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1561), !dbg !1950
  br i1 %109, label %498, label %629, !dbg !1951

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1532, metadata !DIExpression()), !dbg !1657
  %499 = and i8 %493, 1, !dbg !1953
  %500 = icmp eq i8 %499, 0, !dbg !1953
  %501 = and i1 %110, %500, !dbg !1953
  br i1 %501, label %502, label %518, !dbg !1953

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1955
  br i1 %503, label %504, label %506, !dbg !1959

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1955
  store i8 39, i8* %505, align 1, !dbg !1955, !tbaa !1598
  br label %506, !dbg !1955

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %507, metadata !1516, metadata !DIExpression()), !dbg !1564
  %508 = icmp ult i64 %507, %497, !dbg !1960
  br i1 %508, label %509, label %511, !dbg !1963

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1960
  store i8 36, i8* %510, align 1, !dbg !1960, !tbaa !1598
  br label %511, !dbg !1960

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %512, metadata !1516, metadata !DIExpression()), !dbg !1564
  %513 = icmp ult i64 %512, %497, !dbg !1964
  br i1 %513, label %514, label %516, !dbg !1967

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1964
  store i8 39, i8* %515, align 1, !dbg !1964, !tbaa !1598
  br label %516, !dbg !1964

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %517, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 1, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %518, !dbg !1968

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1657
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %520, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %519, metadata !1516, metadata !DIExpression()), !dbg !1564
  %521 = icmp ult i64 %519, %497, !dbg !1969
  br i1 %521, label %522, label %524, !dbg !1972

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1969
  store i8 92, i8* %523, align 1, !dbg !1969, !tbaa !1598
  br label %524, !dbg !1969

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %525, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %536, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %535, metadata !1533, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %534, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %533, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %532, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %531, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %530, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %529, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %528, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %527, metadata !1515, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1562), !dbg !1973
  br label %553, !dbg !1974

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1949
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1564
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1581
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1940
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1585
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1586
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1977
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1657
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1657
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %535, metadata !1533, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %534, metadata !1532, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %533, metadata !1526, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 %532, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %531, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %530, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %529, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %528, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %527, metadata !1515, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1562), !dbg !1973
  %537 = and i8 %531, 1, !dbg !1974
  %538 = icmp ne i8 %537, 0, !dbg !1974
  %539 = and i8 %534, 1, !dbg !1974
  %540 = icmp eq i8 %539, 0, !dbg !1974
  %541 = and i1 %538, %540, !dbg !1974
  br i1 %541, label %542, label %553, !dbg !1974

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1978
  br i1 %543, label %544, label %546, !dbg !1982

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1978
  store i8 39, i8* %545, align 1, !dbg !1978, !tbaa !1598
  br label %546, !dbg !1978

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %547, metadata !1516, metadata !DIExpression()), !dbg !1564
  %548 = icmp ult i64 %547, %536, !dbg !1983
  br i1 %548, label %549, label %551, !dbg !1986

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1983
  store i8 39, i8* %550, align 1, !dbg !1983, !tbaa !1598
  br label %551, !dbg !1983

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %552, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !1523, metadata !DIExpression()), !dbg !1564
  br label %553, !dbg !1987

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1657
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1564
  call void @llvm.dbg.value(metadata i8 %562, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %561, metadata !1516, metadata !DIExpression()), !dbg !1564
  %563 = icmp ult i64 %561, %554, !dbg !1988
  br i1 %563, label %564, label %566, !dbg !1991

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !1988
  store i8 %556, i8* %565, align 1, !dbg !1988, !tbaa !1598
  br label %566, !dbg !1988

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %567, metadata !1516, metadata !DIExpression()), !dbg !1564
  %568 = and i8 %555, 1, !dbg !1992
  %569 = icmp eq i8 %568, 0, !dbg !1992
  %570 = select i1 %569, i8 0, i8 %129, !dbg !1994
  call void @llvm.dbg.value(metadata i8 %570, metadata !1525, metadata !DIExpression()), !dbg !1564
  br label %571, !dbg !1995

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1949
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1564
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1581
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1940
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1585
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1564
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1587
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %578, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %577, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %576, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %575, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %574, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %573, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %572, metadata !1515, metadata !DIExpression()), !dbg !1564
  %580 = add i64 %572, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %580, metadata !1515, metadata !DIExpression()), !dbg !1564
  br label %122, !dbg !1997, !llvm.loop !1998

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %127, metadata !1523, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %128, metadata !1524, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8 %129, metadata !1525, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  %583 = icmp eq i64 %124, 0, !dbg !2000
  %584 = and i1 %110, %583, !dbg !2002
  %585 = xor i1 %584, true, !dbg !2002
  %586 = or i1 %109, %585, !dbg !2002
  br i1 %586, label %587, label %629, !dbg !2002

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2003
  %589 = xor i1 %588, true, !dbg !2003
  %590 = and i8 %128, 1, !dbg !2005
  %591 = icmp eq i8 %590, 0, !dbg !2005
  %592 = or i1 %591, %589, !dbg !2003
  br i1 %592, label %602, label %593, !dbg !2003

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2006
  %595 = icmp eq i8 %594, 0, !dbg !2006
  br i1 %595, label %598, label %596, !dbg !2009

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %94, metadata !1513, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %95, metadata !1514, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %125, metadata !1517, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %582, metadata !1509, metadata !DIExpression()), !dbg !1564
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2010
  br label %645, !dbg !2011

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2012
  %600 = icmp ne i64 %125, 0, !dbg !2014
  %601 = and i1 %600, %599, !dbg !2015
  br i1 %601, label %26, label %602, !dbg !2015

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %130, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  %603 = icmp ne i8* %97, null, !dbg !2016
  %604 = and i1 %603, %109, !dbg !2018
  br i1 %604, label %605, label %620, !dbg !2018

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %124, metadata !1516, metadata !DIExpression()), !dbg !1564
  %606 = load i8, i8* %97, align 1, !dbg !2019, !tbaa !1598
  %607 = icmp eq i8 %606, 0, !dbg !2022
  br i1 %607, label %620, label %608, !dbg !2022

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1518, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %611, metadata !1516, metadata !DIExpression()), !dbg !1564
  %612 = icmp ult i64 %611, %130, !dbg !2023
  br i1 %612, label %613, label %615, !dbg !2026

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2023
  store i8 %609, i8* %614, align 1, !dbg !2023, !tbaa !1598
  br label %615, !dbg !2023

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %616, metadata !1516, metadata !DIExpression()), !dbg !1564
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %617, metadata !1518, metadata !DIExpression()), !dbg !1564
  %618 = load i8, i8* %617, align 1, !dbg !2019, !tbaa !1598
  %619 = icmp eq i8 %618, 0, !dbg !2022
  br i1 %619, label %620, label %608, !dbg !2022, !llvm.loop !2028

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1619
  call void @llvm.dbg.value(metadata i64 %621, metadata !1516, metadata !DIExpression()), !dbg !1564
  %622 = icmp ult i64 %621, %130, !dbg !2030
  br i1 %622, label %623, label %645, !dbg !2032

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2033
  store i8 0, i8* %624, align 1, !dbg !2034, !tbaa !1598
  br label %645, !dbg !2033

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %630, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1563), !dbg !2035
  %627 = icmp eq i8 %101, 0, !dbg !2036
  %628 = select i1 %627, i32 2, i32 4, !dbg !2036
  br label %635, !dbg !2036

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1507, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.value(metadata i64 %630, metadata !1509, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.label(metadata !1563), !dbg !2035
  %632 = icmp eq i32 %93, 2, !dbg !2038
  %633 = icmp eq i8 %101, 0, !dbg !2036
  %634 = select i1 %633, i32 2, i32 4, !dbg !2036
  br i1 %632, label %635, label %639, !dbg !2036

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2036

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1510, metadata !DIExpression()), !dbg !1564
  %643 = and i32 %5, -3, !dbg !2039
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2040
  br label %645, !dbg !2041

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2042
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2043 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2047, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %1, metadata !2048, metadata !DIExpression()), !dbg !2051
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2052
  call void @llvm.dbg.value(metadata i8* %3, metadata !2049, metadata !DIExpression()), !dbg !2051
  %4 = icmp eq i8* %3, %0, !dbg !2053
  br i1 %4, label %5, label %71, !dbg !2055

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2056
  call void @llvm.dbg.value(metadata i8* %6, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* %6, metadata !2057, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* undef, metadata !2063, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 85, metadata !2064, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 84, metadata !2065, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 70, metadata !2066, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 45, metadata !2067, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 56, metadata !2068, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 0, metadata !2069, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2073
  %7 = load i8, i8* %6, align 1, !dbg !2076, !tbaa !1598
  %8 = and i8 %7, -33, !dbg !2076
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2076

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2078, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* undef, metadata !2083, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 84, metadata !2084, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 70, metadata !2085, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 45, metadata !2086, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 56, metadata !2087, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2088, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2092
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2096
  %11 = load i8, i8* %10, align 1, !dbg !2096, !tbaa !1598
  %12 = and i8 %11, -33, !dbg !2096
  %13 = icmp eq i8 %12, 84, !dbg !2096
  br i1 %13, label %14, label %68, !dbg !2096

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2098, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8* undef, metadata !2103, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 70, metadata !2104, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 45, metadata !2105, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 56, metadata !2106, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2107, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2108, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2109, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !2110, metadata !DIExpression()), !dbg !2111
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2115
  %16 = load i8, i8* %15, align 1, !dbg !2115, !tbaa !1598
  %17 = and i8 %16, -33, !dbg !2115
  %18 = icmp eq i8 %17, 70, !dbg !2115
  br i1 %18, label %19, label %68, !dbg !2115

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2117, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* undef, metadata !2122, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 45, metadata !2123, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 56, metadata !2124, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2125, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2126, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2129
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2133
  %21 = load i8, i8* %20, align 1, !dbg !2133, !tbaa !1598
  %22 = icmp eq i8 %21, 45, !dbg !2133
  br i1 %22, label %23, label %68, !dbg !2135

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2136, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8* undef, metadata !2141, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 56, metadata !2142, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2147
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2151
  %25 = load i8, i8* %24, align 1, !dbg !2151, !tbaa !1598
  %26 = icmp eq i8 %25, 56, !dbg !2151
  br i1 %26, label %27, label %68, !dbg !2153

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2154, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* undef, metadata !2159, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2164
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2168
  %29 = load i8, i8* %28, align 1, !dbg !2168, !tbaa !1598
  %30 = icmp eq i8 %29, 0, !dbg !2168
  br i1 %30, label %31, label %68, !dbg !2170

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2171, !tbaa !1598
  %33 = icmp eq i8 %32, 96, !dbg !2172
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !2171
  br label %71, !dbg !2173

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2078, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8* undef, metadata !2083, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 66, metadata !2084, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 49, metadata !2085, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 56, metadata !2086, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 48, metadata !2087, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 51, metadata !2088, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 48, metadata !2089, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2090, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i8 0, metadata !2091, metadata !DIExpression()), !dbg !2174
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2178
  %37 = load i8, i8* %36, align 1, !dbg !2178, !tbaa !1598
  %38 = and i8 %37, -33, !dbg !2178
  %39 = icmp eq i8 %38, 66, !dbg !2178
  br i1 %39, label %40, label %68, !dbg !2178

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2098, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* undef, metadata !2103, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 49, metadata !2104, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 56, metadata !2105, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 48, metadata !2106, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 51, metadata !2107, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 48, metadata !2108, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2109, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 0, metadata !2110, metadata !DIExpression()), !dbg !2179
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2181
  %42 = load i8, i8* %41, align 1, !dbg !2181, !tbaa !1598
  %43 = icmp eq i8 %42, 49, !dbg !2181
  br i1 %43, label %44, label %68, !dbg !2182

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2117, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* undef, metadata !2122, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 56, metadata !2123, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 48, metadata !2124, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 51, metadata !2125, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 48, metadata !2126, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2127, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2128, metadata !DIExpression()), !dbg !2183
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2185
  %46 = load i8, i8* %45, align 1, !dbg !2185, !tbaa !1598
  %47 = icmp eq i8 %46, 56, !dbg !2185
  br i1 %47, label %48, label %68, !dbg !2186

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2136, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* undef, metadata !2141, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 48, metadata !2142, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 51, metadata !2143, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 48, metadata !2144, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2187
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2189
  %50 = load i8, i8* %49, align 1, !dbg !2189, !tbaa !1598
  %51 = icmp eq i8 %50, 48, !dbg !2189
  br i1 %51, label %52, label %68, !dbg !2190

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2154, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8* undef, metadata !2159, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 51, metadata !2160, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 48, metadata !2161, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2191
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2193
  %54 = load i8, i8* %53, align 1, !dbg !2193, !tbaa !1598
  %55 = icmp eq i8 %54, 51, !dbg !2193
  br i1 %55, label %56, label %68, !dbg !2194

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2195, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* undef, metadata !2200, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2203, metadata !DIExpression()), !dbg !2204
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2208
  %58 = load i8, i8* %57, align 1, !dbg !2208, !tbaa !1598
  %59 = icmp eq i8 %58, 48, !dbg !2208
  br i1 %59, label %60, label %68, !dbg !2210

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2211, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8* undef, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2219
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2223
  %62 = load i8, i8* %61, align 1, !dbg !2223, !tbaa !1598
  %63 = icmp eq i8 %62, 0, !dbg !2223
  br i1 %63, label %64, label %68, !dbg !2225

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2226, !tbaa !1598
  %66 = icmp eq i8 %65, 96, !dbg !2227
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !2226
  br label %71, !dbg !2228

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2229
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !2230
  br label %71, !dbg !2231

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2051
  ret i8* %72, !dbg !2232
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
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2237, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i64 %1, metadata !2238, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2239, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8* %0, metadata !2241, metadata !DIExpression()) #12, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()) #12, !dbg !2254
  call void @llvm.dbg.value(metadata i64* null, metadata !2247, metadata !DIExpression()) #12, !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2248, metadata !DIExpression()) #12, !dbg !2254
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2256
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2249, metadata !DIExpression()) #12, !dbg !2254
  %6 = tail call i32* @__errno_location() #24, !dbg !2257
  %7 = load i32, i32* %6, align 4, !dbg !2257, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %7, metadata !2250, metadata !DIExpression()) #12, !dbg !2254
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2258
  %9 = load i32, i32* %8, align 4, !dbg !2258, !tbaa !1449
  %10 = or i32 %9, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i32 %10, metadata !2251, metadata !DIExpression()) #12, !dbg !2254
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2260
  %12 = load i32, i32* %11, align 8, !dbg !2260, !tbaa !1397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2261
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2262
  %15 = load i8*, i8** %14, align 8, !dbg !2262, !tbaa !1472
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2263
  %17 = load i8*, i8** %16, align 8, !dbg !2263, !tbaa !1475
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2264
  %19 = add i64 %18, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %19, metadata !2252, metadata !DIExpression()) #12, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %19, metadata !2266, metadata !DIExpression()) #12, !dbg !2271
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2273
  call void @llvm.dbg.value(metadata i8* %20, metadata !2253, metadata !DIExpression()) #12, !dbg !2254
  %21 = load i32, i32* %11, align 8, !dbg !2274, !tbaa !1397
  %22 = load i8*, i8** %14, align 8, !dbg !2275, !tbaa !1472
  %23 = load i8*, i8** %16, align 8, !dbg !2276, !tbaa !1475
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2277
  store i32 %7, i32* %6, align 4, !dbg !2278, !tbaa !1178
  ret i8* %20, !dbg !2279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2241, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %1, metadata !2246, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64* %2, metadata !2247, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2248, metadata !DIExpression()), !dbg !2280
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2281
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2249, metadata !DIExpression()), !dbg !2280
  %7 = tail call i32* @__errno_location() #24, !dbg !2282
  %8 = load i32, i32* %7, align 4, !dbg !2282, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %8, metadata !2250, metadata !DIExpression()), !dbg !2280
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2283
  %10 = load i32, i32* %9, align 4, !dbg !2283, !tbaa !1449
  %11 = icmp ne i64* %2, null, !dbg !2284
  %12 = xor i1 %11, true, !dbg !2284
  %13 = zext i1 %12 to i32, !dbg !2284
  %14 = or i32 %10, %13, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %14, metadata !2251, metadata !DIExpression()), !dbg !2280
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2286
  %16 = load i32, i32* %15, align 8, !dbg !2286, !tbaa !1397
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2287
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2288
  %19 = load i8*, i8** %18, align 8, !dbg !2288, !tbaa !1472
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2289
  %21 = load i8*, i8** %20, align 8, !dbg !2289, !tbaa !1475
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2290
  %23 = add i64 %22, 1, !dbg !2291
  call void @llvm.dbg.value(metadata i64 %23, metadata !2252, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %23, metadata !2266, metadata !DIExpression()) #12, !dbg !2292
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %24, metadata !2253, metadata !DIExpression()), !dbg !2280
  %25 = load i32, i32* %15, align 8, !dbg !2295, !tbaa !1397
  %26 = load i8*, i8** %18, align 8, !dbg !2296, !tbaa !1472
  %27 = load i8*, i8** %20, align 8, !dbg !2297, !tbaa !1475
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2298
  store i32 %8, i32* %7, align 4, !dbg !2299, !tbaa !1178
  br i1 %11, label %29, label %30, !dbg !2300

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2301, !tbaa !2303
  br label %30, !dbg !2305

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2306
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2307 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2311, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 1, metadata !2310, metadata !DIExpression()), !dbg !2312
  %2 = load i32, i32* @nslots, align 4, !dbg !2313, !tbaa !1178
  %3 = icmp sgt i32 %2, 1, !dbg !2316
  br i1 %3, label %4, label %12, !dbg !2317

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2310, metadata !DIExpression()), !dbg !2312
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2318
  %7 = load i8*, i8** %6, align 8, !dbg !2318, !tbaa !2319
  tail call void @free(i8* %7) #12, !dbg !2321
  %8 = add nuw nsw i64 %5, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %8, metadata !2310, metadata !DIExpression()), !dbg !2312
  %9 = load i32, i32* @nslots, align 4, !dbg !2313, !tbaa !1178
  %10 = sext i32 %9 to i64, !dbg !2316
  %11 = icmp slt i64 %8, %10, !dbg !2316
  br i1 %11, label %4, label %12, !dbg !2317, !llvm.loop !2323

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2325
  %14 = load i8*, i8** %13, align 8, !dbg !2325, !tbaa !2319
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2327
  br i1 %15, label %17, label %16, !dbg !2328

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2329
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2331, !tbaa !2332
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2333, !tbaa !2319
  br label %17, !dbg !2334

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2335
  br i1 %18, label %21, label %19, !dbg !2337

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2338
  tail call void @free(i8* %20) #12, !dbg !2340
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2341, !tbaa !1122
  br label %21, !dbg !2342

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2343, !tbaa !1178
  ret void, !dbg !2344
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()), !dbg !2349
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2350
  ret i8* %3, !dbg !2351
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2352 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2356, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i8* %1, metadata !2357, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %2, metadata !2358, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2359, metadata !DIExpression()), !dbg !2371
  %5 = tail call i32* @__errno_location() #24, !dbg !2372
  %6 = load i32, i32* %5, align 4, !dbg !2372, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %6, metadata !2360, metadata !DIExpression()), !dbg !2371
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2373, !tbaa !1122
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2361, metadata !DIExpression()), !dbg !2371
  %8 = icmp slt i32 %0, 0, !dbg !2374
  br i1 %8, label %9, label %10, !dbg !2376

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2377
  unreachable, !dbg !2377

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2378, !tbaa !1178
  %12 = icmp sgt i32 %11, %0, !dbg !2379
  br i1 %12, label %34, label %13, !dbg !2380

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2381
  call void @llvm.dbg.value(metadata i1 %14, metadata !2362, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2365, metadata !DIExpression()), !dbg !2382
  %15 = icmp eq i32 %0, 2147483647, !dbg !2383
  br i1 %15, label %16, label %17, !dbg !2385

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2386
  unreachable, !dbg !2386

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2387
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2387
  %20 = add nuw nsw i32 %0, 1, !dbg !2388
  %21 = sext i32 %20 to i64, !dbg !2389
  %22 = shl nuw nsw i64 %21, 4, !dbg !2390
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2391
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2391
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2361, metadata !DIExpression()), !dbg !2371
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2392, !tbaa !1122
  br i1 %14, label %25, label %26, !dbg !2393

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2394, !tbaa.struct !2396
  br label %26, !dbg !2397

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2398, !tbaa !1178
  %28 = sext i32 %27 to i64, !dbg !2399
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2399
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2400
  %31 = sub nsw i32 %20, %27, !dbg !2401
  %32 = sext i32 %31 to i64, !dbg !2402
  %33 = shl nsw i64 %32, 4, !dbg !2403
  call void @llvm.dbg.value(metadata i8* %30, metadata !1799, metadata !DIExpression()) #12, !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !1805, metadata !DIExpression()) #12, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %33, metadata !1806, metadata !DIExpression()) #12, !dbg !2404
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2406
  store i32 %20, i32* @nslots, align 4, !dbg !2407, !tbaa !1178
  br label %34, !dbg !2408

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2371
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2361, metadata !DIExpression()), !dbg !2371
  %36 = zext i32 %0 to i64, !dbg !2409
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2410
  %38 = load i64, i64* %37, align 8, !dbg !2410, !tbaa !2332
  call void @llvm.dbg.value(metadata i64 %38, metadata !2366, metadata !DIExpression()), !dbg !2411
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2412
  %40 = load i8*, i8** %39, align 8, !dbg !2412, !tbaa !2319
  call void @llvm.dbg.value(metadata i8* %40, metadata !2368, metadata !DIExpression()), !dbg !2411
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2413
  %42 = load i32, i32* %41, align 4, !dbg !2413, !tbaa !1449
  %43 = or i32 %42, 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %43, metadata !2369, metadata !DIExpression()), !dbg !2411
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2415
  %45 = load i32, i32* %44, align 8, !dbg !2415, !tbaa !1397
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2416
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2417
  %48 = load i8*, i8** %47, align 8, !dbg !2417, !tbaa !1472
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2418
  %50 = load i8*, i8** %49, align 8, !dbg !2418, !tbaa !1475
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2419
  call void @llvm.dbg.value(metadata i64 %51, metadata !2370, metadata !DIExpression()), !dbg !2411
  %52 = icmp ugt i64 %38, %51, !dbg !2420
  br i1 %52, label %63, label %53, !dbg !2422

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %54, metadata !2366, metadata !DIExpression()), !dbg !2411
  store i64 %54, i64* %37, align 8, !dbg !2425, !tbaa !2332
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2426
  br i1 %55, label %57, label %56, !dbg !2428

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2429
  br label %57, !dbg !2429

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2266, metadata !DIExpression()) #12, !dbg !2430
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %58, metadata !2368, metadata !DIExpression()), !dbg !2411
  store i8* %58, i8** %39, align 8, !dbg !2433, !tbaa !2319
  %59 = load i32, i32* %44, align 8, !dbg !2434, !tbaa !1397
  %60 = load i8*, i8** %47, align 8, !dbg !2435, !tbaa !1472
  %61 = load i8*, i8** %49, align 8, !dbg !2436, !tbaa !1475
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2437
  br label %63, !dbg !2438

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2411
  call void @llvm.dbg.value(metadata i8* %64, metadata !2368, metadata !DIExpression()), !dbg !2411
  store i32 %6, i32* %5, align 4, !dbg !2439, !tbaa !1178
  ret i8* %64, !dbg !2440
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %1, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %2, metadata !2447, metadata !DIExpression()), !dbg !2448
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2449
  ret i8* %4, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2451 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()) #12, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %0, metadata !2348, metadata !DIExpression()) #12, !dbg !2455
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2457
  ret i8* %2, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2459 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %1, metadata !2464, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 0, metadata !2445, metadata !DIExpression()) #12, !dbg !2466
  call void @llvm.dbg.value(metadata i8* %0, metadata !2446, metadata !DIExpression()) #12, !dbg !2466
  call void @llvm.dbg.value(metadata i64 %1, metadata !2447, metadata !DIExpression()) #12, !dbg !2466
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2468
  ret i8* %3, !dbg !2469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2470 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* %2, metadata !2474, metadata !DIExpression()), !dbg !2476
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2477
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %1, metadata !2479, metadata !DIExpression()) #12, !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2484, metadata !DIExpression()) #12, !dbg !2487
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2487, !alias.scope !2488
  %6 = icmp eq i32 %1, 10, !dbg !2491
  br i1 %6, label %7, label %8, !dbg !2493

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2494, !noalias !2488
  unreachable, !dbg !2494

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2495
  store i32 %1, i32* %9, align 8, !dbg !2496, !tbaa !1397, !alias.scope !2488
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2498
  ret i8* %10, !dbg !2499
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2500 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2504, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %1, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %2, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %3, metadata !2507, metadata !DIExpression()), !dbg !2509
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %1, metadata !2479, metadata !DIExpression()) #12, !dbg !2512
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2484, metadata !DIExpression()) #12, !dbg !2514
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2514, !alias.scope !2515
  %7 = icmp eq i32 %1, 10, !dbg !2518
  br i1 %7, label %8, label %9, !dbg !2519

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2520, !noalias !2515
  unreachable, !dbg !2520

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2521
  store i32 %1, i32* %10, align 8, !dbg !2522, !tbaa !1397, !alias.scope !2515
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2524
  ret i8* %11, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2526 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2484, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2475, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2472, metadata !DIExpression()) #12, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()) #12, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %1, metadata !2474, metadata !DIExpression()) #12, !dbg !2537
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()) #12, !dbg !2539
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2532, !alias.scope !2540
  %5 = icmp eq i32 %0, 10, !dbg !2543
  br i1 %5, label %6, label %7, !dbg !2544

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2545, !noalias !2540
  unreachable, !dbg !2545

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2546
  store i32 %0, i32* %8, align 8, !dbg !2547, !tbaa !1397, !alias.scope !2540
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2549
  ret i8* %9, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2551 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2484, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2508, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %2, metadata !2557, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2504, metadata !DIExpression()) #12, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()) #12, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !2506, metadata !DIExpression()) #12, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %2, metadata !2507, metadata !DIExpression()) #12, !dbg !2563
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2564
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()) #12, !dbg !2565
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2558, !alias.scope !2566
  %6 = icmp eq i32 %0, 10, !dbg !2569
  br i1 %6, label %7, label %8, !dbg !2570

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2571, !noalias !2566
  unreachable, !dbg !2571

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2572
  store i32 %0, i32* %9, align 8, !dbg !2573, !tbaa !1397, !alias.scope !2566
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2575
  ret i8* %10, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2577 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2582, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %2, metadata !2583, metadata !DIExpression()), !dbg !2585
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2586
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2588, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1415, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 %2, metadata !1416, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i32 1, metadata !1417, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 %2, metadata !1418, metadata !DIExpression()), !dbg !2590
  %6 = lshr i8 %2, 5, !dbg !2592
  %7 = zext i8 %6 to i64, !dbg !2592
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2593
  call void @llvm.dbg.value(metadata i32* %8, metadata !1420, metadata !DIExpression()), !dbg !2590
  %9 = and i8 %2, 31, !dbg !2594
  %10 = zext i8 %9 to i32, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %10, metadata !1422, metadata !DIExpression()), !dbg !2590
  %11 = load i32, i32* %8, align 4, !dbg !2595, !tbaa !1178
  %12 = lshr i32 %11, %10, !dbg !2596
  %13 = and i32 %12, 1, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %13, metadata !1423, metadata !DIExpression()), !dbg !2590
  %14 = xor i32 %13, 1, !dbg !2598
  %15 = shl i32 %14, %10, !dbg !2599
  %16 = xor i32 %15, %11, !dbg !2600
  store i32 %16, i32* %8, align 4, !dbg !2600, !tbaa !1178
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2602
  ret i8* %17, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2604 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2584, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 %1, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()) #12, !dbg !2613
  call void @llvm.dbg.value(metadata i64 -1, metadata !2582, metadata !DIExpression()) #12, !dbg !2613
  call void @llvm.dbg.value(metadata i8 %1, metadata !2583, metadata !DIExpression()) #12, !dbg !2613
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2615, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1415, metadata !DIExpression()) #12, !dbg !2616
  call void @llvm.dbg.value(metadata i8 %1, metadata !1416, metadata !DIExpression()) #12, !dbg !2616
  call void @llvm.dbg.value(metadata i32 1, metadata !1417, metadata !DIExpression()) #12, !dbg !2616
  call void @llvm.dbg.value(metadata i8 %1, metadata !1418, metadata !DIExpression()) #12, !dbg !2616
  %5 = lshr i8 %1, 5, !dbg !2618
  %6 = zext i8 %5 to i64, !dbg !2618
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2619
  call void @llvm.dbg.value(metadata i32* %7, metadata !1420, metadata !DIExpression()) #12, !dbg !2616
  %8 = and i8 %1, 31, !dbg !2620
  %9 = zext i8 %8 to i32, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %9, metadata !1422, metadata !DIExpression()) #12, !dbg !2616
  %10 = load i32, i32* %7, align 4, !dbg !2621, !tbaa !1178
  %11 = lshr i32 %10, %9, !dbg !2622
  %12 = and i32 %11, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %12, metadata !1423, metadata !DIExpression()) #12, !dbg !2616
  %13 = xor i32 %12, 1, !dbg !2624
  %14 = shl i32 %13, %9, !dbg !2625
  %15 = xor i32 %14, %10, !dbg !2626
  store i32 %15, i32* %7, align 4, !dbg !2626, !tbaa !1178
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2628
  ret i8* %16, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2630 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2584, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()) #12, !dbg !2637
  call void @llvm.dbg.value(metadata i8 58, metadata !2609, metadata !DIExpression()) #12, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()) #12, !dbg !2638
  call void @llvm.dbg.value(metadata i64 -1, metadata !2582, metadata !DIExpression()) #12, !dbg !2638
  call void @llvm.dbg.value(metadata i8 58, metadata !2583, metadata !DIExpression()) #12, !dbg !2638
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2639
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2639
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2640, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1415, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !1416, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i32 1, metadata !1417, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i8 58, metadata !1418, metadata !DIExpression()) #12, !dbg !2641
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2643
  call void @llvm.dbg.value(metadata i32* %4, metadata !1420, metadata !DIExpression()) #12, !dbg !2641
  call void @llvm.dbg.value(metadata i32 26, metadata !1422, metadata !DIExpression()) #12, !dbg !2641
  %5 = load i32, i32* %4, align 4, !dbg !2644, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %5, metadata !1423, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2641
  %6 = or i32 %5, 67108864, !dbg !2645
  store i32 %6, i32* %4, align 4, !dbg !2645, !tbaa !1178
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2646
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2647
  ret i8* %7, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2649 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2584, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %1, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %1, metadata !2582, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i8 58, metadata !2583, metadata !DIExpression()) #12, !dbg !2656
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2658, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1415, metadata !DIExpression()) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i8 58, metadata !1416, metadata !DIExpression()) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i32 1, metadata !1417, metadata !DIExpression()) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i8 58, metadata !1418, metadata !DIExpression()) #12, !dbg !2659
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2661
  call void @llvm.dbg.value(metadata i32* %5, metadata !1420, metadata !DIExpression()) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i32 26, metadata !1422, metadata !DIExpression()) #12, !dbg !2659
  %6 = load i32, i32* %5, align 4, !dbg !2662, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %6, metadata !1423, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2659
  %7 = or i32 %6, 67108864, !dbg !2663
  store i32 %7, i32* %5, align 4, !dbg !2663, !tbaa !1178
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2664
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2665
  ret i8* %8, !dbg !2666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2667 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2484, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2673
  call void @llvm.dbg.value(metadata i32 %0, metadata !2669, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1, metadata !2670, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()), !dbg !2675
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2676
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2672, metadata !DIExpression()), !dbg !2677
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2678
  call void @llvm.dbg.value(metadata i32 %1, metadata !2479, metadata !DIExpression()) #12, !dbg !2679
  call void @llvm.dbg.value(metadata i32 0, metadata !2484, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2679
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2673, !alias.scope !2680
  %8 = icmp eq i32 %1, 10, !dbg !2683
  br i1 %8, label %9, label %10, !dbg !2684

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2685, !noalias !2680
  unreachable, !dbg !2685

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2679
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2678
  store i32 %1, i32* %11, align 8, !dbg !2678, !tbaa.struct !2589
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2678
  %13 = bitcast i32* %12 to i8*, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2678, !tbaa.struct !2589
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1415, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 58, metadata !1416, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 1, metadata !1417, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8 58, metadata !1418, metadata !DIExpression()), !dbg !2686
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2688
  call void @llvm.dbg.value(metadata i32* %14, metadata !1420, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 26, metadata !1422, metadata !DIExpression()), !dbg !2686
  %15 = load i32, i32* %14, align 4, !dbg !2689, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %15, metadata !1423, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2686
  %16 = or i32 %15, 67108864, !dbg !2690
  store i32 %16, i32* %14, align 4, !dbg !2690, !tbaa !1178
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2691
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2692
  ret i8* %17, !dbg !2693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2694 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2702, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %2, metadata !2700, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %3, metadata !2701, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()) #12, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()) #12, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %2, metadata !2709, metadata !DIExpression()) #12, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %3, metadata !2710, metadata !DIExpression()) #12, !dbg !2715
  call void @llvm.dbg.value(metadata i64 -1, metadata !2711, metadata !DIExpression()) #12, !dbg !2715
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2717, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1456, metadata !DIExpression()) #12, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !1457, metadata !DIExpression()) #12, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !1458, metadata !DIExpression()) #12, !dbg !2718
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1456, metadata !DIExpression()) #12, !dbg !2718
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2720
  store i32 10, i32* %7, align 8, !dbg !2721, !tbaa !1397
  %8 = icmp ne i8* %1, null, !dbg !2722
  %9 = icmp ne i8* %2, null, !dbg !2723
  %10 = and i1 %8, %9, !dbg !2724
  br i1 %10, label %12, label %11, !dbg !2724

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2725
  unreachable, !dbg !2725

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2726
  store i8* %1, i8** %13, align 8, !dbg !2727, !tbaa !1472
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2728
  store i8* %2, i8** %14, align 8, !dbg !2729, !tbaa !1475
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2731
  ret i8* %15, !dbg !2732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2703 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2707, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %2, metadata !2709, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %3, metadata !2710, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %4, metadata !2711, metadata !DIExpression()), !dbg !2733
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2734
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2734
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2702, metadata !DIExpression()), !dbg !2735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2736, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1456, metadata !DIExpression()) #12, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !1457, metadata !DIExpression()) #12, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %2, metadata !1458, metadata !DIExpression()) #12, !dbg !2737
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1456, metadata !DIExpression()) #12, !dbg !2737
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2739
  store i32 10, i32* %8, align 8, !dbg !2740, !tbaa !1397
  %9 = icmp ne i8* %1, null, !dbg !2741
  %10 = icmp ne i8* %2, null, !dbg !2742
  %11 = and i1 %9, %10, !dbg !2743
  br i1 %11, label %13, label %12, !dbg !2743

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2744
  unreachable, !dbg !2744

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2745
  store i8* %1, i8** %14, align 8, !dbg !2746, !tbaa !1472
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2747
  store i8* %2, i8** %15, align 8, !dbg !2748, !tbaa !1475
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2749
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2750
  ret i8* %16, !dbg !2751
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2752 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2702, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %0, metadata !2756, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %1, metadata !2757, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %2, metadata !2758, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()) #12, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #12, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %1, metadata !2700, metadata !DIExpression()) #12, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %2, metadata !2701, metadata !DIExpression()) #12, !dbg !2763
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()) #12, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()) #12, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %1, metadata !2709, metadata !DIExpression()) #12, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %2, metadata !2710, metadata !DIExpression()) #12, !dbg !2764
  call void @llvm.dbg.value(metadata i64 -1, metadata !2711, metadata !DIExpression()) #12, !dbg !2764
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2765
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2766, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1456, metadata !DIExpression()) #12, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()) #12, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !1458, metadata !DIExpression()) #12, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1456, metadata !DIExpression()) #12, !dbg !2767
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2769
  store i32 10, i32* %6, align 8, !dbg !2770, !tbaa !1397
  %7 = icmp ne i8* %0, null, !dbg !2771
  %8 = icmp ne i8* %1, null, !dbg !2772
  %9 = and i1 %7, %8, !dbg !2773
  br i1 %9, label %11, label %10, !dbg !2773

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2774
  unreachable, !dbg !2774

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2775
  store i8* %0, i8** %12, align 8, !dbg !2776, !tbaa !1472
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2777
  store i8* %1, i8** %13, align 8, !dbg !2778, !tbaa !1475
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2780
  ret i8* %14, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2782 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2702, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !2786, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %1, metadata !2787, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %2, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %3, metadata !2789, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2707, metadata !DIExpression()) #12, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %0, metadata !2708, metadata !DIExpression()) #12, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !2709, metadata !DIExpression()) #12, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %2, metadata !2710, metadata !DIExpression()) #12, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %3, metadata !2711, metadata !DIExpression()) #12, !dbg !2793
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2795, !tbaa.struct !2589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1456, metadata !DIExpression()) #12, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()) #12, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %1, metadata !1458, metadata !DIExpression()) #12, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1456, metadata !DIExpression()) #12, !dbg !2796
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2798
  store i32 10, i32* %7, align 8, !dbg !2799, !tbaa !1397
  %8 = icmp ne i8* %0, null, !dbg !2800
  %9 = icmp ne i8* %1, null, !dbg !2801
  %10 = and i1 %8, %9, !dbg !2802
  br i1 %10, label %12, label %11, !dbg !2802

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2803
  unreachable, !dbg !2803

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2804
  store i8* %0, i8** %13, align 8, !dbg !2805, !tbaa !1472
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2806
  store i8* %1, i8** %14, align 8, !dbg !2807, !tbaa !1475
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2808
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2809
  ret i8* %15, !dbg !2810
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2811 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %2, metadata !2817, metadata !DIExpression()), !dbg !2818
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2819
  ret i8* %4, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2821 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %1, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2815, metadata !DIExpression()) #12, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()) #12, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %1, metadata !2817, metadata !DIExpression()) #12, !dbg !2828
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2830
  ret i8* %3, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2832 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i32 %0, metadata !2815, metadata !DIExpression()) #12, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %1, metadata !2816, metadata !DIExpression()) #12, !dbg !2839
  call void @llvm.dbg.value(metadata i64 -1, metadata !2817, metadata !DIExpression()) #12, !dbg !2839
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2841
  ret i8* %3, !dbg !2842
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2843 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression()) #12, !dbg !2847
  call void @llvm.dbg.value(metadata i8* %0, metadata !2837, metadata !DIExpression()) #12, !dbg !2847
  call void @llvm.dbg.value(metadata i32 0, metadata !2815, metadata !DIExpression()) #12, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()) #12, !dbg !2849
  call void @llvm.dbg.value(metadata i64 -1, metadata !2817, metadata !DIExpression()) #12, !dbg !2849
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2851
  ret i8* %2, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2853 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2861, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %1, metadata !2862, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %2, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %3, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8** %4, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %5, metadata !2866, metadata !DIExpression()), !dbg !2867
  %7 = icmp eq i8* %1, null, !dbg !2868
  br i1 %7, label %10, label %8, !dbg !2870

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2871
  br label %12, !dbg !2871

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2872
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #12, !dbg !2873
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !2873
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2874
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #12, !dbg !2875
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.79, i64 0, i64 0)) #12, !dbg !2875
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2876
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
  ], !dbg !2877

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #12, !dbg !2878
  %21 = load i8*, i8** %4, align 8, !dbg !2878, !tbaa !1122
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !2878
  br label %147, !dbg !2880

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #12, !dbg !2881
  %25 = load i8*, i8** %4, align 8, !dbg !2881, !tbaa !1122
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2881
  %27 = load i8*, i8** %26, align 8, !dbg !2881, !tbaa !1122
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !2881
  br label %147, !dbg !2882

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #12, !dbg !2883
  %31 = load i8*, i8** %4, align 8, !dbg !2883, !tbaa !1122
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2883
  %33 = load i8*, i8** %32, align 8, !dbg !2883, !tbaa !1122
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2883
  %35 = load i8*, i8** %34, align 8, !dbg !2883, !tbaa !1122
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !2883
  br label %147, !dbg !2884

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #12, !dbg !2885
  %39 = load i8*, i8** %4, align 8, !dbg !2885, !tbaa !1122
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2885
  %41 = load i8*, i8** %40, align 8, !dbg !2885, !tbaa !1122
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2885
  %43 = load i8*, i8** %42, align 8, !dbg !2885, !tbaa !1122
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2885
  %45 = load i8*, i8** %44, align 8, !dbg !2885, !tbaa !1122
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !2885
  br label %147, !dbg !2886

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #12, !dbg !2887
  %49 = load i8*, i8** %4, align 8, !dbg !2887, !tbaa !1122
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2887
  %51 = load i8*, i8** %50, align 8, !dbg !2887, !tbaa !1122
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2887
  %53 = load i8*, i8** %52, align 8, !dbg !2887, !tbaa !1122
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2887
  %55 = load i8*, i8** %54, align 8, !dbg !2887, !tbaa !1122
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2887
  %57 = load i8*, i8** %56, align 8, !dbg !2887, !tbaa !1122
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !2887
  br label %147, !dbg !2888

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #12, !dbg !2889
  %61 = load i8*, i8** %4, align 8, !dbg !2889, !tbaa !1122
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2889
  %63 = load i8*, i8** %62, align 8, !dbg !2889, !tbaa !1122
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2889
  %65 = load i8*, i8** %64, align 8, !dbg !2889, !tbaa !1122
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2889
  %67 = load i8*, i8** %66, align 8, !dbg !2889, !tbaa !1122
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2889
  %69 = load i8*, i8** %68, align 8, !dbg !2889, !tbaa !1122
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2889
  %71 = load i8*, i8** %70, align 8, !dbg !2889, !tbaa !1122
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !2889
  br label %147, !dbg !2890

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #12, !dbg !2891
  %75 = load i8*, i8** %4, align 8, !dbg !2891, !tbaa !1122
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2891
  %77 = load i8*, i8** %76, align 8, !dbg !2891, !tbaa !1122
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2891
  %79 = load i8*, i8** %78, align 8, !dbg !2891, !tbaa !1122
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2891
  %81 = load i8*, i8** %80, align 8, !dbg !2891, !tbaa !1122
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2891
  %83 = load i8*, i8** %82, align 8, !dbg !2891, !tbaa !1122
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2891
  %85 = load i8*, i8** %84, align 8, !dbg !2891, !tbaa !1122
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2891
  %87 = load i8*, i8** %86, align 8, !dbg !2891, !tbaa !1122
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !2891
  br label %147, !dbg !2892

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #12, !dbg !2893
  %91 = load i8*, i8** %4, align 8, !dbg !2893, !tbaa !1122
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2893
  %93 = load i8*, i8** %92, align 8, !dbg !2893, !tbaa !1122
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2893
  %95 = load i8*, i8** %94, align 8, !dbg !2893, !tbaa !1122
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2893
  %97 = load i8*, i8** %96, align 8, !dbg !2893, !tbaa !1122
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2893
  %99 = load i8*, i8** %98, align 8, !dbg !2893, !tbaa !1122
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2893
  %101 = load i8*, i8** %100, align 8, !dbg !2893, !tbaa !1122
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2893
  %103 = load i8*, i8** %102, align 8, !dbg !2893, !tbaa !1122
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2893
  %105 = load i8*, i8** %104, align 8, !dbg !2893, !tbaa !1122
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !2893
  br label %147, !dbg !2894

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.88, i64 0, i64 0), i32 5) #12, !dbg !2895
  %109 = load i8*, i8** %4, align 8, !dbg !2895, !tbaa !1122
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2895
  %111 = load i8*, i8** %110, align 8, !dbg !2895, !tbaa !1122
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2895
  %113 = load i8*, i8** %112, align 8, !dbg !2895, !tbaa !1122
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2895
  %115 = load i8*, i8** %114, align 8, !dbg !2895, !tbaa !1122
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2895
  %117 = load i8*, i8** %116, align 8, !dbg !2895, !tbaa !1122
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2895
  %119 = load i8*, i8** %118, align 8, !dbg !2895, !tbaa !1122
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2895
  %121 = load i8*, i8** %120, align 8, !dbg !2895, !tbaa !1122
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2895
  %123 = load i8*, i8** %122, align 8, !dbg !2895, !tbaa !1122
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2895
  %125 = load i8*, i8** %124, align 8, !dbg !2895, !tbaa !1122
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !2895
  br label %147, !dbg !2896

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.89, i64 0, i64 0), i32 5) #12, !dbg !2897
  %129 = load i8*, i8** %4, align 8, !dbg !2897, !tbaa !1122
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2897
  %131 = load i8*, i8** %130, align 8, !dbg !2897, !tbaa !1122
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2897
  %133 = load i8*, i8** %132, align 8, !dbg !2897, !tbaa !1122
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2897
  %135 = load i8*, i8** %134, align 8, !dbg !2897, !tbaa !1122
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2897
  %137 = load i8*, i8** %136, align 8, !dbg !2897, !tbaa !1122
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2897
  %139 = load i8*, i8** %138, align 8, !dbg !2897, !tbaa !1122
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2897
  %141 = load i8*, i8** %140, align 8, !dbg !2897, !tbaa !1122
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2897
  %143 = load i8*, i8** %142, align 8, !dbg !2897, !tbaa !1122
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2897
  %145 = load i8*, i8** %144, align 8, !dbg !2897, !tbaa !1122
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !2897
  br label %147, !dbg !2898

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2900 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2905, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %2, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %3, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8** %4, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 0, metadata !2909, metadata !DIExpression()), !dbg !2910
  br label %6, !dbg !2911

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2913
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2914
  %9 = load i8*, i8** %8, align 8, !dbg !2914, !tbaa !1122
  %10 = icmp eq i8* %9, null, !dbg !2916
  %11 = add i64 %7, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %11, metadata !2909, metadata !DIExpression()), !dbg !2910
  br i1 %10, label %12, label %6, !dbg !2916, !llvm.loop !2918

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %7, metadata !2909, metadata !DIExpression()), !dbg !2910
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2920
  ret void, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2922 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2933, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %2, metadata !2935, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8* %3, metadata !2936, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2937, metadata !DIExpression()), !dbg !2941
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2942
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2939, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 0, metadata !2938, metadata !DIExpression()), !dbg !2941
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2944
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2944
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2944
  %11 = load i32, i32* %8, align 8, !dbg !2947
  %12 = icmp ult i32 %11, 41, !dbg !2947
  br i1 %12, label %13, label %18, !dbg !2947

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2947
  %15 = zext i32 %11 to i64, !dbg !2947
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2947
  %17 = add nuw nsw i32 %11, 8, !dbg !2947
  store i32 %17, i32* %8, align 8, !dbg !2947
  br label %21, !dbg !2947

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2947
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2947
  store i8* %20, i8** %9, align 8, !dbg !2947
  br label %21, !dbg !2947

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2947
  %25 = load i8*, i8** %24, align 8, !dbg !2947
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2948
  store i8* %25, i8** %26, align 16, !dbg !2949, !tbaa !1122
  %27 = icmp eq i8* %25, null, !dbg !2950
  br i1 %27, label %30, label %28, !dbg !2951

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2938, metadata !DIExpression()), !dbg !2941
  %29 = icmp ult i32 %22, 41, !dbg !2947
  br i1 %29, label %35, label %32, !dbg !2947

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2952
  call void @llvm.dbg.value(metadata i64 %31, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i64 %31, metadata !2938, metadata !DIExpression()), !dbg !2941
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2953
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2954
  ret void, !dbg !2954

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2947
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2947
  store i8* %34, i8** %9, align 8, !dbg !2947
  br label %40, !dbg !2947

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2947
  %37 = zext i32 %22 to i64, !dbg !2947
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2947
  %39 = add nuw nsw i32 %22, 8, !dbg !2947
  store i32 %39, i32* %8, align 8, !dbg !2947
  br label %40, !dbg !2947

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2947
  %44 = load i8*, i8** %43, align 8, !dbg !2947
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2948
  store i8* %44, i8** %45, align 8, !dbg !2949, !tbaa !1122
  %46 = icmp eq i8* %44, null, !dbg !2950
  br i1 %46, label %30, label %47, !dbg !2951

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2938, metadata !DIExpression()), !dbg !2941
  %48 = icmp ult i32 %41, 41, !dbg !2947
  br i1 %48, label %52, label %49, !dbg !2947

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2947
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2947
  store i8* %51, i8** %9, align 8, !dbg !2947
  br label %57, !dbg !2947

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2947
  %54 = zext i32 %41 to i64, !dbg !2947
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2947
  %56 = add nuw nsw i32 %41, 8, !dbg !2947
  store i32 %56, i32* %8, align 8, !dbg !2947
  br label %57, !dbg !2947

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2947
  %61 = load i8*, i8** %60, align 8, !dbg !2947
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2948
  store i8* %61, i8** %62, align 16, !dbg !2949, !tbaa !1122
  %63 = icmp eq i8* %61, null, !dbg !2950
  br i1 %63, label %30, label %64, !dbg !2951

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2938, metadata !DIExpression()), !dbg !2941
  %65 = icmp ult i32 %58, 41, !dbg !2947
  br i1 %65, label %69, label %66, !dbg !2947

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2947
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2947
  store i8* %68, i8** %9, align 8, !dbg !2947
  br label %74, !dbg !2947

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2947
  %71 = zext i32 %58 to i64, !dbg !2947
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2947
  %73 = add nuw nsw i32 %58, 8, !dbg !2947
  store i32 %73, i32* %8, align 8, !dbg !2947
  br label %74, !dbg !2947

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2947
  %78 = load i8*, i8** %77, align 8, !dbg !2947
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2948
  store i8* %78, i8** %79, align 8, !dbg !2949, !tbaa !1122
  %80 = icmp eq i8* %78, null, !dbg !2950
  br i1 %80, label %30, label %81, !dbg !2951

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2938, metadata !DIExpression()), !dbg !2941
  %82 = icmp ult i32 %75, 41, !dbg !2947
  br i1 %82, label %86, label %83, !dbg !2947

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2947
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2947
  store i8* %85, i8** %9, align 8, !dbg !2947
  br label %91, !dbg !2947

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2947
  %88 = zext i32 %75 to i64, !dbg !2947
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2947
  %90 = add nuw nsw i32 %75, 8, !dbg !2947
  store i32 %90, i32* %8, align 8, !dbg !2947
  br label %91, !dbg !2947

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2947
  %95 = load i8*, i8** %94, align 8, !dbg !2947
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2948
  store i8* %95, i8** %96, align 16, !dbg !2949, !tbaa !1122
  %97 = icmp eq i8* %95, null, !dbg !2950
  br i1 %97, label %30, label %98, !dbg !2951

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2938, metadata !DIExpression()), !dbg !2941
  %99 = icmp ult i32 %92, 41, !dbg !2947
  br i1 %99, label %103, label %100, !dbg !2947

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2947
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2947
  store i8* %102, i8** %9, align 8, !dbg !2947
  br label %108, !dbg !2947

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2947
  %105 = zext i32 %92 to i64, !dbg !2947
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2947
  %107 = add nuw nsw i32 %92, 8, !dbg !2947
  store i32 %107, i32* %8, align 8, !dbg !2947
  br label %108, !dbg !2947

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2947
  %111 = load i8*, i8** %110, align 8, !dbg !2947
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2948
  store i8* %111, i8** %112, align 8, !dbg !2949, !tbaa !1122
  %113 = icmp eq i8* %111, null, !dbg !2950
  br i1 %113, label %30, label %114, !dbg !2951

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2938, metadata !DIExpression()), !dbg !2941
  %115 = load i8*, i8** %9, align 8, !dbg !2947
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2947
  store i8* %116, i8** %9, align 8, !dbg !2947
  %117 = bitcast i8* %115 to i8**, !dbg !2947
  %118 = load i8*, i8** %117, align 8, !dbg !2947
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2948
  store i8* %118, i8** %119, align 16, !dbg !2949, !tbaa !1122
  %120 = icmp eq i8* %118, null, !dbg !2950
  br i1 %120, label %30, label %121, !dbg !2951

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2938, metadata !DIExpression()), !dbg !2941
  %122 = load i8*, i8** %9, align 8, !dbg !2947
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2947
  store i8* %123, i8** %9, align 8, !dbg !2947
  %124 = bitcast i8* %122 to i8**, !dbg !2947
  %125 = load i8*, i8** %124, align 8, !dbg !2947
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2948
  store i8* %125, i8** %126, align 8, !dbg !2949, !tbaa !1122
  %127 = icmp eq i8* %125, null, !dbg !2950
  br i1 %127, label %30, label %128, !dbg !2951

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2938, metadata !DIExpression()), !dbg !2941
  %129 = load i8*, i8** %9, align 8, !dbg !2947
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2947
  store i8* %130, i8** %9, align 8, !dbg !2947
  %131 = bitcast i8* %129 to i8**, !dbg !2947
  %132 = load i8*, i8** %131, align 8, !dbg !2947
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2948
  store i8* %132, i8** %133, align 16, !dbg !2949, !tbaa !1122
  %134 = icmp eq i8* %132, null, !dbg !2950
  br i1 %134, label %30, label %135, !dbg !2951

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2938, metadata !DIExpression()), !dbg !2941
  %136 = load i8*, i8** %9, align 8, !dbg !2947
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2947
  store i8* %137, i8** %9, align 8, !dbg !2947
  %138 = bitcast i8* %136 to i8**, !dbg !2947
  %139 = load i8*, i8** %138, align 8, !dbg !2947
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2948
  store i8* %139, i8** %140, align 8, !dbg !2949, !tbaa !1122
  %141 = icmp eq i8* %139, null, !dbg !2950
  %142 = select i1 %141, i64 9, i64 10, !dbg !2951
  br label %30, !dbg !2951
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2955 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2959, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2960, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !2961, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %3, metadata !2962, metadata !DIExpression()), !dbg !2968
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2969
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2969
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2963, metadata !DIExpression()), !dbg !2970
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2971
  call void @llvm.va_start(i8* nonnull %6), !dbg !2971
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2972
  call void @llvm.va_end(i8* nonnull %6), !dbg !2973
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2974
  ret void, !dbg !2974
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2975 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2976, !tbaa !1122
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2976
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #12, !dbg !2977
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.93, i64 0, i64 0)) #12, !dbg !2977
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.94, i64 0, i64 0), i32 5) #12, !dbg !2978
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.95, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.96, i64 0, i64 0)) #12, !dbg !2978
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.97, i64 0, i64 0), i32 5) #12, !dbg !2979
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.98, i64 0, i64 0)) #12, !dbg !2979
  ret void, !dbg !2980
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2981 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()), !dbg !2987
  %3 = udiv i64 9223372036854775807, %1, !dbg !2988
  %4 = icmp ult i64 %3, %0, !dbg !2988
  br i1 %4, label %5, label %6, !dbg !2990

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !2991
  unreachable, !dbg !2991

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %7, metadata !2993, metadata !DIExpression()) #12, !dbg !2999
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %8, metadata !2998, metadata !DIExpression()) #12, !dbg !2999
  %9 = icmp eq i8* %8, null, !dbg !3002
  %10 = icmp ne i64 %7, 0, !dbg !3004
  %11 = and i1 %10, %9, !dbg !3005
  br i1 %11, label %12, label %13, !dbg !3005

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3006
  unreachable, !dbg !3006

13:                                               ; preds = %6
  ret i8* %8, !dbg !3007
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2994 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2993, metadata !DIExpression()), !dbg !3008
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %2, metadata !2998, metadata !DIExpression()), !dbg !3008
  %3 = icmp eq i8* %2, null, !dbg !3010
  %4 = icmp ne i64 %0, 0, !dbg !3011
  %5 = and i1 %4, %3, !dbg !3012
  br i1 %5, label %6, label %7, !dbg !3012

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3013
  unreachable, !dbg !3013

7:                                                ; preds = %1
  ret i8* %2, !dbg !3014
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3021, metadata !DIExpression()), !dbg !3022
  %4 = udiv i64 9223372036854775807, %2, !dbg !3023
  %5 = icmp ult i64 %4, %1, !dbg !3023
  br i1 %5, label %6, label %7, !dbg !3025

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3026
  unreachable, !dbg !3026

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %8, metadata !3033, metadata !DIExpression()) #12, !dbg !3034
  %9 = icmp eq i64 %8, 0, !dbg !3036
  %10 = icmp ne i8* %0, null, !dbg !3038
  %11 = and i1 %10, %9, !dbg !3039
  br i1 %11, label %12, label %13, !dbg !3039

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3040
  br label %19, !dbg !3042

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3043
  call void @llvm.dbg.value(metadata i8* %14, metadata !3028, metadata !DIExpression()) #12, !dbg !3034
  %15 = icmp eq i8* %14, null, !dbg !3044
  %16 = icmp ne i64 %8, 0, !dbg !3046
  %17 = and i1 %16, %15, !dbg !3047
  br i1 %17, label %18, label %19, !dbg !3047

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3048
  unreachable, !dbg !3048

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3034
  ret i8* %20, !dbg !3049
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3029 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3050
  %3 = icmp eq i64 %1, 0, !dbg !3051
  %4 = icmp ne i8* %0, null, !dbg !3052
  %5 = and i1 %4, %3, !dbg !3053
  br i1 %5, label %6, label %7, !dbg !3053

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3054
  br label %13, !dbg !3055

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %8, metadata !3028, metadata !DIExpression()), !dbg !3050
  %9 = icmp eq i8* %8, null, !dbg !3057
  %10 = icmp ne i64 %1, 0, !dbg !3058
  %11 = and i1 %10, %9, !dbg !3059
  br i1 %11, label %12, label %13, !dbg !3059

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3060
  unreachable, !dbg !3060

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3050
  ret i8* %14, !dbg !3061
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !478 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !483, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64* %1, metadata !484, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %2, metadata !485, metadata !DIExpression()), !dbg !3062
  %4 = load i64, i64* %1, align 8, !dbg !3063, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %4, metadata !486, metadata !DIExpression()), !dbg !3062
  %5 = icmp eq i8* %0, null, !dbg !3064
  br i1 %5, label %6, label %20, !dbg !3066

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3067
  br i1 %7, label %8, label %13, !dbg !3070

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %9, metadata !486, metadata !DIExpression()), !dbg !3062
  %10 = icmp ugt i64 %2, 128, !dbg !3073
  %11 = zext i1 %10 to i64, !dbg !3073
  %12 = add nuw nsw i64 %9, %11, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %12, metadata !486, metadata !DIExpression()), !dbg !3062
  br label %13, !dbg !3075

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3062
  call void @llvm.dbg.value(metadata i64 %14, metadata !486, metadata !DIExpression()), !dbg !3062
  %15 = udiv i64 9223372036854775807, %2, !dbg !3076
  %16 = icmp ult i64 %15, %14, !dbg !3076
  br i1 %16, label %19, label %17, !dbg !3078

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !486, metadata !DIExpression()), !dbg !3062
  store i64 %14, i64* %1, align 8, !dbg !3079, !tbaa !2303
  %18 = mul i64 %14, %2, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #12, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %28, metadata !3033, metadata !DIExpression()) #12, !dbg !3081
  br label %31, !dbg !3083

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3084
  unreachable, !dbg !3084

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3085
  %22 = icmp ugt i64 %21, %4, !dbg !3088
  br i1 %22, label %24, label %23, !dbg !3089

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3090
  unreachable, !dbg !3090

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3091
  %26 = add nuw i64 %4, 1, !dbg !3092
  %27 = add i64 %26, %25, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %27, metadata !486, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %27, metadata !486, metadata !DIExpression()), !dbg !3062
  store i64 %27, i64* %1, align 8, !dbg !3079, !tbaa !2303
  %28 = mul i64 %27, %2, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #12, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %28, metadata !3033, metadata !DIExpression()) #12, !dbg !3081
  %29 = icmp eq i64 %28, 0, !dbg !3094
  br i1 %29, label %30, label %31, !dbg !3083

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3095
  br label %38, !dbg !3096

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %33, metadata !3028, metadata !DIExpression()) #12, !dbg !3081
  %34 = icmp eq i8* %33, null, !dbg !3098
  %35 = icmp ne i64 %32, 0, !dbg !3099
  %36 = and i1 %35, %34, !dbg !3100
  br i1 %36, label %37, label %38, !dbg !3100

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3101
  unreachable, !dbg !3101

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3081
  ret i8* %39, !dbg !3102
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3103 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %0, metadata !2993, metadata !DIExpression()) #12, !dbg !3107
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !2998, metadata !DIExpression()) #12, !dbg !3107
  %3 = icmp eq i8* %2, null, !dbg !3110
  %4 = icmp ne i64 %0, 0, !dbg !3111
  %5 = and i1 %4, %3, !dbg !3112
  br i1 %5, label %6, label %7, !dbg !3112

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3113
  unreachable, !dbg !3113

7:                                                ; preds = %1
  ret i8* %2, !dbg !3114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64* %1, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %0, metadata !483, metadata !DIExpression()) #12, !dbg !3122
  call void @llvm.dbg.value(metadata i64* %1, metadata !484, metadata !DIExpression()) #12, !dbg !3122
  call void @llvm.dbg.value(metadata i64 1, metadata !485, metadata !DIExpression()) #12, !dbg !3122
  %3 = load i64, i64* %1, align 8, !dbg !3124, !tbaa !2303
  call void @llvm.dbg.value(metadata i64 %3, metadata !486, metadata !DIExpression()) #12, !dbg !3122
  %4 = icmp eq i8* %0, null, !dbg !3125
  br i1 %4, label %5, label %12, !dbg !3126

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3127
  br i1 %6, label %9, label %7, !dbg !3128

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !486, metadata !DIExpression()) #12, !dbg !3122
  %8 = icmp slt i64 %3, 0, !dbg !3129
  br i1 %8, label %11, label %9, !dbg !3130

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !486, metadata !DIExpression()) #12, !dbg !3122
  store i64 %10, i64* %1, align 8, !dbg !3131, !tbaa !2303
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %18, metadata !3033, metadata !DIExpression()) #12, !dbg !3132
  br label %21, !dbg !3134

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3135
  unreachable, !dbg !3135

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3136
  br i1 %13, label %15, label %14, !dbg !3137

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3138
  unreachable, !dbg !3138

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3139
  %17 = add nuw nsw i64 %3, 1, !dbg !3140
  %18 = add nuw nsw i64 %17, %16, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %18, metadata !486, metadata !DIExpression()) #12, !dbg !3122
  call void @llvm.dbg.value(metadata i64 %18, metadata !486, metadata !DIExpression()) #12, !dbg !3122
  store i64 %18, i64* %1, align 8, !dbg !3131, !tbaa !2303
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i64 %18, metadata !3033, metadata !DIExpression()) #12, !dbg !3132
  %19 = icmp eq i64 %18, 0, !dbg !3142
  br i1 %19, label %20, label %21, !dbg !3134

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3143
  br label %28, !dbg !3144

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %23, metadata !3028, metadata !DIExpression()) #12, !dbg !3132
  %24 = icmp eq i8* %23, null, !dbg !3146
  %25 = icmp ne i64 %22, 0, !dbg !3147
  %26 = and i1 %25, %24, !dbg !3148
  br i1 %26, label %27, label %28, !dbg !3148

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3149
  unreachable, !dbg !3149

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3132
  ret i8* %29, !dbg !3150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3151 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %0, metadata !3155, metadata !DIExpression()) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i64 1, metadata !3158, metadata !DIExpression()) #12, !dbg !3160
  %2 = icmp slt i64 %0, 0, !dbg !3162
  br i1 %2, label %6, label %3, !dbg !3164

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %4, metadata !3159, metadata !DIExpression()) #12, !dbg !3160
  %5 = icmp eq i8* %4, null, !dbg !3166
  br i1 %5, label %6, label %7, !dbg !3167

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3168
  unreachable, !dbg !3168

7:                                                ; preds = %3
  ret i8* %4, !dbg !3169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3156 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3155, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3170
  %3 = udiv i64 9223372036854775807, %1, !dbg !3171
  %4 = icmp ult i64 %3, %0, !dbg !3171
  br i1 %4, label %8, label %5, !dbg !3172

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %6, metadata !3159, metadata !DIExpression()), !dbg !3170
  %7 = icmp eq i8* %6, null, !dbg !3174
  br i1 %7, label %8, label %9, !dbg !3175

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3176
  unreachable, !dbg !3176

9:                                                ; preds = %5
  ret i8* %6, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !3183, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata i64 %1, metadata !2993, metadata !DIExpression()) #12, !dbg !3185
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %3, metadata !2998, metadata !DIExpression()) #12, !dbg !3185
  %4 = icmp eq i8* %3, null, !dbg !3188
  %5 = icmp ne i64 %1, 0, !dbg !3189
  %6 = and i1 %5, %4, !dbg !3190
  br i1 %6, label %7, label %8, !dbg !3190

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3191
  unreachable, !dbg !3191

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3192, metadata !DIExpression()) #12, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()) #12, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %1, metadata !3200, metadata !DIExpression()) #12, !dbg !3201
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3207, metadata !DIExpression()), !dbg !3208
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3209
  %3 = add i64 %2, 1, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %0, metadata !3182, metadata !DIExpression()) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %3, metadata !3183, metadata !DIExpression()) #12, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %3, metadata !2993, metadata !DIExpression()) #12, !dbg !3213
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %4, metadata !2998, metadata !DIExpression()) #12, !dbg !3213
  %5 = icmp eq i8* %4, null, !dbg !3216
  %6 = icmp ne i64 %3, 0, !dbg !3217
  %7 = and i1 %6, %5, !dbg !3218
  br i1 %7, label %8, label %9, !dbg !3218

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3219
  unreachable, !dbg !3219

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3192, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %3, metadata !3200, metadata !DIExpression()) #12, !dbg !3220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3222
  ret i8* %4, !dbg !3223
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3224 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3225, !tbaa !1178
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0), i32 5) #12, !dbg !3226
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* %2) #12, !dbg !3227
  tail call void @abort() #22, !dbg !3228
  unreachable, !dbg !3228
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3229 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3231, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %1, metadata !3232, metadata !DIExpression()), !dbg !3237
  %3 = icmp eq i64 %0, 0, !dbg !3238
  %4 = icmp eq i64 %1, 0, !dbg !3239
  %5 = or i1 %3, %4, !dbg !3240
  br i1 %5, label %11, label %6, !dbg !3240

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3234, metadata !DIExpression()), !dbg !3241
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3242
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3242
  br i1 %8, label %9, label %11, !dbg !3244

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3245
  store i32 12, i32* %10, align 4, !dbg !3247, !tbaa !1178
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3231, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %12, metadata !3232, metadata !DIExpression()), !dbg !3237
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3248
  call void @llvm.dbg.value(metadata i8* %14, metadata !3233, metadata !DIExpression()), !dbg !3237
  br label %15, !dbg !3249

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3237
  ret i8* %16, !dbg !3250
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3251 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3259, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !3260, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %2, metadata !3261, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3262, metadata !DIExpression()), !dbg !3268
  %6 = bitcast i32* %5 to i8*, !dbg !3269
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3269
  %7 = icmp eq i32* %0, null, !dbg !3270
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3272
  call void @llvm.dbg.value(metadata i32* %8, metadata !3259, metadata !DIExpression()), !dbg !3268
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %9, metadata !3263, metadata !DIExpression()), !dbg !3268
  %10 = icmp ugt i64 %9, -3, !dbg !3274
  %11 = icmp ne i64 %2, 0, !dbg !3275
  %12 = and i1 %11, %10, !dbg !3276
  br i1 %12, label %13, label %18, !dbg !3276

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3277
  br i1 %14, label %18, label %15, !dbg !3278

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3279, !tbaa !1598
  call void @llvm.dbg.value(metadata i8 %16, metadata !3265, metadata !DIExpression()), !dbg !3280
  %17 = zext i8 %16 to i32, !dbg !3281
  store i32 %17, i32* %8, align 4, !dbg !3282, !tbaa !1178
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3283
  ret i64 %19, !dbg !3283
}

; Function Attrs: nounwind
declare !dbg !504 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3284 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3290, metadata !DIExpression()), !dbg !3295
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i1 undef, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3297, metadata !DIExpression()), !dbg !3301
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3303
  %4 = load i32, i32* %3, align 8, !dbg !3303, !tbaa !3304
  %5 = and i32 %4, 32, !dbg !3303
  %6 = icmp eq i32 %5, 0, !dbg !3306
  call void @llvm.dbg.value(metadata i1 %6, metadata !3293, metadata !DIExpression()), !dbg !3295
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3307
  %8 = icmp ne i32 %7, 0, !dbg !3308
  call void @llvm.dbg.value(metadata i1 %8, metadata !3294, metadata !DIExpression()), !dbg !3295
  br i1 %6, label %9, label %19, !dbg !3309

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3311
  call void @llvm.dbg.value(metadata i1 %10, metadata !3291, metadata !DIExpression()), !dbg !3295
  %11 = xor i1 %8, true, !dbg !3312
  %12 = or i1 %10, %11, !dbg !3312
  %13 = sext i1 %8 to i32, !dbg !3312
  br i1 %12, label %22, label %14, !dbg !3312

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3313
  %16 = load i32, i32* %15, align 4, !dbg !3313, !tbaa !1178
  %17 = icmp ne i32 %16, 9, !dbg !3314
  %18 = sext i1 %17 to i32, !dbg !3315
  br label %22, !dbg !3315

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3316

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3318
  store i32 0, i32* %21, align 4, !dbg !3320, !tbaa !1178
  br label %22, !dbg !3318

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3295
  ret i32 %23, !dbg !3321
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3322 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3324, metadata !DIExpression()), !dbg !3329
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3330
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3330
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3325, metadata !DIExpression()), !dbg !3331
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3332
  %5 = icmp eq i32 %4, 0, !dbg !3332
  br i1 %5, label %6, label %13, !dbg !3334

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3335
  %8 = load i16, i16* %7, align 16, !dbg !3335
  %9 = icmp eq i16 %8, 67, !dbg !3335
  br i1 %9, label %13, label %10, !dbg !3336

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i64 6), !dbg !3337
  %12 = icmp ne i32 %11, 0, !dbg !3338
  br label %13, !dbg !3336

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3329
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3339
  ret i1 %14, !dbg !3339
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3340 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %1, metadata !3342, metadata !DIExpression()), !dbg !3344
  %2 = icmp eq i8* %1, null, !dbg !3345
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %1, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %3, metadata !3342, metadata !DIExpression()), !dbg !3344
  %4 = load i8, i8* %3, align 1, !dbg !3348, !tbaa !1598
  %5 = icmp eq i8 %4, 0, !dbg !3352
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i8* %3, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %6, metadata !3342, metadata !DIExpression()), !dbg !3344
  ret i8* %6, !dbg !3354
}

; Function Attrs: nounwind
declare !dbg !956 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3355 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %2, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %1, metadata !3366, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %2, metadata !3367, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()) #12, !dbg !3380
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3382
  call void @llvm.dbg.value(metadata i8* %4, metadata !3379, metadata !DIExpression()) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %4, metadata !3368, metadata !DIExpression()) #12, !dbg !3372
  %5 = icmp eq i8* %4, null, !dbg !3383
  br i1 %5, label %6, label %9, !dbg !3384

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3385
  br i1 %7, label %19, label %8, !dbg !3388

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3389, !tbaa !1598
  br label %19, !dbg !3390

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %10, metadata !3369, metadata !DIExpression()) #12, !dbg !3392
  %11 = icmp ult i64 %10, %2, !dbg !3393
  br i1 %11, label %12, label %14, !dbg !3395

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i8* %1, metadata !3398, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.dbg.value(metadata i8* %4, metadata !3401, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %13, metadata !3402, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3405
  br label %19, !dbg !3406

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3407
  br i1 %15, label %19, label %16, !dbg !3410

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3398, metadata !DIExpression()) #12, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %4, metadata !3401, metadata !DIExpression()) #12, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %17, metadata !3402, metadata !DIExpression()) #12, !dbg !3413
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3415
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3416
  store i8 0, i8* %18, align 1, !dbg !3417, !tbaa !1598
  br label %19, !dbg !3418

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3419
  ret i32 %20, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()) #12, !dbg !3425
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %2, metadata !3379, metadata !DIExpression()) #12, !dbg !3425
  ret i8* %2, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3429 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3435, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 0, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 0, metadata !3438, metadata !DIExpression()), !dbg !3439
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %2, metadata !3437, metadata !DIExpression()), !dbg !3439
  %3 = icmp slt i32 %2, 0, !dbg !3441
  br i1 %3, label %4, label %6, !dbg !3443

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3444
  br label %24, !dbg !3445

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3446
  %8 = icmp eq i32 %7, 0, !dbg !3446
  br i1 %8, label %13, label %9, !dbg !3448

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3449
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3450
  %12 = icmp eq i64 %11, -1, !dbg !3451
  br i1 %12, label %16, label %13, !dbg !3452

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3453
  %15 = icmp eq i32 %14, 0, !dbg !3453
  br i1 %15, label %16, label %18, !dbg !3454

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3436, metadata !DIExpression()), !dbg !3439
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %21, metadata !3438, metadata !DIExpression()), !dbg !3439
  br label %24, !dbg !3456

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3457
  %20 = load i32, i32* %19, align 4, !dbg !3457, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 %20, metadata !3436, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %20, metadata !3436, metadata !DIExpression()), !dbg !3439
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %21, metadata !3438, metadata !DIExpression()), !dbg !3439
  %22 = icmp eq i32 %20, 0, !dbg !3458
  br i1 %22, label %24, label %23, !dbg !3456

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3460, !tbaa !1178
  call void @llvm.dbg.value(metadata i32 -1, metadata !3438, metadata !DIExpression()), !dbg !3439
  br label %24, !dbg !3462

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3439
  ret i32 %25, !dbg !3463
}

; Function Attrs: nofree nounwind
declare !dbg !965 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1000 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1001 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3464 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3470, metadata !DIExpression()), !dbg !3471
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3472
  br i1 %2, label %6, label %3, !dbg !3474

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3475
  %5 = icmp eq i32 %4, 0, !dbg !3475
  br i1 %5, label %6, label %8, !dbg !3476

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3477
  br label %17, !dbg !3478

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3479, metadata !DIExpression()) #12, !dbg !3484
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3486
  %10 = load i32, i32* %9, align 8, !dbg !3486, !tbaa !3304
  %11 = and i32 %10, 256, !dbg !3488
  %12 = icmp eq i32 %11, 0, !dbg !3488
  br i1 %12, label %15, label %13, !dbg !3489

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3490
  br label %15, !dbg !3490

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3491
  br label %17, !dbg !3492

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3471
  ret i32 %18, !dbg !3493
}

; Function Attrs: nofree nounwind
declare !dbg !1008 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3494 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3501, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 %2, metadata !3503, metadata !DIExpression()), !dbg !3507
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3508
  %5 = load i8*, i8** %4, align 8, !dbg !3508, !tbaa !3509
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3510
  %7 = load i8*, i8** %6, align 8, !dbg !3510, !tbaa !3511
  %8 = icmp eq i8* %5, %7, !dbg !3512
  br i1 %8, label %9, label %28, !dbg !3513

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3514
  %11 = load i8*, i8** %10, align 8, !dbg !3514, !tbaa !3515
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3516
  %13 = load i8*, i8** %12, align 8, !dbg !3516, !tbaa !3517
  %14 = icmp eq i8* %11, %13, !dbg !3518
  br i1 %14, label %15, label %28, !dbg !3519

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3520
  %17 = load i8*, i8** %16, align 8, !dbg !3520, !tbaa !3521
  %18 = icmp eq i8* %17, null, !dbg !3522
  br i1 %18, label %19, label %28, !dbg !3523

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3524
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3525
  call void @llvm.dbg.value(metadata i64 %21, metadata !3504, metadata !DIExpression()), !dbg !3526
  %22 = icmp eq i64 %21, -1, !dbg !3527
  br i1 %22, label %30, label %23, !dbg !3529

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3530
  %25 = load i32, i32* %24, align 8, !dbg !3531, !tbaa !3304
  %26 = and i32 %25, -17, !dbg !3531
  store i32 %26, i32* %24, align 8, !dbg !3531, !tbaa !3304
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3532
  store i64 %21, i64* %27, align 8, !dbg !3533, !tbaa !3534
  br label %30, !dbg !3535

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3536
  br label %30, !dbg !3537

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3507
  ret i32 %31, !dbg !3538
}

; Function Attrs: nofree nounwind
declare !dbg !1084 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !432, !354, !474, !495, !498, !501, !520, !559, !566, !959, !962, !1005, !1046}
!llvm.ident = !{!1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087, !1087}
!llvm.module.flags = !{!1088, !1089, !1090, !1091, !1092}

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
!361 = !DIFile(filename: "src/link.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!214}
!363 = !{!77, !364, !399, !403, !407, !410, !411, !6, !67, !415, !85, !423, !427, !429}
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
!427 = !DISubprogram(name: "link", scope: !428, file: !428, line: 789, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!428 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!429 = !DISubprogram(name: "quotearg_n_style", scope: !82, file: !82, line: 368, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{!25, !18, !214, !6}
!432 = distinct !DICompileUnit(language: DW_LANG_C99, file: !433, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !434, retainedTypes: !438, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!434 = !{!435}
!435 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !433, line: 40, baseType: !159, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!438 = !{!77, !439, !67}
!439 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{!18, !6, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !443, file: !21, line: 51, baseType: !18, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !443, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !443, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !443, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !443, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !443, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !443, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !443, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !443, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !443, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !443, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !443, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !443, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !443, file: !21, line: 70, baseType: !442, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !443, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !443, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !443, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !443, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !443, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !443, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !443, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !443, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !443, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !443, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !443, file: !21, line: 93, baseType: !442, size: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !443, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !443, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !443, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !443, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!474 = distinct !DICompileUnit(language: DW_LANG_C99, file: !475, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!475 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!476 = !{!477}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !478, file: !249, line: 186, baseType: !159, size: 32, elements: !487)
!478 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !479, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !482)
!479 = !DISubroutineType(types: !480)
!480 = !{!67, !67, !481, !69}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!482 = !{!483, !484, !485, !486}
!483 = !DILocalVariable(name: "p", arg: 1, scope: !478, file: !249, line: 174, type: !67)
!484 = !DILocalVariable(name: "pn", arg: 2, scope: !478, file: !249, line: 174, type: !481)
!485 = !DILocalVariable(name: "s", arg: 3, scope: !478, file: !249, line: 174, type: !69)
!486 = !DILocalVariable(name: "n", scope: !478, file: !249, line: 176, type: !69)
!487 = !{!488}
!488 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!489 = !{!69, !315, !312, !318, !25, !270, !67, !490, !493}
!490 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!491 = !DISubroutineType(types: !492)
!492 = !{!67, !71, !71}
!493 = !DISubprogram(name: "rpl_calloc", scope: !494, file: !494, line: 688, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!494 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !496, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!496 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!497 = !{!77, !85}
!498 = distinct !DICompileUnit(language: DW_LANG_C99, file: !499, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !500, splitDebugInlining: false, nameTableKind: None)
!499 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!500 = !{!67}
!501 = distinct !DICompileUnit(language: DW_LANG_C99, file: !502, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !503, splitDebugInlining: false, nameTableKind: None)
!502 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = !{!504, !69, !516}
!504 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!505 = !DISubroutineType(types: !506)
!506 = !{!71, !117, !6, !71, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !508, file: !283, line: 15, baseType: !18, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !508, file: !283, line: 20, baseType: !512, size: 32, offset: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !283, line: 16, size: 32, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !512, file: !283, line: 18, baseType: !159, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !512, file: !283, line: 19, baseType: !291, size: 32)
!516 = !DISubprogram(name: "hard_locale", scope: !517, file: !517, line: 26, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!517 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!518 = !DISubroutineType(types: !519)
!519 = !{!92, !18}
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !522, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !{!523}
!523 = !DISubprogram(name: "rpl_fclose", scope: !524, file: !524, line: 672, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!524 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!525 = !DISubroutineType(types: !526)
!526 = !{!18, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !528, file: !21, line: 51, baseType: !18, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !528, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !528, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !528, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !528, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !528, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !528, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !528, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !528, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !528, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !528, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !528, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !528, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !528, file: !21, line: 70, baseType: !527, size: 64, offset: 832)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !528, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !528, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !528, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !528, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !528, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !528, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !528, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !528, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !528, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !528, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !528, file: !21, line: 93, baseType: !527, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !528, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !528, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !528, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !528, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!559 = distinct !DICompileUnit(language: DW_LANG_C99, file: !560, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !561, splitDebugInlining: false, nameTableKind: None)
!560 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!561 = !{!562}
!562 = !DISubprogram(name: "setlocale_null_r", scope: !563, file: !563, line: 64, type: !564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!563 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!564 = !DISubroutineType(types: !565)
!565 = !{!18, !18, !25, !71}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !568, retainedTypes: !955, splitDebugInlining: false, nameTableKind: None)
!567 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!568 = !{!569}
!569 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !570, line: 41, baseType: !159, size: 32, elements: !571)
!570 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954}
!572 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!573 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!574 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!575 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!576 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!577 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!578 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!579 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!580 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!581 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!582 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!583 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!584 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!585 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!586 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!587 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!588 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!589 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!590 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!591 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!592 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!593 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!594 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!595 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!596 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!597 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!598 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!599 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!600 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!601 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!602 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!603 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!604 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!605 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!606 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!607 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!608 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!609 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!610 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!611 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!612 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!613 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!614 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!615 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!616 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!617 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!618 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!619 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!620 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!621 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!680 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!683 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!684 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!685 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!686 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!687 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!688 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!689 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!690 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!691 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!692 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!693 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!694 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!767 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!840 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!841 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!842 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!843 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!844 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!845 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!846 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!847 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!848 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!849 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!850 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!851 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!852 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!853 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!854 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!856 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!857 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!858 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!859 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!860 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!861 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!887 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!888 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!889 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!890 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!891 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!896 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!897 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!898 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!899 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!955 = !{!956, !67}
!956 = !DISubprogram(name: "nl_langinfo", scope: !570, file: !570, line: 661, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!957 = !DISubroutineType(types: !958)
!958 = !{!25, !18}
!959 = distinct !DICompileUnit(language: DW_LANG_C99, file: !960, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !961, splitDebugInlining: false, nameTableKind: None)
!960 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!961 = !{!67, !403}
!962 = distinct !DICompileUnit(language: DW_LANG_C99, file: !963, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !964, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!964 = !{!965, !1000, !1001, !1004}
!965 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!966 = !DISubroutineType(types: !967)
!967 = !{!18, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !970)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !969, file: !21, line: 51, baseType: !18, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !969, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !969, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !969, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !969, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !969, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !969, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !969, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !969, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !969, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !969, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !969, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !969, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !969, file: !21, line: 70, baseType: !968, size: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !969, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !969, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !969, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !969, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !969, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !969, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !969, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !969, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !969, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !969, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !969, file: !21, line: 93, baseType: !968, size: 64, offset: 1344)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !969, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !969, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !969, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !969, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1000 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1001 = !DISubprogram(name: "lseek", scope: !428, file: !428, line: 334, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!45, !18, !45, !18}
!1004 = !DISubprogram(name: "rpl_fflush", scope: !524, file: !524, line: 718, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1005 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1006, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1007 = !{!67, !1008, !1043}
!1008 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!18, !1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1013)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1012, file: !21, line: 51, baseType: !18, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1012, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1012, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1012, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1012, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1012, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1012, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1012, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1012, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1012, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1012, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1012, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1012, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1012, file: !21, line: 70, baseType: !1011, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1012, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1012, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1012, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1012, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1012, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1012, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1012, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1012, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1012, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1012, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1012, file: !21, line: 93, baseType: !1011, size: 64, offset: 1344)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1012, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1012, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1012, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1012, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1043 = !DISubprogram(name: "rpl_fseeko", scope: !524, file: !524, line: 1034, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!18, !1011, !45, !18}
!1046 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1047, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1048, splitDebugInlining: false, nameTableKind: None)
!1047 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1048 = !{!67, !1049, !1001, !1084}
!1049 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!18, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1053, file: !21, line: 51, baseType: !18, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1053, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1053, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1053, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1053, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1053, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1053, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1053, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1053, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1053, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1053, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1053, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1053, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1053, file: !21, line: 70, baseType: !1052, size: 64, offset: 832)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1053, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1053, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1053, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1053, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1053, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1053, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1053, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1053, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1053, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1053, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1053, file: !21, line: 93, baseType: !1052, size: 64, offset: 1344)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1053, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1053, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1053, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1053, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1084 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1085, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!18, !1052, !45, !18}
!1087 = !{!"clang version 10.0.0 "}
!1088 = !{i32 7, !"Dwarf Version", i32 4}
!1089 = !{i32 2, !"Debug Info Version", i32 3}
!1090 = !{i32 1, !"wchar_size", i32 4}
!1091 = !{i32 7, !"PIC Level", i32 2}
!1092 = !{i32 7, !"PIE Level", i32 2}
!1093 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 39, type: !421, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1094)
!1094 = !{!1095}
!1095 = !DILocalVariable(name: "status", arg: 1, scope: !1093, file: !361, line: 39, type: !18)
!1096 = !DILocalVariable(name: "infomap", scope: !1097, file: !1098, line: 636, type: !1110)
!1097 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1098, file: !1098, line: 634, type: !401, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1099)
!1098 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1099 = !{!1100, !1096, !1101, !1102, !1109}
!1100 = !DILocalVariable(name: "program", arg: 1, scope: !1097, file: !1098, line: 634, type: !6)
!1101 = !DILocalVariable(name: "node", scope: !1097, file: !1098, line: 646, type: !6)
!1102 = !DILocalVariable(name: "map_prog", scope: !1097, file: !1098, line: 647, type: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1097, file: !1098, line: 636, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1105, file: !1098, line: 636, baseType: !6, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !1098, line: 636, baseType: !6, size: 64, offset: 64)
!1109 = !DILocalVariable(name: "lc_messages", scope: !1097, file: !1098, line: 659, type: !6)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 896, elements: !1111)
!1111 = !{!1112}
!1112 = !DISubrange(count: 7)
!1113 = !DILocation(line: 636, column: 67, scope: !1097, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 53, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !361, line: 44, column: 5)
!1116 = distinct !DILexicalBlock(scope: !1093, file: !361, line: 41, column: 7)
!1117 = !DILocation(line: 0, scope: !1093)
!1118 = !DILocation(line: 41, column: 14, scope: !1116)
!1119 = !DILocation(line: 41, column: 7, scope: !1093)
!1120 = !DILocation(line: 42, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !361, line: 42, column: 5)
!1122 = !{!1123, !1123, i64 0}
!1123 = !{!"any pointer", !1124, i64 0}
!1124 = !{!"omnipotent char", !1125, i64 0}
!1125 = !{!"Simple C/C++ TBAA"}
!1126 = !DILocation(line: 45, column: 7, scope: !1115)
!1127 = !DILocation(line: 48, column: 7, scope: !1115)
!1128 = !DILocation(line: 51, column: 7, scope: !1115)
!1129 = !DILocation(line: 52, column: 7, scope: !1115)
!1130 = !DILocation(line: 0, scope: !1097, inlinedAt: !1114)
!1131 = !DILocation(line: 636, column: 3, scope: !1097, inlinedAt: !1114)
!1132 = !DILocation(line: 647, column: 36, scope: !1097, inlinedAt: !1114)
!1133 = !DILocation(line: 649, column: 3, scope: !1097, inlinedAt: !1114)
!1134 = !DILocation(line: 649, column: 33, scope: !1097, inlinedAt: !1114)
!1135 = !DILocation(line: 650, column: 13, scope: !1097, inlinedAt: !1114)
!1136 = !DILocation(line: 649, column: 20, scope: !1097, inlinedAt: !1114)
!1137 = !{!1138, !1123, i64 0}
!1138 = !{!"infomap", !1123, i64 0, !1123, i64 8}
!1139 = !DILocation(line: 649, column: 10, scope: !1097, inlinedAt: !1114)
!1140 = !DILocation(line: 649, column: 28, scope: !1097, inlinedAt: !1114)
!1141 = distinct !{!1141, !1133, !1135}
!1142 = !DILocation(line: 652, column: 17, scope: !1143, inlinedAt: !1114)
!1143 = distinct !DILexicalBlock(scope: !1097, file: !1098, line: 652, column: 7)
!1144 = !{!1138, !1123, i64 8}
!1145 = !DILocation(line: 652, column: 7, scope: !1143, inlinedAt: !1114)
!1146 = !DILocation(line: 652, column: 7, scope: !1097, inlinedAt: !1114)
!1147 = !DILocation(line: 655, column: 3, scope: !1097, inlinedAt: !1114)
!1148 = !DILocation(line: 659, column: 29, scope: !1097, inlinedAt: !1114)
!1149 = !DILocation(line: 660, column: 7, scope: !1150, inlinedAt: !1114)
!1150 = distinct !DILexicalBlock(scope: !1097, file: !1098, line: 660, column: 7)
!1151 = !DILocation(line: 660, column: 19, scope: !1150, inlinedAt: !1114)
!1152 = !DILocation(line: 660, column: 22, scope: !1150, inlinedAt: !1114)
!1153 = !DILocation(line: 660, column: 7, scope: !1097, inlinedAt: !1114)
!1154 = !DILocation(line: 666, column: 7, scope: !1155, inlinedAt: !1114)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !1098, line: 661, column: 5)
!1156 = !DILocation(line: 668, column: 5, scope: !1155, inlinedAt: !1114)
!1157 = !DILocation(line: 669, column: 3, scope: !1097, inlinedAt: !1114)
!1158 = !DILocation(line: 671, column: 3, scope: !1097, inlinedAt: !1114)
!1159 = !DILocation(line: 673, column: 1, scope: !1097, inlinedAt: !1114)
!1160 = !DILocation(line: 55, column: 3, scope: !1093)
!1161 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 59, type: !1162, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!18, !18, !419}
!1164 = !{!1165, !1166}
!1165 = !DILocalVariable(name: "argc", arg: 1, scope: !1161, file: !361, line: 59, type: !18)
!1166 = !DILocalVariable(name: "argv", arg: 2, scope: !1161, file: !361, line: 59, type: !419)
!1167 = !DILocation(line: 0, scope: !1161)
!1168 = !DILocation(line: 62, column: 21, scope: !1161)
!1169 = !DILocation(line: 62, column: 3, scope: !1161)
!1170 = !DILocation(line: 63, column: 3, scope: !1161)
!1171 = !DILocation(line: 64, column: 3, scope: !1161)
!1172 = !DILocation(line: 65, column: 3, scope: !1161)
!1173 = !DILocation(line: 67, column: 3, scope: !1161)
!1174 = !DILocation(line: 70, column: 36, scope: !1161)
!1175 = !DILocation(line: 69, column: 3, scope: !1161)
!1176 = !DILocation(line: 73, column: 14, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1161, file: !361, line: 73, column: 7)
!1178 = !{!1179, !1179, i64 0}
!1179 = !{!"int", !1124, i64 0}
!1180 = !DILocation(line: 73, column: 21, scope: !1177)
!1181 = !DILocation(line: 73, column: 12, scope: !1177)
!1182 = !DILocation(line: 73, column: 7, scope: !1161)
!1183 = !DILocation(line: 75, column: 16, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !361, line: 75, column: 11)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !361, line: 74, column: 5)
!1186 = !DILocation(line: 75, column: 11, scope: !1185)
!1187 = !DILocation(line: 76, column: 22, scope: !1184)
!1188 = !DILocation(line: 76, column: 9, scope: !1184)
!1189 = !DILocation(line: 78, column: 22, scope: !1184)
!1190 = !DILocation(line: 78, column: 65, scope: !1184)
!1191 = !DILocation(line: 78, column: 60, scope: !1184)
!1192 = !DILocation(line: 78, column: 53, scope: !1184)
!1193 = !DILocation(line: 78, column: 9, scope: !1184)
!1194 = !DILocation(line: 79, column: 7, scope: !1185)
!1195 = !DILocation(line: 82, column: 18, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1161, file: !361, line: 82, column: 7)
!1197 = !DILocation(line: 82, column: 7, scope: !1161)
!1198 = !DILocation(line: 84, column: 20, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !361, line: 83, column: 5)
!1200 = !DILocation(line: 84, column: 55, scope: !1199)
!1201 = !DILocation(line: 84, column: 62, scope: !1199)
!1202 = !DILocation(line: 84, column: 50, scope: !1199)
!1203 = !DILocation(line: 84, column: 43, scope: !1199)
!1204 = !DILocation(line: 84, column: 7, scope: !1199)
!1205 = !DILocation(line: 85, column: 7, scope: !1199)
!1206 = !DILocation(line: 88, column: 13, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1161, file: !361, line: 88, column: 7)
!1208 = !DILocation(line: 88, column: 39, scope: !1207)
!1209 = !DILocation(line: 88, column: 27, scope: !1207)
!1210 = !DILocation(line: 88, column: 7, scope: !1207)
!1211 = !DILocation(line: 88, column: 45, scope: !1207)
!1212 = !DILocation(line: 88, column: 7, scope: !1161)
!1213 = !DILocation(line: 89, column: 5, scope: !1207)
!1214 = !DILocation(line: 92, column: 3, scope: !1161)
!1215 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !401, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "file", arg: 1, scope: !1215, file: !12, line: 51, type: !6)
!1218 = !DILocation(line: 0, scope: !1215)
!1219 = !DILocation(line: 53, column: 13, scope: !1215)
!1220 = !DILocation(line: 54, column: 1, scope: !1215)
!1221 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1222, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !92}
!1224 = !{!1225}
!1225 = !DILocalVariable(name: "ignore", arg: 1, scope: !1221, file: !12, line: 88, type: !92)
!1226 = !DILocation(line: 0, scope: !1221)
!1227 = !DILocation(line: 90, column: 16, scope: !1221)
!1228 = !{!1229, !1229, i64 0}
!1229 = !{!"_Bool", !1124, i64 0}
!1230 = !DILocation(line: 91, column: 1, scope: !1221)
!1231 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1232)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "write_error", scope: !1234, file: !12, line: 122, type: !6)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !12, line: 121, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !12, line: 119, column: 7)
!1236 = !DILocation(line: 119, column: 21, scope: !1235)
!1237 = !DILocation(line: 119, column: 7, scope: !1235)
!1238 = !DILocation(line: 119, column: 29, scope: !1235)
!1239 = !DILocation(line: 120, column: 7, scope: !1235)
!1240 = !DILocation(line: 120, column: 12, scope: !1235)
!1241 = !{i8 0, i8 2}
!1242 = !DILocation(line: 120, column: 25, scope: !1235)
!1243 = !DILocation(line: 120, column: 28, scope: !1235)
!1244 = !DILocation(line: 120, column: 34, scope: !1235)
!1245 = !DILocation(line: 119, column: 7, scope: !1231)
!1246 = !DILocation(line: 122, column: 33, scope: !1234)
!1247 = !DILocation(line: 0, scope: !1234)
!1248 = !DILocation(line: 123, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1234, file: !12, line: 123, column: 11)
!1250 = !DILocation(line: 0, scope: !1249)
!1251 = !DILocation(line: 123, column: 11, scope: !1234)
!1252 = !DILocation(line: 124, column: 36, scope: !1249)
!1253 = !DILocation(line: 124, column: 9, scope: !1249)
!1254 = !DILocation(line: 127, column: 9, scope: !1249)
!1255 = !DILocation(line: 129, column: 14, scope: !1234)
!1256 = !DILocation(line: 129, column: 7, scope: !1234)
!1257 = !DILocation(line: 134, column: 42, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1231, file: !12, line: 134, column: 7)
!1259 = !DILocation(line: 134, column: 28, scope: !1258)
!1260 = !DILocation(line: 134, column: 50, scope: !1258)
!1261 = !DILocation(line: 134, column: 7, scope: !1231)
!1262 = !DILocation(line: 135, column: 12, scope: !1258)
!1263 = !DILocation(line: 135, column: 5, scope: !1258)
!1264 = !DILocation(line: 136, column: 1, scope: !1231)
!1265 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1266, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !18, !419, !6, !6, !6, !420, null}
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277}
!1269 = !DILocalVariable(name: "argc", arg: 1, scope: !1265, file: !102, line: 45, type: !18)
!1270 = !DILocalVariable(name: "argv", arg: 2, scope: !1265, file: !102, line: 46, type: !419)
!1271 = !DILocalVariable(name: "command_name", arg: 3, scope: !1265, file: !102, line: 47, type: !6)
!1272 = !DILocalVariable(name: "package", arg: 4, scope: !1265, file: !102, line: 48, type: !6)
!1273 = !DILocalVariable(name: "version", arg: 5, scope: !1265, file: !102, line: 49, type: !6)
!1274 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1265, file: !102, line: 50, type: !420)
!1275 = !DILocalVariable(name: "c", scope: !1265, file: !102, line: 53, type: !18)
!1276 = !DILocalVariable(name: "saved_opterr", scope: !1265, file: !102, line: 54, type: !18)
!1277 = !DILocalVariable(name: "authors", scope: !1278, file: !102, line: 72, type: !1282)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !102, line: 71, column: 11)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 65, column: 9)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !102, line: 63, column: 5)
!1281 = distinct !DILexicalBlock(scope: !1265, file: !102, line: 61, column: 7)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1284, line: 32, baseType: !1285)
!1284 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1287 = !DILocation(line: 0, scope: !1265)
!1288 = !DILocation(line: 56, column: 18, scope: !1265)
!1289 = !DILocation(line: 59, column: 10, scope: !1265)
!1290 = !DILocation(line: 61, column: 12, scope: !1281)
!1291 = !DILocation(line: 62, column: 7, scope: !1281)
!1292 = !DILocation(line: 62, column: 15, scope: !1281)
!1293 = !DILocation(line: 61, column: 7, scope: !1265)
!1294 = !DILocation(line: 67, column: 11, scope: !1279)
!1295 = !DILocation(line: 68, column: 11, scope: !1279)
!1296 = !DILocation(line: 72, column: 13, scope: !1278)
!1297 = !DILocation(line: 72, column: 21, scope: !1278)
!1298 = !DILocation(line: 73, column: 13, scope: !1278)
!1299 = !DILocation(line: 74, column: 29, scope: !1278)
!1300 = !DILocation(line: 74, column: 13, scope: !1278)
!1301 = !DILocation(line: 75, column: 13, scope: !1278)
!1302 = !DILocation(line: 85, column: 10, scope: !1265)
!1303 = !DILocation(line: 89, column: 10, scope: !1265)
!1304 = !DILocation(line: 90, column: 1, scope: !1265)
!1305 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !417, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1307 = !DILocalVariable(name: "argc", arg: 1, scope: !1305, file: !102, line: 98, type: !18)
!1308 = !DILocalVariable(name: "argv", arg: 2, scope: !1305, file: !102, line: 99, type: !419)
!1309 = !DILocalVariable(name: "command_name", arg: 3, scope: !1305, file: !102, line: 100, type: !6)
!1310 = !DILocalVariable(name: "package", arg: 4, scope: !1305, file: !102, line: 101, type: !6)
!1311 = !DILocalVariable(name: "version", arg: 5, scope: !1305, file: !102, line: 102, type: !6)
!1312 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1305, file: !102, line: 103, type: !92)
!1313 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1305, file: !102, line: 104, type: !420)
!1314 = !DILocalVariable(name: "c", scope: !1305, file: !102, line: 107, type: !18)
!1315 = !DILocalVariable(name: "saved_opterr", scope: !1305, file: !102, line: 108, type: !18)
!1316 = !DILocalVariable(name: "optstring", scope: !1305, file: !102, line: 113, type: !6)
!1317 = !DILocalVariable(name: "authors", scope: !1318, file: !102, line: 125, type: !1282)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !102, line: 124, column: 11)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !102, line: 118, column: 9)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !102, line: 116, column: 5)
!1321 = distinct !DILexicalBlock(scope: !1305, file: !102, line: 115, column: 7)
!1322 = !DILocation(line: 0, scope: !1305)
!1323 = !DILocation(line: 108, column: 22, scope: !1305)
!1324 = !DILocation(line: 111, column: 10, scope: !1305)
!1325 = !DILocation(line: 113, column: 27, scope: !1305)
!1326 = !DILocation(line: 115, column: 12, scope: !1321)
!1327 = !DILocation(line: 115, column: 7, scope: !1305)
!1328 = !DILocation(line: 125, column: 13, scope: !1318)
!1329 = !DILocation(line: 125, column: 21, scope: !1318)
!1330 = !DILocation(line: 126, column: 13, scope: !1318)
!1331 = !DILocation(line: 127, column: 29, scope: !1318)
!1332 = !DILocation(line: 127, column: 13, scope: !1318)
!1333 = !DILocation(line: 128, column: 13, scope: !1318)
!1334 = !DILocation(line: 132, column: 26, scope: !1319)
!1335 = !DILocation(line: 133, column: 11, scope: !1319)
!1336 = !DILocation(line: 0, scope: !1319)
!1337 = !DILocation(line: 138, column: 10, scope: !1305)
!1338 = !DILocation(line: 139, column: 1, scope: !1305)
!1339 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !401, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1340)
!1340 = !{!1341, !1342, !1343}
!1341 = !DILocalVariable(name: "argv0", arg: 1, scope: !1339, file: !170, line: 39, type: !6)
!1342 = !DILocalVariable(name: "slash", scope: !1339, file: !170, line: 46, type: !6)
!1343 = !DILocalVariable(name: "base", scope: !1339, file: !170, line: 47, type: !6)
!1344 = !DILocation(line: 0, scope: !1339)
!1345 = !DILocation(line: 51, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !170, line: 51, column: 7)
!1347 = !DILocation(line: 51, column: 7, scope: !1339)
!1348 = !DILocation(line: 55, column: 14, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !170, line: 52, column: 5)
!1350 = !DILocation(line: 54, column: 7, scope: !1349)
!1351 = !DILocation(line: 56, column: 7, scope: !1349)
!1352 = !DILocation(line: 59, column: 11, scope: !1339)
!1353 = !DILocation(line: 60, column: 17, scope: !1339)
!1354 = !DILocation(line: 60, column: 11, scope: !1339)
!1355 = !DILocation(line: 61, column: 12, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1339, file: !170, line: 61, column: 7)
!1357 = !DILocation(line: 61, column: 20, scope: !1356)
!1358 = !DILocation(line: 61, column: 25, scope: !1356)
!1359 = !DILocation(line: 61, column: 42, scope: !1356)
!1360 = !DILocation(line: 61, column: 28, scope: !1356)
!1361 = !DILocation(line: 61, column: 61, scope: !1356)
!1362 = !DILocation(line: 61, column: 7, scope: !1339)
!1363 = !DILocation(line: 64, column: 11, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !170, line: 64, column: 11)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !170, line: 62, column: 5)
!1366 = !DILocation(line: 64, column: 36, scope: !1364)
!1367 = !DILocation(line: 64, column: 11, scope: !1365)
!1368 = !DILocation(line: 66, column: 24, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !170, line: 65, column: 9)
!1370 = !DILocation(line: 70, column: 41, scope: !1369)
!1371 = !DILocation(line: 72, column: 9, scope: !1369)
!1372 = !DILocation(line: 84, column: 16, scope: !1339)
!1373 = !DILocation(line: 90, column: 27, scope: !1339)
!1374 = !DILocation(line: 92, column: 1, scope: !1339)
!1375 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1376, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1379)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1378, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1379 = !{!1380, !1381, !1382}
!1380 = !DILocalVariable(name: "o", arg: 1, scope: !1375, file: !212, line: 122, type: !1378)
!1381 = !DILocalVariable(name: "e", scope: !1375, file: !212, line: 124, type: !18)
!1382 = !DILocalVariable(name: "p", scope: !1375, file: !212, line: 125, type: !1378)
!1383 = !DILocation(line: 0, scope: !1375)
!1384 = !DILocation(line: 124, column: 11, scope: !1375)
!1385 = !DILocation(line: 125, column: 40, scope: !1375)
!1386 = !DILocation(line: 125, column: 31, scope: !1375)
!1387 = !DILocation(line: 127, column: 9, scope: !1375)
!1388 = !DILocation(line: 128, column: 3, scope: !1375)
!1389 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1390, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!214, !258}
!1392 = !{!1393}
!1393 = !DILocalVariable(name: "o", arg: 1, scope: !1389, file: !212, line: 133, type: !258)
!1394 = !DILocation(line: 0, scope: !1389)
!1395 = !DILocation(line: 135, column: 11, scope: !1389)
!1396 = !DILocation(line: 135, column: 46, scope: !1389)
!1397 = !{!1398, !1124, i64 0}
!1398 = !{!"quoting_options", !1124, i64 0, !1179, i64 4, !1124, i64 8, !1123, i64 40, !1123, i64 48}
!1399 = !DILocation(line: 135, column: 3, scope: !1389)
!1400 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1401, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1378, !214}
!1403 = !{!1404, !1405}
!1404 = !DILocalVariable(name: "o", arg: 1, scope: !1400, file: !212, line: 141, type: !1378)
!1405 = !DILocalVariable(name: "s", arg: 2, scope: !1400, file: !212, line: 141, type: !214)
!1406 = !DILocation(line: 0, scope: !1400)
!1407 = !DILocation(line: 143, column: 4, scope: !1400)
!1408 = !DILocation(line: 143, column: 39, scope: !1400)
!1409 = !DILocation(line: 143, column: 45, scope: !1400)
!1410 = !DILocation(line: 144, column: 1, scope: !1400)
!1411 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1412, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!18, !1378, !8, !18}
!1414 = !{!1415, !1416, !1417, !1418, !1420, !1422, !1423}
!1415 = !DILocalVariable(name: "o", arg: 1, scope: !1411, file: !212, line: 152, type: !1378)
!1416 = !DILocalVariable(name: "c", arg: 2, scope: !1411, file: !212, line: 152, type: !8)
!1417 = !DILocalVariable(name: "i", arg: 3, scope: !1411, file: !212, line: 152, type: !18)
!1418 = !DILocalVariable(name: "uc", scope: !1411, file: !212, line: 154, type: !1419)
!1419 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1420 = !DILocalVariable(name: "p", scope: !1411, file: !212, line: 155, type: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1422 = !DILocalVariable(name: "shift", scope: !1411, file: !212, line: 157, type: !18)
!1423 = !DILocalVariable(name: "r", scope: !1411, file: !212, line: 158, type: !18)
!1424 = !DILocation(line: 0, scope: !1411)
!1425 = !DILocation(line: 156, column: 6, scope: !1411)
!1426 = !DILocation(line: 156, column: 62, scope: !1411)
!1427 = !DILocation(line: 156, column: 57, scope: !1411)
!1428 = !DILocation(line: 157, column: 15, scope: !1411)
!1429 = !DILocation(line: 158, column: 12, scope: !1411)
!1430 = !DILocation(line: 158, column: 15, scope: !1411)
!1431 = !DILocation(line: 158, column: 25, scope: !1411)
!1432 = !DILocation(line: 159, column: 13, scope: !1411)
!1433 = !DILocation(line: 159, column: 18, scope: !1411)
!1434 = !DILocation(line: 159, column: 23, scope: !1411)
!1435 = !DILocation(line: 159, column: 6, scope: !1411)
!1436 = !DILocation(line: 160, column: 3, scope: !1411)
!1437 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1438, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!18, !1378, !18}
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "o", arg: 1, scope: !1437, file: !212, line: 168, type: !1378)
!1442 = !DILocalVariable(name: "i", arg: 2, scope: !1437, file: !212, line: 168, type: !18)
!1443 = !DILocalVariable(name: "r", scope: !1437, file: !212, line: 170, type: !18)
!1444 = !DILocation(line: 0, scope: !1437)
!1445 = !DILocation(line: 171, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !212, line: 171, column: 7)
!1447 = !DILocation(line: 171, column: 7, scope: !1437)
!1448 = !DILocation(line: 173, column: 10, scope: !1437)
!1449 = !{!1398, !1179, i64 4}
!1450 = !DILocation(line: 174, column: 12, scope: !1437)
!1451 = !DILocation(line: 175, column: 3, scope: !1437)
!1452 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1453, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1378, !6, !6}
!1455 = !{!1456, !1457, !1458}
!1456 = !DILocalVariable(name: "o", arg: 1, scope: !1452, file: !212, line: 179, type: !1378)
!1457 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1452, file: !212, line: 180, type: !6)
!1458 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1452, file: !212, line: 180, type: !6)
!1459 = !DILocation(line: 0, scope: !1452)
!1460 = !DILocation(line: 182, column: 8, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1452, file: !212, line: 182, column: 7)
!1462 = !DILocation(line: 182, column: 7, scope: !1452)
!1463 = !DILocation(line: 184, column: 6, scope: !1452)
!1464 = !DILocation(line: 184, column: 12, scope: !1452)
!1465 = !DILocation(line: 185, column: 8, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1452, file: !212, line: 185, column: 7)
!1467 = !DILocation(line: 185, column: 23, scope: !1466)
!1468 = !DILocation(line: 185, column: 19, scope: !1466)
!1469 = !DILocation(line: 186, column: 5, scope: !1466)
!1470 = !DILocation(line: 187, column: 6, scope: !1452)
!1471 = !DILocation(line: 187, column: 17, scope: !1452)
!1472 = !{!1398, !1123, i64 40}
!1473 = !DILocation(line: 188, column: 6, scope: !1452)
!1474 = !DILocation(line: 188, column: 18, scope: !1452)
!1475 = !{!1398, !1123, i64 48}
!1476 = !DILocation(line: 189, column: 1, scope: !1452)
!1477 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1478, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!69, !25, !69, !6, !69, !258}
!1480 = !{!1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488}
!1481 = !DILocalVariable(name: "buffer", arg: 1, scope: !1477, file: !212, line: 784, type: !25)
!1482 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1477, file: !212, line: 784, type: !69)
!1483 = !DILocalVariable(name: "arg", arg: 3, scope: !1477, file: !212, line: 785, type: !6)
!1484 = !DILocalVariable(name: "argsize", arg: 4, scope: !1477, file: !212, line: 785, type: !69)
!1485 = !DILocalVariable(name: "o", arg: 5, scope: !1477, file: !212, line: 786, type: !258)
!1486 = !DILocalVariable(name: "p", scope: !1477, file: !212, line: 788, type: !258)
!1487 = !DILocalVariable(name: "e", scope: !1477, file: !212, line: 789, type: !18)
!1488 = !DILocalVariable(name: "r", scope: !1477, file: !212, line: 790, type: !69)
!1489 = !DILocation(line: 0, scope: !1477)
!1490 = !DILocation(line: 788, column: 37, scope: !1477)
!1491 = !DILocation(line: 789, column: 11, scope: !1477)
!1492 = !DILocation(line: 791, column: 43, scope: !1477)
!1493 = !DILocation(line: 791, column: 53, scope: !1477)
!1494 = !DILocation(line: 791, column: 60, scope: !1477)
!1495 = !DILocation(line: 792, column: 43, scope: !1477)
!1496 = !DILocation(line: 792, column: 58, scope: !1477)
!1497 = !DILocation(line: 790, column: 14, scope: !1477)
!1498 = !DILocation(line: 793, column: 9, scope: !1477)
!1499 = !DILocation(line: 794, column: 3, scope: !1477)
!1500 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1501, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1505)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!69, !25, !69, !6, !69, !214, !18, !1503, !6, !6}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1530, !1531, !1532, !1533, !1534, !1537, !1538, !1544, !1547, !1548, !1555, !1558, !1559, !1560, !1561, !1562, !1563}
!1506 = !DILocalVariable(name: "buffer", arg: 1, scope: !1500, file: !212, line: 256, type: !25)
!1507 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1500, file: !212, line: 256, type: !69)
!1508 = !DILocalVariable(name: "arg", arg: 3, scope: !1500, file: !212, line: 257, type: !6)
!1509 = !DILocalVariable(name: "argsize", arg: 4, scope: !1500, file: !212, line: 257, type: !69)
!1510 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1500, file: !212, line: 258, type: !214)
!1511 = !DILocalVariable(name: "flags", arg: 6, scope: !1500, file: !212, line: 258, type: !18)
!1512 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1500, file: !212, line: 259, type: !1503)
!1513 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1500, file: !212, line: 260, type: !6)
!1514 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1500, file: !212, line: 261, type: !6)
!1515 = !DILocalVariable(name: "i", scope: !1500, file: !212, line: 263, type: !69)
!1516 = !DILocalVariable(name: "len", scope: !1500, file: !212, line: 264, type: !69)
!1517 = !DILocalVariable(name: "orig_buffersize", scope: !1500, file: !212, line: 265, type: !69)
!1518 = !DILocalVariable(name: "quote_string", scope: !1500, file: !212, line: 266, type: !6)
!1519 = !DILocalVariable(name: "quote_string_len", scope: !1500, file: !212, line: 267, type: !69)
!1520 = !DILocalVariable(name: "backslash_escapes", scope: !1500, file: !212, line: 268, type: !92)
!1521 = !DILocalVariable(name: "unibyte_locale", scope: !1500, file: !212, line: 269, type: !92)
!1522 = !DILocalVariable(name: "elide_outer_quotes", scope: !1500, file: !212, line: 270, type: !92)
!1523 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1500, file: !212, line: 271, type: !92)
!1524 = !DILocalVariable(name: "encountered_single_quote", scope: !1500, file: !212, line: 272, type: !92)
!1525 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1500, file: !212, line: 273, type: !92)
!1526 = !DILocalVariable(name: "c", scope: !1527, file: !212, line: 402, type: !1419)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !212, line: 401, column: 5)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !212, line: 400, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 400, column: 3)
!1530 = !DILocalVariable(name: "esc", scope: !1527, file: !212, line: 403, type: !1419)
!1531 = !DILocalVariable(name: "is_right_quote", scope: !1527, file: !212, line: 404, type: !92)
!1532 = !DILocalVariable(name: "escaping", scope: !1527, file: !212, line: 405, type: !92)
!1533 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1527, file: !212, line: 406, type: !92)
!1534 = !DILocalVariable(name: "m", scope: !1535, file: !212, line: 610, type: !69)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 608, column: 11)
!1536 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 426, column: 9)
!1537 = !DILocalVariable(name: "printable", scope: !1535, file: !212, line: 612, type: !92)
!1538 = !DILocalVariable(name: "mbstate", scope: !1539, file: !212, line: 621, type: !1541)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 620, column: 15)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !212, line: 614, column: 17)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1542, line: 6, baseType: !1543)
!1542 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1544 = !DILocalVariable(name: "w", scope: !1545, file: !212, line: 631, type: !1546)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !212, line: 630, column: 19)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1547 = !DILocalVariable(name: "bytes", scope: !1545, file: !212, line: 632, type: !69)
!1548 = !DILocalVariable(name: "j", scope: !1549, file: !212, line: 657, type: !69)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !212, line: 656, column: 27)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !212, line: 654, column: 29)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !212, line: 649, column: 23)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !212, line: 641, column: 30)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !212, line: 636, column: 30)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !212, line: 634, column: 25)
!1555 = !DILocalVariable(name: "ilim", scope: !1556, file: !212, line: 684, type: !69)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !212, line: 681, column: 15)
!1557 = distinct !DILexicalBlock(scope: !1535, file: !212, line: 680, column: 17)
!1558 = !DILabel(scope: !1500, name: "process_input", file: !212, line: 314)
!1559 = !DILabel(scope: !1536, name: "c_and_shell_escape", file: !212, line: 512)
!1560 = !DILabel(scope: !1536, name: "c_escape", file: !212, line: 517)
!1561 = !DILabel(scope: !1527, name: "store_escape", file: !212, line: 719)
!1562 = !DILabel(scope: !1527, name: "store_c", file: !212, line: 722)
!1563 = !DILabel(scope: !1500, name: "force_outer_quoting_style", file: !212, line: 763)
!1564 = !DILocation(line: 0, scope: !1500)
!1565 = !DILocation(line: 269, column: 25, scope: !1500)
!1566 = !DILocation(line: 269, column: 36, scope: !1500)
!1567 = !DILocation(line: 270, column: 8, scope: !1500)
!1568 = !DILocation(line: 0, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 526, column: 15)
!1570 = !DILocation(line: 0, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !212, line: 462, column: 19)
!1572 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 455, column: 13)
!1573 = !DILocation(line: 0, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !212, line: 449, column: 20)
!1575 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 428, column: 15)
!1576 = !DILocation(line: 0, scope: !1539)
!1577 = !DILocation(line: 0, scope: !1545)
!1578 = !DILocation(line: 0, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 712, column: 11)
!1580 = !DILocation(line: 273, column: 3, scope: !1500)
!1581 = !DILocation(line: 265, column: 10, scope: !1500)
!1582 = !DILocation(line: 266, column: 15, scope: !1500)
!1583 = !DILocation(line: 267, column: 10, scope: !1500)
!1584 = !DILocation(line: 268, column: 8, scope: !1500)
!1585 = !DILocation(line: 271, column: 8, scope: !1500)
!1586 = !DILocation(line: 272, column: 8, scope: !1500)
!1587 = !DILocation(line: 273, column: 8, scope: !1500)
!1588 = !DILocation(line: 314, column: 2, scope: !1500)
!1589 = !DILocation(line: 316, column: 3, scope: !1500)
!1590 = !DILocation(line: 323, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 317, column: 5)
!1592 = !DILocation(line: 323, column: 12, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !212, line: 323, column: 11)
!1594 = !DILocation(line: 324, column: 9, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !212, line: 324, column: 9)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !212, line: 324, column: 9)
!1597 = !DILocation(line: 324, column: 9, scope: !1596)
!1598 = !{!1124, !1124, i64 0}
!1599 = !DILocation(line: 362, column: 26, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !212, line: 340, column: 11)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !212, line: 339, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1591, file: !212, line: 338, column: 7)
!1603 = !DILocation(line: 363, column: 27, scope: !1600)
!1604 = !DILocation(line: 364, column: 11, scope: !1600)
!1605 = !DILocation(line: 365, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !212, line: 365, column: 13)
!1607 = !DILocation(line: 365, column: 13, scope: !1602)
!1608 = !DILocation(line: 366, column: 43, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !212, line: 366, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !212, line: 366, column: 11)
!1611 = !DILocation(line: 366, column: 11, scope: !1610)
!1612 = !DILocation(line: 367, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !212, line: 367, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !212, line: 367, column: 13)
!1615 = !DILocation(line: 367, column: 13, scope: !1614)
!1616 = !DILocation(line: 366, column: 70, scope: !1609)
!1617 = distinct !{!1617, !1611, !1618}
!1618 = !DILocation(line: 367, column: 13, scope: !1610)
!1619 = !DILocation(line: 264, column: 10, scope: !1500)
!1620 = !DILocation(line: 370, column: 28, scope: !1602)
!1621 = !DILocation(line: 372, column: 7, scope: !1591)
!1622 = !DILocation(line: 376, column: 7, scope: !1591)
!1623 = !DILocation(line: 379, column: 7, scope: !1591)
!1624 = !DILocation(line: 381, column: 12, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1591, file: !212, line: 381, column: 11)
!1626 = !DILocation(line: 381, column: 11, scope: !1591)
!1627 = !DILocation(line: 386, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1591, file: !212, line: 386, column: 11)
!1629 = !DILocation(line: 386, column: 11, scope: !1591)
!1630 = !DILocation(line: 387, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !212, line: 387, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !212, line: 387, column: 9)
!1633 = !DILocation(line: 387, column: 9, scope: !1632)
!1634 = !DILocation(line: 394, column: 7, scope: !1591)
!1635 = !DILocation(line: 397, column: 7, scope: !1591)
!1636 = !DILocation(line: 0, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 408, column: 11)
!1638 = !DILocation(line: 0, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !212, line: 419, column: 15)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !212, line: 418, column: 9)
!1641 = !DILocation(line: 0, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 556, column: 15)
!1643 = !DILocation(line: 0, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 548, column: 15)
!1645 = !DILocation(line: 0, scope: !1550)
!1646 = !DILocation(line: 0, scope: !1557)
!1647 = !DILocation(line: 0, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 509, column: 15)
!1649 = !DILocation(line: 400, column: 8, scope: !1529)
!1650 = !DILocation(line: 0, scope: !1529)
!1651 = !DILocation(line: 400, column: 27, scope: !1528)
!1652 = !DILocation(line: 400, column: 19, scope: !1528)
!1653 = !DILocation(line: 400, column: 41, scope: !1528)
!1654 = !DILocation(line: 400, column: 48, scope: !1528)
!1655 = !DILocation(line: 400, column: 3, scope: !1529)
!1656 = !DILocation(line: 400, column: 60, scope: !1528)
!1657 = !DILocation(line: 0, scope: !1527)
!1658 = !DILocation(line: 409, column: 11, scope: !1637)
!1659 = !DILocation(line: 411, column: 17, scope: !1637)
!1660 = !DILocation(line: 412, column: 39, scope: !1637)
!1661 = !DILocation(line: 416, column: 32, scope: !1637)
!1662 = !DILocation(line: 412, column: 19, scope: !1637)
!1663 = !DILocation(line: 412, column: 15, scope: !1637)
!1664 = !DILocation(line: 417, column: 11, scope: !1637)
!1665 = !DILocation(line: 417, column: 26, scope: !1637)
!1666 = !DILocation(line: 417, column: 14, scope: !1637)
!1667 = !DILocation(line: 417, column: 63, scope: !1637)
!1668 = !DILocation(line: 408, column: 11, scope: !1527)
!1669 = !DILocation(line: 424, column: 11, scope: !1527)
!1670 = !DILocation(line: 425, column: 7, scope: !1527)
!1671 = !DILocation(line: 428, column: 15, scope: !1536)
!1672 = !DILocation(line: 430, column: 15, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !212, line: 430, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1575, file: !212, line: 429, column: 13)
!1675 = !DILocation(line: 430, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !212, line: 430, column: 15)
!1677 = !DILocation(line: 430, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !212, line: 430, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 430, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !212, line: 430, column: 15)
!1681 = !DILocation(line: 430, column: 15, scope: !1679)
!1682 = !DILocation(line: 430, column: 15, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !212, line: 430, column: 15)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 430, column: 15)
!1685 = !DILocation(line: 430, column: 15, scope: !1684)
!1686 = !DILocation(line: 430, column: 15, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !212, line: 430, column: 15)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !212, line: 430, column: 15)
!1689 = !DILocation(line: 430, column: 15, scope: !1688)
!1690 = !DILocation(line: 430, column: 15, scope: !1680)
!1691 = !DILocation(line: 430, column: 15, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !212, line: 430, column: 15)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !212, line: 430, column: 15)
!1694 = !DILocation(line: 430, column: 15, scope: !1693)
!1695 = !DILocation(line: 438, column: 19, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1674, file: !212, line: 437, column: 19)
!1697 = !DILocation(line: 438, column: 24, scope: !1696)
!1698 = !DILocation(line: 438, column: 28, scope: !1696)
!1699 = !DILocation(line: 438, column: 38, scope: !1696)
!1700 = !DILocation(line: 438, column: 48, scope: !1696)
!1701 = !DILocation(line: 438, column: 59, scope: !1696)
!1702 = !DILocation(line: 440, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !212, line: 440, column: 19)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !212, line: 440, column: 19)
!1705 = distinct !DILexicalBlock(scope: !1696, file: !212, line: 439, column: 17)
!1706 = !DILocation(line: 440, column: 19, scope: !1704)
!1707 = !DILocation(line: 441, column: 19, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 441, column: 19)
!1709 = distinct !DILexicalBlock(scope: !1705, file: !212, line: 441, column: 19)
!1710 = !DILocation(line: 441, column: 19, scope: !1709)
!1711 = !DILocation(line: 442, column: 17, scope: !1705)
!1712 = !DILocation(line: 449, column: 20, scope: !1575)
!1713 = !DILocation(line: 454, column: 11, scope: !1536)
!1714 = !DILocation(line: 457, column: 19, scope: !1572)
!1715 = !DILocation(line: 463, column: 19, scope: !1571)
!1716 = !DILocation(line: 463, column: 24, scope: !1571)
!1717 = !DILocation(line: 463, column: 28, scope: !1571)
!1718 = !DILocation(line: 463, column: 38, scope: !1571)
!1719 = !DILocation(line: 463, column: 47, scope: !1571)
!1720 = !DILocation(line: 463, column: 41, scope: !1571)
!1721 = !DILocation(line: 463, column: 52, scope: !1571)
!1722 = !DILocation(line: 462, column: 19, scope: !1572)
!1723 = !DILocation(line: 464, column: 25, scope: !1571)
!1724 = !DILocation(line: 464, column: 17, scope: !1571)
!1725 = !DILocation(line: 471, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1571, file: !212, line: 465, column: 19)
!1727 = !DILocation(line: 475, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 475, column: 21)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !212, line: 475, column: 21)
!1730 = !DILocation(line: 475, column: 21, scope: !1729)
!1731 = !DILocation(line: 476, column: 21, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !212, line: 476, column: 21)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !212, line: 476, column: 21)
!1734 = !DILocation(line: 476, column: 21, scope: !1733)
!1735 = !DILocation(line: 477, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !212, line: 477, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !212, line: 477, column: 21)
!1738 = !DILocation(line: 477, column: 21, scope: !1737)
!1739 = !DILocation(line: 478, column: 21, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !212, line: 478, column: 21)
!1741 = distinct !DILexicalBlock(scope: !1726, file: !212, line: 478, column: 21)
!1742 = !DILocation(line: 478, column: 21, scope: !1741)
!1743 = !DILocation(line: 479, column: 21, scope: !1726)
!1744 = !DILocation(line: 492, column: 31, scope: !1536)
!1745 = !DILocation(line: 493, column: 31, scope: !1536)
!1746 = !DILocation(line: 495, column: 31, scope: !1536)
!1747 = !DILocation(line: 496, column: 31, scope: !1536)
!1748 = !DILocation(line: 497, column: 31, scope: !1536)
!1749 = !DILocation(line: 500, column: 15, scope: !1536)
!1750 = !DILocation(line: 502, column: 19, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !212, line: 501, column: 13)
!1752 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 500, column: 15)
!1753 = !DILocation(line: 509, column: 33, scope: !1648)
!1754 = !DILocation(line: 0, scope: !1536)
!1755 = !DILocation(line: 512, column: 9, scope: !1536)
!1756 = !DILocation(line: 514, column: 15, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 513, column: 15)
!1758 = !DILocation(line: 517, column: 9, scope: !1536)
!1759 = !DILocation(line: 518, column: 15, scope: !1536)
!1760 = !DILocation(line: 526, column: 15, scope: !1536)
!1761 = !DILocation(line: 526, column: 40, scope: !1569)
!1762 = !DILocation(line: 526, column: 47, scope: !1569)
!1763 = !DILocation(line: 526, column: 18, scope: !1569)
!1764 = !DILocation(line: 530, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1536, file: !212, line: 530, column: 15)
!1766 = !DILocation(line: 530, column: 15, scope: !1536)
!1767 = !DILocation(line: 535, column: 11, scope: !1536)
!1768 = !DILocation(line: 549, column: 15, scope: !1644)
!1769 = !DILocation(line: 556, column: 15, scope: !1536)
!1770 = !DILocation(line: 558, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1642, file: !212, line: 557, column: 13)
!1772 = !DILocation(line: 561, column: 19, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 561, column: 19)
!1774 = !DILocation(line: 561, column: 35, scope: !1773)
!1775 = !DILocation(line: 561, column: 30, scope: !1773)
!1776 = !DILocation(line: 570, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !212, line: 570, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 570, column: 15)
!1779 = !DILocation(line: 570, column: 15, scope: !1778)
!1780 = !DILocation(line: 571, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !212, line: 571, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 571, column: 15)
!1783 = !DILocation(line: 571, column: 15, scope: !1782)
!1784 = !DILocation(line: 572, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !212, line: 572, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1771, file: !212, line: 572, column: 15)
!1787 = !DILocation(line: 572, column: 15, scope: !1786)
!1788 = !DILocation(line: 574, column: 13, scope: !1771)
!1789 = !DILocation(line: 614, column: 17, scope: !1535)
!1790 = !DILocation(line: 0, scope: !1535)
!1791 = !DILocation(line: 617, column: 29, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 615, column: 15)
!1793 = !{!1794, !1794, i64 0}
!1794 = !{!"short", !1124, i64 0}
!1795 = !DILocation(line: 617, column: 27, scope: !1792)
!1796 = !DILocation(line: 618, column: 15, scope: !1792)
!1797 = !DILocation(line: 621, column: 17, scope: !1539)
!1798 = !DILocation(line: 621, column: 27, scope: !1539)
!1799 = !DILocalVariable(name: "__dest", arg: 1, scope: !1800, file: !1801, line: 59, type: !67)
!1800 = distinct !DISubprogram(name: "memset", scope: !1801, file: !1801, line: 59, type: !1802, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1804)
!1801 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!67, !67, !18, !69}
!1804 = !{!1799, !1805, !1806}
!1805 = !DILocalVariable(name: "__ch", arg: 2, scope: !1800, file: !1801, line: 59, type: !18)
!1806 = !DILocalVariable(name: "__len", arg: 3, scope: !1800, file: !1801, line: 59, type: !69)
!1807 = !DILocation(line: 0, scope: !1800, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 622, column: 17, scope: !1539)
!1809 = !DILocation(line: 71, column: 10, scope: !1800, inlinedAt: !1808)
!1810 = !DILocation(line: 626, column: 29, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1539, file: !212, line: 626, column: 21)
!1812 = !DILocation(line: 626, column: 21, scope: !1539)
!1813 = !DILocation(line: 627, column: 29, scope: !1811)
!1814 = !DILocation(line: 627, column: 19, scope: !1811)
!1815 = !DILocation(line: 629, column: 17, scope: !1539)
!1816 = !DILocation(line: 624, column: 19, scope: !1539)
!1817 = !DILocation(line: 625, column: 27, scope: !1539)
!1818 = !DILocation(line: 631, column: 21, scope: !1545)
!1819 = !DILocation(line: 632, column: 56, scope: !1545)
!1820 = !DILocation(line: 632, column: 50, scope: !1545)
!1821 = !DILocation(line: 633, column: 53, scope: !1545)
!1822 = !DILocation(line: 632, column: 36, scope: !1545)
!1823 = !DILocation(line: 634, column: 25, scope: !1545)
!1824 = !DILocation(line: 644, column: 38, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1552, file: !212, line: 642, column: 23)
!1826 = !DILocation(line: 644, column: 48, scope: !1825)
!1827 = !DILocation(line: 644, column: 25, scope: !1825)
!1828 = !DILocation(line: 644, column: 51, scope: !1825)
!1829 = !DILocation(line: 645, column: 28, scope: !1825)
!1830 = !DILocation(line: 644, column: 34, scope: !1825)
!1831 = distinct !{!1831, !1827, !1829}
!1832 = !DILocation(line: 658, column: 43, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !212, line: 658, column: 29)
!1834 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 658, column: 29)
!1835 = !DILocation(line: 655, column: 29, scope: !1550)
!1836 = !DILocation(line: 0, scope: !1549)
!1837 = !DILocation(line: 659, column: 49, scope: !1833)
!1838 = !DILocation(line: 659, column: 39, scope: !1833)
!1839 = !DILocation(line: 659, column: 31, scope: !1833)
!1840 = !DILocation(line: 658, column: 53, scope: !1833)
!1841 = !DILocation(line: 658, column: 29, scope: !1834)
!1842 = distinct !{!1842, !1841, !1843}
!1843 = !DILocation(line: 667, column: 33, scope: !1834)
!1844 = !DILocation(line: 674, column: 19, scope: !1539)
!1845 = !DILocation(line: 670, column: 41, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1551, file: !212, line: 670, column: 29)
!1847 = !DILocation(line: 670, column: 31, scope: !1846)
!1848 = !DILocation(line: 670, column: 29, scope: !1551)
!1849 = !DILocation(line: 672, column: 27, scope: !1551)
!1850 = !DILocation(line: 675, column: 26, scope: !1539)
!1851 = !DILocation(line: 675, column: 24, scope: !1539)
!1852 = !DILocation(line: 674, column: 19, scope: !1545)
!1853 = distinct !{!1853, !1815, !1854}
!1854 = !DILocation(line: 675, column: 44, scope: !1539)
!1855 = !DILocation(line: 676, column: 15, scope: !1540)
!1856 = !DILocation(line: 0, scope: !1540)
!1857 = !DILocation(line: 678, column: 40, scope: !1535)
!1858 = !DILocation(line: 680, column: 19, scope: !1557)
!1859 = !DILocation(line: 680, column: 45, scope: !1557)
!1860 = !DILocation(line: 680, column: 23, scope: !1557)
!1861 = !DILocation(line: 684, column: 33, scope: !1556)
!1862 = !DILocation(line: 0, scope: !1556)
!1863 = !DILocation(line: 686, column: 17, scope: !1556)
!1864 = !DILocation(line: 405, column: 12, scope: !1527)
!1865 = !DILocation(line: 688, column: 43, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !212, line: 688, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !212, line: 687, column: 19)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !212, line: 686, column: 17)
!1869 = distinct !DILexicalBlock(scope: !1556, file: !212, line: 686, column: 17)
!1870 = !DILocation(line: 690, column: 25, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !212, line: 690, column: 25)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !212, line: 689, column: 23)
!1873 = !DILocation(line: 690, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !212, line: 690, column: 25)
!1875 = !DILocation(line: 690, column: 25, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !212, line: 690, column: 25)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 690, column: 25)
!1878 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 690, column: 25)
!1879 = !DILocation(line: 690, column: 25, scope: !1877)
!1880 = !DILocation(line: 690, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !212, line: 690, column: 25)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 690, column: 25)
!1883 = !DILocation(line: 690, column: 25, scope: !1882)
!1884 = !DILocation(line: 690, column: 25, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !212, line: 690, column: 25)
!1886 = distinct !DILexicalBlock(scope: !1878, file: !212, line: 690, column: 25)
!1887 = !DILocation(line: 690, column: 25, scope: !1886)
!1888 = !DILocation(line: 690, column: 25, scope: !1878)
!1889 = !DILocation(line: 690, column: 25, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 690, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1871, file: !212, line: 690, column: 25)
!1892 = !DILocation(line: 690, column: 25, scope: !1891)
!1893 = !DILocation(line: 691, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !212, line: 691, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1872, file: !212, line: 691, column: 25)
!1896 = !DILocation(line: 691, column: 25, scope: !1895)
!1897 = !DILocation(line: 692, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !212, line: 692, column: 25)
!1899 = distinct !DILexicalBlock(scope: !1872, file: !212, line: 692, column: 25)
!1900 = !DILocation(line: 692, column: 25, scope: !1899)
!1901 = !DILocation(line: 693, column: 38, scope: !1872)
!1902 = !DILocation(line: 693, column: 33, scope: !1872)
!1903 = !DILocation(line: 694, column: 23, scope: !1872)
!1904 = !DILocation(line: 695, column: 30, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1866, file: !212, line: 695, column: 30)
!1906 = !DILocation(line: 695, column: 30, scope: !1866)
!1907 = !DILocation(line: 697, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !212, line: 697, column: 25)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !212, line: 697, column: 25)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !212, line: 696, column: 23)
!1911 = !DILocation(line: 697, column: 25, scope: !1909)
!1912 = !DILocation(line: 699, column: 23, scope: !1910)
!1913 = !DILocation(line: 700, column: 35, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1867, file: !212, line: 700, column: 25)
!1915 = !DILocation(line: 700, column: 30, scope: !1914)
!1916 = !DILocation(line: 700, column: 25, scope: !1867)
!1917 = !DILocation(line: 702, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !212, line: 702, column: 21)
!1919 = distinct !DILexicalBlock(scope: !1867, file: !212, line: 702, column: 21)
!1920 = !DILocation(line: 702, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !212, line: 702, column: 21)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !212, line: 702, column: 21)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !212, line: 702, column: 21)
!1924 = !DILocation(line: 702, column: 21, scope: !1922)
!1925 = !DILocation(line: 702, column: 21, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 702, column: 21)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !212, line: 702, column: 21)
!1928 = !DILocation(line: 702, column: 21, scope: !1927)
!1929 = !DILocation(line: 702, column: 21, scope: !1923)
!1930 = !DILocation(line: 0, scope: !1867)
!1931 = !DILocation(line: 703, column: 21, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !212, line: 703, column: 21)
!1933 = distinct !DILexicalBlock(scope: !1867, file: !212, line: 703, column: 21)
!1934 = !DILocation(line: 703, column: 21, scope: !1933)
!1935 = !DILocation(line: 704, column: 25, scope: !1867)
!1936 = !DILocation(line: 686, column: 17, scope: !1868)
!1937 = distinct !{!1937, !1938, !1939}
!1938 = !DILocation(line: 686, column: 17, scope: !1869)
!1939 = !DILocation(line: 705, column: 19, scope: !1869)
!1940 = !DILocation(line: 416, column: 30, scope: !1637)
!1941 = !DILocation(line: 712, column: 34, scope: !1579)
!1942 = !DILocation(line: 715, column: 35, scope: !1579)
!1943 = !DILocation(line: 715, column: 17, scope: !1579)
!1944 = !DILocation(line: 715, column: 47, scope: !1579)
!1945 = !DILocation(line: 715, column: 65, scope: !1579)
!1946 = !DILocation(line: 716, column: 15, scope: !1579)
!1947 = !DILocation(line: 716, column: 11, scope: !1579)
!1948 = !DILocation(line: 712, column: 11, scope: !1527)
!1949 = !DILocation(line: 400, column: 10, scope: !1529)
!1950 = !DILocation(line: 719, column: 5, scope: !1527)
!1951 = !DILocation(line: 720, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 720, column: 7)
!1953 = !DILocation(line: 720, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1952, file: !212, line: 720, column: 7)
!1955 = !DILocation(line: 720, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !212, line: 720, column: 7)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !212, line: 720, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1954, file: !212, line: 720, column: 7)
!1959 = !DILocation(line: 720, column: 7, scope: !1957)
!1960 = !DILocation(line: 720, column: 7, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !212, line: 720, column: 7)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !212, line: 720, column: 7)
!1963 = !DILocation(line: 720, column: 7, scope: !1962)
!1964 = !DILocation(line: 720, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !212, line: 720, column: 7)
!1966 = distinct !DILexicalBlock(scope: !1958, file: !212, line: 720, column: 7)
!1967 = !DILocation(line: 720, column: 7, scope: !1966)
!1968 = !DILocation(line: 720, column: 7, scope: !1958)
!1969 = !DILocation(line: 720, column: 7, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 720, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1952, file: !212, line: 720, column: 7)
!1972 = !DILocation(line: 720, column: 7, scope: !1971)
!1973 = !DILocation(line: 722, column: 5, scope: !1527)
!1974 = !DILocation(line: 723, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !212, line: 723, column: 7)
!1976 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 723, column: 7)
!1977 = !DILocation(line: 424, column: 9, scope: !1527)
!1978 = !DILocation(line: 723, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !212, line: 723, column: 7)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !212, line: 723, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !212, line: 723, column: 7)
!1982 = !DILocation(line: 723, column: 7, scope: !1980)
!1983 = !DILocation(line: 723, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !212, line: 723, column: 7)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !212, line: 723, column: 7)
!1986 = !DILocation(line: 723, column: 7, scope: !1985)
!1987 = !DILocation(line: 723, column: 7, scope: !1981)
!1988 = !DILocation(line: 724, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !212, line: 724, column: 7)
!1990 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 724, column: 7)
!1991 = !DILocation(line: 724, column: 7, scope: !1990)
!1992 = !DILocation(line: 726, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1527, file: !212, line: 726, column: 11)
!1994 = !DILocation(line: 726, column: 11, scope: !1527)
!1995 = !DILocation(line: 728, column: 5, scope: !1528)
!1996 = !DILocation(line: 400, column: 75, scope: !1528)
!1997 = !DILocation(line: 400, column: 3, scope: !1528)
!1998 = distinct !{!1998, !1655, !1999}
!1999 = !DILocation(line: 728, column: 5, scope: !1529)
!2000 = !DILocation(line: 730, column: 11, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 730, column: 7)
!2002 = !DILocation(line: 730, column: 16, scope: !2001)
!2003 = !DILocation(line: 738, column: 51, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 738, column: 7)
!2005 = !DILocation(line: 739, column: 10, scope: !2004)
!2006 = !DILocation(line: 741, column: 11, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !212, line: 741, column: 11)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !212, line: 740, column: 5)
!2009 = !DILocation(line: 741, column: 11, scope: !2008)
!2010 = !DILocation(line: 742, column: 16, scope: !2007)
!2011 = !DILocation(line: 742, column: 9, scope: !2007)
!2012 = !DILocation(line: 746, column: 18, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2007, file: !212, line: 746, column: 16)
!2014 = !DILocation(line: 746, column: 32, scope: !2013)
!2015 = !DILocation(line: 746, column: 29, scope: !2013)
!2016 = !DILocation(line: 755, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 755, column: 7)
!2018 = !DILocation(line: 755, column: 20, scope: !2017)
!2019 = !DILocation(line: 756, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !212, line: 756, column: 5)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !212, line: 756, column: 5)
!2022 = !DILocation(line: 756, column: 5, scope: !2021)
!2023 = !DILocation(line: 757, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !212, line: 757, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2020, file: !212, line: 757, column: 7)
!2026 = !DILocation(line: 757, column: 7, scope: !2025)
!2027 = !DILocation(line: 756, column: 39, scope: !2020)
!2028 = distinct !{!2028, !2022, !2029}
!2029 = !DILocation(line: 757, column: 7, scope: !2021)
!2030 = !DILocation(line: 759, column: 11, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 759, column: 7)
!2032 = !DILocation(line: 759, column: 7, scope: !1500)
!2033 = !DILocation(line: 760, column: 5, scope: !2031)
!2034 = !DILocation(line: 760, column: 17, scope: !2031)
!2035 = !DILocation(line: 763, column: 2, scope: !1500)
!2036 = !DILocation(line: 766, column: 51, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1500, file: !212, line: 766, column: 7)
!2038 = !DILocation(line: 766, column: 21, scope: !2037)
!2039 = !DILocation(line: 770, column: 42, scope: !1500)
!2040 = !DILocation(line: 768, column: 10, scope: !1500)
!2041 = !DILocation(line: 768, column: 3, scope: !1500)
!2042 = !DILocation(line: 772, column: 1, scope: !1500)
!2043 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2044, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!6, !6, !214}
!2046 = !{!2047, !2048, !2049, !2050}
!2047 = !DILocalVariable(name: "msgid", arg: 1, scope: !2043, file: !212, line: 207, type: !6)
!2048 = !DILocalVariable(name: "s", arg: 2, scope: !2043, file: !212, line: 207, type: !214)
!2049 = !DILocalVariable(name: "translation", scope: !2043, file: !212, line: 209, type: !6)
!2050 = !DILocalVariable(name: "locale_code", scope: !2043, file: !212, line: 210, type: !6)
!2051 = !DILocation(line: 0, scope: !2043)
!2052 = !DILocation(line: 209, column: 29, scope: !2043)
!2053 = !DILocation(line: 212, column: 19, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2043, file: !212, line: 212, column: 7)
!2055 = !DILocation(line: 212, column: 7, scope: !2043)
!2056 = !DILocation(line: 233, column: 17, scope: !2043)
!2057 = !DILocalVariable(name: "s1", arg: 1, scope: !2058, file: !2059, line: 160, type: !6)
!2058 = distinct !DISubprogram(name: "strcaseeq0", scope: !2059, file: !2059, line: 160, type: !2060, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2062)
!2059 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2062 = !{!2057, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2063 = !DILocalVariable(name: "s2", arg: 2, scope: !2058, file: !2059, line: 160, type: !6)
!2064 = !DILocalVariable(name: "s20", arg: 3, scope: !2058, file: !2059, line: 160, type: !8)
!2065 = !DILocalVariable(name: "s21", arg: 4, scope: !2058, file: !2059, line: 160, type: !8)
!2066 = !DILocalVariable(name: "s22", arg: 5, scope: !2058, file: !2059, line: 160, type: !8)
!2067 = !DILocalVariable(name: "s23", arg: 6, scope: !2058, file: !2059, line: 160, type: !8)
!2068 = !DILocalVariable(name: "s24", arg: 7, scope: !2058, file: !2059, line: 160, type: !8)
!2069 = !DILocalVariable(name: "s25", arg: 8, scope: !2058, file: !2059, line: 160, type: !8)
!2070 = !DILocalVariable(name: "s26", arg: 9, scope: !2058, file: !2059, line: 160, type: !8)
!2071 = !DILocalVariable(name: "s27", arg: 10, scope: !2058, file: !2059, line: 160, type: !8)
!2072 = !DILocalVariable(name: "s28", arg: 11, scope: !2058, file: !2059, line: 160, type: !8)
!2073 = !DILocation(line: 0, scope: !2058, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 234, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2043, file: !212, line: 234, column: 7)
!2076 = !DILocation(line: 162, column: 7, scope: !2077, inlinedAt: !2074)
!2077 = distinct !DILexicalBlock(scope: !2058, file: !2059, line: 162, column: 7)
!2078 = !DILocalVariable(name: "s1", arg: 1, scope: !2079, file: !2059, line: 146, type: !6)
!2079 = distinct !DISubprogram(name: "strcaseeq1", scope: !2059, file: !2059, line: 146, type: !2080, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2082 = !{!2078, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2083 = !DILocalVariable(name: "s2", arg: 2, scope: !2079, file: !2059, line: 146, type: !6)
!2084 = !DILocalVariable(name: "s21", arg: 3, scope: !2079, file: !2059, line: 146, type: !8)
!2085 = !DILocalVariable(name: "s22", arg: 4, scope: !2079, file: !2059, line: 146, type: !8)
!2086 = !DILocalVariable(name: "s23", arg: 5, scope: !2079, file: !2059, line: 146, type: !8)
!2087 = !DILocalVariable(name: "s24", arg: 6, scope: !2079, file: !2059, line: 146, type: !8)
!2088 = !DILocalVariable(name: "s25", arg: 7, scope: !2079, file: !2059, line: 146, type: !8)
!2089 = !DILocalVariable(name: "s26", arg: 8, scope: !2079, file: !2059, line: 146, type: !8)
!2090 = !DILocalVariable(name: "s27", arg: 9, scope: !2079, file: !2059, line: 146, type: !8)
!2091 = !DILocalVariable(name: "s28", arg: 10, scope: !2079, file: !2059, line: 146, type: !8)
!2092 = !DILocation(line: 0, scope: !2079, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 167, column: 16, scope: !2094, inlinedAt: !2074)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !2059, line: 164, column: 11)
!2095 = distinct !DILexicalBlock(scope: !2077, file: !2059, line: 163, column: 5)
!2096 = !DILocation(line: 148, column: 7, scope: !2097, inlinedAt: !2093)
!2097 = distinct !DILexicalBlock(scope: !2079, file: !2059, line: 148, column: 7)
!2098 = !DILocalVariable(name: "s1", arg: 1, scope: !2099, file: !2059, line: 132, type: !6)
!2099 = distinct !DISubprogram(name: "strcaseeq2", scope: !2059, file: !2059, line: 132, type: !2100, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2102 = !{!2098, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2103 = !DILocalVariable(name: "s2", arg: 2, scope: !2099, file: !2059, line: 132, type: !6)
!2104 = !DILocalVariable(name: "s22", arg: 3, scope: !2099, file: !2059, line: 132, type: !8)
!2105 = !DILocalVariable(name: "s23", arg: 4, scope: !2099, file: !2059, line: 132, type: !8)
!2106 = !DILocalVariable(name: "s24", arg: 5, scope: !2099, file: !2059, line: 132, type: !8)
!2107 = !DILocalVariable(name: "s25", arg: 6, scope: !2099, file: !2059, line: 132, type: !8)
!2108 = !DILocalVariable(name: "s26", arg: 7, scope: !2099, file: !2059, line: 132, type: !8)
!2109 = !DILocalVariable(name: "s27", arg: 8, scope: !2099, file: !2059, line: 132, type: !8)
!2110 = !DILocalVariable(name: "s28", arg: 9, scope: !2099, file: !2059, line: 132, type: !8)
!2111 = !DILocation(line: 0, scope: !2099, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 153, column: 16, scope: !2113, inlinedAt: !2093)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !2059, line: 150, column: 11)
!2114 = distinct !DILexicalBlock(scope: !2097, file: !2059, line: 149, column: 5)
!2115 = !DILocation(line: 134, column: 7, scope: !2116, inlinedAt: !2112)
!2116 = distinct !DILexicalBlock(scope: !2099, file: !2059, line: 134, column: 7)
!2117 = !DILocalVariable(name: "s1", arg: 1, scope: !2118, file: !2059, line: 118, type: !6)
!2118 = distinct !DISubprogram(name: "strcaseeq3", scope: !2059, file: !2059, line: 118, type: !2119, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2121 = !{!2117, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2122 = !DILocalVariable(name: "s2", arg: 2, scope: !2118, file: !2059, line: 118, type: !6)
!2123 = !DILocalVariable(name: "s23", arg: 3, scope: !2118, file: !2059, line: 118, type: !8)
!2124 = !DILocalVariable(name: "s24", arg: 4, scope: !2118, file: !2059, line: 118, type: !8)
!2125 = !DILocalVariable(name: "s25", arg: 5, scope: !2118, file: !2059, line: 118, type: !8)
!2126 = !DILocalVariable(name: "s26", arg: 6, scope: !2118, file: !2059, line: 118, type: !8)
!2127 = !DILocalVariable(name: "s27", arg: 7, scope: !2118, file: !2059, line: 118, type: !8)
!2128 = !DILocalVariable(name: "s28", arg: 8, scope: !2118, file: !2059, line: 118, type: !8)
!2129 = !DILocation(line: 0, scope: !2118, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 139, column: 16, scope: !2131, inlinedAt: !2112)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !2059, line: 136, column: 11)
!2132 = distinct !DILexicalBlock(scope: !2116, file: !2059, line: 135, column: 5)
!2133 = !DILocation(line: 120, column: 7, scope: !2134, inlinedAt: !2130)
!2134 = distinct !DILexicalBlock(scope: !2118, file: !2059, line: 120, column: 7)
!2135 = !DILocation(line: 120, column: 7, scope: !2118, inlinedAt: !2130)
!2136 = !DILocalVariable(name: "s1", arg: 1, scope: !2137, file: !2059, line: 104, type: !6)
!2137 = distinct !DISubprogram(name: "strcaseeq4", scope: !2059, file: !2059, line: 104, type: !2138, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2140 = !{!2136, !2141, !2142, !2143, !2144, !2145, !2146}
!2141 = !DILocalVariable(name: "s2", arg: 2, scope: !2137, file: !2059, line: 104, type: !6)
!2142 = !DILocalVariable(name: "s24", arg: 3, scope: !2137, file: !2059, line: 104, type: !8)
!2143 = !DILocalVariable(name: "s25", arg: 4, scope: !2137, file: !2059, line: 104, type: !8)
!2144 = !DILocalVariable(name: "s26", arg: 5, scope: !2137, file: !2059, line: 104, type: !8)
!2145 = !DILocalVariable(name: "s27", arg: 6, scope: !2137, file: !2059, line: 104, type: !8)
!2146 = !DILocalVariable(name: "s28", arg: 7, scope: !2137, file: !2059, line: 104, type: !8)
!2147 = !DILocation(line: 0, scope: !2137, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 125, column: 16, scope: !2149, inlinedAt: !2130)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !2059, line: 122, column: 11)
!2150 = distinct !DILexicalBlock(scope: !2134, file: !2059, line: 121, column: 5)
!2151 = !DILocation(line: 106, column: 7, scope: !2152, inlinedAt: !2148)
!2152 = distinct !DILexicalBlock(scope: !2137, file: !2059, line: 106, column: 7)
!2153 = !DILocation(line: 106, column: 7, scope: !2137, inlinedAt: !2148)
!2154 = !DILocalVariable(name: "s1", arg: 1, scope: !2155, file: !2059, line: 90, type: !6)
!2155 = distinct !DISubprogram(name: "strcaseeq5", scope: !2059, file: !2059, line: 90, type: !2156, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!18, !6, !6, !8, !8, !8, !8}
!2158 = !{!2154, !2159, !2160, !2161, !2162, !2163}
!2159 = !DILocalVariable(name: "s2", arg: 2, scope: !2155, file: !2059, line: 90, type: !6)
!2160 = !DILocalVariable(name: "s25", arg: 3, scope: !2155, file: !2059, line: 90, type: !8)
!2161 = !DILocalVariable(name: "s26", arg: 4, scope: !2155, file: !2059, line: 90, type: !8)
!2162 = !DILocalVariable(name: "s27", arg: 5, scope: !2155, file: !2059, line: 90, type: !8)
!2163 = !DILocalVariable(name: "s28", arg: 6, scope: !2155, file: !2059, line: 90, type: !8)
!2164 = !DILocation(line: 0, scope: !2155, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 111, column: 16, scope: !2166, inlinedAt: !2148)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2059, line: 108, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2152, file: !2059, line: 107, column: 5)
!2168 = !DILocation(line: 92, column: 7, scope: !2169, inlinedAt: !2165)
!2169 = distinct !DILexicalBlock(scope: !2155, file: !2059, line: 92, column: 7)
!2170 = !DILocation(line: 92, column: 7, scope: !2155, inlinedAt: !2165)
!2171 = !DILocation(line: 235, column: 12, scope: !2075)
!2172 = !DILocation(line: 235, column: 21, scope: !2075)
!2173 = !DILocation(line: 235, column: 5, scope: !2075)
!2174 = !DILocation(line: 0, scope: !2079, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 167, column: 16, scope: !2094, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 236, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2043, file: !212, line: 236, column: 7)
!2178 = !DILocation(line: 148, column: 7, scope: !2097, inlinedAt: !2175)
!2179 = !DILocation(line: 0, scope: !2099, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 153, column: 16, scope: !2113, inlinedAt: !2175)
!2181 = !DILocation(line: 134, column: 7, scope: !2116, inlinedAt: !2180)
!2182 = !DILocation(line: 134, column: 7, scope: !2099, inlinedAt: !2180)
!2183 = !DILocation(line: 0, scope: !2118, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 139, column: 16, scope: !2131, inlinedAt: !2180)
!2185 = !DILocation(line: 120, column: 7, scope: !2134, inlinedAt: !2184)
!2186 = !DILocation(line: 120, column: 7, scope: !2118, inlinedAt: !2184)
!2187 = !DILocation(line: 0, scope: !2137, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 125, column: 16, scope: !2149, inlinedAt: !2184)
!2189 = !DILocation(line: 106, column: 7, scope: !2152, inlinedAt: !2188)
!2190 = !DILocation(line: 106, column: 7, scope: !2137, inlinedAt: !2188)
!2191 = !DILocation(line: 0, scope: !2155, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 111, column: 16, scope: !2166, inlinedAt: !2188)
!2193 = !DILocation(line: 92, column: 7, scope: !2169, inlinedAt: !2192)
!2194 = !DILocation(line: 92, column: 7, scope: !2155, inlinedAt: !2192)
!2195 = !DILocalVariable(name: "s1", arg: 1, scope: !2196, file: !2059, line: 76, type: !6)
!2196 = distinct !DISubprogram(name: "strcaseeq6", scope: !2059, file: !2059, line: 76, type: !2197, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!18, !6, !6, !8, !8, !8}
!2199 = !{!2195, !2200, !2201, !2202, !2203}
!2200 = !DILocalVariable(name: "s2", arg: 2, scope: !2196, file: !2059, line: 76, type: !6)
!2201 = !DILocalVariable(name: "s26", arg: 3, scope: !2196, file: !2059, line: 76, type: !8)
!2202 = !DILocalVariable(name: "s27", arg: 4, scope: !2196, file: !2059, line: 76, type: !8)
!2203 = !DILocalVariable(name: "s28", arg: 5, scope: !2196, file: !2059, line: 76, type: !8)
!2204 = !DILocation(line: 0, scope: !2196, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 97, column: 16, scope: !2206, inlinedAt: !2192)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !2059, line: 94, column: 11)
!2207 = distinct !DILexicalBlock(scope: !2169, file: !2059, line: 93, column: 5)
!2208 = !DILocation(line: 78, column: 7, scope: !2209, inlinedAt: !2205)
!2209 = distinct !DILexicalBlock(scope: !2196, file: !2059, line: 78, column: 7)
!2210 = !DILocation(line: 78, column: 7, scope: !2196, inlinedAt: !2205)
!2211 = !DILocalVariable(name: "s1", arg: 1, scope: !2212, file: !2059, line: 62, type: !6)
!2212 = distinct !DISubprogram(name: "strcaseeq7", scope: !2059, file: !2059, line: 62, type: !2213, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!18, !6, !6, !8, !8}
!2215 = !{!2211, !2216, !2217, !2218}
!2216 = !DILocalVariable(name: "s2", arg: 2, scope: !2212, file: !2059, line: 62, type: !6)
!2217 = !DILocalVariable(name: "s27", arg: 3, scope: !2212, file: !2059, line: 62, type: !8)
!2218 = !DILocalVariable(name: "s28", arg: 4, scope: !2212, file: !2059, line: 62, type: !8)
!2219 = !DILocation(line: 0, scope: !2212, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 83, column: 16, scope: !2221, inlinedAt: !2205)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2059, line: 80, column: 11)
!2222 = distinct !DILexicalBlock(scope: !2209, file: !2059, line: 79, column: 5)
!2223 = !DILocation(line: 64, column: 7, scope: !2224, inlinedAt: !2220)
!2224 = distinct !DILexicalBlock(scope: !2212, file: !2059, line: 64, column: 7)
!2225 = !DILocation(line: 236, column: 7, scope: !2043)
!2226 = !DILocation(line: 237, column: 12, scope: !2177)
!2227 = !DILocation(line: 237, column: 21, scope: !2177)
!2228 = !DILocation(line: 237, column: 5, scope: !2177)
!2229 = !DILocation(line: 239, column: 13, scope: !2043)
!2230 = !DILocation(line: 239, column: 11, scope: !2043)
!2231 = !DILocation(line: 239, column: 3, scope: !2043)
!2232 = !DILocation(line: 240, column: 1, scope: !2043)
!2233 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2234, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!25, !6, !69, !258}
!2236 = !{!2237, !2238, !2239}
!2237 = !DILocalVariable(name: "arg", arg: 1, scope: !2233, file: !212, line: 799, type: !6)
!2238 = !DILocalVariable(name: "argsize", arg: 2, scope: !2233, file: !212, line: 799, type: !69)
!2239 = !DILocalVariable(name: "o", arg: 3, scope: !2233, file: !212, line: 800, type: !258)
!2240 = !DILocation(line: 0, scope: !2233)
!2241 = !DILocalVariable(name: "arg", arg: 1, scope: !2242, file: !212, line: 812, type: !6)
!2242 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2243, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!25, !6, !69, !481, !258}
!2245 = !{!2241, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2246 = !DILocalVariable(name: "argsize", arg: 2, scope: !2242, file: !212, line: 812, type: !69)
!2247 = !DILocalVariable(name: "size", arg: 3, scope: !2242, file: !212, line: 812, type: !481)
!2248 = !DILocalVariable(name: "o", arg: 4, scope: !2242, file: !212, line: 813, type: !258)
!2249 = !DILocalVariable(name: "p", scope: !2242, file: !212, line: 815, type: !258)
!2250 = !DILocalVariable(name: "e", scope: !2242, file: !212, line: 816, type: !18)
!2251 = !DILocalVariable(name: "flags", scope: !2242, file: !212, line: 818, type: !18)
!2252 = !DILocalVariable(name: "bufsize", scope: !2242, file: !212, line: 819, type: !69)
!2253 = !DILocalVariable(name: "buf", scope: !2242, file: !212, line: 823, type: !25)
!2254 = !DILocation(line: 0, scope: !2242, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 802, column: 10, scope: !2233)
!2256 = !DILocation(line: 815, column: 37, scope: !2242, inlinedAt: !2255)
!2257 = !DILocation(line: 816, column: 11, scope: !2242, inlinedAt: !2255)
!2258 = !DILocation(line: 818, column: 18, scope: !2242, inlinedAt: !2255)
!2259 = !DILocation(line: 818, column: 24, scope: !2242, inlinedAt: !2255)
!2260 = !DILocation(line: 819, column: 69, scope: !2242, inlinedAt: !2255)
!2261 = !DILocation(line: 820, column: 53, scope: !2242, inlinedAt: !2255)
!2262 = !DILocation(line: 821, column: 49, scope: !2242, inlinedAt: !2255)
!2263 = !DILocation(line: 822, column: 49, scope: !2242, inlinedAt: !2255)
!2264 = !DILocation(line: 819, column: 20, scope: !2242, inlinedAt: !2255)
!2265 = !DILocation(line: 822, column: 62, scope: !2242, inlinedAt: !2255)
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !249, line: 216, type: !69)
!2267 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2268, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!25, !69}
!2270 = !{!2266}
!2271 = !DILocation(line: 0, scope: !2267, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 823, column: 15, scope: !2242, inlinedAt: !2255)
!2273 = !DILocation(line: 218, column: 10, scope: !2267, inlinedAt: !2272)
!2274 = !DILocation(line: 824, column: 60, scope: !2242, inlinedAt: !2255)
!2275 = !DILocation(line: 826, column: 32, scope: !2242, inlinedAt: !2255)
!2276 = !DILocation(line: 826, column: 47, scope: !2242, inlinedAt: !2255)
!2277 = !DILocation(line: 824, column: 3, scope: !2242, inlinedAt: !2255)
!2278 = !DILocation(line: 827, column: 9, scope: !2242, inlinedAt: !2255)
!2279 = !DILocation(line: 802, column: 3, scope: !2233)
!2280 = !DILocation(line: 0, scope: !2242)
!2281 = !DILocation(line: 815, column: 37, scope: !2242)
!2282 = !DILocation(line: 816, column: 11, scope: !2242)
!2283 = !DILocation(line: 818, column: 18, scope: !2242)
!2284 = !DILocation(line: 818, column: 27, scope: !2242)
!2285 = !DILocation(line: 818, column: 24, scope: !2242)
!2286 = !DILocation(line: 819, column: 69, scope: !2242)
!2287 = !DILocation(line: 820, column: 53, scope: !2242)
!2288 = !DILocation(line: 821, column: 49, scope: !2242)
!2289 = !DILocation(line: 822, column: 49, scope: !2242)
!2290 = !DILocation(line: 819, column: 20, scope: !2242)
!2291 = !DILocation(line: 822, column: 62, scope: !2242)
!2292 = !DILocation(line: 0, scope: !2267, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 823, column: 15, scope: !2242)
!2294 = !DILocation(line: 218, column: 10, scope: !2267, inlinedAt: !2293)
!2295 = !DILocation(line: 824, column: 60, scope: !2242)
!2296 = !DILocation(line: 826, column: 32, scope: !2242)
!2297 = !DILocation(line: 826, column: 47, scope: !2242)
!2298 = !DILocation(line: 824, column: 3, scope: !2242)
!2299 = !DILocation(line: 827, column: 9, scope: !2242)
!2300 = !DILocation(line: 828, column: 7, scope: !2242)
!2301 = !DILocation(line: 829, column: 11, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2242, file: !212, line: 828, column: 7)
!2303 = !{!2304, !2304, i64 0}
!2304 = !{!"long", !1124, i64 0}
!2305 = !DILocation(line: 829, column: 5, scope: !2302)
!2306 = !DILocation(line: 830, column: 3, scope: !2242)
!2307 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2308)
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "sv", scope: !2307, file: !212, line: 850, type: !339)
!2310 = !DILocalVariable(name: "i", scope: !2307, file: !212, line: 851, type: !18)
!2311 = !DILocation(line: 850, column: 24, scope: !2307)
!2312 = !DILocation(line: 0, scope: !2307)
!2313 = !DILocation(line: 852, column: 19, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !212, line: 852, column: 3)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !212, line: 852, column: 3)
!2316 = !DILocation(line: 852, column: 17, scope: !2314)
!2317 = !DILocation(line: 852, column: 3, scope: !2315)
!2318 = !DILocation(line: 853, column: 17, scope: !2314)
!2319 = !{!2320, !1123, i64 8}
!2320 = !{!"slotvec", !2304, i64 0, !1123, i64 8}
!2321 = !DILocation(line: 853, column: 5, scope: !2314)
!2322 = !DILocation(line: 852, column: 28, scope: !2314)
!2323 = distinct !{!2323, !2317, !2324}
!2324 = !DILocation(line: 853, column: 20, scope: !2315)
!2325 = !DILocation(line: 854, column: 13, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2307, file: !212, line: 854, column: 7)
!2327 = !DILocation(line: 854, column: 17, scope: !2326)
!2328 = !DILocation(line: 854, column: 7, scope: !2307)
!2329 = !DILocation(line: 856, column: 7, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2326, file: !212, line: 855, column: 5)
!2331 = !DILocation(line: 857, column: 21, scope: !2330)
!2332 = !{!2320, !2304, i64 0}
!2333 = !DILocation(line: 858, column: 20, scope: !2330)
!2334 = !DILocation(line: 859, column: 5, scope: !2330)
!2335 = !DILocation(line: 860, column: 10, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2307, file: !212, line: 860, column: 7)
!2337 = !DILocation(line: 860, column: 7, scope: !2307)
!2338 = !DILocation(line: 862, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !212, line: 861, column: 5)
!2340 = !DILocation(line: 862, column: 7, scope: !2339)
!2341 = !DILocation(line: 863, column: 15, scope: !2339)
!2342 = !DILocation(line: 864, column: 5, scope: !2339)
!2343 = !DILocation(line: 865, column: 10, scope: !2307)
!2344 = !DILocation(line: 866, column: 1, scope: !2307)
!2345 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !405, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2346)
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "n", arg: 1, scope: !2345, file: !212, line: 931, type: !18)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2345, file: !212, line: 931, type: !6)
!2349 = !DILocation(line: 0, scope: !2345)
!2350 = !DILocation(line: 933, column: 10, scope: !2345)
!2351 = !DILocation(line: 933, column: 3, scope: !2345)
!2352 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2353, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!25, !18, !6, !69, !258}
!2355 = !{!2356, !2357, !2358, !2359, !2360, !2361, !2362, !2365, !2366, !2368, !2369, !2370}
!2356 = !DILocalVariable(name: "n", arg: 1, scope: !2352, file: !212, line: 877, type: !18)
!2357 = !DILocalVariable(name: "arg", arg: 2, scope: !2352, file: !212, line: 877, type: !6)
!2358 = !DILocalVariable(name: "argsize", arg: 3, scope: !2352, file: !212, line: 877, type: !69)
!2359 = !DILocalVariable(name: "options", arg: 4, scope: !2352, file: !212, line: 878, type: !258)
!2360 = !DILocalVariable(name: "e", scope: !2352, file: !212, line: 880, type: !18)
!2361 = !DILocalVariable(name: "sv", scope: !2352, file: !212, line: 882, type: !339)
!2362 = !DILocalVariable(name: "preallocated", scope: !2363, file: !212, line: 889, type: !92)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !212, line: 888, column: 5)
!2364 = distinct !DILexicalBlock(scope: !2352, file: !212, line: 887, column: 7)
!2365 = !DILocalVariable(name: "nmax", scope: !2363, file: !212, line: 890, type: !18)
!2366 = !DILocalVariable(name: "size", scope: !2367, file: !212, line: 903, type: !69)
!2367 = distinct !DILexicalBlock(scope: !2352, file: !212, line: 902, column: 3)
!2368 = !DILocalVariable(name: "val", scope: !2367, file: !212, line: 904, type: !25)
!2369 = !DILocalVariable(name: "flags", scope: !2367, file: !212, line: 906, type: !18)
!2370 = !DILocalVariable(name: "qsize", scope: !2367, file: !212, line: 907, type: !69)
!2371 = !DILocation(line: 0, scope: !2352)
!2372 = !DILocation(line: 880, column: 11, scope: !2352)
!2373 = !DILocation(line: 882, column: 24, scope: !2352)
!2374 = !DILocation(line: 884, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2352, file: !212, line: 884, column: 7)
!2376 = !DILocation(line: 884, column: 7, scope: !2352)
!2377 = !DILocation(line: 885, column: 5, scope: !2375)
!2378 = !DILocation(line: 887, column: 7, scope: !2364)
!2379 = !DILocation(line: 887, column: 14, scope: !2364)
!2380 = !DILocation(line: 887, column: 7, scope: !2352)
!2381 = !DILocation(line: 889, column: 31, scope: !2363)
!2382 = !DILocation(line: 0, scope: !2363)
!2383 = !DILocation(line: 892, column: 16, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2363, file: !212, line: 892, column: 11)
!2385 = !DILocation(line: 892, column: 11, scope: !2363)
!2386 = !DILocation(line: 893, column: 9, scope: !2384)
!2387 = !DILocation(line: 895, column: 32, scope: !2363)
!2388 = !DILocation(line: 895, column: 61, scope: !2363)
!2389 = !DILocation(line: 895, column: 58, scope: !2363)
!2390 = !DILocation(line: 895, column: 66, scope: !2363)
!2391 = !DILocation(line: 895, column: 22, scope: !2363)
!2392 = !DILocation(line: 895, column: 15, scope: !2363)
!2393 = !DILocation(line: 896, column: 11, scope: !2363)
!2394 = !DILocation(line: 897, column: 15, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2363, file: !212, line: 896, column: 11)
!2396 = !{i64 0, i64 8, !2303, i64 8, i64 8, !1122}
!2397 = !DILocation(line: 897, column: 9, scope: !2395)
!2398 = !DILocation(line: 898, column: 20, scope: !2363)
!2399 = !DILocation(line: 898, column: 18, scope: !2363)
!2400 = !DILocation(line: 898, column: 15, scope: !2363)
!2401 = !DILocation(line: 898, column: 38, scope: !2363)
!2402 = !DILocation(line: 898, column: 31, scope: !2363)
!2403 = !DILocation(line: 898, column: 48, scope: !2363)
!2404 = !DILocation(line: 0, scope: !1800, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 898, column: 7, scope: !2363)
!2406 = !DILocation(line: 71, column: 10, scope: !1800, inlinedAt: !2405)
!2407 = !DILocation(line: 899, column: 14, scope: !2363)
!2408 = !DILocation(line: 900, column: 5, scope: !2363)
!2409 = !DILocation(line: 903, column: 19, scope: !2367)
!2410 = !DILocation(line: 903, column: 25, scope: !2367)
!2411 = !DILocation(line: 0, scope: !2367)
!2412 = !DILocation(line: 904, column: 23, scope: !2367)
!2413 = !DILocation(line: 906, column: 26, scope: !2367)
!2414 = !DILocation(line: 906, column: 32, scope: !2367)
!2415 = !DILocation(line: 908, column: 55, scope: !2367)
!2416 = !DILocation(line: 909, column: 46, scope: !2367)
!2417 = !DILocation(line: 910, column: 55, scope: !2367)
!2418 = !DILocation(line: 911, column: 55, scope: !2367)
!2419 = !DILocation(line: 907, column: 20, scope: !2367)
!2420 = !DILocation(line: 913, column: 14, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2367, file: !212, line: 913, column: 9)
!2422 = !DILocation(line: 913, column: 9, scope: !2367)
!2423 = !DILocation(line: 915, column: 35, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !212, line: 914, column: 7)
!2425 = !DILocation(line: 915, column: 20, scope: !2424)
!2426 = !DILocation(line: 916, column: 17, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !212, line: 916, column: 13)
!2428 = !DILocation(line: 916, column: 13, scope: !2424)
!2429 = !DILocation(line: 917, column: 11, scope: !2427)
!2430 = !DILocation(line: 0, scope: !2267, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 918, column: 27, scope: !2424)
!2432 = !DILocation(line: 218, column: 10, scope: !2267, inlinedAt: !2431)
!2433 = !DILocation(line: 918, column: 19, scope: !2424)
!2434 = !DILocation(line: 919, column: 69, scope: !2424)
!2435 = !DILocation(line: 921, column: 44, scope: !2424)
!2436 = !DILocation(line: 922, column: 44, scope: !2424)
!2437 = !DILocation(line: 919, column: 9, scope: !2424)
!2438 = !DILocation(line: 923, column: 7, scope: !2424)
!2439 = !DILocation(line: 925, column: 11, scope: !2367)
!2440 = !DILocation(line: 926, column: 5, scope: !2367)
!2441 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2442, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!25, !18, !6, !69}
!2444 = !{!2445, !2446, !2447}
!2445 = !DILocalVariable(name: "n", arg: 1, scope: !2441, file: !212, line: 937, type: !18)
!2446 = !DILocalVariable(name: "arg", arg: 2, scope: !2441, file: !212, line: 937, type: !6)
!2447 = !DILocalVariable(name: "argsize", arg: 3, scope: !2441, file: !212, line: 937, type: !69)
!2448 = !DILocation(line: 0, scope: !2441)
!2449 = !DILocation(line: 939, column: 10, scope: !2441)
!2450 = !DILocation(line: 939, column: 3, scope: !2441)
!2451 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2452)
!2452 = !{!2453}
!2453 = !DILocalVariable(name: "arg", arg: 1, scope: !2451, file: !212, line: 943, type: !6)
!2454 = !DILocation(line: 0, scope: !2451)
!2455 = !DILocation(line: 0, scope: !2345, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 945, column: 10, scope: !2451)
!2457 = !DILocation(line: 933, column: 10, scope: !2345, inlinedAt: !2456)
!2458 = !DILocation(line: 945, column: 3, scope: !2451)
!2459 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2460, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!25, !6, !69}
!2462 = !{!2463, !2464}
!2463 = !DILocalVariable(name: "arg", arg: 1, scope: !2459, file: !212, line: 949, type: !6)
!2464 = !DILocalVariable(name: "argsize", arg: 2, scope: !2459, file: !212, line: 949, type: !69)
!2465 = !DILocation(line: 0, scope: !2459)
!2466 = !DILocation(line: 0, scope: !2441, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 951, column: 10, scope: !2459)
!2468 = !DILocation(line: 939, column: 10, scope: !2441, inlinedAt: !2467)
!2469 = !DILocation(line: 951, column: 3, scope: !2459)
!2470 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !430, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2471)
!2471 = !{!2472, !2473, !2474, !2475}
!2472 = !DILocalVariable(name: "n", arg: 1, scope: !2470, file: !212, line: 955, type: !18)
!2473 = !DILocalVariable(name: "s", arg: 2, scope: !2470, file: !212, line: 955, type: !214)
!2474 = !DILocalVariable(name: "arg", arg: 3, scope: !2470, file: !212, line: 955, type: !6)
!2475 = !DILocalVariable(name: "o", scope: !2470, file: !212, line: 957, type: !259)
!2476 = !DILocation(line: 0, scope: !2470)
!2477 = !DILocation(line: 957, column: 3, scope: !2470)
!2478 = !DILocation(line: 957, column: 32, scope: !2470)
!2479 = !DILocalVariable(name: "style", arg: 1, scope: !2480, file: !212, line: 193, type: !214)
!2480 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2481, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!260, !214}
!2483 = !{!2479, !2484}
!2484 = !DILocalVariable(name: "o", scope: !2480, file: !212, line: 195, type: !260)
!2485 = !DILocation(line: 0, scope: !2480, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 957, column: 36, scope: !2470)
!2487 = !DILocation(line: 195, column: 26, scope: !2480, inlinedAt: !2486)
!2488 = !{!2489}
!2489 = distinct !{!2489, !2490, !"quoting_options_from_style: argument 0"}
!2490 = distinct !{!2490, !"quoting_options_from_style"}
!2491 = !DILocation(line: 196, column: 13, scope: !2492, inlinedAt: !2486)
!2492 = distinct !DILexicalBlock(scope: !2480, file: !212, line: 196, column: 7)
!2493 = !DILocation(line: 196, column: 7, scope: !2480, inlinedAt: !2486)
!2494 = !DILocation(line: 197, column: 5, scope: !2492, inlinedAt: !2486)
!2495 = !DILocation(line: 198, column: 5, scope: !2480, inlinedAt: !2486)
!2496 = !DILocation(line: 198, column: 11, scope: !2480, inlinedAt: !2486)
!2497 = !DILocation(line: 958, column: 10, scope: !2470)
!2498 = !DILocation(line: 959, column: 1, scope: !2470)
!2499 = !DILocation(line: 958, column: 3, scope: !2470)
!2500 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2501, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!25, !18, !214, !6, !69}
!2503 = !{!2504, !2505, !2506, !2507, !2508}
!2504 = !DILocalVariable(name: "n", arg: 1, scope: !2500, file: !212, line: 962, type: !18)
!2505 = !DILocalVariable(name: "s", arg: 2, scope: !2500, file: !212, line: 962, type: !214)
!2506 = !DILocalVariable(name: "arg", arg: 3, scope: !2500, file: !212, line: 963, type: !6)
!2507 = !DILocalVariable(name: "argsize", arg: 4, scope: !2500, file: !212, line: 963, type: !69)
!2508 = !DILocalVariable(name: "o", scope: !2500, file: !212, line: 965, type: !259)
!2509 = !DILocation(line: 0, scope: !2500)
!2510 = !DILocation(line: 965, column: 3, scope: !2500)
!2511 = !DILocation(line: 965, column: 32, scope: !2500)
!2512 = !DILocation(line: 0, scope: !2480, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 965, column: 36, scope: !2500)
!2514 = !DILocation(line: 195, column: 26, scope: !2480, inlinedAt: !2513)
!2515 = !{!2516}
!2516 = distinct !{!2516, !2517, !"quoting_options_from_style: argument 0"}
!2517 = distinct !{!2517, !"quoting_options_from_style"}
!2518 = !DILocation(line: 196, column: 13, scope: !2492, inlinedAt: !2513)
!2519 = !DILocation(line: 196, column: 7, scope: !2480, inlinedAt: !2513)
!2520 = !DILocation(line: 197, column: 5, scope: !2492, inlinedAt: !2513)
!2521 = !DILocation(line: 198, column: 5, scope: !2480, inlinedAt: !2513)
!2522 = !DILocation(line: 198, column: 11, scope: !2480, inlinedAt: !2513)
!2523 = !DILocation(line: 966, column: 10, scope: !2500)
!2524 = !DILocation(line: 967, column: 1, scope: !2500)
!2525 = !DILocation(line: 966, column: 3, scope: !2500)
!2526 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2527, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!25, !214, !6}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "s", arg: 1, scope: !2526, file: !212, line: 970, type: !214)
!2531 = !DILocalVariable(name: "arg", arg: 2, scope: !2526, file: !212, line: 970, type: !6)
!2532 = !DILocation(line: 195, column: 26, scope: !2480, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 957, column: 36, scope: !2470, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 972, column: 10, scope: !2526)
!2535 = !DILocation(line: 957, column: 32, scope: !2470, inlinedAt: !2534)
!2536 = !DILocation(line: 0, scope: !2526)
!2537 = !DILocation(line: 0, scope: !2470, inlinedAt: !2534)
!2538 = !DILocation(line: 957, column: 3, scope: !2470, inlinedAt: !2534)
!2539 = !DILocation(line: 0, scope: !2480, inlinedAt: !2533)
!2540 = !{!2541}
!2541 = distinct !{!2541, !2542, !"quoting_options_from_style: argument 0"}
!2542 = distinct !{!2542, !"quoting_options_from_style"}
!2543 = !DILocation(line: 196, column: 13, scope: !2492, inlinedAt: !2533)
!2544 = !DILocation(line: 196, column: 7, scope: !2480, inlinedAt: !2533)
!2545 = !DILocation(line: 197, column: 5, scope: !2492, inlinedAt: !2533)
!2546 = !DILocation(line: 198, column: 5, scope: !2480, inlinedAt: !2533)
!2547 = !DILocation(line: 198, column: 11, scope: !2480, inlinedAt: !2533)
!2548 = !DILocation(line: 958, column: 10, scope: !2470, inlinedAt: !2534)
!2549 = !DILocation(line: 959, column: 1, scope: !2470, inlinedAt: !2534)
!2550 = !DILocation(line: 972, column: 3, scope: !2526)
!2551 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2552, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!25, !214, !6, !69}
!2554 = !{!2555, !2556, !2557}
!2555 = !DILocalVariable(name: "s", arg: 1, scope: !2551, file: !212, line: 976, type: !214)
!2556 = !DILocalVariable(name: "arg", arg: 2, scope: !2551, file: !212, line: 976, type: !6)
!2557 = !DILocalVariable(name: "argsize", arg: 3, scope: !2551, file: !212, line: 976, type: !69)
!2558 = !DILocation(line: 195, column: 26, scope: !2480, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 965, column: 36, scope: !2500, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 978, column: 10, scope: !2551)
!2561 = !DILocation(line: 965, column: 32, scope: !2500, inlinedAt: !2560)
!2562 = !DILocation(line: 0, scope: !2551)
!2563 = !DILocation(line: 0, scope: !2500, inlinedAt: !2560)
!2564 = !DILocation(line: 965, column: 3, scope: !2500, inlinedAt: !2560)
!2565 = !DILocation(line: 0, scope: !2480, inlinedAt: !2559)
!2566 = !{!2567}
!2567 = distinct !{!2567, !2568, !"quoting_options_from_style: argument 0"}
!2568 = distinct !{!2568, !"quoting_options_from_style"}
!2569 = !DILocation(line: 196, column: 13, scope: !2492, inlinedAt: !2559)
!2570 = !DILocation(line: 196, column: 7, scope: !2480, inlinedAt: !2559)
!2571 = !DILocation(line: 197, column: 5, scope: !2492, inlinedAt: !2559)
!2572 = !DILocation(line: 198, column: 5, scope: !2480, inlinedAt: !2559)
!2573 = !DILocation(line: 198, column: 11, scope: !2480, inlinedAt: !2559)
!2574 = !DILocation(line: 966, column: 10, scope: !2500, inlinedAt: !2560)
!2575 = !DILocation(line: 967, column: 1, scope: !2500, inlinedAt: !2560)
!2576 = !DILocation(line: 978, column: 3, scope: !2551)
!2577 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2578, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!25, !6, !69, !8}
!2580 = !{!2581, !2582, !2583, !2584}
!2581 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !212, line: 982, type: !6)
!2582 = !DILocalVariable(name: "argsize", arg: 2, scope: !2577, file: !212, line: 982, type: !69)
!2583 = !DILocalVariable(name: "ch", arg: 3, scope: !2577, file: !212, line: 982, type: !8)
!2584 = !DILocalVariable(name: "options", scope: !2577, file: !212, line: 984, type: !260)
!2585 = !DILocation(line: 0, scope: !2577)
!2586 = !DILocation(line: 984, column: 3, scope: !2577)
!2587 = !DILocation(line: 984, column: 26, scope: !2577)
!2588 = !DILocation(line: 985, column: 13, scope: !2577)
!2589 = !{i64 0, i64 4, !1598, i64 4, i64 4, !1178, i64 8, i64 32, !1598, i64 40, i64 8, !1122, i64 48, i64 8, !1122}
!2590 = !DILocation(line: 0, scope: !1411, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 986, column: 3, scope: !2577)
!2592 = !DILocation(line: 156, column: 62, scope: !1411, inlinedAt: !2591)
!2593 = !DILocation(line: 156, column: 57, scope: !1411, inlinedAt: !2591)
!2594 = !DILocation(line: 157, column: 15, scope: !1411, inlinedAt: !2591)
!2595 = !DILocation(line: 158, column: 12, scope: !1411, inlinedAt: !2591)
!2596 = !DILocation(line: 158, column: 15, scope: !1411, inlinedAt: !2591)
!2597 = !DILocation(line: 158, column: 25, scope: !1411, inlinedAt: !2591)
!2598 = !DILocation(line: 159, column: 18, scope: !1411, inlinedAt: !2591)
!2599 = !DILocation(line: 159, column: 23, scope: !1411, inlinedAt: !2591)
!2600 = !DILocation(line: 159, column: 6, scope: !1411, inlinedAt: !2591)
!2601 = !DILocation(line: 987, column: 10, scope: !2577)
!2602 = !DILocation(line: 988, column: 1, scope: !2577)
!2603 = !DILocation(line: 987, column: 3, scope: !2577)
!2604 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2605, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!25, !6, !8}
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !212, line: 991, type: !6)
!2609 = !DILocalVariable(name: "ch", arg: 2, scope: !2604, file: !212, line: 991, type: !8)
!2610 = !DILocation(line: 984, column: 26, scope: !2577, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 993, column: 10, scope: !2604)
!2612 = !DILocation(line: 0, scope: !2604)
!2613 = !DILocation(line: 0, scope: !2577, inlinedAt: !2611)
!2614 = !DILocation(line: 984, column: 3, scope: !2577, inlinedAt: !2611)
!2615 = !DILocation(line: 985, column: 13, scope: !2577, inlinedAt: !2611)
!2616 = !DILocation(line: 0, scope: !1411, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 986, column: 3, scope: !2577, inlinedAt: !2611)
!2618 = !DILocation(line: 156, column: 62, scope: !1411, inlinedAt: !2617)
!2619 = !DILocation(line: 156, column: 57, scope: !1411, inlinedAt: !2617)
!2620 = !DILocation(line: 157, column: 15, scope: !1411, inlinedAt: !2617)
!2621 = !DILocation(line: 158, column: 12, scope: !1411, inlinedAt: !2617)
!2622 = !DILocation(line: 158, column: 15, scope: !1411, inlinedAt: !2617)
!2623 = !DILocation(line: 158, column: 25, scope: !1411, inlinedAt: !2617)
!2624 = !DILocation(line: 159, column: 18, scope: !1411, inlinedAt: !2617)
!2625 = !DILocation(line: 159, column: 23, scope: !1411, inlinedAt: !2617)
!2626 = !DILocation(line: 159, column: 6, scope: !1411, inlinedAt: !2617)
!2627 = !DILocation(line: 987, column: 10, scope: !2577, inlinedAt: !2611)
!2628 = !DILocation(line: 988, column: 1, scope: !2577, inlinedAt: !2611)
!2629 = !DILocation(line: 993, column: 3, scope: !2604)
!2630 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2631)
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "arg", arg: 1, scope: !2630, file: !212, line: 997, type: !6)
!2633 = !DILocation(line: 984, column: 26, scope: !2577, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 993, column: 10, scope: !2604, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 999, column: 10, scope: !2630)
!2636 = !DILocation(line: 0, scope: !2630)
!2637 = !DILocation(line: 0, scope: !2604, inlinedAt: !2635)
!2638 = !DILocation(line: 0, scope: !2577, inlinedAt: !2634)
!2639 = !DILocation(line: 984, column: 3, scope: !2577, inlinedAt: !2634)
!2640 = !DILocation(line: 985, column: 13, scope: !2577, inlinedAt: !2634)
!2641 = !DILocation(line: 0, scope: !1411, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 986, column: 3, scope: !2577, inlinedAt: !2634)
!2643 = !DILocation(line: 156, column: 57, scope: !1411, inlinedAt: !2642)
!2644 = !DILocation(line: 158, column: 12, scope: !1411, inlinedAt: !2642)
!2645 = !DILocation(line: 159, column: 6, scope: !1411, inlinedAt: !2642)
!2646 = !DILocation(line: 987, column: 10, scope: !2577, inlinedAt: !2634)
!2647 = !DILocation(line: 988, column: 1, scope: !2577, inlinedAt: !2634)
!2648 = !DILocation(line: 999, column: 3, scope: !2630)
!2649 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2460, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2650)
!2650 = !{!2651, !2652}
!2651 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !212, line: 1003, type: !6)
!2652 = !DILocalVariable(name: "argsize", arg: 2, scope: !2649, file: !212, line: 1003, type: !69)
!2653 = !DILocation(line: 984, column: 26, scope: !2577, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1005, column: 10, scope: !2649)
!2655 = !DILocation(line: 0, scope: !2649)
!2656 = !DILocation(line: 0, scope: !2577, inlinedAt: !2654)
!2657 = !DILocation(line: 984, column: 3, scope: !2577, inlinedAt: !2654)
!2658 = !DILocation(line: 985, column: 13, scope: !2577, inlinedAt: !2654)
!2659 = !DILocation(line: 0, scope: !1411, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 986, column: 3, scope: !2577, inlinedAt: !2654)
!2661 = !DILocation(line: 156, column: 57, scope: !1411, inlinedAt: !2660)
!2662 = !DILocation(line: 158, column: 12, scope: !1411, inlinedAt: !2660)
!2663 = !DILocation(line: 159, column: 6, scope: !1411, inlinedAt: !2660)
!2664 = !DILocation(line: 987, column: 10, scope: !2577, inlinedAt: !2654)
!2665 = !DILocation(line: 988, column: 1, scope: !2577, inlinedAt: !2654)
!2666 = !DILocation(line: 1005, column: 3, scope: !2649)
!2667 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !430, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2668)
!2668 = !{!2669, !2670, !2671, !2672}
!2669 = !DILocalVariable(name: "n", arg: 1, scope: !2667, file: !212, line: 1009, type: !18)
!2670 = !DILocalVariable(name: "s", arg: 2, scope: !2667, file: !212, line: 1009, type: !214)
!2671 = !DILocalVariable(name: "arg", arg: 3, scope: !2667, file: !212, line: 1009, type: !6)
!2672 = !DILocalVariable(name: "options", scope: !2667, file: !212, line: 1011, type: !260)
!2673 = !DILocation(line: 195, column: 26, scope: !2480, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1012, column: 13, scope: !2667)
!2675 = !DILocation(line: 0, scope: !2667)
!2676 = !DILocation(line: 1011, column: 3, scope: !2667)
!2677 = !DILocation(line: 1011, column: 26, scope: !2667)
!2678 = !DILocation(line: 1012, column: 13, scope: !2667)
!2679 = !DILocation(line: 0, scope: !2480, inlinedAt: !2674)
!2680 = !{!2681}
!2681 = distinct !{!2681, !2682, !"quoting_options_from_style: argument 0"}
!2682 = distinct !{!2682, !"quoting_options_from_style"}
!2683 = !DILocation(line: 196, column: 13, scope: !2492, inlinedAt: !2674)
!2684 = !DILocation(line: 196, column: 7, scope: !2480, inlinedAt: !2674)
!2685 = !DILocation(line: 197, column: 5, scope: !2492, inlinedAt: !2674)
!2686 = !DILocation(line: 0, scope: !1411, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1013, column: 3, scope: !2667)
!2688 = !DILocation(line: 156, column: 57, scope: !1411, inlinedAt: !2687)
!2689 = !DILocation(line: 158, column: 12, scope: !1411, inlinedAt: !2687)
!2690 = !DILocation(line: 159, column: 6, scope: !1411, inlinedAt: !2687)
!2691 = !DILocation(line: 1014, column: 10, scope: !2667)
!2692 = !DILocation(line: 1015, column: 1, scope: !2667)
!2693 = !DILocation(line: 1014, column: 3, scope: !2667)
!2694 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2695, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!25, !18, !6, !6, !6}
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !212, line: 1018, type: !18)
!2699 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2694, file: !212, line: 1018, type: !6)
!2700 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2694, file: !212, line: 1019, type: !6)
!2701 = !DILocalVariable(name: "arg", arg: 4, scope: !2694, file: !212, line: 1019, type: !6)
!2702 = !DILocalVariable(name: "o", scope: !2703, file: !212, line: 1030, type: !260)
!2703 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2704, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!25, !18, !6, !6, !6, !69}
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2702}
!2707 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !212, line: 1026, type: !18)
!2708 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2703, file: !212, line: 1026, type: !6)
!2709 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2703, file: !212, line: 1027, type: !6)
!2710 = !DILocalVariable(name: "arg", arg: 4, scope: !2703, file: !212, line: 1028, type: !6)
!2711 = !DILocalVariable(name: "argsize", arg: 5, scope: !2703, file: !212, line: 1028, type: !69)
!2712 = !DILocation(line: 1030, column: 26, scope: !2703, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1021, column: 10, scope: !2694)
!2714 = !DILocation(line: 0, scope: !2694)
!2715 = !DILocation(line: 0, scope: !2703, inlinedAt: !2713)
!2716 = !DILocation(line: 1030, column: 3, scope: !2703, inlinedAt: !2713)
!2717 = !DILocation(line: 1030, column: 30, scope: !2703, inlinedAt: !2713)
!2718 = !DILocation(line: 0, scope: !1452, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1031, column: 3, scope: !2703, inlinedAt: !2713)
!2720 = !DILocation(line: 184, column: 6, scope: !1452, inlinedAt: !2719)
!2721 = !DILocation(line: 184, column: 12, scope: !1452, inlinedAt: !2719)
!2722 = !DILocation(line: 185, column: 8, scope: !1466, inlinedAt: !2719)
!2723 = !DILocation(line: 185, column: 23, scope: !1466, inlinedAt: !2719)
!2724 = !DILocation(line: 185, column: 19, scope: !1466, inlinedAt: !2719)
!2725 = !DILocation(line: 186, column: 5, scope: !1466, inlinedAt: !2719)
!2726 = !DILocation(line: 187, column: 6, scope: !1452, inlinedAt: !2719)
!2727 = !DILocation(line: 187, column: 17, scope: !1452, inlinedAt: !2719)
!2728 = !DILocation(line: 188, column: 6, scope: !1452, inlinedAt: !2719)
!2729 = !DILocation(line: 188, column: 18, scope: !1452, inlinedAt: !2719)
!2730 = !DILocation(line: 1032, column: 10, scope: !2703, inlinedAt: !2713)
!2731 = !DILocation(line: 1033, column: 1, scope: !2703, inlinedAt: !2713)
!2732 = !DILocation(line: 1021, column: 3, scope: !2694)
!2733 = !DILocation(line: 0, scope: !2703)
!2734 = !DILocation(line: 1030, column: 3, scope: !2703)
!2735 = !DILocation(line: 1030, column: 26, scope: !2703)
!2736 = !DILocation(line: 1030, column: 30, scope: !2703)
!2737 = !DILocation(line: 0, scope: !1452, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1031, column: 3, scope: !2703)
!2739 = !DILocation(line: 184, column: 6, scope: !1452, inlinedAt: !2738)
!2740 = !DILocation(line: 184, column: 12, scope: !1452, inlinedAt: !2738)
!2741 = !DILocation(line: 185, column: 8, scope: !1466, inlinedAt: !2738)
!2742 = !DILocation(line: 185, column: 23, scope: !1466, inlinedAt: !2738)
!2743 = !DILocation(line: 185, column: 19, scope: !1466, inlinedAt: !2738)
!2744 = !DILocation(line: 186, column: 5, scope: !1466, inlinedAt: !2738)
!2745 = !DILocation(line: 187, column: 6, scope: !1452, inlinedAt: !2738)
!2746 = !DILocation(line: 187, column: 17, scope: !1452, inlinedAt: !2738)
!2747 = !DILocation(line: 188, column: 6, scope: !1452, inlinedAt: !2738)
!2748 = !DILocation(line: 188, column: 18, scope: !1452, inlinedAt: !2738)
!2749 = !DILocation(line: 1032, column: 10, scope: !2703)
!2750 = !DILocation(line: 1033, column: 1, scope: !2703)
!2751 = !DILocation(line: 1032, column: 3, scope: !2703)
!2752 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2753, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!25, !6, !6, !6}
!2755 = !{!2756, !2757, !2758}
!2756 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2752, file: !212, line: 1036, type: !6)
!2757 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2752, file: !212, line: 1036, type: !6)
!2758 = !DILocalVariable(name: "arg", arg: 3, scope: !2752, file: !212, line: 1037, type: !6)
!2759 = !DILocation(line: 1030, column: 26, scope: !2703, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1021, column: 10, scope: !2694, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1039, column: 10, scope: !2752)
!2762 = !DILocation(line: 0, scope: !2752)
!2763 = !DILocation(line: 0, scope: !2694, inlinedAt: !2761)
!2764 = !DILocation(line: 0, scope: !2703, inlinedAt: !2760)
!2765 = !DILocation(line: 1030, column: 3, scope: !2703, inlinedAt: !2760)
!2766 = !DILocation(line: 1030, column: 30, scope: !2703, inlinedAt: !2760)
!2767 = !DILocation(line: 0, scope: !1452, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1031, column: 3, scope: !2703, inlinedAt: !2760)
!2769 = !DILocation(line: 184, column: 6, scope: !1452, inlinedAt: !2768)
!2770 = !DILocation(line: 184, column: 12, scope: !1452, inlinedAt: !2768)
!2771 = !DILocation(line: 185, column: 8, scope: !1466, inlinedAt: !2768)
!2772 = !DILocation(line: 185, column: 23, scope: !1466, inlinedAt: !2768)
!2773 = !DILocation(line: 185, column: 19, scope: !1466, inlinedAt: !2768)
!2774 = !DILocation(line: 186, column: 5, scope: !1466, inlinedAt: !2768)
!2775 = !DILocation(line: 187, column: 6, scope: !1452, inlinedAt: !2768)
!2776 = !DILocation(line: 187, column: 17, scope: !1452, inlinedAt: !2768)
!2777 = !DILocation(line: 188, column: 6, scope: !1452, inlinedAt: !2768)
!2778 = !DILocation(line: 188, column: 18, scope: !1452, inlinedAt: !2768)
!2779 = !DILocation(line: 1032, column: 10, scope: !2703, inlinedAt: !2760)
!2780 = !DILocation(line: 1033, column: 1, scope: !2703, inlinedAt: !2760)
!2781 = !DILocation(line: 1039, column: 3, scope: !2752)
!2782 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2783, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!25, !6, !6, !6, !69}
!2785 = !{!2786, !2787, !2788, !2789}
!2786 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2782, file: !212, line: 1043, type: !6)
!2787 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2782, file: !212, line: 1043, type: !6)
!2788 = !DILocalVariable(name: "arg", arg: 3, scope: !2782, file: !212, line: 1044, type: !6)
!2789 = !DILocalVariable(name: "argsize", arg: 4, scope: !2782, file: !212, line: 1044, type: !69)
!2790 = !DILocation(line: 1030, column: 26, scope: !2703, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1046, column: 10, scope: !2782)
!2792 = !DILocation(line: 0, scope: !2782)
!2793 = !DILocation(line: 0, scope: !2703, inlinedAt: !2791)
!2794 = !DILocation(line: 1030, column: 3, scope: !2703, inlinedAt: !2791)
!2795 = !DILocation(line: 1030, column: 30, scope: !2703, inlinedAt: !2791)
!2796 = !DILocation(line: 0, scope: !1452, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1031, column: 3, scope: !2703, inlinedAt: !2791)
!2798 = !DILocation(line: 184, column: 6, scope: !1452, inlinedAt: !2797)
!2799 = !DILocation(line: 184, column: 12, scope: !1452, inlinedAt: !2797)
!2800 = !DILocation(line: 185, column: 8, scope: !1466, inlinedAt: !2797)
!2801 = !DILocation(line: 185, column: 23, scope: !1466, inlinedAt: !2797)
!2802 = !DILocation(line: 185, column: 19, scope: !1466, inlinedAt: !2797)
!2803 = !DILocation(line: 186, column: 5, scope: !1466, inlinedAt: !2797)
!2804 = !DILocation(line: 187, column: 6, scope: !1452, inlinedAt: !2797)
!2805 = !DILocation(line: 187, column: 17, scope: !1452, inlinedAt: !2797)
!2806 = !DILocation(line: 188, column: 6, scope: !1452, inlinedAt: !2797)
!2807 = !DILocation(line: 188, column: 18, scope: !1452, inlinedAt: !2797)
!2808 = !DILocation(line: 1032, column: 10, scope: !2703, inlinedAt: !2791)
!2809 = !DILocation(line: 1033, column: 1, scope: !2703, inlinedAt: !2791)
!2810 = !DILocation(line: 1046, column: 3, scope: !2782)
!2811 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2812, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2814)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!6, !18, !6, !69}
!2814 = !{!2815, !2816, !2817}
!2815 = !DILocalVariable(name: "n", arg: 1, scope: !2811, file: !212, line: 1061, type: !18)
!2816 = !DILocalVariable(name: "arg", arg: 2, scope: !2811, file: !212, line: 1061, type: !6)
!2817 = !DILocalVariable(name: "argsize", arg: 3, scope: !2811, file: !212, line: 1061, type: !69)
!2818 = !DILocation(line: 0, scope: !2811)
!2819 = !DILocation(line: 1063, column: 10, scope: !2811)
!2820 = !DILocation(line: 1063, column: 3, scope: !2811)
!2821 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2822, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!6, !6, !69}
!2824 = !{!2825, !2826}
!2825 = !DILocalVariable(name: "arg", arg: 1, scope: !2821, file: !212, line: 1067, type: !6)
!2826 = !DILocalVariable(name: "argsize", arg: 2, scope: !2821, file: !212, line: 1067, type: !69)
!2827 = !DILocation(line: 0, scope: !2821)
!2828 = !DILocation(line: 0, scope: !2811, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 1069, column: 10, scope: !2821)
!2830 = !DILocation(line: 1063, column: 10, scope: !2811, inlinedAt: !2829)
!2831 = !DILocation(line: 1069, column: 3, scope: !2821)
!2832 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2833, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!6, !18, !6}
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !212, line: 1073, type: !18)
!2837 = !DILocalVariable(name: "arg", arg: 2, scope: !2832, file: !212, line: 1073, type: !6)
!2838 = !DILocation(line: 0, scope: !2832)
!2839 = !DILocation(line: 0, scope: !2811, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1075, column: 10, scope: !2832)
!2841 = !DILocation(line: 1063, column: 10, scope: !2811, inlinedAt: !2840)
!2842 = !DILocation(line: 1075, column: 3, scope: !2832)
!2843 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !425, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2844)
!2844 = !{!2845}
!2845 = !DILocalVariable(name: "arg", arg: 1, scope: !2843, file: !212, line: 1079, type: !6)
!2846 = !DILocation(line: 0, scope: !2843)
!2847 = !DILocation(line: 0, scope: !2832, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1081, column: 10, scope: !2843)
!2849 = !DILocation(line: 0, scope: !2811, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 1075, column: 10, scope: !2832, inlinedAt: !2848)
!2851 = !DILocation(line: 1063, column: 10, scope: !2811, inlinedAt: !2850)
!2852 = !DILocation(line: 1081, column: 3, scope: !2843)
!2853 = distinct !DISubprogram(name: "version_etc_arn", scope: !433, file: !433, line: 61, type: !2854, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2860)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2856, !6, !6, !6, !2859, !69}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2858, line: 7, baseType: !443)
!2858 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866}
!2861 = !DILocalVariable(name: "stream", arg: 1, scope: !2853, file: !433, line: 61, type: !2856)
!2862 = !DILocalVariable(name: "command_name", arg: 2, scope: !2853, file: !433, line: 62, type: !6)
!2863 = !DILocalVariable(name: "package", arg: 3, scope: !2853, file: !433, line: 62, type: !6)
!2864 = !DILocalVariable(name: "version", arg: 4, scope: !2853, file: !433, line: 63, type: !6)
!2865 = !DILocalVariable(name: "authors", arg: 5, scope: !2853, file: !433, line: 64, type: !2859)
!2866 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2853, file: !433, line: 64, type: !69)
!2867 = !DILocation(line: 0, scope: !2853)
!2868 = !DILocation(line: 66, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2853, file: !433, line: 66, column: 7)
!2870 = !DILocation(line: 66, column: 7, scope: !2853)
!2871 = !DILocation(line: 67, column: 5, scope: !2869)
!2872 = !DILocation(line: 69, column: 5, scope: !2869)
!2873 = !DILocation(line: 83, column: 3, scope: !2853)
!2874 = !DILocation(line: 85, column: 3, scope: !2853)
!2875 = !DILocation(line: 88, column: 3, scope: !2853)
!2876 = !DILocation(line: 95, column: 3, scope: !2853)
!2877 = !DILocation(line: 97, column: 3, scope: !2853)
!2878 = !DILocation(line: 105, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2853, file: !433, line: 98, column: 5)
!2880 = !DILocation(line: 106, column: 7, scope: !2879)
!2881 = !DILocation(line: 109, column: 7, scope: !2879)
!2882 = !DILocation(line: 110, column: 7, scope: !2879)
!2883 = !DILocation(line: 113, column: 7, scope: !2879)
!2884 = !DILocation(line: 115, column: 7, scope: !2879)
!2885 = !DILocation(line: 120, column: 7, scope: !2879)
!2886 = !DILocation(line: 122, column: 7, scope: !2879)
!2887 = !DILocation(line: 127, column: 7, scope: !2879)
!2888 = !DILocation(line: 129, column: 7, scope: !2879)
!2889 = !DILocation(line: 134, column: 7, scope: !2879)
!2890 = !DILocation(line: 137, column: 7, scope: !2879)
!2891 = !DILocation(line: 142, column: 7, scope: !2879)
!2892 = !DILocation(line: 145, column: 7, scope: !2879)
!2893 = !DILocation(line: 150, column: 7, scope: !2879)
!2894 = !DILocation(line: 154, column: 7, scope: !2879)
!2895 = !DILocation(line: 159, column: 7, scope: !2879)
!2896 = !DILocation(line: 163, column: 7, scope: !2879)
!2897 = !DILocation(line: 170, column: 7, scope: !2879)
!2898 = !DILocation(line: 174, column: 7, scope: !2879)
!2899 = !DILocation(line: 176, column: 1, scope: !2853)
!2900 = distinct !DISubprogram(name: "version_etc_ar", scope: !433, file: !433, line: 183, type: !2901, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !2856, !6, !6, !6, !2859}
!2903 = !{!2904, !2905, !2906, !2907, !2908, !2909}
!2904 = !DILocalVariable(name: "stream", arg: 1, scope: !2900, file: !433, line: 183, type: !2856)
!2905 = !DILocalVariable(name: "command_name", arg: 2, scope: !2900, file: !433, line: 184, type: !6)
!2906 = !DILocalVariable(name: "package", arg: 3, scope: !2900, file: !433, line: 184, type: !6)
!2907 = !DILocalVariable(name: "version", arg: 4, scope: !2900, file: !433, line: 185, type: !6)
!2908 = !DILocalVariable(name: "authors", arg: 5, scope: !2900, file: !433, line: 185, type: !2859)
!2909 = !DILocalVariable(name: "n_authors", scope: !2900, file: !433, line: 187, type: !69)
!2910 = !DILocation(line: 0, scope: !2900)
!2911 = !DILocation(line: 189, column: 8, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2900, file: !433, line: 189, column: 3)
!2913 = !DILocation(line: 0, scope: !2912)
!2914 = !DILocation(line: 189, column: 23, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !433, line: 189, column: 3)
!2916 = !DILocation(line: 189, column: 3, scope: !2912)
!2917 = !DILocation(line: 189, column: 52, scope: !2915)
!2918 = distinct !{!2918, !2916, !2919}
!2919 = !DILocation(line: 190, column: 5, scope: !2912)
!2920 = !DILocation(line: 191, column: 3, scope: !2900)
!2921 = !DILocation(line: 192, column: 1, scope: !2900)
!2922 = distinct !DISubprogram(name: "version_etc_va", scope: !433, file: !433, line: 199, type: !2923, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2932)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2856, !6, !6, !6, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !433, line: 192, size: 192, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2926, file: !433, line: 192, baseType: !159, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2926, file: !433, line: 192, baseType: !159, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2926, file: !433, line: 192, baseType: !67, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2926, file: !433, line: 192, baseType: !67, size: 64, offset: 128)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2933 = !DILocalVariable(name: "stream", arg: 1, scope: !2922, file: !433, line: 199, type: !2856)
!2934 = !DILocalVariable(name: "command_name", arg: 2, scope: !2922, file: !433, line: 200, type: !6)
!2935 = !DILocalVariable(name: "package", arg: 3, scope: !2922, file: !433, line: 200, type: !6)
!2936 = !DILocalVariable(name: "version", arg: 4, scope: !2922, file: !433, line: 201, type: !6)
!2937 = !DILocalVariable(name: "authors", arg: 5, scope: !2922, file: !433, line: 201, type: !2925)
!2938 = !DILocalVariable(name: "n_authors", scope: !2922, file: !433, line: 203, type: !69)
!2939 = !DILocalVariable(name: "authtab", scope: !2922, file: !433, line: 204, type: !2940)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!2941 = !DILocation(line: 0, scope: !2922)
!2942 = !DILocation(line: 204, column: 3, scope: !2922)
!2943 = !DILocation(line: 204, column: 15, scope: !2922)
!2944 = !DILocation(line: 0, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !433, line: 206, column: 3)
!2946 = distinct !DILexicalBlock(scope: !2922, file: !433, line: 206, column: 3)
!2947 = !DILocation(line: 208, column: 35, scope: !2945)
!2948 = !DILocation(line: 208, column: 14, scope: !2945)
!2949 = !DILocation(line: 208, column: 33, scope: !2945)
!2950 = !DILocation(line: 208, column: 67, scope: !2945)
!2951 = !DILocation(line: 206, column: 3, scope: !2946)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 211, column: 3, scope: !2922)
!2954 = !DILocation(line: 213, column: 1, scope: !2922)
!2955 = distinct !DISubprogram(name: "version_etc", scope: !433, file: !433, line: 230, type: !2956, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2856, !6, !6, !6, null}
!2958 = !{!2959, !2960, !2961, !2962, !2963}
!2959 = !DILocalVariable(name: "stream", arg: 1, scope: !2955, file: !433, line: 230, type: !2856)
!2960 = !DILocalVariable(name: "command_name", arg: 2, scope: !2955, file: !433, line: 231, type: !6)
!2961 = !DILocalVariable(name: "package", arg: 3, scope: !2955, file: !433, line: 231, type: !6)
!2962 = !DILocalVariable(name: "version", arg: 4, scope: !2955, file: !433, line: 232, type: !6)
!2963 = !DILocalVariable(name: "authors", scope: !2955, file: !433, line: 234, type: !2964)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1284, line: 32, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !433, line: 234, baseType: !2967)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2926, size: 192, elements: !52)
!2968 = !DILocation(line: 0, scope: !2955)
!2969 = !DILocation(line: 234, column: 3, scope: !2955)
!2970 = !DILocation(line: 234, column: 11, scope: !2955)
!2971 = !DILocation(line: 236, column: 3, scope: !2955)
!2972 = !DILocation(line: 237, column: 3, scope: !2955)
!2973 = !DILocation(line: 238, column: 3, scope: !2955)
!2974 = !DILocation(line: 239, column: 1, scope: !2955)
!2975 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !433, file: !433, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !4)
!2976 = !DILocation(line: 244, column: 3, scope: !2975)
!2977 = !DILocation(line: 249, column: 3, scope: !2975)
!2978 = !DILocation(line: 255, column: 3, scope: !2975)
!2979 = !DILocation(line: 260, column: 3, scope: !2975)
!2980 = !DILocation(line: 262, column: 1, scope: !2975)
!2981 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !2982, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!67, !69, !69}
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2981, file: !249, line: 99, type: !69)
!2986 = !DILocalVariable(name: "s", arg: 2, scope: !2981, file: !249, line: 99, type: !69)
!2987 = !DILocation(line: 0, scope: !2981)
!2988 = !DILocation(line: 101, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2981, file: !249, line: 101, column: 7)
!2990 = !DILocation(line: 101, column: 7, scope: !2981)
!2991 = !DILocation(line: 102, column: 5, scope: !2989)
!2992 = !DILocation(line: 103, column: 21, scope: !2981)
!2993 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !475, line: 39, type: !69)
!2994 = distinct !DISubprogram(name: "xmalloc", scope: !475, file: !475, line: 39, type: !2995, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!67, !69}
!2997 = !{!2993, !2998}
!2998 = !DILocalVariable(name: "p", scope: !2994, file: !475, line: 41, type: !67)
!2999 = !DILocation(line: 0, scope: !2994, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 103, column: 10, scope: !2981)
!3001 = !DILocation(line: 41, column: 13, scope: !2994, inlinedAt: !3000)
!3002 = !DILocation(line: 42, column: 8, scope: !3003, inlinedAt: !3000)
!3003 = distinct !DILexicalBlock(scope: !2994, file: !475, line: 42, column: 7)
!3004 = !DILocation(line: 42, column: 15, scope: !3003, inlinedAt: !3000)
!3005 = !DILocation(line: 42, column: 10, scope: !3003, inlinedAt: !3000)
!3006 = !DILocation(line: 43, column: 5, scope: !3003, inlinedAt: !3000)
!3007 = !DILocation(line: 103, column: 3, scope: !2981)
!3008 = !DILocation(line: 0, scope: !2994)
!3009 = !DILocation(line: 41, column: 13, scope: !2994)
!3010 = !DILocation(line: 42, column: 8, scope: !3003)
!3011 = !DILocation(line: 42, column: 15, scope: !3003)
!3012 = !DILocation(line: 42, column: 10, scope: !3003)
!3013 = !DILocation(line: 43, column: 5, scope: !3003)
!3014 = !DILocation(line: 44, column: 3, scope: !2994)
!3015 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3016, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!67, !67, !69, !69}
!3018 = !{!3019, !3020, !3021}
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3015, file: !249, line: 112, type: !67)
!3020 = !DILocalVariable(name: "n", arg: 2, scope: !3015, file: !249, line: 112, type: !69)
!3021 = !DILocalVariable(name: "s", arg: 3, scope: !3015, file: !249, line: 112, type: !69)
!3022 = !DILocation(line: 0, scope: !3015)
!3023 = !DILocation(line: 114, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3015, file: !249, line: 114, column: 7)
!3025 = !DILocation(line: 114, column: 7, scope: !3015)
!3026 = !DILocation(line: 115, column: 5, scope: !3024)
!3027 = !DILocation(line: 116, column: 25, scope: !3015)
!3028 = !DILocalVariable(name: "p", arg: 1, scope: !3029, file: !475, line: 51, type: !67)
!3029 = distinct !DISubprogram(name: "xrealloc", scope: !475, file: !475, line: 51, type: !3030, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3032)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!67, !67, !69}
!3032 = !{!3028, !3033}
!3033 = !DILocalVariable(name: "n", arg: 2, scope: !3029, file: !475, line: 51, type: !69)
!3034 = !DILocation(line: 0, scope: !3029, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 116, column: 10, scope: !3015)
!3036 = !DILocation(line: 53, column: 8, scope: !3037, inlinedAt: !3035)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !475, line: 53, column: 7)
!3038 = !DILocation(line: 53, column: 13, scope: !3037, inlinedAt: !3035)
!3039 = !DILocation(line: 53, column: 10, scope: !3037, inlinedAt: !3035)
!3040 = !DILocation(line: 57, column: 7, scope: !3041, inlinedAt: !3035)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !475, line: 54, column: 5)
!3042 = !DILocation(line: 58, column: 7, scope: !3041, inlinedAt: !3035)
!3043 = !DILocation(line: 61, column: 7, scope: !3029, inlinedAt: !3035)
!3044 = !DILocation(line: 62, column: 8, scope: !3045, inlinedAt: !3035)
!3045 = distinct !DILexicalBlock(scope: !3029, file: !475, line: 62, column: 7)
!3046 = !DILocation(line: 62, column: 13, scope: !3045, inlinedAt: !3035)
!3047 = !DILocation(line: 62, column: 10, scope: !3045, inlinedAt: !3035)
!3048 = !DILocation(line: 63, column: 5, scope: !3045, inlinedAt: !3035)
!3049 = !DILocation(line: 116, column: 3, scope: !3015)
!3050 = !DILocation(line: 0, scope: !3029)
!3051 = !DILocation(line: 53, column: 8, scope: !3037)
!3052 = !DILocation(line: 53, column: 13, scope: !3037)
!3053 = !DILocation(line: 53, column: 10, scope: !3037)
!3054 = !DILocation(line: 57, column: 7, scope: !3041)
!3055 = !DILocation(line: 58, column: 7, scope: !3041)
!3056 = !DILocation(line: 61, column: 7, scope: !3029)
!3057 = !DILocation(line: 62, column: 8, scope: !3045)
!3058 = !DILocation(line: 62, column: 13, scope: !3045)
!3059 = !DILocation(line: 62, column: 10, scope: !3045)
!3060 = !DILocation(line: 63, column: 5, scope: !3045)
!3061 = !DILocation(line: 65, column: 1, scope: !3029)
!3062 = !DILocation(line: 0, scope: !478)
!3063 = !DILocation(line: 176, column: 14, scope: !478)
!3064 = !DILocation(line: 178, column: 9, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !478, file: !249, line: 178, column: 7)
!3066 = !DILocation(line: 178, column: 7, scope: !478)
!3067 = !DILocation(line: 180, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !249, line: 180, column: 11)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !249, line: 179, column: 5)
!3070 = !DILocation(line: 180, column: 11, scope: !3069)
!3071 = !DILocation(line: 188, column: 30, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !249, line: 181, column: 9)
!3073 = !DILocation(line: 189, column: 16, scope: !3072)
!3074 = !DILocation(line: 189, column: 13, scope: !3072)
!3075 = !DILocation(line: 190, column: 9, scope: !3072)
!3076 = !DILocation(line: 191, column: 11, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3069, file: !249, line: 191, column: 11)
!3078 = !DILocation(line: 191, column: 11, scope: !3069)
!3079 = !DILocation(line: 206, column: 7, scope: !478)
!3080 = !DILocation(line: 207, column: 25, scope: !478)
!3081 = !DILocation(line: 0, scope: !3029, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 207, column: 10, scope: !478)
!3083 = !DILocation(line: 53, column: 10, scope: !3037, inlinedAt: !3082)
!3084 = !DILocation(line: 192, column: 9, scope: !3077)
!3085 = !DILocation(line: 200, column: 69, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !249, line: 200, column: 11)
!3087 = distinct !DILexicalBlock(scope: !3065, file: !249, line: 195, column: 5)
!3088 = !DILocation(line: 201, column: 11, scope: !3086)
!3089 = !DILocation(line: 200, column: 11, scope: !3087)
!3090 = !DILocation(line: 202, column: 9, scope: !3086)
!3091 = !DILocation(line: 203, column: 14, scope: !3087)
!3092 = !DILocation(line: 203, column: 18, scope: !3087)
!3093 = !DILocation(line: 203, column: 9, scope: !3087)
!3094 = !DILocation(line: 53, column: 8, scope: !3037, inlinedAt: !3082)
!3095 = !DILocation(line: 57, column: 7, scope: !3041, inlinedAt: !3082)
!3096 = !DILocation(line: 58, column: 7, scope: !3041, inlinedAt: !3082)
!3097 = !DILocation(line: 61, column: 7, scope: !3029, inlinedAt: !3082)
!3098 = !DILocation(line: 62, column: 8, scope: !3045, inlinedAt: !3082)
!3099 = !DILocation(line: 62, column: 13, scope: !3045, inlinedAt: !3082)
!3100 = !DILocation(line: 62, column: 10, scope: !3045, inlinedAt: !3082)
!3101 = !DILocation(line: 63, column: 5, scope: !3045, inlinedAt: !3082)
!3102 = !DILocation(line: 207, column: 3, scope: !478)
!3103 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2268, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3104)
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !249, line: 216, type: !69)
!3106 = !DILocation(line: 0, scope: !3103)
!3107 = !DILocation(line: 0, scope: !2994, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 218, column: 10, scope: !3103)
!3109 = !DILocation(line: 41, column: 13, scope: !2994, inlinedAt: !3108)
!3110 = !DILocation(line: 42, column: 8, scope: !3003, inlinedAt: !3108)
!3111 = !DILocation(line: 42, column: 15, scope: !3003, inlinedAt: !3108)
!3112 = !DILocation(line: 42, column: 10, scope: !3003, inlinedAt: !3108)
!3113 = !DILocation(line: 43, column: 5, scope: !3003, inlinedAt: !3108)
!3114 = !DILocation(line: 218, column: 3, scope: !3103)
!3115 = distinct !DISubprogram(name: "x2realloc", scope: !475, file: !475, line: 74, type: !3116, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!67, !67, !481}
!3118 = !{!3119, !3120}
!3119 = !DILocalVariable(name: "p", arg: 1, scope: !3115, file: !475, line: 74, type: !67)
!3120 = !DILocalVariable(name: "pn", arg: 2, scope: !3115, file: !475, line: 74, type: !481)
!3121 = !DILocation(line: 0, scope: !3115)
!3122 = !DILocation(line: 0, scope: !478, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 76, column: 10, scope: !3115)
!3124 = !DILocation(line: 176, column: 14, scope: !478, inlinedAt: !3123)
!3125 = !DILocation(line: 178, column: 9, scope: !3065, inlinedAt: !3123)
!3126 = !DILocation(line: 178, column: 7, scope: !478, inlinedAt: !3123)
!3127 = !DILocation(line: 180, column: 13, scope: !3068, inlinedAt: !3123)
!3128 = !DILocation(line: 180, column: 11, scope: !3069, inlinedAt: !3123)
!3129 = !DILocation(line: 191, column: 11, scope: !3077, inlinedAt: !3123)
!3130 = !DILocation(line: 191, column: 11, scope: !3069, inlinedAt: !3123)
!3131 = !DILocation(line: 206, column: 7, scope: !478, inlinedAt: !3123)
!3132 = !DILocation(line: 0, scope: !3029, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 207, column: 10, scope: !478, inlinedAt: !3123)
!3134 = !DILocation(line: 53, column: 10, scope: !3037, inlinedAt: !3133)
!3135 = !DILocation(line: 192, column: 9, scope: !3077, inlinedAt: !3123)
!3136 = !DILocation(line: 201, column: 11, scope: !3086, inlinedAt: !3123)
!3137 = !DILocation(line: 200, column: 11, scope: !3087, inlinedAt: !3123)
!3138 = !DILocation(line: 202, column: 9, scope: !3086, inlinedAt: !3123)
!3139 = !DILocation(line: 203, column: 14, scope: !3087, inlinedAt: !3123)
!3140 = !DILocation(line: 203, column: 18, scope: !3087, inlinedAt: !3123)
!3141 = !DILocation(line: 203, column: 9, scope: !3087, inlinedAt: !3123)
!3142 = !DILocation(line: 53, column: 8, scope: !3037, inlinedAt: !3133)
!3143 = !DILocation(line: 57, column: 7, scope: !3041, inlinedAt: !3133)
!3144 = !DILocation(line: 58, column: 7, scope: !3041, inlinedAt: !3133)
!3145 = !DILocation(line: 61, column: 7, scope: !3029, inlinedAt: !3133)
!3146 = !DILocation(line: 62, column: 8, scope: !3045, inlinedAt: !3133)
!3147 = !DILocation(line: 62, column: 13, scope: !3045, inlinedAt: !3133)
!3148 = !DILocation(line: 62, column: 10, scope: !3045, inlinedAt: !3133)
!3149 = !DILocation(line: 63, column: 5, scope: !3045, inlinedAt: !3133)
!3150 = !DILocation(line: 76, column: 3, scope: !3115)
!3151 = distinct !DISubprogram(name: "xzalloc", scope: !475, file: !475, line: 84, type: !2995, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3152)
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !475, line: 84, type: !69)
!3154 = !DILocation(line: 0, scope: !3151)
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3156, file: !475, line: 93, type: !69)
!3156 = distinct !DISubprogram(name: "xcalloc", scope: !475, file: !475, line: 93, type: !2982, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3157)
!3157 = !{!3155, !3158, !3159}
!3158 = !DILocalVariable(name: "s", arg: 2, scope: !3156, file: !475, line: 93, type: !69)
!3159 = !DILocalVariable(name: "p", scope: !3156, file: !475, line: 95, type: !67)
!3160 = !DILocation(line: 0, scope: !3156, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 86, column: 10, scope: !3151)
!3162 = !DILocation(line: 100, column: 7, scope: !3163, inlinedAt: !3161)
!3163 = distinct !DILexicalBlock(scope: !3156, file: !475, line: 100, column: 7)
!3164 = !DILocation(line: 101, column: 7, scope: !3163, inlinedAt: !3161)
!3165 = !DILocation(line: 101, column: 18, scope: !3163, inlinedAt: !3161)
!3166 = !DILocation(line: 101, column: 16, scope: !3163, inlinedAt: !3161)
!3167 = !DILocation(line: 100, column: 7, scope: !3156, inlinedAt: !3161)
!3168 = !DILocation(line: 102, column: 5, scope: !3163, inlinedAt: !3161)
!3169 = !DILocation(line: 86, column: 3, scope: !3151)
!3170 = !DILocation(line: 0, scope: !3156)
!3171 = !DILocation(line: 100, column: 7, scope: !3163)
!3172 = !DILocation(line: 101, column: 7, scope: !3163)
!3173 = !DILocation(line: 101, column: 18, scope: !3163)
!3174 = !DILocation(line: 101, column: 16, scope: !3163)
!3175 = !DILocation(line: 100, column: 7, scope: !3156)
!3176 = !DILocation(line: 102, column: 5, scope: !3163)
!3177 = !DILocation(line: 103, column: 3, scope: !3156)
!3178 = distinct !DISubprogram(name: "xmemdup", scope: !475, file: !475, line: 111, type: !3179, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!67, !252, !69}
!3181 = !{!3182, !3183}
!3182 = !DILocalVariable(name: "p", arg: 1, scope: !3178, file: !475, line: 111, type: !252)
!3183 = !DILocalVariable(name: "s", arg: 2, scope: !3178, file: !475, line: 111, type: !69)
!3184 = !DILocation(line: 0, scope: !3178)
!3185 = !DILocation(line: 0, scope: !2994, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 113, column: 18, scope: !3178)
!3187 = !DILocation(line: 41, column: 13, scope: !2994, inlinedAt: !3186)
!3188 = !DILocation(line: 42, column: 8, scope: !3003, inlinedAt: !3186)
!3189 = !DILocation(line: 42, column: 15, scope: !3003, inlinedAt: !3186)
!3190 = !DILocation(line: 42, column: 10, scope: !3003, inlinedAt: !3186)
!3191 = !DILocation(line: 43, column: 5, scope: !3003, inlinedAt: !3186)
!3192 = !DILocalVariable(name: "__dest", arg: 1, scope: !3193, file: !1801, line: 31, type: !3196)
!3193 = distinct !DISubprogram(name: "memcpy", scope: !1801, file: !1801, line: 31, type: !3194, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3198)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!67, !3196, !3197, !69}
!3196 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3197 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3198 = !{!3192, !3199, !3200}
!3199 = !DILocalVariable(name: "__src", arg: 2, scope: !3193, file: !1801, line: 31, type: !3197)
!3200 = !DILocalVariable(name: "__len", arg: 3, scope: !3193, file: !1801, line: 31, type: !69)
!3201 = !DILocation(line: 0, scope: !3193, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 113, column: 10, scope: !3178)
!3203 = !DILocation(line: 34, column: 10, scope: !3193, inlinedAt: !3202)
!3204 = !DILocation(line: 113, column: 3, scope: !3178)
!3205 = distinct !DISubprogram(name: "xstrdup", scope: !475, file: !475, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !474, retainedNodes: !3206)
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "string", arg: 1, scope: !3205, file: !475, line: 119, type: !6)
!3208 = !DILocation(line: 0, scope: !3205)
!3209 = !DILocation(line: 121, column: 27, scope: !3205)
!3210 = !DILocation(line: 121, column: 43, scope: !3205)
!3211 = !DILocation(line: 0, scope: !3178, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 121, column: 10, scope: !3205)
!3213 = !DILocation(line: 0, scope: !2994, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 113, column: 18, scope: !3178, inlinedAt: !3212)
!3215 = !DILocation(line: 41, column: 13, scope: !2994, inlinedAt: !3214)
!3216 = !DILocation(line: 42, column: 8, scope: !3003, inlinedAt: !3214)
!3217 = !DILocation(line: 42, column: 15, scope: !3003, inlinedAt: !3214)
!3218 = !DILocation(line: 42, column: 10, scope: !3003, inlinedAt: !3214)
!3219 = !DILocation(line: 43, column: 5, scope: !3003, inlinedAt: !3214)
!3220 = !DILocation(line: 0, scope: !3193, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 113, column: 10, scope: !3178, inlinedAt: !3212)
!3222 = !DILocation(line: 34, column: 10, scope: !3193, inlinedAt: !3221)
!3223 = !DILocation(line: 121, column: 3, scope: !3205)
!3224 = distinct !DISubprogram(name: "xalloc_die", scope: !496, file: !496, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !495, retainedNodes: !4)
!3225 = !DILocation(line: 34, column: 10, scope: !3224)
!3226 = !DILocation(line: 34, column: 33, scope: !3224)
!3227 = !DILocation(line: 34, column: 3, scope: !3224)
!3228 = !DILocation(line: 40, column: 3, scope: !3224)
!3229 = distinct !DISubprogram(name: "rpl_calloc", scope: !499, file: !499, line: 42, type: !2982, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !498, retainedNodes: !3230)
!3230 = !{!3231, !3232, !3233, !3234}
!3231 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !499, line: 42, type: !69)
!3232 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !499, line: 42, type: !69)
!3233 = !DILocalVariable(name: "result", scope: !3229, file: !499, line: 44, type: !67)
!3234 = !DILocalVariable(name: "bytes", scope: !3235, file: !499, line: 56, type: !69)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !499, line: 53, column: 5)
!3236 = distinct !DILexicalBlock(scope: !3229, file: !499, line: 47, column: 7)
!3237 = !DILocation(line: 0, scope: !3229)
!3238 = !DILocation(line: 47, column: 9, scope: !3236)
!3239 = !DILocation(line: 47, column: 19, scope: !3236)
!3240 = !DILocation(line: 47, column: 14, scope: !3236)
!3241 = !DILocation(line: 0, scope: !3235)
!3242 = !DILocation(line: 57, column: 21, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3235, file: !499, line: 57, column: 11)
!3244 = !DILocation(line: 57, column: 11, scope: !3235)
!3245 = !DILocation(line: 59, column: 11, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !499, line: 58, column: 9)
!3247 = !DILocation(line: 59, column: 17, scope: !3246)
!3248 = !DILocation(line: 65, column: 12, scope: !3229)
!3249 = !DILocation(line: 72, column: 3, scope: !3229)
!3250 = !DILocation(line: 73, column: 1, scope: !3229)
!3251 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !502, file: !502, line: 86, type: !3252, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !501, retainedNodes: !3258)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!69, !3254, !6, !69, !3255}
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1542, line: 6, baseType: !3257)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !508)
!3258 = !{!3259, !3260, !3261, !3262, !3263, !3264, !3265}
!3259 = !DILocalVariable(name: "pwc", arg: 1, scope: !3251, file: !502, line: 86, type: !3254)
!3260 = !DILocalVariable(name: "s", arg: 2, scope: !3251, file: !502, line: 86, type: !6)
!3261 = !DILocalVariable(name: "n", arg: 3, scope: !3251, file: !502, line: 86, type: !69)
!3262 = !DILocalVariable(name: "ps", arg: 4, scope: !3251, file: !502, line: 86, type: !3255)
!3263 = !DILocalVariable(name: "ret", scope: !3251, file: !502, line: 88, type: !69)
!3264 = !DILocalVariable(name: "wc", scope: !3251, file: !502, line: 89, type: !1546)
!3265 = !DILocalVariable(name: "uc", scope: !3266, file: !502, line: 156, type: !1419)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !502, line: 155, column: 5)
!3267 = distinct !DILexicalBlock(scope: !3251, file: !502, line: 154, column: 7)
!3268 = !DILocation(line: 0, scope: !3251)
!3269 = !DILocation(line: 89, column: 3, scope: !3251)
!3270 = !DILocation(line: 105, column: 9, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3251, file: !502, line: 105, column: 7)
!3272 = !DILocation(line: 105, column: 7, scope: !3251)
!3273 = !DILocation(line: 145, column: 9, scope: !3251)
!3274 = !DILocation(line: 154, column: 19, scope: !3267)
!3275 = !DILocation(line: 154, column: 31, scope: !3267)
!3276 = !DILocation(line: 154, column: 26, scope: !3267)
!3277 = !DILocation(line: 154, column: 41, scope: !3267)
!3278 = !DILocation(line: 154, column: 7, scope: !3251)
!3279 = !DILocation(line: 156, column: 26, scope: !3266)
!3280 = !DILocation(line: 0, scope: !3266)
!3281 = !DILocation(line: 157, column: 14, scope: !3266)
!3282 = !DILocation(line: 157, column: 12, scope: !3266)
!3283 = !DILocation(line: 163, column: 1, scope: !3251)
!3284 = distinct !DISubprogram(name: "close_stream", scope: !521, file: !521, line: 56, type: !3285, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3289)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!18, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2858, line: 7, baseType: !528)
!3289 = !{!3290, !3291, !3293, !3294}
!3290 = !DILocalVariable(name: "stream", arg: 1, scope: !3284, file: !521, line: 56, type: !3287)
!3291 = !DILocalVariable(name: "some_pending", scope: !3284, file: !521, line: 58, type: !3292)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3293 = !DILocalVariable(name: "prev_fail", scope: !3284, file: !521, line: 59, type: !3292)
!3294 = !DILocalVariable(name: "fclose_fail", scope: !3284, file: !521, line: 60, type: !3292)
!3295 = !DILocation(line: 0, scope: !3284)
!3296 = !DILocation(line: 58, column: 30, scope: !3284)
!3297 = !DILocalVariable(name: "__stream", arg: 1, scope: !3298, file: !3299, line: 135, type: !3287)
!3298 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3299, file: !3299, line: 135, type: !3285, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !3300)
!3299 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3300 = !{!3297}
!3301 = !DILocation(line: 0, scope: !3298, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 59, column: 27, scope: !3284)
!3303 = !DILocation(line: 137, column: 10, scope: !3298, inlinedAt: !3302)
!3304 = !{!3305, !1179, i64 0}
!3305 = !{!"_IO_FILE", !1179, i64 0, !1123, i64 8, !1123, i64 16, !1123, i64 24, !1123, i64 32, !1123, i64 40, !1123, i64 48, !1123, i64 56, !1123, i64 64, !1123, i64 72, !1123, i64 80, !1123, i64 88, !1123, i64 96, !1123, i64 104, !1179, i64 112, !1179, i64 116, !2304, i64 120, !1794, i64 128, !1124, i64 130, !1124, i64 131, !1123, i64 136, !2304, i64 144, !1123, i64 152, !1123, i64 160, !1123, i64 168, !1123, i64 176, !2304, i64 184, !1179, i64 192, !1124, i64 196}
!3306 = !DILocation(line: 59, column: 43, scope: !3284)
!3307 = !DILocation(line: 60, column: 29, scope: !3284)
!3308 = !DILocation(line: 60, column: 45, scope: !3284)
!3309 = !DILocation(line: 70, column: 17, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3284, file: !521, line: 70, column: 7)
!3311 = !DILocation(line: 58, column: 50, scope: !3284)
!3312 = !DILocation(line: 70, column: 33, scope: !3310)
!3313 = !DILocation(line: 70, column: 53, scope: !3310)
!3314 = !DILocation(line: 70, column: 59, scope: !3310)
!3315 = !DILocation(line: 70, column: 7, scope: !3284)
!3316 = !DILocation(line: 72, column: 11, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3310, file: !521, line: 71, column: 5)
!3318 = !DILocation(line: 73, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3317, file: !521, line: 72, column: 11)
!3320 = !DILocation(line: 73, column: 15, scope: !3319)
!3321 = !DILocation(line: 78, column: 1, scope: !3284)
!3322 = distinct !DISubprogram(name: "hard_locale", scope: !560, file: !560, line: 27, type: !518, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !559, retainedNodes: !3323)
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "category", arg: 1, scope: !3322, file: !560, line: 27, type: !18)
!3325 = !DILocalVariable(name: "locale", scope: !3322, file: !560, line: 29, type: !3326)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3327)
!3327 = !{!3328}
!3328 = !DISubrange(count: 257)
!3329 = !DILocation(line: 0, scope: !3322)
!3330 = !DILocation(line: 29, column: 3, scope: !3322)
!3331 = !DILocation(line: 29, column: 8, scope: !3322)
!3332 = !DILocation(line: 31, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3322, file: !560, line: 31, column: 7)
!3334 = !DILocation(line: 31, column: 7, scope: !3322)
!3335 = !DILocation(line: 34, column: 12, scope: !3322)
!3336 = !DILocation(line: 34, column: 38, scope: !3322)
!3337 = !DILocation(line: 34, column: 41, scope: !3322)
!3338 = !DILocation(line: 34, column: 66, scope: !3322)
!3339 = !DILocation(line: 35, column: 1, scope: !3322)
!3340 = distinct !DISubprogram(name: "locale_charset", scope: !567, file: !567, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3341)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "codeset", scope: !3340, file: !567, line: 833, type: !6)
!3343 = !DILocation(line: 847, column: 13, scope: !3340)
!3344 = !DILocation(line: 0, scope: !3340)
!3345 = !DILocation(line: 911, column: 15, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3340, file: !567, line: 911, column: 7)
!3347 = !DILocation(line: 911, column: 7, scope: !3340)
!3348 = !DILocation(line: 1070, column: 13, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !567, line: 1070, column: 13)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !567, line: 1060, column: 7)
!3351 = distinct !DILexicalBlock(scope: !3340, file: !567, line: 1019, column: 3)
!3352 = !DILocation(line: 1070, column: 24, scope: !3349)
!3353 = !DILocation(line: 1070, column: 13, scope: !3350)
!3354 = !DILocation(line: 1158, column: 3, scope: !3340)
!3355 = distinct !DISubprogram(name: "setlocale_null_r", scope: !960, file: !960, line: 269, type: !3356, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!18, !18, !25, !69}
!3358 = !{!3359, !3360, !3361}
!3359 = !DILocalVariable(name: "category", arg: 1, scope: !3355, file: !960, line: 269, type: !18)
!3360 = !DILocalVariable(name: "buf", arg: 2, scope: !3355, file: !960, line: 269, type: !25)
!3361 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3355, file: !960, line: 269, type: !69)
!3362 = !DILocation(line: 0, scope: !3355)
!3363 = !DILocalVariable(name: "category", arg: 1, scope: !3364, file: !960, line: 91, type: !18)
!3364 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !960, file: !960, line: 91, type: !3356, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3365)
!3365 = !{!3363, !3366, !3367, !3368, !3369}
!3366 = !DILocalVariable(name: "buf", arg: 2, scope: !3364, file: !960, line: 91, type: !25)
!3367 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3364, file: !960, line: 91, type: !69)
!3368 = !DILocalVariable(name: "result", scope: !3364, file: !960, line: 140, type: !6)
!3369 = !DILocalVariable(name: "length", scope: !3370, file: !960, line: 154, type: !69)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !960, line: 153, column: 5)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !960, line: 142, column: 7)
!3372 = !DILocation(line: 0, scope: !3364, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 274, column: 10, scope: !3355)
!3374 = !DILocalVariable(name: "category", arg: 1, scope: !3375, file: !960, line: 60, type: !18)
!3375 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !960, file: !960, line: 60, type: !3376, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3378)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!6, !18}
!3378 = !{!3374, !3379}
!3379 = !DILocalVariable(name: "result", scope: !3375, file: !960, line: 62, type: !6)
!3380 = !DILocation(line: 0, scope: !3375, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 140, column: 24, scope: !3364, inlinedAt: !3373)
!3382 = !DILocation(line: 62, column: 24, scope: !3375, inlinedAt: !3381)
!3383 = !DILocation(line: 142, column: 14, scope: !3371, inlinedAt: !3373)
!3384 = !DILocation(line: 142, column: 7, scope: !3364, inlinedAt: !3373)
!3385 = !DILocation(line: 145, column: 19, scope: !3386, inlinedAt: !3373)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !960, line: 145, column: 11)
!3387 = distinct !DILexicalBlock(scope: !3371, file: !960, line: 143, column: 5)
!3388 = !DILocation(line: 145, column: 11, scope: !3387, inlinedAt: !3373)
!3389 = !DILocation(line: 149, column: 16, scope: !3386, inlinedAt: !3373)
!3390 = !DILocation(line: 149, column: 9, scope: !3386, inlinedAt: !3373)
!3391 = !DILocation(line: 154, column: 23, scope: !3370, inlinedAt: !3373)
!3392 = !DILocation(line: 0, scope: !3370, inlinedAt: !3373)
!3393 = !DILocation(line: 155, column: 18, scope: !3394, inlinedAt: !3373)
!3394 = distinct !DILexicalBlock(scope: !3370, file: !960, line: 155, column: 11)
!3395 = !DILocation(line: 155, column: 11, scope: !3370, inlinedAt: !3373)
!3396 = !DILocation(line: 157, column: 39, scope: !3397, inlinedAt: !3373)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !960, line: 156, column: 9)
!3398 = !DILocalVariable(name: "__dest", arg: 1, scope: !3399, file: !1801, line: 31, type: !3196)
!3399 = distinct !DISubprogram(name: "memcpy", scope: !1801, file: !1801, line: 31, type: !3194, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3400)
!3400 = !{!3398, !3401, !3402}
!3401 = !DILocalVariable(name: "__src", arg: 2, scope: !3399, file: !1801, line: 31, type: !3197)
!3402 = !DILocalVariable(name: "__len", arg: 3, scope: !3399, file: !1801, line: 31, type: !69)
!3403 = !DILocation(line: 0, scope: !3399, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 157, column: 11, scope: !3397, inlinedAt: !3373)
!3405 = !DILocation(line: 34, column: 10, scope: !3399, inlinedAt: !3404)
!3406 = !DILocation(line: 158, column: 11, scope: !3397, inlinedAt: !3373)
!3407 = !DILocation(line: 162, column: 23, scope: !3408, inlinedAt: !3373)
!3408 = distinct !DILexicalBlock(scope: !3409, file: !960, line: 162, column: 15)
!3409 = distinct !DILexicalBlock(scope: !3394, file: !960, line: 161, column: 9)
!3410 = !DILocation(line: 162, column: 15, scope: !3409, inlinedAt: !3373)
!3411 = !DILocation(line: 167, column: 44, scope: !3412, inlinedAt: !3373)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !960, line: 163, column: 13)
!3413 = !DILocation(line: 0, scope: !3399, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 167, column: 15, scope: !3412, inlinedAt: !3373)
!3415 = !DILocation(line: 34, column: 10, scope: !3399, inlinedAt: !3414)
!3416 = !DILocation(line: 168, column: 15, scope: !3412, inlinedAt: !3373)
!3417 = !DILocation(line: 168, column: 32, scope: !3412, inlinedAt: !3373)
!3418 = !DILocation(line: 169, column: 13, scope: !3412, inlinedAt: !3373)
!3419 = !DILocation(line: 0, scope: !3371, inlinedAt: !3373)
!3420 = !DILocation(line: 274, column: 3, scope: !3355)
!3421 = distinct !DISubprogram(name: "setlocale_null", scope: !960, file: !960, line: 301, type: !3376, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !959, retainedNodes: !3422)
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "category", arg: 1, scope: !3421, file: !960, line: 301, type: !18)
!3424 = !DILocation(line: 0, scope: !3421)
!3425 = !DILocation(line: 0, scope: !3375, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 304, column: 10, scope: !3421)
!3427 = !DILocation(line: 62, column: 24, scope: !3375, inlinedAt: !3426)
!3428 = !DILocation(line: 304, column: 3, scope: !3421)
!3429 = distinct !DISubprogram(name: "rpl_fclose", scope: !963, file: !963, line: 58, type: !3430, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !3434)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!18, !3432}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2858, line: 7, baseType: !969)
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DILocalVariable(name: "fp", arg: 1, scope: !3429, file: !963, line: 58, type: !3432)
!3436 = !DILocalVariable(name: "saved_errno", scope: !3429, file: !963, line: 60, type: !18)
!3437 = !DILocalVariable(name: "fd", scope: !3429, file: !963, line: 61, type: !18)
!3438 = !DILocalVariable(name: "result", scope: !3429, file: !963, line: 62, type: !18)
!3439 = !DILocation(line: 0, scope: !3429)
!3440 = !DILocation(line: 65, column: 8, scope: !3429)
!3441 = !DILocation(line: 66, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3429, file: !963, line: 66, column: 7)
!3443 = !DILocation(line: 66, column: 7, scope: !3429)
!3444 = !DILocation(line: 67, column: 12, scope: !3442)
!3445 = !DILocation(line: 67, column: 5, scope: !3442)
!3446 = !DILocation(line: 72, column: 9, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3429, file: !963, line: 72, column: 7)
!3448 = !DILocation(line: 72, column: 23, scope: !3447)
!3449 = !DILocation(line: 72, column: 33, scope: !3447)
!3450 = !DILocation(line: 72, column: 26, scope: !3447)
!3451 = !DILocation(line: 72, column: 59, scope: !3447)
!3452 = !DILocation(line: 73, column: 7, scope: !3447)
!3453 = !DILocation(line: 73, column: 10, scope: !3447)
!3454 = !DILocation(line: 72, column: 7, scope: !3429)
!3455 = !DILocation(line: 100, column: 12, scope: !3429)
!3456 = !DILocation(line: 105, column: 7, scope: !3429)
!3457 = !DILocation(line: 74, column: 19, scope: !3447)
!3458 = !DILocation(line: 105, column: 19, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3429, file: !963, line: 105, column: 7)
!3460 = !DILocation(line: 107, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3459, file: !963, line: 106, column: 5)
!3462 = !DILocation(line: 109, column: 5, scope: !3461)
!3463 = !DILocation(line: 112, column: 1, scope: !3429)
!3464 = distinct !DISubprogram(name: "rpl_fflush", scope: !1006, file: !1006, line: 129, type: !3465, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !3469)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!18, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2858, line: 7, baseType: !1012)
!3469 = !{!3470}
!3470 = !DILocalVariable(name: "stream", arg: 1, scope: !3464, file: !1006, line: 129, type: !3467)
!3471 = !DILocation(line: 0, scope: !3464)
!3472 = !DILocation(line: 150, column: 14, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3464, file: !1006, line: 150, column: 7)
!3474 = !DILocation(line: 150, column: 22, scope: !3473)
!3475 = !DILocation(line: 150, column: 27, scope: !3473)
!3476 = !DILocation(line: 150, column: 7, scope: !3464)
!3477 = !DILocation(line: 151, column: 12, scope: !3473)
!3478 = !DILocation(line: 151, column: 5, scope: !3473)
!3479 = !DILocalVariable(name: "fp", arg: 1, scope: !3480, file: !1006, line: 41, type: !3467)
!3480 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1006, file: !1006, line: 41, type: !3481, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3467}
!3483 = !{!3479}
!3484 = !DILocation(line: 0, scope: !3480, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 156, column: 3, scope: !3464)
!3486 = !DILocation(line: 43, column: 11, scope: !3487, inlinedAt: !3485)
!3487 = distinct !DILexicalBlock(scope: !3480, file: !1006, line: 43, column: 7)
!3488 = !DILocation(line: 43, column: 18, scope: !3487, inlinedAt: !3485)
!3489 = !DILocation(line: 43, column: 7, scope: !3480, inlinedAt: !3485)
!3490 = !DILocation(line: 45, column: 5, scope: !3487, inlinedAt: !3485)
!3491 = !DILocation(line: 158, column: 10, scope: !3464)
!3492 = !DILocation(line: 158, column: 3, scope: !3464)
!3493 = !DILocation(line: 235, column: 1, scope: !3464)
!3494 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1047, file: !1047, line: 28, type: !3495, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3500)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!18, !3497, !3499, !18}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2858, line: 7, baseType: !1053)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "fp", arg: 1, scope: !3494, file: !1047, line: 28, type: !3497)
!3502 = !DILocalVariable(name: "offset", arg: 2, scope: !3494, file: !1047, line: 28, type: !3499)
!3503 = !DILocalVariable(name: "whence", arg: 3, scope: !3494, file: !1047, line: 28, type: !18)
!3504 = !DILocalVariable(name: "pos", scope: !3505, file: !1047, line: 117, type: !3499)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !1047, line: 113, column: 5)
!3506 = distinct !DILexicalBlock(scope: !3494, file: !1047, line: 52, column: 7)
!3507 = !DILocation(line: 0, scope: !3494)
!3508 = !DILocation(line: 52, column: 11, scope: !3506)
!3509 = !{!3305, !1123, i64 16}
!3510 = !DILocation(line: 52, column: 31, scope: !3506)
!3511 = !{!3305, !1123, i64 8}
!3512 = !DILocation(line: 52, column: 24, scope: !3506)
!3513 = !DILocation(line: 53, column: 7, scope: !3506)
!3514 = !DILocation(line: 53, column: 14, scope: !3506)
!3515 = !{!3305, !1123, i64 40}
!3516 = !DILocation(line: 53, column: 35, scope: !3506)
!3517 = !{!3305, !1123, i64 32}
!3518 = !DILocation(line: 53, column: 28, scope: !3506)
!3519 = !DILocation(line: 54, column: 7, scope: !3506)
!3520 = !DILocation(line: 54, column: 14, scope: !3506)
!3521 = !{!3305, !1123, i64 72}
!3522 = !DILocation(line: 54, column: 28, scope: !3506)
!3523 = !DILocation(line: 52, column: 7, scope: !3494)
!3524 = !DILocation(line: 117, column: 26, scope: !3505)
!3525 = !DILocation(line: 117, column: 19, scope: !3505)
!3526 = !DILocation(line: 0, scope: !3505)
!3527 = !DILocation(line: 118, column: 15, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3505, file: !1047, line: 118, column: 11)
!3529 = !DILocation(line: 118, column: 11, scope: !3505)
!3530 = !DILocation(line: 129, column: 11, scope: !3505)
!3531 = !DILocation(line: 129, column: 18, scope: !3505)
!3532 = !DILocation(line: 130, column: 11, scope: !3505)
!3533 = !DILocation(line: 130, column: 19, scope: !3505)
!3534 = !{!3305, !2304, i64 144}
!3535 = !DILocation(line: 161, column: 7, scope: !3505)
!3536 = !DILocation(line: 163, column: 10, scope: !3494)
!3537 = !DILocation(line: 163, column: 3, scope: !3494)
!3538 = !DILocation(line: 164, column: 1, scope: !3494)
