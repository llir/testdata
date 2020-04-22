; ModuleID = 'coreutils-8.32/src/nice.bc'
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
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"  -n, --adjustment=N   add integer N to the niceness (default 10)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !196
@.str.39 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !201
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !245
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !247
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !253
@.str.51 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.57, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.63, i32 0, i32 0), i8* null], align 16, !dbg !294
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !402
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !408
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !410
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.65 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.67 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.68 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.69 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.70 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !417
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !424
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !412
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !426
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !432
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.115 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1104 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1109, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i32 %0, metadata !1108, metadata !DIExpression()), !dbg !1129
  %3 = icmp eq i32 %0, 0, !dbg !1130
  br i1 %3, label %9, label %4, !dbg !1131

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1132, !tbaa !1134
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1132
  %7 = load i8*, i8** @program_name, align 8, !dbg !1132, !tbaa !1134
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1132
  br label %65, !dbg !1132

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1138
  %11 = load i8*, i8** @program_name, align 8, !dbg !1138, !tbaa !1134
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1138
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1139
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 -20, i32 19) #18, !dbg !1139
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #18, !dbg !1140
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !1134
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #18, !dbg !1140
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1143
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !1134
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !1143
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1144
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1134
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !1144
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1145
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !1134
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !1145
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1146
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1146
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !1112, metadata !DIExpression()) #18, !dbg !1147
  %29 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %29) #18, !dbg !1148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %29, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1125
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), metadata !1113, metadata !DIExpression()) #18, !dbg !1147
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  %30 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  br label %31, !dbg !1150

31:                                               ; preds = %36, %9
  %32 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %33 = phi %struct.infomap* [ %37, %36 ], [ %30, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  %34 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %32) #21, !dbg !1151
  %35 = icmp eq i32 %34, 0, !dbg !1151
  br i1 %35, label %41, label %36, !dbg !1150

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 1, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 0, !dbg !1153
  %39 = load i8*, i8** %38, align 8, !dbg !1153, !tbaa !1154
  %40 = icmp eq i8* %39, null, !dbg !1156
  br i1 %40, label %41, label %31, !dbg !1157, !llvm.loop !1158

41:                                               ; preds = %36, %31
  %42 = phi %struct.infomap* [ %37, %36 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !1114, metadata !DIExpression()) #18, !dbg !1147
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 1, !dbg !1159
  %44 = load i8*, i8** %43, align 8, !dbg !1159, !tbaa !1161
  %45 = icmp eq i8* %44, null, !dbg !1162
  %46 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %44, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %46, metadata !1113, metadata !DIExpression()) #18, !dbg !1147
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1164
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #18, !dbg !1164
  %49 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %49, metadata !1121, metadata !DIExpression()) #18, !dbg !1147
  %50 = icmp eq i8* %49, null, !dbg !1166
  br i1 %50, label %58, label %51, !dbg !1168

51:                                               ; preds = %41
  %52 = tail call i32 @strncmp(i8* nonnull %49, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #21, !dbg !1169
  %53 = icmp eq i32 %52, 0, !dbg !1169
  br i1 %53, label %58, label %54, !dbg !1170

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), i32 5) #18, !dbg !1171
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !1134
  %57 = tail call i32 @fputs_unlocked(i8* %55, %struct._IO_FILE* %56) #18, !dbg !1171
  br label %58, !dbg !1173

58:                                               ; preds = %41, %51, %54
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1174
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1174
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1175
  %62 = icmp eq i8* %46, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !1175
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1175
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* %46, i8* %63) #18, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %29) #18, !dbg !1176
  br label %65

65:                                               ; preds = %58, %4
  tail call void @exit(i32 %0) #22, !dbg !1177
  unreachable, !dbg !1177
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !64 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !69 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !133 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !22 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !30, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8** %1, metadata !31, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !1178
  %4 = load i8*, i8** %1, align 8, !dbg !1179, !tbaa !1134
  tail call void @set_program_name(i8* %4) #18, !dbg !1180
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1181
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1182
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1183
  call void @llvm.dbg.value(metadata i32 125, metadata !1184, metadata !DIExpression()), !dbg !1187
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !1189, !tbaa !1191
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1193
  call void @llvm.dbg.value(metadata i32 1, metadata !39, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !1178
  %9 = icmp sgt i32 %0, 1, !dbg !1194
  br i1 %9, label %10, label %73, !dbg !1195

10:                                               ; preds = %2
  %11 = bitcast i8** %1 to i64*, !dbg !1196
  br label %12, !dbg !1195

12:                                               ; preds = %10, %51
  %13 = phi i8* [ null, %10 ], [ %53, %51 ]
  %14 = phi i32 [ 1, %10 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !34, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %14, metadata !39, metadata !DIExpression()), !dbg !1178
  %15 = sext i32 %14 to i64, !dbg !1197
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !1197
  %17 = load i8*, i8** %16, align 8, !dbg !1197, !tbaa !1134
  call void @llvm.dbg.value(metadata i8* %17, metadata !40, metadata !DIExpression()), !dbg !1198
  %18 = load i8, i8* %17, align 1, !dbg !1199, !tbaa !1200
  %19 = icmp eq i8 %18, 45, !dbg !1201
  br i1 %19, label %20, label %34, !dbg !1202

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1203
  %22 = load i8, i8* %21, align 1, !dbg !1203, !tbaa !1200
  %23 = icmp eq i8 %22, 45, !dbg !1203
  %24 = icmp eq i8 %22, 43, !dbg !1203
  %25 = or i1 %23, %24, !dbg !1203
  %26 = select i1 %25, i64 2, i64 1, !dbg !1203
  %27 = getelementptr inbounds i8, i8* %17, i64 %26, !dbg !1203
  %28 = load i8, i8* %27, align 1, !dbg !1203, !tbaa !1200
  %29 = sext i8 %28 to i32, !dbg !1203
  %30 = add nsw i32 %29, -48, !dbg !1203
  %31 = icmp ult i32 %30, 10, !dbg !1203
  br i1 %31, label %32, label %34, !dbg !1204

32:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %21, metadata !34, metadata !DIExpression()), !dbg !1178
  %33 = add nsw i32 %14, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %33, metadata !39, metadata !DIExpression()), !dbg !1178
  br label %51, !dbg !1207

34:                                               ; preds = %20, %12
  %35 = add i32 %14, -1, !dbg !1208
  %36 = sub nsw i32 %0, %35, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %36, metadata !47, metadata !DIExpression()), !dbg !1196
  %37 = sext i32 %35 to i64, !dbg !1210
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !1210
  call void @llvm.dbg.value(metadata i8** %38, metadata !48, metadata !DIExpression()), !dbg !1196
  %39 = load i64, i64* %11, align 8, !dbg !1211, !tbaa !1134
  %40 = bitcast i8** %38 to i64*, !dbg !1212
  store i64 %39, i64* %40, align 8, !dbg !1212, !tbaa !1134
  store i32 0, i32* @optind, align 4, !dbg !1213, !tbaa !1191
  %41 = tail call i32 @getopt_long(i32 %36, i8** nonnull %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %41, metadata !44, metadata !DIExpression()), !dbg !1196
  %42 = load i32, i32* @optind, align 4, !dbg !1215, !tbaa !1191
  %43 = add i32 %35, %42, !dbg !1216
  call void @llvm.dbg.value(metadata i32 %43, metadata !39, metadata !DIExpression()), !dbg !1178
  switch i32 %41, label %50 [
    i32 110, label %44
    i32 -1, label %55
    i32 -130, label %46
    i32 -131, label %47
  ], !dbg !1217

44:                                               ; preds = %34
  %45 = load i8*, i8** @optarg, align 8, !dbg !1218, !tbaa !1134
  call void @llvm.dbg.value(metadata i8* %45, metadata !34, metadata !DIExpression()), !dbg !1178
  br label %51

46:                                               ; preds = %34
  tail call void @usage(i32 0) #23, !dbg !1220
  unreachable, !dbg !1220

47:                                               ; preds = %34
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1221, !tbaa !1134
  %49 = load i8*, i8** @Version, align 8, !dbg !1221, !tbaa !1134
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #18, !dbg !1221
  tail call void @exit(i32 0) #22, !dbg !1221
  unreachable, !dbg !1221

50:                                               ; preds = %34
  tail call void @usage(i32 125) #23, !dbg !1222
  unreachable, !dbg !1222

51:                                               ; preds = %32, %44
  %52 = phi i32 [ %33, %32 ], [ %43, %44 ], !dbg !1223
  %53 = phi i8* [ %21, %32 ], [ %45, %44 ], !dbg !1178
  call void @llvm.dbg.value(metadata i8* %53, metadata !34, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %52, metadata !39, metadata !DIExpression()), !dbg !1178
  %54 = icmp slt i32 %52, %0, !dbg !1194
  br i1 %54, label %12, label %55, !dbg !1195

55:                                               ; preds = %51, %34
  %56 = phi i8* [ %53, %51 ], [ %13, %34 ], !dbg !1178
  %57 = phi i32 [ %52, %51 ], [ %43, %34 ], !dbg !1224
  call void @llvm.dbg.value(metadata i8* %56, metadata !34, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %56, metadata !34, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %56, metadata !34, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %57, metadata !39, metadata !DIExpression()), !dbg !1178
  %58 = icmp eq i8* %56, null, !dbg !1225
  br i1 %58, label %73, label %59, !dbg !1226

59:                                               ; preds = %55
  %60 = bitcast i64* %3 to i8*, !dbg !1227
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #18, !dbg !1227
  call void @llvm.dbg.value(metadata i64* %3, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !1228
  %61 = call i32 @xstrtol(i8* nonnull %56, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1229
  %62 = icmp ugt i32 %61, 1, !dbg !1231
  br i1 %62, label %63, label %66, !dbg !1232

63:                                               ; preds = %59
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1233
  %65 = call i8* @quote(i8* nonnull %56) #18, !dbg !1233
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %64, i8* %65) #18, !dbg !1233
  unreachable, !dbg !1233

66:                                               ; preds = %59
  %67 = load i64, i64* %3, align 8, !dbg !1234, !tbaa !1235
  call void @llvm.dbg.value(metadata i64 %67, metadata !49, metadata !DIExpression()), !dbg !1228
  %68 = icmp slt i64 %67, 39, !dbg !1234
  %69 = select i1 %68, i64 %67, i64 39, !dbg !1234
  %70 = icmp sgt i64 %69, -39, !dbg !1234
  %71 = select i1 %70, i64 %69, i64 -39, !dbg !1234
  %72 = trunc i64 %71 to i32, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %72, metadata !33, metadata !DIExpression()), !dbg !1178
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #18, !dbg !1237
  br label %73, !dbg !1238

73:                                               ; preds = %55, %2, %66
  %74 = phi i1 [ true, %66 ], [ false, %55 ], [ false, %2 ]
  %75 = phi i32 [ %57, %66 ], [ %57, %55 ], [ 1, %2 ]
  %76 = phi i32 [ %72, %66 ], [ 10, %55 ], [ 10, %2 ], !dbg !1178
  call void @llvm.dbg.value(metadata i32 %76, metadata !33, metadata !DIExpression()), !dbg !1178
  %77 = icmp eq i32 %75, %0, !dbg !1239
  br i1 %77, label %78, label %92, !dbg !1241

78:                                               ; preds = %73
  br i1 %74, label %79, label %81, !dbg !1242

79:                                               ; preds = %78
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1244
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #18, !dbg !1247
  call void @usage(i32 125) #23, !dbg !1248
  unreachable, !dbg !1248

81:                                               ; preds = %78
  %82 = tail call i32* @__errno_location() #24, !dbg !1249
  store i32 0, i32* %82, align 4, !dbg !1250, !tbaa !1191
  %83 = call i32 @getpriority(i32 0, i32 0) #18, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %83, metadata !32, metadata !DIExpression()), !dbg !1178
  %84 = icmp eq i32 %83, -1, !dbg !1252
  br i1 %84, label %85, label %90, !dbg !1254

85:                                               ; preds = %81
  %86 = load i32, i32* %82, align 4, !dbg !1255, !tbaa !1191
  %87 = icmp eq i32 %86, 0, !dbg !1256
  br i1 %87, label %90, label %88, !dbg !1257

88:                                               ; preds = %85
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #18, !dbg !1258
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %86, i8* %89) #18, !dbg !1258
  unreachable, !dbg !1258

90:                                               ; preds = %85, %81
  %91 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %83) #18, !dbg !1259
  br label %127, !dbg !1260

92:                                               ; preds = %73
  %93 = tail call i32* @__errno_location() #24, !dbg !1261
  store i32 0, i32* %93, align 4, !dbg !1262, !tbaa !1191
  %94 = call i32 @getpriority(i32 0, i32 0) #18, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %94, metadata !32, metadata !DIExpression()), !dbg !1178
  %95 = icmp eq i32 %94, -1, !dbg !1264
  br i1 %95, label %96, label %101, !dbg !1266

96:                                               ; preds = %92
  %97 = load i32, i32* %93, align 4, !dbg !1267, !tbaa !1191
  %98 = icmp eq i32 %97, 0, !dbg !1268
  br i1 %98, label %101, label %99, !dbg !1269

99:                                               ; preds = %96
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #18, !dbg !1270
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %97, i8* %100) #18, !dbg !1270
  unreachable, !dbg !1270

101:                                              ; preds = %96, %92
  %102 = add nsw i32 %94, %76, !dbg !1271
  %103 = call i32 @setpriority(i32 0, i32 0, i32 %102) #18, !dbg !1272
  %104 = icmp eq i32 %103, 0, !dbg !1273
  call void @llvm.dbg.value(metadata i1 %104, metadata !37, metadata !DIExpression()), !dbg !1178
  br i1 %104, label %117, label %105, !dbg !1274

105:                                              ; preds = %101
  %106 = load i32, i32* %93, align 4, !dbg !1275, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %106, metadata !1278, metadata !DIExpression()), !dbg !1281
  %107 = icmp eq i32 %106, 13, !dbg !1283
  %108 = icmp eq i32 %106, 1, !dbg !1284
  %109 = or i1 %107, %108, !dbg !1284
  %110 = select i1 %109, i32 0, i32 125, !dbg !1285
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1286
  call void (i32, i32, i8*, ...) @error(i32 %110, i32 %106, i8* %111) #18, !dbg !1287
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1288, !tbaa !1134
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, metadata !1290, metadata !DIExpression()), !dbg !1299
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 0, !dbg !1301
  %114 = load i32, i32* %113, align 8, !dbg !1301, !tbaa !1302
  %115 = and i32 %114, 32, !dbg !1301
  %116 = icmp eq i32 %115, 0, !dbg !1288
  br i1 %116, label %117, label %127, !dbg !1305

117:                                              ; preds = %105, %101
  %118 = sext i32 %75 to i64, !dbg !1306
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !1306
  %120 = load i8*, i8** %119, align 8, !dbg !1306, !tbaa !1134
  %121 = call i32 @execvp(i8* %120, i8** nonnull %119) #18, !dbg !1307
  %122 = load i32, i32* %93, align 4, !dbg !1308, !tbaa !1191
  %123 = icmp eq i32 %122, 2, !dbg !1309
  %124 = select i1 %123, i32 127, i32 126, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %124, metadata !53, metadata !DIExpression()), !dbg !1178
  %125 = load i8*, i8** %119, align 8, !dbg !1310, !tbaa !1134
  %126 = call i8* @quote(i8* %125) #18, !dbg !1311
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %126) #18, !dbg !1312
  br label %127

127:                                              ; preds = %105, %117, %90
  %128 = phi i32 [ 0, %90 ], [ %124, %117 ], [ 125, %105 ], !dbg !1178
  ret i32 %128, !dbg !1313
}

; Function Attrs: nounwind
declare !dbg !137 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !140 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !143 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !150 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !177 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !181 i32 @getpriority(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !185 i32 @setpriority(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !188 i32 @execvp(i8*, i8**) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i8* %0, i8** @file_name, align 8, !dbg !1318, !tbaa !1134
  ret void, !dbg !1319
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1320 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1326, !tbaa !1327
  ret void, !dbg !1329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1330 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1335, !tbaa !1134
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1336
  %3 = icmp eq i32 %2, 0, !dbg !1337
  br i1 %3, label %22, label %4, !dbg !1338

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1339, !tbaa !1327, !range !1340
  %6 = icmp eq i8 %5, 0, !dbg !1339
  br i1 %6, label %11, label %7, !dbg !1341

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1342
  %9 = load i32, i32* %8, align 4, !dbg !1342, !tbaa !1191
  %10 = icmp eq i32 %9, 32, !dbg !1343
  br i1 %10, label %22, label %11, !dbg !1344

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #18, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %12, metadata !1332, metadata !DIExpression()), !dbg !1346
  %13 = load i8*, i8** @file_name, align 8, !dbg !1347, !tbaa !1134
  %14 = icmp eq i8* %13, null, !dbg !1347
  %15 = tail call i32* @__errno_location() #24, !dbg !1349
  %16 = load i32, i32* %15, align 4, !dbg !1349, !tbaa !1191
  br i1 %14, label %19, label %17, !dbg !1350

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1351
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1352
  br label %20, !dbg !1352

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #18, !dbg !1353
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1354, !tbaa !1191
  tail call void @_exit(i32 %21) #22, !dbg !1355
  unreachable, !dbg !1355

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1356, !tbaa !1134
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1358
  %25 = icmp eq i32 %24, 0, !dbg !1359
  br i1 %25, label %28, label %26, !dbg !1360

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1361, !tbaa !1191
  tail call void @_exit(i32 %27) #22, !dbg !1362
  unreachable, !dbg !1362

28:                                               ; preds = %22
  ret void, !dbg !1363
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1366, metadata !DIExpression()), !dbg !1369
  %2 = icmp eq i8* %0, null, !dbg !1370
  br i1 %2, label %3, label %6, !dbg !1372

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1373, !tbaa !1134
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.51, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1375
  tail call void @abort() #22, !dbg !1376
  unreachable, !dbg !1376

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %7, metadata !1367, metadata !DIExpression()), !dbg !1369
  %8 = icmp eq i8* %7, null, !dbg !1378
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1379
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1379
  call void @llvm.dbg.value(metadata i8* %10, metadata !1368, metadata !DIExpression()), !dbg !1369
  %11 = ptrtoint i8* %10 to i64, !dbg !1380
  %12 = ptrtoint i8* %0 to i64, !dbg !1380
  %13 = sub i64 %11, %12, !dbg !1380
  %14 = icmp sgt i64 %13, 6, !dbg !1382
  br i1 %14, label %15, label %24, !dbg !1383

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1384
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.52, i64 0, i64 0), i64 7) #21, !dbg !1385
  %18 = icmp eq i32 %17, 0, !dbg !1386
  br i1 %18, label %19, label %24, !dbg !1387

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1366, metadata !DIExpression()), !dbg !1369
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.53, i64 0, i64 0), i64 3) #21, !dbg !1388
  %21 = icmp eq i32 %20, 0, !dbg !1391
  br i1 %21, label %22, label %24, !dbg !1392

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %23, metadata !1366, metadata !DIExpression()), !dbg !1369
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1395, !tbaa !1134
  br label %24, !dbg !1396

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1366, metadata !DIExpression()), !dbg !1369
  store i8* %25, i8** @program_name, align 8, !dbg !1397, !tbaa !1134
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1398, !tbaa !1134
  ret void, !dbg !1399
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1400 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1405, metadata !DIExpression()), !dbg !1408
  %2 = tail call i32* @__errno_location() #24, !dbg !1409
  %3 = load i32, i32* %2, align 4, !dbg !1409, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %3, metadata !1406, metadata !DIExpression()), !dbg !1408
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1410
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1410
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1410
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1411
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1411
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1407, metadata !DIExpression()), !dbg !1408
  store i32 %3, i32* %2, align 4, !dbg !1412, !tbaa !1191
  ret %struct.quoting_options* %8, !dbg !1413
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1414 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1418, metadata !DIExpression()), !dbg !1419
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1420
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1420
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1421
  %5 = load i32, i32* %4, align 8, !dbg !1421, !tbaa !1422
  ret i32 %5, !dbg !1424
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1425 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1429, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %1, metadata !1430, metadata !DIExpression()), !dbg !1431
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1432
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1432
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1433
  store i32 %1, i32* %5, align 8, !dbg !1434, !tbaa !1422
  ret void, !dbg !1435
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1436 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1440, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %1, metadata !1441, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i32 %2, metadata !1442, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i8 %1, metadata !1443, metadata !DIExpression()), !dbg !1449
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1450
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1450
  %6 = lshr i8 %1, 5, !dbg !1451
  %7 = zext i8 %6 to i64, !dbg !1451
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1452
  call void @llvm.dbg.value(metadata i32* %8, metadata !1445, metadata !DIExpression()), !dbg !1449
  %9 = and i8 %1, 31, !dbg !1453
  %10 = zext i8 %9 to i32, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %10, metadata !1447, metadata !DIExpression()), !dbg !1449
  %11 = load i32, i32* %8, align 4, !dbg !1454, !tbaa !1191
  %12 = lshr i32 %11, %10, !dbg !1455
  %13 = and i32 %12, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i32 %13, metadata !1448, metadata !DIExpression()), !dbg !1449
  %14 = and i32 %2, 1, !dbg !1457
  %15 = xor i32 %13, %14, !dbg !1458
  %16 = shl i32 %15, %10, !dbg !1459
  %17 = xor i32 %16, %11, !dbg !1460
  store i32 %17, i32* %8, align 4, !dbg !1460, !tbaa !1191
  ret i32 %13, !dbg !1461
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1462 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1466, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 %1, metadata !1467, metadata !DIExpression()), !dbg !1469
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1470
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1472
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1466, metadata !DIExpression()), !dbg !1469
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1473
  %6 = load i32, i32* %5, align 4, !dbg !1473, !tbaa !1474
  call void @llvm.dbg.value(metadata i32 %6, metadata !1468, metadata !DIExpression()), !dbg !1469
  store i32 %1, i32* %5, align 4, !dbg !1475, !tbaa !1474
  ret i32 %6, !dbg !1476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1477 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1481, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %1, metadata !1482, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()), !dbg !1484
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1485
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1481, metadata !DIExpression()), !dbg !1484
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1488
  store i32 10, i32* %6, align 8, !dbg !1489, !tbaa !1422
  %7 = icmp ne i8* %1, null, !dbg !1490
  %8 = icmp ne i8* %2, null, !dbg !1492
  %9 = and i1 %7, %8, !dbg !1493
  br i1 %9, label %11, label %10, !dbg !1493

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1494
  unreachable, !dbg !1494

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1495
  store i8* %1, i8** %12, align 8, !dbg !1496, !tbaa !1497
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1498
  store i8* %2, i8** %13, align 8, !dbg !1499, !tbaa !1500
  ret void, !dbg !1501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1502 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1506, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %1, metadata !1507, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i8* %2, metadata !1508, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata i64 %3, metadata !1509, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1510, metadata !DIExpression()), !dbg !1514
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1515
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1511, metadata !DIExpression()), !dbg !1514
  %8 = tail call i32* @__errno_location() #24, !dbg !1516
  %9 = load i32, i32* %8, align 4, !dbg !1516, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %9, metadata !1512, metadata !DIExpression()), !dbg !1514
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1517
  %11 = load i32, i32* %10, align 8, !dbg !1517, !tbaa !1422
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1518
  %13 = load i32, i32* %12, align 4, !dbg !1518, !tbaa !1474
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1519
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1520
  %16 = load i8*, i8** %15, align 8, !dbg !1520, !tbaa !1497
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1521
  %18 = load i8*, i8** %17, align 8, !dbg !1521, !tbaa !1500
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1522
  call void @llvm.dbg.value(metadata i64 %19, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i32 %9, i32* %8, align 4, !dbg !1523, !tbaa !1191
  ret i64 %19, !dbg !1524
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1525 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1531, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %1, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %2, metadata !1533, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %3, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %4, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %5, metadata !1536, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32* %6, metadata !1537, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %7, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %8, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* null, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1544, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1545, metadata !DIExpression()), !dbg !1589
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1590
  %14 = icmp eq i64 %13, 1, !dbg !1591
  call void @llvm.dbg.value(metadata i1 %14, metadata !1546, metadata !DIExpression()), !dbg !1589
  %15 = lshr i32 %5, 1, !dbg !1592
  %16 = trunc i32 %15 to i8, !dbg !1592
  %17 = and i8 %16, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i8 %17, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1550, metadata !DIExpression()), !dbg !1589
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1593
  %19 = and i32 %5, 4, !dbg !1595
  %20 = icmp eq i32 %19, 0, !dbg !1595
  %21 = and i32 %5, 1, !dbg !1598
  %22 = icmp eq i32 %21, 0, !dbg !1598
  %23 = bitcast i64* %10 to i8*, !dbg !1601
  %24 = bitcast i32* %12 to i8*, !dbg !1602
  %25 = icmp eq i32* %6, null, !dbg !1603
  br label %26, !dbg !1605

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1606
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1607
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1608
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1609
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1589
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1610
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1611
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1612
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %38, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %37, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %36, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %35, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %34, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %33, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %32, metadata !1544, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %31, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %30, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %29, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %28, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %27, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1583), !dbg !1613
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
  ], !dbg !1614

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %35, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 5, metadata !1535, metadata !DIExpression()), !dbg !1589
  br label %92, !dbg !1615

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 5, metadata !1535, metadata !DIExpression()), !dbg !1589
  %42 = and i8 %35, 1, !dbg !1617
  %43 = icmp eq i8 %42, 0, !dbg !1617
  br i1 %43, label %44, label %92, !dbg !1615

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1619
  br i1 %45, label %92, label %46, !dbg !1622

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1619, !tbaa !1200
  br label %92, !dbg !1619

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.64, i64 0, i64 0), i32 %27), !dbg !1623
  call void @llvm.dbg.value(metadata i8* %48, metadata !1538, metadata !DIExpression()), !dbg !1589
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), i32 %27), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %49, metadata !1539, metadata !DIExpression()), !dbg !1589
  br label %50, !dbg !1628

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %51, metadata !1538, metadata !DIExpression()), !dbg !1589
  %53 = and i8 %35, 1, !dbg !1629
  %54 = icmp eq i8 %53, 0, !dbg !1629
  br i1 %54, label %55, label %70, !dbg !1631

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1541, metadata !DIExpression()), !dbg !1589
  %56 = load i8, i8* %51, align 1, !dbg !1632, !tbaa !1200
  %57 = icmp eq i8 %56, 0, !dbg !1635
  br i1 %57, label %70, label %58, !dbg !1635

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %61, metadata !1541, metadata !DIExpression()), !dbg !1589
  %62 = icmp ult i64 %61, %39, !dbg !1636
  br i1 %62, label %63, label %65, !dbg !1639

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1636
  store i8 %59, i8* %64, align 1, !dbg !1636, !tbaa !1200
  br label %65, !dbg !1636

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %66, metadata !1541, metadata !DIExpression()), !dbg !1589
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %67, metadata !1543, metadata !DIExpression()), !dbg !1589
  %68 = load i8, i8* %67, align 1, !dbg !1632, !tbaa !1200
  %69 = icmp eq i8 %68, 0, !dbg !1635
  br i1 %69, label %70, label %58, !dbg !1635, !llvm.loop !1641

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1643
  call void @llvm.dbg.value(metadata i64 %71, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %52, metadata !1543, metadata !DIExpression()), !dbg !1589
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %72, metadata !1544, metadata !DIExpression()), !dbg !1589
  br label %92, !dbg !1645

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1545, metadata !DIExpression()), !dbg !1589
  br label %74, !dbg !1646

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %75, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1547, metadata !DIExpression()), !dbg !1589
  br label %76, !dbg !1647

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1609
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %78, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %77, metadata !1545, metadata !DIExpression()), !dbg !1589
  %79 = and i8 %78, 1, !dbg !1648
  %80 = icmp eq i8 %79, 0, !dbg !1648
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1650
  br label %82, !dbg !1650

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1589
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1592
  call void @llvm.dbg.value(metadata i8 %84, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %83, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  %85 = and i8 %84, 1, !dbg !1651
  %86 = icmp eq i8 %85, 0, !dbg !1651
  br i1 %86, label %87, label %92, !dbg !1653

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1654
  br i1 %88, label %92, label %89, !dbg !1657

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1654, !tbaa !1200
  br label %92, !dbg !1654

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1547, metadata !DIExpression()), !dbg !1589
  br label %92, !dbg !1658

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1659
  unreachable, !dbg !1659

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1643
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %40 ], !dbg !1589
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1589
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1589
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %100, metadata !1547, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %98, metadata !1544, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %96, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %93, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 0, metadata !1540, metadata !DIExpression()), !dbg !1589
  %101 = and i8 %99, 1, !dbg !1660
  %102 = icmp ne i8 %101, 0, !dbg !1660
  %103 = icmp ne i32 %93, 2, !dbg !1660
  %104 = and i1 %103, %102, !dbg !1660
  %105 = icmp ne i64 %98, 0, !dbg !1660
  %106 = and i1 %105, %104, !dbg !1660
  %107 = icmp ugt i64 %98, 1, !dbg !1660
  %108 = and i8 %100, 1, !dbg !1662
  %109 = icmp eq i8 %108, 0, !dbg !1662
  %110 = icmp eq i32 %93, 2, !dbg !1665
  %111 = or i1 %103, %109, !dbg !1667
  %112 = icmp ne i8 %108, 0, !dbg !1669
  %113 = and i1 %110, %112, !dbg !1669
  %114 = xor i1 %102, true, !dbg !1670
  %115 = xor i1 %104, true, !dbg !1603
  %116 = and i1 %109, %115, !dbg !1603
  %117 = or i1 %25, %116, !dbg !1603
  %118 = and i8 %99, %100, !dbg !1671
  %119 = and i8 %118, 1, !dbg !1671
  %120 = icmp ne i8 %119, 0, !dbg !1671
  %121 = and i1 %120, %105, !dbg !1671
  br label %122, !dbg !1673

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1674
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1643
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1606
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1610
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1611
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1612
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %126, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %123, metadata !1540, metadata !DIExpression()), !dbg !1589
  %131 = icmp eq i64 %126, -1, !dbg !1675
  br i1 %131, label %132, label %136, !dbg !1676

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1677
  %134 = load i8, i8* %133, align 1, !dbg !1677, !tbaa !1200
  %135 = icmp eq i8 %134, 0, !dbg !1678
  br i1 %135, label %581, label %138, !dbg !1679

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1680
  br i1 %137, label %581, label %138, !dbg !1679

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1556, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 0, metadata !1558, metadata !DIExpression()), !dbg !1681
  br i1 %106, label %139, label %154, !dbg !1682

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1683
  %141 = and i1 %107, %131, !dbg !1684
  br i1 %141, label %142, label %144, !dbg !1684

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %143, metadata !1534, metadata !DIExpression()), !dbg !1589
  br label %144, !dbg !1686

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1534, metadata !DIExpression()), !dbg !1589
  %146 = icmp ugt i64 %140, %145, !dbg !1687
  br i1 %146, label %154, label %147, !dbg !1688

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1689
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1690
  %150 = icmp ne i32 %149, 0, !dbg !1691
  %151 = or i1 %150, %109, !dbg !1692
  %152 = xor i1 %150, true, !dbg !1692
  %153 = zext i1 %152 to i8, !dbg !1692
  br i1 %151, label %154, label %639, !dbg !1692

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1681
  call void @llvm.dbg.value(metadata i8 %156, metadata !1556, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %155, metadata !1534, metadata !DIExpression()), !dbg !1589
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1693
  %158 = load i8, i8* %157, align 1, !dbg !1693, !tbaa !1200
  call void @llvm.dbg.value(metadata i8 %158, metadata !1551, metadata !DIExpression()), !dbg !1681
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
  ], !dbg !1694

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1695

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1696

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1681
  %162 = and i8 %127, 1, !dbg !1699
  %163 = icmp eq i8 %162, 0, !dbg !1699
  %164 = and i1 %110, %163, !dbg !1699
  br i1 %164, label %165, label %181, !dbg !1699

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1701
  br i1 %166, label %167, label %169, !dbg !1705

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1701
  store i8 39, i8* %168, align 1, !dbg !1701, !tbaa !1200
  br label %169, !dbg !1701

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %170, metadata !1541, metadata !DIExpression()), !dbg !1589
  %171 = icmp ult i64 %170, %130, !dbg !1706
  br i1 %171, label %172, label %174, !dbg !1709

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1706
  store i8 36, i8* %173, align 1, !dbg !1706, !tbaa !1200
  br label %174, !dbg !1706

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %175, metadata !1541, metadata !DIExpression()), !dbg !1589
  %176 = icmp ult i64 %175, %130, !dbg !1710
  br i1 %176, label %177, label %179, !dbg !1713

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1710
  store i8 39, i8* %178, align 1, !dbg !1710, !tbaa !1200
  br label %179, !dbg !1710

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %180, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %181, !dbg !1714

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1589
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %183, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %182, metadata !1541, metadata !DIExpression()), !dbg !1589
  %184 = icmp ult i64 %182, %130, !dbg !1715
  br i1 %184, label %185, label %187, !dbg !1718

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1715
  store i8 92, i8* %186, align 1, !dbg !1715, !tbaa !1200
  br label %187, !dbg !1715

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %188, metadata !1541, metadata !DIExpression()), !dbg !1589
  br i1 %103, label %189, label %463, !dbg !1719

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1721
  %191 = icmp ult i64 %190, %155, !dbg !1722
  br i1 %191, label %192, label %463, !dbg !1723

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1724
  %194 = load i8, i8* %193, align 1, !dbg !1724, !tbaa !1200
  %195 = add i8 %194, -48, !dbg !1725
  %196 = icmp ult i8 %195, 10, !dbg !1725
  br i1 %196, label %197, label %463, !dbg !1725

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1726
  br i1 %198, label %199, label %201, !dbg !1730

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1726
  store i8 48, i8* %200, align 1, !dbg !1726, !tbaa !1200
  br label %201, !dbg !1726

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %202, metadata !1541, metadata !DIExpression()), !dbg !1589
  %203 = icmp ult i64 %202, %130, !dbg !1731
  br i1 %203, label %204, label %206, !dbg !1734

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1731
  store i8 48, i8* %205, align 1, !dbg !1731, !tbaa !1200
  br label %206, !dbg !1731

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %207, metadata !1541, metadata !DIExpression()), !dbg !1589
  br label %463, !dbg !1735

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1736

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1737

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1738

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1739

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1740
  %214 = icmp ult i64 %213, %155, !dbg !1741
  br i1 %214, label %215, label %463, !dbg !1742

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1743
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1744
  %218 = load i8, i8* %217, align 1, !dbg !1744, !tbaa !1200
  %219 = icmp eq i8 %218, 63, !dbg !1745
  br i1 %219, label %220, label %463, !dbg !1746

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1747
  %222 = load i8, i8* %221, align 1, !dbg !1747, !tbaa !1200
  %223 = sext i8 %222 to i32, !dbg !1747
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
  ], !dbg !1748

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1749

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i64 %213, metadata !1540, metadata !DIExpression()), !dbg !1589
  %226 = icmp ult i64 %124, %130, !dbg !1751
  br i1 %226, label %227, label %229, !dbg !1754

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1751
  store i8 63, i8* %228, align 1, !dbg !1751, !tbaa !1200
  br label %229, !dbg !1751

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %230, metadata !1541, metadata !DIExpression()), !dbg !1589
  %231 = icmp ult i64 %230, %130, !dbg !1755
  br i1 %231, label %232, label %234, !dbg !1758

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1755
  store i8 34, i8* %233, align 1, !dbg !1755, !tbaa !1200
  br label %234, !dbg !1755

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %235, metadata !1541, metadata !DIExpression()), !dbg !1589
  %236 = icmp ult i64 %235, %130, !dbg !1759
  br i1 %236, label %237, label %239, !dbg !1762

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1759
  store i8 34, i8* %238, align 1, !dbg !1759, !tbaa !1200
  br label %239, !dbg !1759

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %240, metadata !1541, metadata !DIExpression()), !dbg !1589
  %241 = icmp ult i64 %240, %130, !dbg !1763
  br i1 %241, label %242, label %244, !dbg !1766

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1763
  store i8 63, i8* %243, align 1, !dbg !1763, !tbaa !1200
  br label %244, !dbg !1763

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %245, metadata !1541, metadata !DIExpression()), !dbg !1589
  br label %463, !dbg !1767

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1555, metadata !DIExpression()), !dbg !1681
  br label %256, !dbg !1768

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1555, metadata !DIExpression()), !dbg !1681
  br label %256, !dbg !1769

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1555, metadata !DIExpression()), !dbg !1681
  br label %254, !dbg !1770

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1555, metadata !DIExpression()), !dbg !1681
  br label %254, !dbg !1771

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1555, metadata !DIExpression()), !dbg !1681
  br label %256, !dbg !1772

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1555, metadata !DIExpression()), !dbg !1681
  br i1 %110, label %252, label %253, !dbg !1773

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1774

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1777

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %255, metadata !1555, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.label(metadata !1584), !dbg !1779
  br i1 %111, label %256, label %625, !dbg !1780

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1778
  call void @llvm.dbg.value(metadata i8 %257, metadata !1555, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.label(metadata !1585), !dbg !1782
  br i1 %102, label %488, label %463, !dbg !1783

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1784

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1785, !tbaa !1200
  %261 = icmp eq i8 %260, 0, !dbg !1786
  br i1 %261, label %262, label %463, !dbg !1787

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1788
  br i1 %263, label %264, label %463, !dbg !1790

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1681
  br label %265, !dbg !1791

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1681
  call void @llvm.dbg.value(metadata i8 %266, metadata !1558, metadata !DIExpression()), !dbg !1681
  br i1 %111, label %463, label %625, !dbg !1792

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1558, metadata !DIExpression()), !dbg !1681
  br i1 %110, label %268, label %463, !dbg !1793

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1794

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1796
  %271 = icmp ne i64 %125, 0, !dbg !1798
  %272 = or i1 %271, %270, !dbg !1799
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1799
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %274, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %273, metadata !1542, metadata !DIExpression()), !dbg !1589
  %275 = icmp ult i64 %124, %274, !dbg !1800
  br i1 %275, label %276, label %278, !dbg !1803

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1800
  store i8 39, i8* %277, align 1, !dbg !1800, !tbaa !1200
  br label %278, !dbg !1800

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %279, metadata !1541, metadata !DIExpression()), !dbg !1589
  %280 = icmp ult i64 %279, %274, !dbg !1804
  br i1 %280, label %281, label %283, !dbg !1807

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1804
  store i8 92, i8* %282, align 1, !dbg !1804, !tbaa !1200
  br label %283, !dbg !1804

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %284, metadata !1541, metadata !DIExpression()), !dbg !1589
  %285 = icmp ult i64 %284, %274, !dbg !1808
  br i1 %285, label %286, label %288, !dbg !1811

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1808
  store i8 39, i8* %287, align 1, !dbg !1808, !tbaa !1200
  br label %288, !dbg !1808

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %289, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %463, !dbg !1812

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1813

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1559, metadata !DIExpression()), !dbg !1814
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1815
  %293 = load i16*, i16** %292, align 8, !dbg !1815, !tbaa !1134
  %294 = zext i8 %158 to i64, !dbg !1815
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1815
  %296 = load i16, i16* %295, align 2, !dbg !1815, !tbaa !1817
  %297 = lshr i16 %296, 14, !dbg !1818
  %298 = trunc i16 %297 to i8, !dbg !1818
  %299 = and i8 %298, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i8 %299, metadata !1562, metadata !DIExpression()), !dbg !1814
  br label %355, !dbg !1819

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1820
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1563, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8* %23, metadata !1822, metadata !DIExpression()) #18, !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()) #18, !dbg !1830
  call void @llvm.dbg.value(metadata i64 8, metadata !1829, metadata !DIExpression()) #18, !dbg !1830
  store i64 0, i64* %10, align 8, !dbg !1832
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 1, metadata !1562, metadata !DIExpression()), !dbg !1814
  %301 = icmp eq i64 %155, -1, !dbg !1833
  br i1 %301, label %302, label %304, !dbg !1835

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %303, metadata !1534, metadata !DIExpression()), !dbg !1589
  br label %304, !dbg !1837

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1681
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  br label %306, !dbg !1838

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1839
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1840
  call void @llvm.dbg.value(metadata i8 %308, metadata !1562, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1841
  %309 = add i64 %307, %123, !dbg !1842
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1843
  %311 = sub i64 %305, %309, !dbg !1844
  call void @llvm.dbg.value(metadata i32* %12, metadata !1569, metadata !DIExpression(DW_OP_deref)), !dbg !1602
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %312, metadata !1572, metadata !DIExpression()), !dbg !1602
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1846

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  %314 = icmp ugt i64 %305, %309, !dbg !1847
  br i1 %314, label %315, label %340, !dbg !1849

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1850
  br label %317, !dbg !1850

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1559, metadata !DIExpression()), !dbg !1814
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1851
  %321 = load i8, i8* %320, align 1, !dbg !1851, !tbaa !1200
  %322 = icmp eq i8 %321, 0, !dbg !1849
  br i1 %322, label %340, label %323, !dbg !1850

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %324, metadata !1559, metadata !DIExpression()), !dbg !1814
  %325 = add i64 %324, %123, !dbg !1853
  %326 = icmp ult i64 %325, %305, !dbg !1847
  br i1 %326, label %317, label %340, !dbg !1849, !llvm.loop !1854

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1855
  %329 = and i1 %113, %328, !dbg !1858
  call void @llvm.dbg.value(metadata i64 1, metadata !1573, metadata !DIExpression()), !dbg !1859
  br i1 %329, label %330, label %343, !dbg !1858

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1573, metadata !DIExpression()), !dbg !1859
  %332 = add i64 %331, %309, !dbg !1860
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1861
  %334 = load i8, i8* %333, align 1, !dbg !1861, !tbaa !1200
  %335 = sext i8 %334 to i32, !dbg !1861
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1862

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %337, metadata !1573, metadata !DIExpression()), !dbg !1859
  %338 = icmp eq i64 %337, %312, !dbg !1855
  br i1 %338, label %343, label %330, !dbg !1864, !llvm.loop !1865

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %308, metadata !1562, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %307, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %308, metadata !1562, metadata !DIExpression()), !dbg !1814
  br label %340, !dbg !1867

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1867
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1868, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %344, metadata !1569, metadata !DIExpression()), !dbg !1602
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !1870
  %346 = icmp eq i32 %345, 0, !dbg !1870
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1871
  call void @llvm.dbg.value(metadata i8 %347, metadata !1562, metadata !DIExpression()), !dbg !1814
  %348 = add i64 %312, %307, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %348, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 %347, metadata !1562, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %348, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1867
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1873
  %350 = icmp eq i32 %349, 0, !dbg !1874
  br i1 %350, label %306, label %351, !dbg !1875, !llvm.loop !1876

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1878
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 2, metadata !1535, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %99, metadata !1545, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %305, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !1867
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !1878
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1681
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1879
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %358, metadata !1562, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %357, metadata !1559, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i64 %356, metadata !1534, metadata !DIExpression()), !dbg !1589
  %359 = and i8 %358, 1, !dbg !1880
  %360 = icmp ne i8 %359, 0, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %359, metadata !1558, metadata !DIExpression()), !dbg !1681
  %361 = icmp ult i64 %357, 2, !dbg !1881
  %362 = or i1 %360, %114, !dbg !1882
  %363 = and i1 %361, %362, !dbg !1883
  br i1 %363, label %463, label %364, !dbg !1883

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %365, metadata !1580, metadata !DIExpression()), !dbg !1885
  br label %366, !dbg !1886

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1674
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1589
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1610
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1681
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1681
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1887
  call void @llvm.dbg.value(metadata i8 %372, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %371, metadata !1556, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %370, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %369, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %368, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %367, metadata !1540, metadata !DIExpression()), !dbg !1589
  br i1 %362, label %419, label %373, !dbg !1888

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1893

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1681
  %375 = and i8 %369, 1, !dbg !1896
  %376 = icmp eq i8 %375, 0, !dbg !1896
  %377 = and i1 %110, %376, !dbg !1896
  br i1 %377, label %378, label %394, !dbg !1896

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1898
  br i1 %379, label %380, label %382, !dbg !1902

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1898
  store i8 39, i8* %381, align 1, !dbg !1898, !tbaa !1200
  br label %382, !dbg !1898

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %383, metadata !1541, metadata !DIExpression()), !dbg !1589
  %384 = icmp ult i64 %383, %130, !dbg !1903
  br i1 %384, label %385, label %387, !dbg !1906

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1903
  store i8 36, i8* %386, align 1, !dbg !1903, !tbaa !1200
  br label %387, !dbg !1903

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %388, metadata !1541, metadata !DIExpression()), !dbg !1589
  %389 = icmp ult i64 %388, %130, !dbg !1907
  br i1 %389, label %390, label %392, !dbg !1910

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1907
  store i8 39, i8* %391, align 1, !dbg !1907, !tbaa !1200
  br label %392, !dbg !1907

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %393, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %394, !dbg !1911

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1589
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %396, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %395, metadata !1541, metadata !DIExpression()), !dbg !1589
  %397 = icmp ult i64 %395, %130, !dbg !1912
  br i1 %397, label %398, label %400, !dbg !1915

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1912
  store i8 92, i8* %399, align 1, !dbg !1912, !tbaa !1200
  br label %400, !dbg !1912

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %401, metadata !1541, metadata !DIExpression()), !dbg !1589
  %402 = icmp ult i64 %401, %130, !dbg !1916
  br i1 %402, label %403, label %407, !dbg !1919

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1916
  %405 = or i8 %404, 48, !dbg !1916
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1916
  store i8 %405, i8* %406, align 1, !dbg !1916, !tbaa !1200
  br label %407, !dbg !1916

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1919
  call void @llvm.dbg.value(metadata i64 %408, metadata !1541, metadata !DIExpression()), !dbg !1589
  %409 = icmp ult i64 %408, %130, !dbg !1920
  br i1 %409, label %410, label %415, !dbg !1923

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1920
  %412 = and i8 %411, 7, !dbg !1920
  %413 = or i8 %412, 48, !dbg !1920
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1920
  store i8 %413, i8* %414, align 1, !dbg !1920, !tbaa !1200
  br label %415, !dbg !1920

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %416, metadata !1541, metadata !DIExpression()), !dbg !1589
  %417 = and i8 %370, 7, !dbg !1924
  %418 = or i8 %417, 48, !dbg !1925
  call void @llvm.dbg.value(metadata i8 %418, metadata !1551, metadata !DIExpression()), !dbg !1681
  br label %428, !dbg !1926

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1927
  %421 = icmp eq i8 %420, 0, !dbg !1927
  br i1 %421, label %428, label %422, !dbg !1929

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1930
  br i1 %423, label %424, label %426, !dbg !1934

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1930
  store i8 92, i8* %425, align 1, !dbg !1930, !tbaa !1200
  br label %426, !dbg !1930

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %427, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1556, metadata !DIExpression()), !dbg !1681
  br label %428, !dbg !1935

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1589
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1610
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1681
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1681
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1681
  call void @llvm.dbg.value(metadata i8 %433, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %432, metadata !1556, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %431, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %430, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %429, metadata !1541, metadata !DIExpression()), !dbg !1589
  %434 = add i64 %367, 1, !dbg !1936
  %435 = icmp ugt i64 %365, %434, !dbg !1938
  br i1 %435, label %436, label %526, !dbg !1939

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1940
  %438 = icmp ne i8 %437, 0, !dbg !1940
  %439 = and i8 %433, 1, !dbg !1940
  %440 = icmp eq i8 %439, 0, !dbg !1940
  %441 = and i1 %438, %440, !dbg !1940
  br i1 %441, label %442, label %453, !dbg !1940

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1943
  br i1 %443, label %444, label %446, !dbg !1947

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1943
  store i8 39, i8* %445, align 1, !dbg !1943, !tbaa !1200
  br label %446, !dbg !1943

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %447, metadata !1541, metadata !DIExpression()), !dbg !1589
  %448 = icmp ult i64 %447, %130, !dbg !1948
  br i1 %448, label %449, label %451, !dbg !1951

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1948
  store i8 39, i8* %450, align 1, !dbg !1948, !tbaa !1200
  br label %451, !dbg !1948

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %452, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %453, !dbg !1952

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1953
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %455, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %454, metadata !1541, metadata !DIExpression()), !dbg !1589
  %456 = icmp ult i64 %454, %130, !dbg !1954
  br i1 %456, label %457, label %459, !dbg !1957

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1954
  store i8 %431, i8* %458, align 1, !dbg !1954, !tbaa !1200
  br label %459, !dbg !1954

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %460, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %434, metadata !1540, metadata !DIExpression()), !dbg !1589
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1958
  %462 = load i8, i8* %461, align 1, !dbg !1958, !tbaa !1200
  call void @llvm.dbg.value(metadata i8 %462, metadata !1551, metadata !DIExpression()), !dbg !1681
  br label %366, !dbg !1959, !llvm.loop !1960

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1674
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1589
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1606
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1963
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1589
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1589
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1681
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1681
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1681
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %472, metadata !1558, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %471, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %156, metadata !1556, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %470, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %469, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %468, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %467, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %466, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %465, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %464, metadata !1540, metadata !DIExpression()), !dbg !1589
  br i1 %117, label %486, label %474, !dbg !1964

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1965
  %476 = zext i8 %475 to i64, !dbg !1965
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1966
  %478 = load i32, i32* %477, align 4, !dbg !1966, !tbaa !1191
  %479 = and i8 %470, 31, !dbg !1967
  %480 = zext i8 %479 to i32, !dbg !1967
  %481 = shl nuw i32 1, %480, !dbg !1968
  %482 = and i32 %478, %481, !dbg !1968
  %483 = icmp eq i32 %482, 0, !dbg !1968
  %484 = icmp eq i8 %156, 0, !dbg !1969
  %485 = and i1 %484, %483, !dbg !1970
  br i1 %485, label %526, label %488, !dbg !1970

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1969
  br i1 %487, label %526, label %488, !dbg !1971

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1972
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1589
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1606
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1963
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1610
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1611
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1681
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1681
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %496, metadata !1558, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %495, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %494, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %493, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %492, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %491, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %490, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %489, metadata !1540, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1586), !dbg !1973
  br i1 %109, label %498, label %629, !dbg !1974

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1557, metadata !DIExpression()), !dbg !1681
  %499 = and i8 %493, 1, !dbg !1976
  %500 = icmp eq i8 %499, 0, !dbg !1976
  %501 = and i1 %110, %500, !dbg !1976
  br i1 %501, label %502, label %518, !dbg !1976

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1978
  br i1 %503, label %504, label %506, !dbg !1982

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1978
  store i8 39, i8* %505, align 1, !dbg !1978, !tbaa !1200
  br label %506, !dbg !1978

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %507, metadata !1541, metadata !DIExpression()), !dbg !1589
  %508 = icmp ult i64 %507, %497, !dbg !1983
  br i1 %508, label %509, label %511, !dbg !1986

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1983
  store i8 36, i8* %510, align 1, !dbg !1983, !tbaa !1200
  br label %511, !dbg !1983

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %512, metadata !1541, metadata !DIExpression()), !dbg !1589
  %513 = icmp ult i64 %512, %497, !dbg !1987
  br i1 %513, label %514, label %516, !dbg !1990

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1987
  store i8 39, i8* %515, align 1, !dbg !1987, !tbaa !1200
  br label %516, !dbg !1987

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %517, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 1, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %518, !dbg !1991

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1681
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %520, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %519, metadata !1541, metadata !DIExpression()), !dbg !1589
  %521 = icmp ult i64 %519, %497, !dbg !1992
  br i1 %521, label %522, label %524, !dbg !1995

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1992
  store i8 92, i8* %523, align 1, !dbg !1992, !tbaa !1200
  br label %524, !dbg !1992

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %525, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %536, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %535, metadata !1558, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %534, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %533, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %532, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %531, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %530, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %529, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %528, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %527, metadata !1540, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1587), !dbg !1996
  br label %553, !dbg !1997

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1972
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1589
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1606
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1963
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1610
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1611
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2000
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1681
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1681
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %535, metadata !1558, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %534, metadata !1557, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %533, metadata !1551, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %532, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %531, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %530, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %529, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %528, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %527, metadata !1540, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1587), !dbg !1996
  %537 = and i8 %531, 1, !dbg !1997
  %538 = icmp ne i8 %537, 0, !dbg !1997
  %539 = and i8 %534, 1, !dbg !1997
  %540 = icmp eq i8 %539, 0, !dbg !1997
  %541 = and i1 %538, %540, !dbg !1997
  br i1 %541, label %542, label %553, !dbg !1997

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2001
  br i1 %543, label %544, label %546, !dbg !2005

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2001
  store i8 39, i8* %545, align 1, !dbg !2001, !tbaa !1200
  br label %546, !dbg !2001

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %547, metadata !1541, metadata !DIExpression()), !dbg !1589
  %548 = icmp ult i64 %547, %536, !dbg !2006
  br i1 %548, label %549, label %551, !dbg !2009

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2006
  store i8 39, i8* %550, align 1, !dbg !2006, !tbaa !1200
  br label %551, !dbg !2006

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %552, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 0, metadata !1548, metadata !DIExpression()), !dbg !1589
  br label %553, !dbg !2010

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1681
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %562, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %561, metadata !1541, metadata !DIExpression()), !dbg !1589
  %563 = icmp ult i64 %561, %554, !dbg !2011
  br i1 %563, label %564, label %566, !dbg !2014

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2011
  store i8 %556, i8* %565, align 1, !dbg !2011, !tbaa !1200
  br label %566, !dbg !2011

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %567, metadata !1541, metadata !DIExpression()), !dbg !1589
  %568 = and i8 %555, 1, !dbg !2015
  %569 = icmp eq i8 %568, 0, !dbg !2015
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2017
  call void @llvm.dbg.value(metadata i8 %570, metadata !1550, metadata !DIExpression()), !dbg !1589
  br label %571, !dbg !2018

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1972
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1589
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1606
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1963
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1610
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1589
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1612
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %578, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %577, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %576, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %575, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %574, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %573, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %572, metadata !1540, metadata !DIExpression()), !dbg !1589
  %580 = add i64 %572, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %580, metadata !1540, metadata !DIExpression()), !dbg !1589
  br label %122, !dbg !2020, !llvm.loop !2021

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %127, metadata !1548, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %128, metadata !1549, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8 %129, metadata !1550, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  %583 = icmp eq i64 %124, 0, !dbg !2023
  %584 = and i1 %110, %583, !dbg !2025
  %585 = xor i1 %584, true, !dbg !2025
  %586 = or i1 %109, %585, !dbg !2025
  br i1 %586, label %587, label %629, !dbg !2025

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2026
  %589 = xor i1 %588, true, !dbg !2026
  %590 = and i8 %128, 1, !dbg !2028
  %591 = icmp eq i8 %590, 0, !dbg !2028
  %592 = or i1 %591, %589, !dbg !2026
  br i1 %592, label %602, label %593, !dbg !2026

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2029
  %595 = icmp eq i8 %594, 0, !dbg !2029
  br i1 %595, label %598, label %596, !dbg !2032

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %94, metadata !1538, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %95, metadata !1539, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %125, metadata !1542, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %582, metadata !1534, metadata !DIExpression()), !dbg !1589
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2033
  br label %645, !dbg !2034

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2035
  %600 = icmp ne i64 %125, 0, !dbg !2037
  %601 = and i1 %600, %599, !dbg !2038
  br i1 %601, label %26, label %602, !dbg !2038

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %130, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  %603 = icmp ne i8* %97, null, !dbg !2039
  %604 = and i1 %603, %109, !dbg !2041
  br i1 %604, label %605, label %620, !dbg !2041

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %124, metadata !1541, metadata !DIExpression()), !dbg !1589
  %606 = load i8, i8* %97, align 1, !dbg !2042, !tbaa !1200
  %607 = icmp eq i8 %606, 0, !dbg !2045
  br i1 %607, label %620, label %608, !dbg !2045

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1543, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %611, metadata !1541, metadata !DIExpression()), !dbg !1589
  %612 = icmp ult i64 %611, %130, !dbg !2046
  br i1 %612, label %613, label %615, !dbg !2049

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2046
  store i8 %609, i8* %614, align 1, !dbg !2046, !tbaa !1200
  br label %615, !dbg !2046

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %616, metadata !1541, metadata !DIExpression()), !dbg !1589
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2050
  call void @llvm.dbg.value(metadata i8* %617, metadata !1543, metadata !DIExpression()), !dbg !1589
  %618 = load i8, i8* %617, align 1, !dbg !2042, !tbaa !1200
  %619 = icmp eq i8 %618, 0, !dbg !2045
  br i1 %619, label %620, label %608, !dbg !2045, !llvm.loop !2051

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1643
  call void @llvm.dbg.value(metadata i64 %621, metadata !1541, metadata !DIExpression()), !dbg !1589
  %622 = icmp ult i64 %621, %130, !dbg !2053
  br i1 %622, label %623, label %645, !dbg !2055

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2056
  store i8 0, i8* %624, align 1, !dbg !2057, !tbaa !1200
  br label %645, !dbg !2056

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %630, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1588), !dbg !2058
  %627 = icmp eq i8 %101, 0, !dbg !2059
  %628 = select i1 %627, i32 2, i32 4, !dbg !2059
  br label %635, !dbg !2059

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1532, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %630, metadata !1534, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.label(metadata !1588), !dbg !2058
  %632 = icmp eq i32 %93, 2, !dbg !2061
  %633 = icmp eq i8 %101, 0, !dbg !2059
  %634 = select i1 %633, i32 2, i32 4, !dbg !2059
  br i1 %632, label %635, label %639, !dbg !2059

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2059

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1535, metadata !DIExpression()), !dbg !1589
  %643 = and i32 %5, -3, !dbg !2062
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2063
  br label %645, !dbg !2064

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2065
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2066 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2070, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2074
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2075
  call void @llvm.dbg.value(metadata i8* %3, metadata !2072, metadata !DIExpression()), !dbg !2074
  %4 = icmp eq i8* %3, %0, !dbg !2076
  br i1 %4, label %5, label %71, !dbg !2078

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2079
  call void @llvm.dbg.value(metadata i8* %6, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8* %6, metadata !2080, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8* undef, metadata !2086, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 85, metadata !2087, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 84, metadata !2088, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 70, metadata !2089, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 45, metadata !2090, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 56, metadata !2091, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 0, metadata !2095, metadata !DIExpression()), !dbg !2096
  %7 = load i8, i8* %6, align 1, !dbg !2099, !tbaa !1200
  %8 = and i8 %7, -33, !dbg !2099
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2099

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2101, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8* undef, metadata !2106, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 84, metadata !2107, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 70, metadata !2108, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 45, metadata !2109, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 56, metadata !2110, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2111, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2112, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2115
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2119
  %11 = load i8, i8* %10, align 1, !dbg !2119, !tbaa !1200
  %12 = and i8 %11, -33, !dbg !2119
  %13 = icmp eq i8 %12, 84, !dbg !2119
  br i1 %13, label %14, label %68, !dbg !2119

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2121, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* undef, metadata !2126, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 70, metadata !2127, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 45, metadata !2128, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 56, metadata !2129, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2134
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2138
  %16 = load i8, i8* %15, align 1, !dbg !2138, !tbaa !1200
  %17 = and i8 %16, -33, !dbg !2138
  %18 = icmp eq i8 %17, 70, !dbg !2138
  br i1 %18, label %19, label %68, !dbg !2138

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2140, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* undef, metadata !2145, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 45, metadata !2146, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 56, metadata !2147, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2149, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2152
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2156
  %21 = load i8, i8* %20, align 1, !dbg !2156, !tbaa !1200
  %22 = icmp eq i8 %21, 45, !dbg !2156
  br i1 %22, label %23, label %68, !dbg !2158

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2159, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* undef, metadata !2164, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 56, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2166, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2170
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2174
  %25 = load i8, i8* %24, align 1, !dbg !2174, !tbaa !1200
  %26 = icmp eq i8 %25, 56, !dbg !2174
  br i1 %26, label %27, label %68, !dbg !2176

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2177, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* undef, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2187
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2191
  %29 = load i8, i8* %28, align 1, !dbg !2191, !tbaa !1200
  %30 = icmp eq i8 %29, 0, !dbg !2191
  br i1 %30, label %31, label %68, !dbg !2193

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2194, !tbaa !1200
  %33 = icmp eq i8 %32, 96, !dbg !2195
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.68, i64 0, i64 0), !dbg !2194
  br label %71, !dbg !2196

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2101, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* undef, metadata !2106, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 66, metadata !2107, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 49, metadata !2108, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 56, metadata !2109, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 48, metadata !2110, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 51, metadata !2111, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 48, metadata !2112, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2113, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2114, metadata !DIExpression()), !dbg !2197
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2201
  %37 = load i8, i8* %36, align 1, !dbg !2201, !tbaa !1200
  %38 = and i8 %37, -33, !dbg !2201
  %39 = icmp eq i8 %38, 66, !dbg !2201
  br i1 %39, label %40, label %68, !dbg !2201

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2121, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* undef, metadata !2126, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 49, metadata !2127, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 56, metadata !2128, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 48, metadata !2129, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 51, metadata !2130, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 48, metadata !2131, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2202
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2204
  %42 = load i8, i8* %41, align 1, !dbg !2204, !tbaa !1200
  %43 = icmp eq i8 %42, 49, !dbg !2204
  br i1 %43, label %44, label %68, !dbg !2205

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2140, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* undef, metadata !2145, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 56, metadata !2146, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 48, metadata !2147, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 51, metadata !2148, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 48, metadata !2149, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 0, metadata !2150, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 0, metadata !2151, metadata !DIExpression()), !dbg !2206
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2208
  %46 = load i8, i8* %45, align 1, !dbg !2208, !tbaa !1200
  %47 = icmp eq i8 %46, 56, !dbg !2208
  br i1 %47, label %48, label %68, !dbg !2209

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2159, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* undef, metadata !2164, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 48, metadata !2165, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 51, metadata !2166, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 48, metadata !2167, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 0, metadata !2168, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 0, metadata !2169, metadata !DIExpression()), !dbg !2210
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2212
  %50 = load i8, i8* %49, align 1, !dbg !2212, !tbaa !1200
  %51 = icmp eq i8 %50, 48, !dbg !2212
  br i1 %51, label %52, label %68, !dbg !2213

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2177, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* undef, metadata !2182, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 51, metadata !2183, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 48, metadata !2184, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 0, metadata !2185, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2214
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2216
  %54 = load i8, i8* %53, align 1, !dbg !2216, !tbaa !1200
  %55 = icmp eq i8 %54, 51, !dbg !2216
  br i1 %55, label %56, label %68, !dbg !2217

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2218, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8* undef, metadata !2223, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 48, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2226, metadata !DIExpression()), !dbg !2227
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2231
  %58 = load i8, i8* %57, align 1, !dbg !2231, !tbaa !1200
  %59 = icmp eq i8 %58, 48, !dbg !2231
  br i1 %59, label %60, label %68, !dbg !2233

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2234, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* undef, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2240, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8 0, metadata !2241, metadata !DIExpression()), !dbg !2242
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2246
  %62 = load i8, i8* %61, align 1, !dbg !2246, !tbaa !1200
  %63 = icmp eq i8 %62, 0, !dbg !2246
  br i1 %63, label %64, label %68, !dbg !2248

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2249, !tbaa !1200
  %66 = icmp eq i8 %65, 96, !dbg !2250
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.70, i64 0, i64 0), !dbg !2249
  br label %71, !dbg !2251

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2252
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), !dbg !2253
  br label %71, !dbg !2254

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2074
  ret i8* %72, !dbg !2255
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !376 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !380 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2256 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2262, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()) #18, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()) #18, !dbg !2277
  call void @llvm.dbg.value(metadata i64* null, metadata !2270, metadata !DIExpression()) #18, !dbg !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2271, metadata !DIExpression()) #18, !dbg !2277
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2279
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2272, metadata !DIExpression()) #18, !dbg !2277
  %6 = tail call i32* @__errno_location() #24, !dbg !2280
  %7 = load i32, i32* %6, align 4, !dbg !2280, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %7, metadata !2273, metadata !DIExpression()) #18, !dbg !2277
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2281
  %9 = load i32, i32* %8, align 4, !dbg !2281, !tbaa !1474
  %10 = or i32 %9, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %10, metadata !2274, metadata !DIExpression()) #18, !dbg !2277
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2283
  %12 = load i32, i32* %11, align 8, !dbg !2283, !tbaa !1422
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2284
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2285
  %15 = load i8*, i8** %14, align 8, !dbg !2285, !tbaa !1497
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2286
  %17 = load i8*, i8** %16, align 8, !dbg !2286, !tbaa !1500
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2287
  %19 = add i64 %18, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %19, metadata !2275, metadata !DIExpression()) #18, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %19, metadata !2289, metadata !DIExpression()) #18, !dbg !2294
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %20, metadata !2276, metadata !DIExpression()) #18, !dbg !2277
  %21 = load i32, i32* %11, align 8, !dbg !2297, !tbaa !1422
  %22 = load i8*, i8** %14, align 8, !dbg !2298, !tbaa !1497
  %23 = load i8*, i8** %16, align 8, !dbg !2299, !tbaa !1500
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2300
  store i32 %7, i32* %6, align 4, !dbg !2301, !tbaa !1191
  ret i8* %20, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2264, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %1, metadata !2269, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64* %2, metadata !2270, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2271, metadata !DIExpression()), !dbg !2303
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2304
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2272, metadata !DIExpression()), !dbg !2303
  %7 = tail call i32* @__errno_location() #24, !dbg !2305
  %8 = load i32, i32* %7, align 4, !dbg !2305, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %8, metadata !2273, metadata !DIExpression()), !dbg !2303
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2306
  %10 = load i32, i32* %9, align 4, !dbg !2306, !tbaa !1474
  %11 = icmp ne i64* %2, null, !dbg !2307
  %12 = xor i1 %11, true, !dbg !2307
  %13 = zext i1 %12 to i32, !dbg !2307
  %14 = or i32 %10, %13, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %14, metadata !2274, metadata !DIExpression()), !dbg !2303
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2309
  %16 = load i32, i32* %15, align 8, !dbg !2309, !tbaa !1422
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2310
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2311
  %19 = load i8*, i8** %18, align 8, !dbg !2311, !tbaa !1497
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2312
  %21 = load i8*, i8** %20, align 8, !dbg !2312, !tbaa !1500
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2313
  %23 = add i64 %22, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %23, metadata !2275, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %23, metadata !2289, metadata !DIExpression()) #18, !dbg !2315
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2317
  call void @llvm.dbg.value(metadata i8* %24, metadata !2276, metadata !DIExpression()), !dbg !2303
  %25 = load i32, i32* %15, align 8, !dbg !2318, !tbaa !1422
  %26 = load i8*, i8** %18, align 8, !dbg !2319, !tbaa !1497
  %27 = load i8*, i8** %20, align 8, !dbg !2320, !tbaa !1500
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2321
  store i32 %8, i32* %7, align 4, !dbg !2322, !tbaa !1191
  br i1 %11, label %29, label %30, !dbg !2323

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2324, !tbaa !1235
  br label %30, !dbg !2326

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2328 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2332, !tbaa !1134
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 1, metadata !2331, metadata !DIExpression()), !dbg !2333
  %2 = load i32, i32* @nslots, align 4, !dbg !2334, !tbaa !1191
  %3 = icmp sgt i32 %2, 1, !dbg !2337
  br i1 %3, label %4, label %12, !dbg !2338

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2331, metadata !DIExpression()), !dbg !2333
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2339
  %7 = load i8*, i8** %6, align 8, !dbg !2339, !tbaa !2340
  tail call void @free(i8* %7) #18, !dbg !2342
  %8 = add nuw nsw i64 %5, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %8, metadata !2331, metadata !DIExpression()), !dbg !2333
  %9 = load i32, i32* @nslots, align 4, !dbg !2334, !tbaa !1191
  %10 = sext i32 %9 to i64, !dbg !2337
  %11 = icmp slt i64 %8, %10, !dbg !2337
  br i1 %11, label %4, label %12, !dbg !2338, !llvm.loop !2344

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2346
  %14 = load i8*, i8** %13, align 8, !dbg !2346, !tbaa !2340
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2348
  br i1 %15, label %17, label %16, !dbg !2349

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2350
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2352, !tbaa !2353
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2354, !tbaa !2340
  br label %17, !dbg !2355

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2356
  br i1 %18, label %21, label %19, !dbg !2358

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2359
  tail call void @free(i8* %20) #18, !dbg !2361
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2362, !tbaa !1134
  br label %21, !dbg !2363

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2364, !tbaa !1191
  ret void, !dbg !2365
}

; Function Attrs: nounwind
declare !dbg !355 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %1, metadata !2369, metadata !DIExpression()), !dbg !2370
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2371
  ret i8* %3, !dbg !2372
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2373 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8* %1, metadata !2378, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %2, metadata !2379, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2380, metadata !DIExpression()), !dbg !2392
  %5 = tail call i32* @__errno_location() #24, !dbg !2393
  %6 = load i32, i32* %5, align 4, !dbg !2393, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %6, metadata !2381, metadata !DIExpression()), !dbg !2392
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2394, !tbaa !1134
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2382, metadata !DIExpression()), !dbg !2392
  %8 = icmp slt i32 %0, 0, !dbg !2395
  br i1 %8, label %9, label %10, !dbg !2397

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2398
  unreachable, !dbg !2398

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2399, !tbaa !1191
  %12 = icmp sgt i32 %11, %0, !dbg !2400
  br i1 %12, label %34, label %13, !dbg !2401

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2402
  call void @llvm.dbg.value(metadata i1 %14, metadata !2383, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2386, metadata !DIExpression()), !dbg !2403
  %15 = icmp eq i32 %0, 2147483647, !dbg !2404
  br i1 %15, label %16, label %17, !dbg !2406

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2407
  unreachable, !dbg !2407

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2408
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2408
  %20 = add nuw nsw i32 %0, 1, !dbg !2409
  %21 = sext i32 %20 to i64, !dbg !2410
  %22 = shl nuw nsw i64 %21, 4, !dbg !2411
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2412
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2412
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2382, metadata !DIExpression()), !dbg !2392
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2413, !tbaa !1134
  br i1 %14, label %25, label %26, !dbg !2414

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2415, !tbaa.struct !2417
  br label %26, !dbg !2418

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2419, !tbaa !1191
  %28 = sext i32 %27 to i64, !dbg !2420
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2420
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2421
  %31 = sub nsw i32 %20, %27, !dbg !2422
  %32 = sext i32 %31 to i64, !dbg !2423
  %33 = shl nsw i64 %32, 4, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %30, metadata !1822, metadata !DIExpression()) #18, !dbg !2425
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()) #18, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %33, metadata !1829, metadata !DIExpression()) #18, !dbg !2425
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2427
  store i32 %20, i32* @nslots, align 4, !dbg !2428, !tbaa !1191
  br label %34, !dbg !2429

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2392
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2382, metadata !DIExpression()), !dbg !2392
  %36 = zext i32 %0 to i64, !dbg !2430
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2431
  %38 = load i64, i64* %37, align 8, !dbg !2431, !tbaa !2353
  call void @llvm.dbg.value(metadata i64 %38, metadata !2387, metadata !DIExpression()), !dbg !2432
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2433
  %40 = load i8*, i8** %39, align 8, !dbg !2433, !tbaa !2340
  call void @llvm.dbg.value(metadata i8* %40, metadata !2389, metadata !DIExpression()), !dbg !2432
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2434
  %42 = load i32, i32* %41, align 4, !dbg !2434, !tbaa !1474
  %43 = or i32 %42, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %43, metadata !2390, metadata !DIExpression()), !dbg !2432
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2436
  %45 = load i32, i32* %44, align 8, !dbg !2436, !tbaa !1422
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2437
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2438
  %48 = load i8*, i8** %47, align 8, !dbg !2438, !tbaa !1497
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2439
  %50 = load i8*, i8** %49, align 8, !dbg !2439, !tbaa !1500
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %51, metadata !2391, metadata !DIExpression()), !dbg !2432
  %52 = icmp ugt i64 %38, %51, !dbg !2441
  br i1 %52, label %63, label %53, !dbg !2443

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %54, metadata !2387, metadata !DIExpression()), !dbg !2432
  store i64 %54, i64* %37, align 8, !dbg !2446, !tbaa !2353
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2447
  br i1 %55, label %57, label %56, !dbg !2449

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2450
  br label %57, !dbg !2450

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2289, metadata !DIExpression()) #18, !dbg !2451
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %58, metadata !2389, metadata !DIExpression()), !dbg !2432
  store i8* %58, i8** %39, align 8, !dbg !2454, !tbaa !2340
  %59 = load i32, i32* %44, align 8, !dbg !2455, !tbaa !1422
  %60 = load i8*, i8** %47, align 8, !dbg !2456, !tbaa !1497
  %61 = load i8*, i8** %49, align 8, !dbg !2457, !tbaa !1500
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2458
  br label %63, !dbg !2459

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8* %64, metadata !2389, metadata !DIExpression()), !dbg !2432
  store i32 %6, i32* %5, align 4, !dbg !2460, !tbaa !1191
  ret i8* %64, !dbg !2461
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8* %1, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %2, metadata !2468, metadata !DIExpression()), !dbg !2469
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2470
  ret i8* %4, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()) #18, !dbg !2476
  call void @llvm.dbg.value(metadata i8* %0, metadata !2369, metadata !DIExpression()) #18, !dbg !2476
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2478
  ret i8* %2, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2480 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2484, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %1, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2466, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2467, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %1, metadata !2468, metadata !DIExpression()) #18, !dbg !2487
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2489
  ret i8* %3, !dbg !2490
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2491 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %1, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8* %2, metadata !2497, metadata !DIExpression()), !dbg !2499
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2498, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %1, metadata !2502, metadata !DIExpression()) #18, !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2507, metadata !DIExpression()) #18, !dbg !2510
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2510, !alias.scope !2511
  %6 = icmp eq i32 %1, 10, !dbg !2514
  br i1 %6, label %7, label %8, !dbg !2516

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2517, !noalias !2511
  unreachable, !dbg !2517

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2518
  store i32 %1, i32* %9, align 8, !dbg !2519, !tbaa !1422, !alias.scope !2511
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2520
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2521
  ret i8* %10, !dbg !2522
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2523 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2527, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2528, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %2, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 %3, metadata !2530, metadata !DIExpression()), !dbg !2532
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2533
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2533
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %1, metadata !2502, metadata !DIExpression()) #18, !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2507, metadata !DIExpression()) #18, !dbg !2537
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2537, !alias.scope !2538
  %7 = icmp eq i32 %1, 10, !dbg !2541
  br i1 %7, label %8, label %9, !dbg !2542

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2543, !noalias !2538
  unreachable, !dbg !2543

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2544
  store i32 %1, i32* %10, align 8, !dbg !2545, !tbaa !1422, !alias.scope !2538
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2546
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2547
  ret i8* %11, !dbg !2548
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2549 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2507, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2498, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %0, metadata !2553, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 0, metadata !2495, metadata !DIExpression()) #18, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %0, metadata !2496, metadata !DIExpression()) #18, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %1, metadata !2497, metadata !DIExpression()) #18, !dbg !2560
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()) #18, !dbg !2562
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2555, !alias.scope !2563
  %5 = icmp eq i32 %0, 10, !dbg !2566
  br i1 %5, label %6, label %7, !dbg !2567

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2568, !noalias !2563
  unreachable, !dbg !2568

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2569
  store i32 %0, i32* %8, align 8, !dbg !2570, !tbaa !1422, !alias.scope !2563
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2572
  ret i8* %9, !dbg !2573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2574 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2507, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2531, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %2, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2527, metadata !DIExpression()) #18, !dbg !2586
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()) #18, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !2529, metadata !DIExpression()) #18, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %2, metadata !2530, metadata !DIExpression()) #18, !dbg !2586
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()) #18, !dbg !2588
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2581, !alias.scope !2589
  %6 = icmp eq i32 %0, 10, !dbg !2592
  br i1 %6, label %7, label %8, !dbg !2593

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2594, !noalias !2589
  unreachable, !dbg !2594

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2595
  store i32 %0, i32* %9, align 8, !dbg !2596, !tbaa !1422, !alias.scope !2589
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2598
  ret i8* %10, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2600 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2604, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %1, metadata !2605, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 %2, metadata !2606, metadata !DIExpression()), !dbg !2608
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2609
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2611, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1440, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 %2, metadata !1441, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 1, metadata !1442, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 %2, metadata !1443, metadata !DIExpression()), !dbg !2613
  %6 = lshr i8 %2, 5, !dbg !2615
  %7 = zext i8 %6 to i64, !dbg !2615
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2616
  call void @llvm.dbg.value(metadata i32* %8, metadata !1445, metadata !DIExpression()), !dbg !2613
  %9 = and i8 %2, 31, !dbg !2617
  %10 = zext i8 %9 to i32, !dbg !2617
  call void @llvm.dbg.value(metadata i32 %10, metadata !1447, metadata !DIExpression()), !dbg !2613
  %11 = load i32, i32* %8, align 4, !dbg !2618, !tbaa !1191
  %12 = lshr i32 %11, %10, !dbg !2619
  %13 = and i32 %12, 1, !dbg !2620
  call void @llvm.dbg.value(metadata i32 %13, metadata !1448, metadata !DIExpression()), !dbg !2613
  %14 = xor i32 %13, 1, !dbg !2621
  %15 = shl i32 %14, %10, !dbg !2622
  %16 = xor i32 %15, %11, !dbg !2623
  store i32 %16, i32* %8, align 4, !dbg !2623, !tbaa !1191
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2624
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2625
  ret i8* %17, !dbg !2626
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2627 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2607, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8 %1, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2604, metadata !DIExpression()) #18, !dbg !2636
  call void @llvm.dbg.value(metadata i64 -1, metadata !2605, metadata !DIExpression()) #18, !dbg !2636
  call void @llvm.dbg.value(metadata i8 %1, metadata !2606, metadata !DIExpression()) #18, !dbg !2636
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2638, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1440, metadata !DIExpression()) #18, !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !1441, metadata !DIExpression()) #18, !dbg !2639
  call void @llvm.dbg.value(metadata i32 1, metadata !1442, metadata !DIExpression()) #18, !dbg !2639
  call void @llvm.dbg.value(metadata i8 %1, metadata !1443, metadata !DIExpression()) #18, !dbg !2639
  %5 = lshr i8 %1, 5, !dbg !2641
  %6 = zext i8 %5 to i64, !dbg !2641
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2642
  call void @llvm.dbg.value(metadata i32* %7, metadata !1445, metadata !DIExpression()) #18, !dbg !2639
  %8 = and i8 %1, 31, !dbg !2643
  %9 = zext i8 %8 to i32, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %9, metadata !1447, metadata !DIExpression()) #18, !dbg !2639
  %10 = load i32, i32* %7, align 4, !dbg !2644, !tbaa !1191
  %11 = lshr i32 %10, %9, !dbg !2645
  %12 = and i32 %11, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %12, metadata !1448, metadata !DIExpression()) #18, !dbg !2639
  %13 = xor i32 %12, 1, !dbg !2647
  %14 = shl i32 %13, %9, !dbg !2648
  %15 = xor i32 %14, %10, !dbg !2649
  store i32 %15, i32* %7, align 4, !dbg !2649, !tbaa !1191
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2651
  ret i8* %16, !dbg !2652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2653 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2607, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %0, metadata !2631, metadata !DIExpression()) #18, !dbg !2660
  call void @llvm.dbg.value(metadata i8 58, metadata !2632, metadata !DIExpression()) #18, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %0, metadata !2604, metadata !DIExpression()) #18, !dbg !2661
  call void @llvm.dbg.value(metadata i64 -1, metadata !2605, metadata !DIExpression()) #18, !dbg !2661
  call void @llvm.dbg.value(metadata i8 58, metadata !2606, metadata !DIExpression()) #18, !dbg !2661
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2663, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1440, metadata !DIExpression()) #18, !dbg !2664
  call void @llvm.dbg.value(metadata i8 58, metadata !1441, metadata !DIExpression()) #18, !dbg !2664
  call void @llvm.dbg.value(metadata i32 1, metadata !1442, metadata !DIExpression()) #18, !dbg !2664
  call void @llvm.dbg.value(metadata i8 58, metadata !1443, metadata !DIExpression()) #18, !dbg !2664
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2666
  call void @llvm.dbg.value(metadata i32* %4, metadata !1445, metadata !DIExpression()) #18, !dbg !2664
  call void @llvm.dbg.value(metadata i32 26, metadata !1447, metadata !DIExpression()) #18, !dbg !2664
  %5 = load i32, i32* %4, align 4, !dbg !2667, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %5, metadata !1448, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2664
  %6 = or i32 %5, 67108864, !dbg !2668
  store i32 %6, i32* %4, align 4, !dbg !2668, !tbaa !1191
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2669
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2670
  ret i8* %7, !dbg !2671
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2672 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2607, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %0, metadata !2674, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i64 %1, metadata !2675, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2604, metadata !DIExpression()) #18, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %1, metadata !2605, metadata !DIExpression()) #18, !dbg !2679
  call void @llvm.dbg.value(metadata i8 58, metadata !2606, metadata !DIExpression()) #18, !dbg !2679
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2681, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1440, metadata !DIExpression()) #18, !dbg !2682
  call void @llvm.dbg.value(metadata i8 58, metadata !1441, metadata !DIExpression()) #18, !dbg !2682
  call void @llvm.dbg.value(metadata i32 1, metadata !1442, metadata !DIExpression()) #18, !dbg !2682
  call void @llvm.dbg.value(metadata i8 58, metadata !1443, metadata !DIExpression()) #18, !dbg !2682
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2684
  call void @llvm.dbg.value(metadata i32* %5, metadata !1445, metadata !DIExpression()) #18, !dbg !2682
  call void @llvm.dbg.value(metadata i32 26, metadata !1447, metadata !DIExpression()) #18, !dbg !2682
  %6 = load i32, i32* %5, align 4, !dbg !2685, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %6, metadata !1448, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2682
  %7 = or i32 %6, 67108864, !dbg !2686
  store i32 %7, i32* %5, align 4, !dbg !2686, !tbaa !1191
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2687
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2688
  ret i8* %8, !dbg !2689
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2690 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2507, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2696
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %1, metadata !2693, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %2, metadata !2694, metadata !DIExpression()), !dbg !2698
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2699
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2699
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2695, metadata !DIExpression()), !dbg !2700
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2502, metadata !DIExpression()) #18, !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2507, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2696, !alias.scope !2703
  %8 = icmp eq i32 %1, 10, !dbg !2706
  br i1 %8, label %9, label %10, !dbg !2707

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2708, !noalias !2703
  unreachable, !dbg !2708

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2702
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2701
  store i32 %1, i32* %11, align 8, !dbg !2701, !tbaa.struct !2612
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2701
  %13 = bitcast i32* %12 to i8*, !dbg !2701
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2701, !tbaa.struct !2612
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1440, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !1441, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 1, metadata !1442, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 58, metadata !1443, metadata !DIExpression()), !dbg !2709
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2711
  call void @llvm.dbg.value(metadata i32* %14, metadata !1445, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 26, metadata !1447, metadata !DIExpression()), !dbg !2709
  %15 = load i32, i32* %14, align 4, !dbg !2712, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %15, metadata !1448, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2709
  %16 = or i32 %15, 67108864, !dbg !2713
  store i32 %16, i32* %14, align 4, !dbg !2713, !tbaa !1191
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2714
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2715
  ret i8* %17, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2717 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %1, metadata !2722, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %2, metadata !2723, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8* %3, metadata !2724, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %3, metadata !2733, metadata !DIExpression()) #18, !dbg !2738
  call void @llvm.dbg.value(metadata i64 -1, metadata !2734, metadata !DIExpression()) #18, !dbg !2738
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2739
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2740, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1481, metadata !DIExpression()) #18, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %1, metadata !1482, metadata !DIExpression()) #18, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()) #18, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1481, metadata !DIExpression()) #18, !dbg !2741
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2743
  store i32 10, i32* %7, align 8, !dbg !2744, !tbaa !1422
  %8 = icmp ne i8* %1, null, !dbg !2745
  %9 = icmp ne i8* %2, null, !dbg !2746
  %10 = and i1 %8, %9, !dbg !2747
  br i1 %10, label %12, label %11, !dbg !2747

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2748
  unreachable, !dbg !2748

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2749
  store i8* %1, i8** %13, align 8, !dbg !2750, !tbaa !1497
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2751
  store i8* %2, i8** %14, align 8, !dbg !2752, !tbaa !1500
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2753
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2754
  ret i8* %15, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2726 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %3, metadata !2733, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %4, metadata !2734, metadata !DIExpression()), !dbg !2756
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2725, metadata !DIExpression()), !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2759, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1481, metadata !DIExpression()) #18, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !1482, metadata !DIExpression()) #18, !dbg !2760
  call void @llvm.dbg.value(metadata i8* %2, metadata !1483, metadata !DIExpression()) #18, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1481, metadata !DIExpression()) #18, !dbg !2760
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2762
  store i32 10, i32* %8, align 8, !dbg !2763, !tbaa !1422
  %9 = icmp ne i8* %1, null, !dbg !2764
  %10 = icmp ne i8* %2, null, !dbg !2765
  %11 = and i1 %9, %10, !dbg !2766
  br i1 %11, label %13, label %12, !dbg !2766

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2767
  unreachable, !dbg !2767

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2768
  store i8* %1, i8** %14, align 8, !dbg !2769, !tbaa !1497
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2770
  store i8* %2, i8** %15, align 8, !dbg !2771, !tbaa !1500
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2772
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2773
  ret i8* %16, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2775 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2725, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %1, metadata !2780, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i8* %2, metadata !2724, metadata !DIExpression()) #18, !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i8* %2, metadata !2733, metadata !DIExpression()) #18, !dbg !2787
  call void @llvm.dbg.value(metadata i64 -1, metadata !2734, metadata !DIExpression()) #18, !dbg !2787
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2788
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2789, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1481, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !1482, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !1483, metadata !DIExpression()) #18, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1481, metadata !DIExpression()) #18, !dbg !2790
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2792
  store i32 10, i32* %6, align 8, !dbg !2793, !tbaa !1422
  %7 = icmp ne i8* %0, null, !dbg !2794
  %8 = icmp ne i8* %1, null, !dbg !2795
  %9 = and i1 %7, %8, !dbg !2796
  br i1 %9, label %11, label %10, !dbg !2796

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2797
  unreachable, !dbg !2797

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2798
  store i8* %0, i8** %12, align 8, !dbg !2799, !tbaa !1497
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2800
  store i8* %1, i8** %13, align 8, !dbg !2801, !tbaa !1500
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !2802
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2803
  ret i8* %14, !dbg !2804
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2805 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2725, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2809, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %1, metadata !2810, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i8* %2, metadata !2811, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %3, metadata !2812, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()) #18, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()) #18, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2732, metadata !DIExpression()) #18, !dbg !2816
  call void @llvm.dbg.value(metadata i8* %2, metadata !2733, metadata !DIExpression()) #18, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %3, metadata !2734, metadata !DIExpression()) #18, !dbg !2816
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2817
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2818, !tbaa.struct !2612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1481, metadata !DIExpression()) #18, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %0, metadata !1482, metadata !DIExpression()) #18, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %1, metadata !1483, metadata !DIExpression()) #18, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1481, metadata !DIExpression()) #18, !dbg !2819
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2821
  store i32 10, i32* %7, align 8, !dbg !2822, !tbaa !1422
  %8 = icmp ne i8* %0, null, !dbg !2823
  %9 = icmp ne i8* %1, null, !dbg !2824
  %10 = and i1 %8, %9, !dbg !2825
  br i1 %10, label %12, label %11, !dbg !2825

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2826
  unreachable, !dbg !2826

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2827
  store i8* %0, i8** %13, align 8, !dbg !2828, !tbaa !1497
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2829
  store i8* %1, i8** %14, align 8, !dbg !2830, !tbaa !1500
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !2831
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2832
  ret i8* %15, !dbg !2833
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2839, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2840, metadata !DIExpression()), !dbg !2841
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2842
  ret i8* %4, !dbg !2843
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2844 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %1, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()) #18, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %1, metadata !2840, metadata !DIExpression()) #18, !dbg !2851
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2853
  ret i8* %3, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2859, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %0, metadata !2838, metadata !DIExpression()) #18, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %1, metadata !2839, metadata !DIExpression()) #18, !dbg !2862
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()) #18, !dbg !2862
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2864
  ret i8* %3, !dbg !2865
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 0, metadata !2859, metadata !DIExpression()) #18, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()) #18, !dbg !2870
  call void @llvm.dbg.value(metadata i32 0, metadata !2838, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i64 -1, metadata !2840, metadata !DIExpression()) #18, !dbg !2872
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !2874
  ret i8* %2, !dbg !2875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2876 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2883, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %1, metadata !2884, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8* %3, metadata !2886, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i8** %4, metadata !2887, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %5, metadata !2888, metadata !DIExpression()), !dbg !2889
  %7 = icmp eq i8* %1, null, !dbg !2890
  br i1 %7, label %10, label %8, !dbg !2892

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !2893
  br label %12, !dbg !2893

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !2894
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #18, !dbg !2895
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !2895
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2896
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #18, !dbg !2897
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.80, i64 0, i64 0)) #18, !dbg !2897
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2898
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
  ], !dbg !2899

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #18, !dbg !2900
  %21 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !1134
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !2900
  br label %147, !dbg !2902

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #18, !dbg !2903
  %25 = load i8*, i8** %4, align 8, !dbg !2903, !tbaa !1134
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2903
  %27 = load i8*, i8** %26, align 8, !dbg !2903, !tbaa !1134
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !2903
  br label %147, !dbg !2904

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #18, !dbg !2905
  %31 = load i8*, i8** %4, align 8, !dbg !2905, !tbaa !1134
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2905
  %33 = load i8*, i8** %32, align 8, !dbg !2905, !tbaa !1134
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2905
  %35 = load i8*, i8** %34, align 8, !dbg !2905, !tbaa !1134
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !2905
  br label %147, !dbg !2906

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #18, !dbg !2907
  %39 = load i8*, i8** %4, align 8, !dbg !2907, !tbaa !1134
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2907
  %41 = load i8*, i8** %40, align 8, !dbg !2907, !tbaa !1134
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2907
  %43 = load i8*, i8** %42, align 8, !dbg !2907, !tbaa !1134
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2907
  %45 = load i8*, i8** %44, align 8, !dbg !2907, !tbaa !1134
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !2907
  br label %147, !dbg !2908

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #18, !dbg !2909
  %49 = load i8*, i8** %4, align 8, !dbg !2909, !tbaa !1134
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2909
  %51 = load i8*, i8** %50, align 8, !dbg !2909, !tbaa !1134
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2909
  %53 = load i8*, i8** %52, align 8, !dbg !2909, !tbaa !1134
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2909
  %55 = load i8*, i8** %54, align 8, !dbg !2909, !tbaa !1134
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2909
  %57 = load i8*, i8** %56, align 8, !dbg !2909, !tbaa !1134
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !2909
  br label %147, !dbg !2910

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #18, !dbg !2911
  %61 = load i8*, i8** %4, align 8, !dbg !2911, !tbaa !1134
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2911
  %63 = load i8*, i8** %62, align 8, !dbg !2911, !tbaa !1134
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2911
  %65 = load i8*, i8** %64, align 8, !dbg !2911, !tbaa !1134
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2911
  %67 = load i8*, i8** %66, align 8, !dbg !2911, !tbaa !1134
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2911
  %69 = load i8*, i8** %68, align 8, !dbg !2911, !tbaa !1134
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2911
  %71 = load i8*, i8** %70, align 8, !dbg !2911, !tbaa !1134
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !2911
  br label %147, !dbg !2912

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #18, !dbg !2913
  %75 = load i8*, i8** %4, align 8, !dbg !2913, !tbaa !1134
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2913
  %77 = load i8*, i8** %76, align 8, !dbg !2913, !tbaa !1134
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2913
  %79 = load i8*, i8** %78, align 8, !dbg !2913, !tbaa !1134
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2913
  %81 = load i8*, i8** %80, align 8, !dbg !2913, !tbaa !1134
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2913
  %83 = load i8*, i8** %82, align 8, !dbg !2913, !tbaa !1134
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2913
  %85 = load i8*, i8** %84, align 8, !dbg !2913, !tbaa !1134
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2913
  %87 = load i8*, i8** %86, align 8, !dbg !2913, !tbaa !1134
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !2913
  br label %147, !dbg !2914

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #18, !dbg !2915
  %91 = load i8*, i8** %4, align 8, !dbg !2915, !tbaa !1134
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2915
  %93 = load i8*, i8** %92, align 8, !dbg !2915, !tbaa !1134
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2915
  %95 = load i8*, i8** %94, align 8, !dbg !2915, !tbaa !1134
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2915
  %97 = load i8*, i8** %96, align 8, !dbg !2915, !tbaa !1134
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2915
  %99 = load i8*, i8** %98, align 8, !dbg !2915, !tbaa !1134
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2915
  %101 = load i8*, i8** %100, align 8, !dbg !2915, !tbaa !1134
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2915
  %103 = load i8*, i8** %102, align 8, !dbg !2915, !tbaa !1134
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2915
  %105 = load i8*, i8** %104, align 8, !dbg !2915, !tbaa !1134
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !2915
  br label %147, !dbg !2916

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #18, !dbg !2917
  %109 = load i8*, i8** %4, align 8, !dbg !2917, !tbaa !1134
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2917
  %111 = load i8*, i8** %110, align 8, !dbg !2917, !tbaa !1134
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2917
  %113 = load i8*, i8** %112, align 8, !dbg !2917, !tbaa !1134
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2917
  %115 = load i8*, i8** %114, align 8, !dbg !2917, !tbaa !1134
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2917
  %117 = load i8*, i8** %116, align 8, !dbg !2917, !tbaa !1134
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2917
  %119 = load i8*, i8** %118, align 8, !dbg !2917, !tbaa !1134
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2917
  %121 = load i8*, i8** %120, align 8, !dbg !2917, !tbaa !1134
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2917
  %123 = load i8*, i8** %122, align 8, !dbg !2917, !tbaa !1134
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2917
  %125 = load i8*, i8** %124, align 8, !dbg !2917, !tbaa !1134
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !2917
  br label %147, !dbg !2918

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.90, i64 0, i64 0), i32 5) #18, !dbg !2919
  %129 = load i8*, i8** %4, align 8, !dbg !2919, !tbaa !1134
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2919
  %131 = load i8*, i8** %130, align 8, !dbg !2919, !tbaa !1134
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2919
  %133 = load i8*, i8** %132, align 8, !dbg !2919, !tbaa !1134
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2919
  %135 = load i8*, i8** %134, align 8, !dbg !2919, !tbaa !1134
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2919
  %137 = load i8*, i8** %136, align 8, !dbg !2919, !tbaa !1134
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2919
  %139 = load i8*, i8** %138, align 8, !dbg !2919, !tbaa !1134
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2919
  %141 = load i8*, i8** %140, align 8, !dbg !2919, !tbaa !1134
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2919
  %143 = load i8*, i8** %142, align 8, !dbg !2919, !tbaa !1134
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2919
  %145 = load i8*, i8** %144, align 8, !dbg !2919, !tbaa !1134
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !2919
  br label %147, !dbg !2920

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2922 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2926, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %1, metadata !2927, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %2, metadata !2928, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8* %3, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i8** %4, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 0, metadata !2931, metadata !DIExpression()), !dbg !2932
  br label %6, !dbg !2933

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2935
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2936
  %9 = load i8*, i8** %8, align 8, !dbg !2936, !tbaa !1134
  %10 = icmp eq i8* %9, null, !dbg !2938
  %11 = add i64 %7, 1, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %11, metadata !2931, metadata !DIExpression()), !dbg !2932
  br i1 %10, label %12, label %6, !dbg !2938, !llvm.loop !2940

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %7, metadata !2931, metadata !DIExpression()), !dbg !2932
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2942
  ret void, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2944 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2955, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2956, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %2, metadata !2957, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %3, metadata !2958, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2959, metadata !DIExpression()), !dbg !2963
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2964
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2961, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 0, metadata !2960, metadata !DIExpression()), !dbg !2963
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2966
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2966
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2966
  %11 = load i32, i32* %8, align 8, !dbg !2969
  %12 = icmp ult i32 %11, 41, !dbg !2969
  br i1 %12, label %13, label %18, !dbg !2969

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2969
  %15 = zext i32 %11 to i64, !dbg !2969
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2969
  %17 = add nuw nsw i32 %11, 8, !dbg !2969
  store i32 %17, i32* %8, align 8, !dbg !2969
  br label %21, !dbg !2969

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2969
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2969
  store i8* %20, i8** %9, align 8, !dbg !2969
  br label %21, !dbg !2969

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2969
  %25 = load i8*, i8** %24, align 8, !dbg !2969
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2970
  store i8* %25, i8** %26, align 16, !dbg !2971, !tbaa !1134
  %27 = icmp eq i8* %25, null, !dbg !2972
  br i1 %27, label %30, label %28, !dbg !2973

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2960, metadata !DIExpression()), !dbg !2963
  %29 = icmp ult i32 %22, 41, !dbg !2969
  br i1 %29, label %35, label %32, !dbg !2969

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2974
  call void @llvm.dbg.value(metadata i64 %31, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %31, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2975
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !2976
  ret void, !dbg !2976

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2969
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2969
  store i8* %34, i8** %9, align 8, !dbg !2969
  br label %40, !dbg !2969

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2969
  %37 = zext i32 %22 to i64, !dbg !2969
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2969
  %39 = add nuw nsw i32 %22, 8, !dbg !2969
  store i32 %39, i32* %8, align 8, !dbg !2969
  br label %40, !dbg !2969

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2969
  %44 = load i8*, i8** %43, align 8, !dbg !2969
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2970
  store i8* %44, i8** %45, align 8, !dbg !2971, !tbaa !1134
  %46 = icmp eq i8* %44, null, !dbg !2972
  br i1 %46, label %30, label %47, !dbg !2973

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2960, metadata !DIExpression()), !dbg !2963
  %48 = icmp ult i32 %41, 41, !dbg !2969
  br i1 %48, label %52, label %49, !dbg !2969

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2969
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2969
  store i8* %51, i8** %9, align 8, !dbg !2969
  br label %57, !dbg !2969

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2969
  %54 = zext i32 %41 to i64, !dbg !2969
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2969
  %56 = add nuw nsw i32 %41, 8, !dbg !2969
  store i32 %56, i32* %8, align 8, !dbg !2969
  br label %57, !dbg !2969

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2969
  %61 = load i8*, i8** %60, align 8, !dbg !2969
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2970
  store i8* %61, i8** %62, align 16, !dbg !2971, !tbaa !1134
  %63 = icmp eq i8* %61, null, !dbg !2972
  br i1 %63, label %30, label %64, !dbg !2973

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2960, metadata !DIExpression()), !dbg !2963
  %65 = icmp ult i32 %58, 41, !dbg !2969
  br i1 %65, label %69, label %66, !dbg !2969

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2969
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2969
  store i8* %68, i8** %9, align 8, !dbg !2969
  br label %74, !dbg !2969

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2969
  %71 = zext i32 %58 to i64, !dbg !2969
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2969
  %73 = add nuw nsw i32 %58, 8, !dbg !2969
  store i32 %73, i32* %8, align 8, !dbg !2969
  br label %74, !dbg !2969

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2969
  %78 = load i8*, i8** %77, align 8, !dbg !2969
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2970
  store i8* %78, i8** %79, align 8, !dbg !2971, !tbaa !1134
  %80 = icmp eq i8* %78, null, !dbg !2972
  br i1 %80, label %30, label %81, !dbg !2973

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2960, metadata !DIExpression()), !dbg !2963
  %82 = icmp ult i32 %75, 41, !dbg !2969
  br i1 %82, label %86, label %83, !dbg !2969

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2969
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2969
  store i8* %85, i8** %9, align 8, !dbg !2969
  br label %91, !dbg !2969

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2969
  %88 = zext i32 %75 to i64, !dbg !2969
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2969
  %90 = add nuw nsw i32 %75, 8, !dbg !2969
  store i32 %90, i32* %8, align 8, !dbg !2969
  br label %91, !dbg !2969

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2969
  %95 = load i8*, i8** %94, align 8, !dbg !2969
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2970
  store i8* %95, i8** %96, align 16, !dbg !2971, !tbaa !1134
  %97 = icmp eq i8* %95, null, !dbg !2972
  br i1 %97, label %30, label %98, !dbg !2973

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2960, metadata !DIExpression()), !dbg !2963
  %99 = icmp ult i32 %92, 41, !dbg !2969
  br i1 %99, label %103, label %100, !dbg !2969

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2969
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2969
  store i8* %102, i8** %9, align 8, !dbg !2969
  br label %108, !dbg !2969

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2969
  %105 = zext i32 %92 to i64, !dbg !2969
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2969
  %107 = add nuw nsw i32 %92, 8, !dbg !2969
  store i32 %107, i32* %8, align 8, !dbg !2969
  br label %108, !dbg !2969

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2969
  %111 = load i8*, i8** %110, align 8, !dbg !2969
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2970
  store i8* %111, i8** %112, align 8, !dbg !2971, !tbaa !1134
  %113 = icmp eq i8* %111, null, !dbg !2972
  br i1 %113, label %30, label %114, !dbg !2973

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2960, metadata !DIExpression()), !dbg !2963
  %115 = load i8*, i8** %9, align 8, !dbg !2969
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2969
  store i8* %116, i8** %9, align 8, !dbg !2969
  %117 = bitcast i8* %115 to i8**, !dbg !2969
  %118 = load i8*, i8** %117, align 8, !dbg !2969
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2970
  store i8* %118, i8** %119, align 16, !dbg !2971, !tbaa !1134
  %120 = icmp eq i8* %118, null, !dbg !2972
  br i1 %120, label %30, label %121, !dbg !2973

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2960, metadata !DIExpression()), !dbg !2963
  %122 = load i8*, i8** %9, align 8, !dbg !2969
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2969
  store i8* %123, i8** %9, align 8, !dbg !2969
  %124 = bitcast i8* %122 to i8**, !dbg !2969
  %125 = load i8*, i8** %124, align 8, !dbg !2969
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2970
  store i8* %125, i8** %126, align 8, !dbg !2971, !tbaa !1134
  %127 = icmp eq i8* %125, null, !dbg !2972
  br i1 %127, label %30, label %128, !dbg !2973

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2960, metadata !DIExpression()), !dbg !2963
  %129 = load i8*, i8** %9, align 8, !dbg !2969
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2969
  store i8* %130, i8** %9, align 8, !dbg !2969
  %131 = bitcast i8* %129 to i8**, !dbg !2969
  %132 = load i8*, i8** %131, align 8, !dbg !2969
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2970
  store i8* %132, i8** %133, align 16, !dbg !2971, !tbaa !1134
  %134 = icmp eq i8* %132, null, !dbg !2972
  br i1 %134, label %30, label %135, !dbg !2973

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2960, metadata !DIExpression()), !dbg !2963
  %136 = load i8*, i8** %9, align 8, !dbg !2969
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2969
  store i8* %137, i8** %9, align 8, !dbg !2969
  %138 = bitcast i8* %136 to i8**, !dbg !2969
  %139 = load i8*, i8** %138, align 8, !dbg !2969
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2970
  store i8* %139, i8** %140, align 8, !dbg !2971, !tbaa !1134
  %141 = icmp eq i8* %139, null, !dbg !2972
  %142 = select i1 %141, i64 9, i64 10, !dbg !2973
  br label %30, !dbg !2973
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2977 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2981, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2982, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %2, metadata !2983, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %3, metadata !2984, metadata !DIExpression()), !dbg !2991
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2992
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2985, metadata !DIExpression()), !dbg !2993
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2994
  call void @llvm.va_start(i8* nonnull %6), !dbg !2994
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2995
  call void @llvm.va_end(i8* nonnull %6), !dbg !2996
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !2997
  ret void, !dbg !2997
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2998 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2999, !tbaa !1134
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2999
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #18, !dbg !3000
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.94, i64 0, i64 0)) #18, !dbg !3000
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.95, i64 0, i64 0), i32 5) #18, !dbg !3001
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.96, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.97, i64 0, i64 0)) #18, !dbg !3001
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.98, i64 0, i64 0), i32 5) #18, !dbg !3002
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.99, i64 0, i64 0)) #18, !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3004 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3010
  %3 = udiv i64 9223372036854775807, %1, !dbg !3011
  %4 = icmp ult i64 %3, %0, !dbg !3011
  br i1 %4, label %5, label %6, !dbg !3013

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3014
  unreachable, !dbg !3014

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %7, metadata !3016, metadata !DIExpression()) #18, !dbg !3022
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %8, metadata !3021, metadata !DIExpression()) #18, !dbg !3022
  %9 = icmp eq i8* %8, null, !dbg !3025
  %10 = icmp ne i64 %7, 0, !dbg !3027
  %11 = and i1 %10, %9, !dbg !3028
  br i1 %11, label %12, label %13, !dbg !3028

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3029
  unreachable, !dbg !3029

13:                                               ; preds = %6
  ret i8* %8, !dbg !3030
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3017 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3031
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %2, metadata !3021, metadata !DIExpression()), !dbg !3031
  %3 = icmp eq i8* %2, null, !dbg !3033
  %4 = icmp ne i64 %0, 0, !dbg !3034
  %5 = and i1 %4, %3, !dbg !3035
  br i1 %5, label %6, label %7, !dbg !3035

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3036
  unreachable, !dbg !3036

7:                                                ; preds = %1
  ret i8* %2, !dbg !3037
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %2, metadata !3044, metadata !DIExpression()), !dbg !3045
  %4 = udiv i64 9223372036854775807, %2, !dbg !3046
  %5 = icmp ult i64 %4, %1, !dbg !3046
  br i1 %5, label %6, label %7, !dbg !3048

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3049
  unreachable, !dbg !3049

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %8, metadata !3056, metadata !DIExpression()) #18, !dbg !3057
  %9 = icmp eq i64 %8, 0, !dbg !3059
  %10 = icmp ne i8* %0, null, !dbg !3061
  %11 = and i1 %10, %9, !dbg !3062
  br i1 %11, label %12, label %13, !dbg !3062

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3063
  br label %19, !dbg !3065

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %14, metadata !3051, metadata !DIExpression()) #18, !dbg !3057
  %15 = icmp eq i8* %14, null, !dbg !3067
  %16 = icmp ne i64 %8, 0, !dbg !3069
  %17 = and i1 %16, %15, !dbg !3070
  br i1 %17, label %18, label %19, !dbg !3070

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3071
  unreachable, !dbg !3071

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3057
  ret i8* %20, !dbg !3072
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3052 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3056, metadata !DIExpression()), !dbg !3073
  %3 = icmp eq i64 %1, 0, !dbg !3074
  %4 = icmp ne i8* %0, null, !dbg !3075
  %5 = and i1 %4, %3, !dbg !3076
  br i1 %5, label %6, label %7, !dbg !3076

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3077
  br label %13, !dbg !3078

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %8, metadata !3051, metadata !DIExpression()), !dbg !3073
  %9 = icmp eq i8* %8, null, !dbg !3080
  %10 = icmp ne i64 %1, 0, !dbg !3081
  %11 = and i1 %10, %9, !dbg !3082
  br i1 %11, label %12, label %13, !dbg !3082

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3083
  unreachable, !dbg !3083

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3073
  ret i8* %14, !dbg !3084
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !491, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64* %1, metadata !492, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %2, metadata !493, metadata !DIExpression()), !dbg !3085
  %4 = load i64, i64* %1, align 8, !dbg !3086, !tbaa !1235
  call void @llvm.dbg.value(metadata i64 %4, metadata !494, metadata !DIExpression()), !dbg !3085
  %5 = icmp eq i8* %0, null, !dbg !3087
  br i1 %5, label %6, label %20, !dbg !3089

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3090
  br i1 %7, label %8, label %13, !dbg !3093

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %9, metadata !494, metadata !DIExpression()), !dbg !3085
  %10 = icmp ugt i64 %2, 128, !dbg !3096
  %11 = zext i1 %10 to i64, !dbg !3096
  %12 = add nuw nsw i64 %9, %11, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %12, metadata !494, metadata !DIExpression()), !dbg !3085
  br label %13, !dbg !3098

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3085
  call void @llvm.dbg.value(metadata i64 %14, metadata !494, metadata !DIExpression()), !dbg !3085
  %15 = udiv i64 9223372036854775807, %2, !dbg !3099
  %16 = icmp ult i64 %15, %14, !dbg !3099
  br i1 %16, label %19, label %17, !dbg !3101

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !494, metadata !DIExpression()), !dbg !3085
  store i64 %14, i64* %1, align 8, !dbg !3102, !tbaa !1235
  %18 = mul i64 %14, %2, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #18, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %28, metadata !3056, metadata !DIExpression()) #18, !dbg !3104
  br label %31, !dbg !3106

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3107
  unreachable, !dbg !3107

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3108
  %22 = icmp ugt i64 %21, %4, !dbg !3111
  br i1 %22, label %24, label %23, !dbg !3112

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3113
  unreachable, !dbg !3113

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3114
  %26 = add nuw i64 %4, 1, !dbg !3115
  %27 = add i64 %26, %25, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %27, metadata !494, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %27, metadata !494, metadata !DIExpression()), !dbg !3085
  store i64 %27, i64* %1, align 8, !dbg !3102, !tbaa !1235
  %28 = mul i64 %27, %2, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #18, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %28, metadata !3056, metadata !DIExpression()) #18, !dbg !3104
  %29 = icmp eq i64 %28, 0, !dbg !3117
  br i1 %29, label %30, label %31, !dbg !3106

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3118
  br label %38, !dbg !3119

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %33, metadata !3051, metadata !DIExpression()) #18, !dbg !3104
  %34 = icmp eq i8* %33, null, !dbg !3121
  %35 = icmp ne i64 %32, 0, !dbg !3122
  %36 = and i1 %35, %34, !dbg !3123
  br i1 %36, label %37, label %38, !dbg !3123

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3124
  unreachable, !dbg !3124

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3104
  ret i8* %39, !dbg !3125
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3126 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()) #18, !dbg !3130
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3132
  call void @llvm.dbg.value(metadata i8* %2, metadata !3021, metadata !DIExpression()) #18, !dbg !3130
  %3 = icmp eq i8* %2, null, !dbg !3133
  %4 = icmp ne i64 %0, 0, !dbg !3134
  %5 = and i1 %4, %3, !dbg !3135
  br i1 %5, label %6, label %7, !dbg !3135

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3136
  unreachable, !dbg !3136

7:                                                ; preds = %1
  ret i8* %2, !dbg !3137
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3138 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64* %1, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %0, metadata !491, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i64* %1, metadata !492, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i64 1, metadata !493, metadata !DIExpression()) #18, !dbg !3145
  %3 = load i64, i64* %1, align 8, !dbg !3147, !tbaa !1235
  call void @llvm.dbg.value(metadata i64 %3, metadata !494, metadata !DIExpression()) #18, !dbg !3145
  %4 = icmp eq i8* %0, null, !dbg !3148
  br i1 %4, label %5, label %12, !dbg !3149

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3150
  br i1 %6, label %9, label %7, !dbg !3151

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !494, metadata !DIExpression()) #18, !dbg !3145
  %8 = icmp slt i64 %3, 0, !dbg !3152
  br i1 %8, label %11, label %9, !dbg !3153

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !494, metadata !DIExpression()) #18, !dbg !3145
  store i64 %10, i64* %1, align 8, !dbg !3154, !tbaa !1235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %18, metadata !3056, metadata !DIExpression()) #18, !dbg !3155
  br label %21, !dbg !3157

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3158
  unreachable, !dbg !3158

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3159
  br i1 %13, label %15, label %14, !dbg !3160

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3161
  unreachable, !dbg !3161

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3162
  %17 = add nuw nsw i64 %3, 1, !dbg !3163
  %18 = add nuw nsw i64 %17, %16, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %18, metadata !494, metadata !DIExpression()) #18, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %18, metadata !494, metadata !DIExpression()) #18, !dbg !3145
  store i64 %18, i64* %1, align 8, !dbg !3154, !tbaa !1235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #18, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %18, metadata !3056, metadata !DIExpression()) #18, !dbg !3155
  %19 = icmp eq i64 %18, 0, !dbg !3165
  br i1 %19, label %20, label %21, !dbg !3157

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3166
  br label %28, !dbg !3167

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3168
  call void @llvm.dbg.value(metadata i8* %23, metadata !3051, metadata !DIExpression()) #18, !dbg !3155
  %24 = icmp eq i8* %23, null, !dbg !3169
  %25 = icmp ne i64 %22, 0, !dbg !3170
  %26 = and i1 %25, %24, !dbg !3171
  br i1 %26, label %27, label %28, !dbg !3171

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3172
  unreachable, !dbg !3172

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3155
  ret i8* %29, !dbg !3173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3174 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %0, metadata !3178, metadata !DIExpression()) #18, !dbg !3183
  call void @llvm.dbg.value(metadata i64 1, metadata !3181, metadata !DIExpression()) #18, !dbg !3183
  %2 = icmp slt i64 %0, 0, !dbg !3185
  br i1 %2, label %6, label %3, !dbg !3187

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %4, metadata !3182, metadata !DIExpression()) #18, !dbg !3183
  %5 = icmp eq i8* %4, null, !dbg !3189
  br i1 %5, label %6, label %7, !dbg !3190

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3191
  unreachable, !dbg !3191

7:                                                ; preds = %3
  ret i8* %4, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3178, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3193
  %3 = udiv i64 9223372036854775807, %1, !dbg !3194
  %4 = icmp ult i64 %3, %0, !dbg !3194
  br i1 %4, label %8, label %5, !dbg !3195

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %6, metadata !3182, metadata !DIExpression()), !dbg !3193
  %7 = icmp eq i8* %6, null, !dbg !3197
  br i1 %7, label %8, label %9, !dbg !3198

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3199
  unreachable, !dbg !3199

9:                                                ; preds = %5
  ret i8* %6, !dbg !3200
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3201 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()) #18, !dbg !3208
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %3, metadata !3021, metadata !DIExpression()) #18, !dbg !3208
  %4 = icmp eq i8* %3, null, !dbg !3211
  %5 = icmp ne i64 %1, 0, !dbg !3212
  %6 = and i1 %5, %4, !dbg !3213
  br i1 %6, label %7, label %8, !dbg !3213

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3214
  unreachable, !dbg !3214

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3215, metadata !DIExpression()) #18, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()) #18, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()) #18, !dbg !3224
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3226
  ret i8* %3, !dbg !3227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3230, metadata !DIExpression()), !dbg !3231
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3232
  %3 = add i64 %2, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()) #18, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %3, metadata !3206, metadata !DIExpression()) #18, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %3, metadata !3016, metadata !DIExpression()) #18, !dbg !3236
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %4, metadata !3021, metadata !DIExpression()) #18, !dbg !3236
  %5 = icmp eq i8* %4, null, !dbg !3239
  %6 = icmp ne i64 %3, 0, !dbg !3240
  %7 = and i1 %6, %5, !dbg !3241
  br i1 %7, label %8, label %9, !dbg !3241

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3242
  unreachable, !dbg !3242

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3215, metadata !DIExpression()) #18, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()) #18, !dbg !3243
  call void @llvm.dbg.value(metadata i64 %3, metadata !3223, metadata !DIExpression()) #18, !dbg !3243
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3245
  ret i8* %4, !dbg !3246
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3247 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3248, !tbaa !1191
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #18, !dbg !3249
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #18, !dbg !3250
  tail call void @abort() #22, !dbg !3251
  unreachable, !dbg !3251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtol(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3252 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3257, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8** %1, metadata !3258, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 %2, metadata !3259, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64* %3, metadata !3260, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8* %4, metadata !3261, metadata !DIExpression()), !dbg !3271
  %7 = bitcast i8** %6 to i8*, !dbg !3272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3272
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()), !dbg !3271
  %8 = icmp ult i32 %2, 37, !dbg !3273
  br i1 %8, label %10, label %9, !dbg !3273

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.115, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #22, !dbg !3273
  unreachable, !dbg !3273

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3276
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3276
  call void @llvm.dbg.value(metadata i8** %12, metadata !3263, metadata !DIExpression()), !dbg !3271
  %13 = tail call i32* @__errno_location() #24, !dbg !3277
  store i32 0, i32* %13, align 4, !dbg !3278, !tbaa !1191
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #18, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %14, metadata !3264, metadata !DIExpression()), !dbg !3271
  %15 = load i8*, i8** %12, align 8, !dbg !3280, !tbaa !1134
  %16 = icmp eq i8* %15, %0, !dbg !3282
  br i1 %16, label %17, label %26, !dbg !3283

17:                                               ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3284
  br i1 %18, label %196, label %19, !dbg !3287

19:                                               ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3288, !tbaa !1200
  %21 = icmp eq i8 %20, 0, !dbg !3288
  br i1 %21, label %196, label %22, !dbg !3289

22:                                               ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3288
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #21, !dbg !3290
  %25 = icmp eq i8* %24, null, !dbg !3290
  br i1 %25, label %196, label %33, !dbg !3291

26:                                               ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3292, !tbaa !1191
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3294

28:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !3265, metadata !DIExpression()), !dbg !3271
  br label %29, !dbg !3295

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !3271
  call void @llvm.dbg.value(metadata i32 %30, metadata !3265, metadata !DIExpression()), !dbg !3271
  %31 = icmp eq i8* %4, null, !dbg !3297
  br i1 %31, label %32, label %33, !dbg !3299

32:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !3264, metadata !DIExpression()), !dbg !3271
  store i64 %14, i64* %3, align 8, !dbg !3300, !tbaa !1235
  br label %196, !dbg !3302

33:                                               ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3303, !tbaa !1200
  %37 = sext i8 %36 to i32, !dbg !3303
  %38 = icmp eq i8 %36, 0, !dbg !3304
  br i1 %38, label %193, label %39, !dbg !3305

39:                                               ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !3266, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 1, metadata !3269, metadata !DIExpression()), !dbg !3306
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !3307
  %41 = icmp eq i8* %40, null, !dbg !3307
  br i1 %41, label %42, label %44, !dbg !3309

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !3264, metadata !DIExpression()), !dbg !3271
  store i64 %35, i64* %3, align 8, !dbg !3310, !tbaa !1235
  %43 = or i32 %34, 2, !dbg !3312
  br label %196, !dbg !3313

44:                                               ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3314

45:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !3315
  %47 = icmp eq i8* %46, null, !dbg !3315
  br i1 %47, label %58, label %48, !dbg !3318

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3319
  %50 = load i8, i8* %49, align 1, !dbg !3319, !tbaa !1200
  %51 = sext i8 %50 to i32, !dbg !3319
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3320

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3321
  %54 = load i8, i8* %53, align 1, !dbg !3321, !tbaa !1200
  %55 = icmp eq i8 %54, 66, !dbg !3324
  %56 = select i1 %55, i64 3, i64 1, !dbg !3325
  br label %58, !dbg !3325

57:                                               ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !3266, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 2, metadata !3269, metadata !DIExpression()), !dbg !3306
  br label %58, !dbg !3326

58:                                               ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3269, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i32 undef, metadata !3266, metadata !DIExpression()), !dbg !3306
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3327

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 512, metadata !3328, metadata !DIExpression()), !dbg !3334
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3337
  br i1 %62, label %184, label %63, !dbg !3339

63:                                               ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3340
  %65 = shl nsw i64 %35, 9, !dbg !3342
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3343
  %67 = zext i1 %64 to i32, !dbg !3343
  br label %184, !dbg !3343

68:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 1024, metadata !3328, metadata !DIExpression()), !dbg !3344
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3346
  br i1 %69, label %184, label %70, !dbg !3347

70:                                               ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3348
  %72 = shl nsw i64 %35, 10, !dbg !3349
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3350
  %74 = zext i1 %71 to i32, !dbg !3350
  br label %184, !dbg !3350

75:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  %76 = sdiv i64 -9223372036854775808, %59, !dbg !3361
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %77 = icmp slt i64 %35, %76, !dbg !3364
  br i1 %77, label %84, label %78, !dbg !3365

78:                                               ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3366
  %80 = icmp slt i64 %79, %35, !dbg !3367
  %81 = mul nsw i64 %35, %59, !dbg !3368
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3369
  %83 = zext i1 %80 to i32, !dbg !3369
  br label %84, !dbg !3369

84:                                               ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ], !dbg !3363
  call void @llvm.dbg.value(metadata i32 %86, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %87 = icmp slt i64 %85, %76, !dbg !3364
  br i1 %87, label %204, label %198, !dbg !3365

88:                                               ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3370
  %89 = sdiv i64 -9223372036854775808, %59, !dbg !3372
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3374
  %90 = icmp slt i64 %35, %89, !dbg !3375
  br i1 %90, label %97, label %91, !dbg !3376

91:                                               ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3377
  %93 = icmp slt i64 %92, %35, !dbg !3378
  %94 = mul nsw i64 %35, %59, !dbg !3379
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3380
  %96 = zext i1 %93 to i32, !dbg !3380
  br label %97, !dbg !3380

97:                                               ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ], !dbg !3374
  call void @llvm.dbg.value(metadata i32 %99, metadata !3358, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3370
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3374
  %100 = icmp slt i64 %98, %89, !dbg !3375
  br i1 %100, label %258, label %252, !dbg !3376

101:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3381
  %102 = sdiv i64 -9223372036854775808, %59, !dbg !3383
  call void @llvm.dbg.value(metadata i32 undef, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3381
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3385
  %103 = icmp slt i64 %35, %102, !dbg !3386
  br i1 %103, label %184, label %104, !dbg !3387

104:                                              ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3388
  %106 = icmp slt i64 %105, %35, !dbg !3389
  %107 = mul nsw i64 %35, %59, !dbg !3390
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3391
  %109 = zext i1 %106 to i32, !dbg !3391
  br label %184, !dbg !3391

110:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3392
  %111 = sdiv i64 -9223372036854775808, %59, !dbg !3394
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3396
  %112 = icmp slt i64 %35, %111, !dbg !3397
  br i1 %112, label %119, label %113, !dbg !3398

113:                                              ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3399
  %115 = icmp slt i64 %114, %35, !dbg !3400
  %116 = mul nsw i64 %35, %59, !dbg !3401
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3402
  %118 = zext i1 %115 to i32, !dbg !3402
  br label %119, !dbg !3402

119:                                              ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ], !dbg !3396
  call void @llvm.dbg.value(metadata i32 %121, metadata !3358, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3392
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3396
  %122 = icmp slt i64 %120, %111, !dbg !3397
  br i1 %122, label %279, label %273, !dbg !3398

123:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  %124 = sdiv i64 -9223372036854775808, %59, !dbg !3405
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3407
  %125 = icmp slt i64 %35, %124, !dbg !3408
  br i1 %125, label %132, label %126, !dbg !3409

126:                                              ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3410
  %128 = icmp slt i64 %127, %35, !dbg !3411
  %129 = mul nsw i64 %35, %59, !dbg !3412
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3413
  %131 = zext i1 %128 to i32, !dbg !3413
  br label %132, !dbg !3413

132:                                              ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ], !dbg !3407
  call void @llvm.dbg.value(metadata i32 %134, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3407
  %135 = icmp slt i64 %133, %124, !dbg !3408
  br i1 %135, label %289, label %283, !dbg !3409

136:                                              ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3414
  %137 = sdiv i64 -9223372036854775808, %59, !dbg !3416
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3418
  %138 = icmp slt i64 %35, %137, !dbg !3419
  br i1 %138, label %145, label %139, !dbg !3420

139:                                              ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3421
  %141 = icmp slt i64 %140, %35, !dbg !3422
  %142 = mul nsw i64 %35, %59, !dbg !3423
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3424
  %144 = zext i1 %141 to i32, !dbg !3424
  br label %145, !dbg !3424

145:                                              ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ], !dbg !3418
  call void @llvm.dbg.value(metadata i32 %147, metadata !3358, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3414
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3418
  %148 = icmp slt i64 %146, %137, !dbg !3419
  br i1 %148, label %332, label %326, !dbg !3420

149:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3328, metadata !DIExpression()), !dbg !3425
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3427
  br i1 %150, label %184, label %151, !dbg !3428

151:                                              ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3429
  %153 = shl nsw i64 %35, 1, !dbg !3430
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3431
  %155 = zext i1 %152 to i32, !dbg !3431
  br label %184, !dbg !3431

156:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 8, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  %157 = sdiv i64 -9223372036854775808, %59, !dbg !3434
  call void @llvm.dbg.value(metadata i32 7, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %158 = icmp slt i64 %35, %157, !dbg !3437
  br i1 %158, label %165, label %159, !dbg !3438

159:                                              ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3439
  %161 = icmp slt i64 %160, %35, !dbg !3440
  %162 = mul nsw i64 %35, %59, !dbg !3441
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3442
  %164 = zext i1 %161 to i32, !dbg !3442
  br label %165, !dbg !3442

165:                                              ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ], !dbg !3436
  call void @llvm.dbg.value(metadata i32 %167, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 7, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 7, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %168 = icmp slt i64 %166, %157, !dbg !3437
  br i1 %168, label %364, label %358, !dbg !3438

169:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !3351, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 7, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  %170 = sdiv i64 -9223372036854775808, %59, !dbg !3445
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %171 = icmp slt i64 %35, %170, !dbg !3448
  br i1 %171, label %178, label %172, !dbg !3449

172:                                              ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3450
  %174 = icmp slt i64 %173, %35, !dbg !3451
  %175 = mul nsw i64 %35, %59, !dbg !3452
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3453
  %177 = zext i1 %174 to i32, !dbg !3453
  br label %178, !dbg !3453

178:                                              ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ], !dbg !3447
  call void @llvm.dbg.value(metadata i32 %180, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %181 = icmp slt i64 %179, %170, !dbg !3448
  br i1 %181, label %440, label %434, !dbg !3449

182:                                              ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !3264, metadata !DIExpression()), !dbg !3271
  store i64 %35, i64* %3, align 8, !dbg !3454, !tbaa !1235
  %183 = or i32 %34, 2, !dbg !3455
  br label %196, !dbg !3456

184:                                              ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %151, %70, %63, %58, %61, %68, %149
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %149 ], [ %66, %63 ], [ %73, %70 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ], !dbg !3271
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %149 ], [ %67, %63 ], [ %74, %70 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ], !dbg !3457
  call void @llvm.dbg.value(metadata i32 %186, metadata !3270, metadata !DIExpression()), !dbg !3306
  %187 = or i32 %186, %34, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %187, metadata !3265, metadata !DIExpression()), !dbg !3271
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3459
  store i8* %188, i8** %12, align 8, !dbg !3459, !tbaa !1134
  %189 = load i8, i8* %188, align 1, !dbg !3460, !tbaa !1200
  %190 = icmp eq i8 %189, 0, !dbg !3460
  %191 = or i32 %187, 2, !dbg !3462
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %192, metadata !3265, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 %192, metadata !3265, metadata !DIExpression()), !dbg !3271
  br label %193

193:                                              ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ], !dbg !3464
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ], !dbg !3465
  call void @llvm.dbg.value(metadata i32 %195, metadata !3265, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %194, metadata !3264, metadata !DIExpression()), !dbg !3271
  store i64 %194, i64* %3, align 8, !dbg !3466, !tbaa !1235
  br label %196, !dbg !3467

196:                                              ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ], !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3468
  ret i32 %197, !dbg !3468

198:                                              ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3366
  %200 = icmp slt i64 %199, %85, !dbg !3367
  %201 = mul nsw i64 %85, %59, !dbg !3368
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3369
  %203 = zext i1 %200 to i32, !dbg !3369
  br label %204, !dbg !3369

204:                                              ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ], !dbg !3363
  %207 = or i32 %206, %86, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %207, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %208 = icmp slt i64 %205, %76, !dbg !3364
  br i1 %208, label %215, label %209, !dbg !3365

209:                                              ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3366
  %211 = icmp slt i64 %210, %205, !dbg !3367
  %212 = mul nsw i64 %205, %59, !dbg !3368
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3369
  %214 = zext i1 %211 to i32, !dbg !3369
  br label %215, !dbg !3369

215:                                              ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ], !dbg !3363
  %218 = or i32 %217, %207, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %218, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %219 = icmp slt i64 %216, %76, !dbg !3364
  br i1 %219, label %226, label %220, !dbg !3365

220:                                              ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3366
  %222 = icmp slt i64 %221, %216, !dbg !3367
  %223 = mul nsw i64 %216, %59, !dbg !3368
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3369
  %225 = zext i1 %222 to i32, !dbg !3369
  br label %226, !dbg !3369

226:                                              ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ], !dbg !3363
  %229 = or i32 %228, %218, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %229, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %230 = icmp slt i64 %227, %76, !dbg !3364
  br i1 %230, label %237, label %231, !dbg !3365

231:                                              ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3366
  %233 = icmp slt i64 %232, %227, !dbg !3367
  %234 = mul nsw i64 %227, %59, !dbg !3368
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3369
  %236 = zext i1 %233 to i32, !dbg !3369
  br label %237, !dbg !3369

237:                                              ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ], !dbg !3363
  %240 = or i32 %239, %229, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %240, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3363
  %241 = icmp slt i64 %238, %76, !dbg !3364
  br i1 %241, label %248, label %242, !dbg !3365

242:                                              ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3366
  %244 = icmp slt i64 %243, %238, !dbg !3367
  %245 = mul nsw i64 %238, %59, !dbg !3368
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3369
  %247 = zext i1 %244 to i32, !dbg !3369
  br label %248, !dbg !3369

248:                                              ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ], !dbg !3363
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ], !dbg !3363
  %251 = or i32 %250, %240, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %251, metadata !3358, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3359
  br label %184, !dbg !3458

252:                                              ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3377
  %254 = icmp slt i64 %253, %98, !dbg !3378
  %255 = mul nsw i64 %98, %59, !dbg !3379
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3380
  %257 = zext i1 %254 to i32, !dbg !3380
  br label %258, !dbg !3380

258:                                              ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ], !dbg !3374
  %261 = or i32 %260, %99, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %261, metadata !3358, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3370
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3374
  %262 = icmp slt i64 %259, %89, !dbg !3375
  br i1 %262, label %269, label %263, !dbg !3376

263:                                              ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3377
  %265 = icmp slt i64 %264, %259, !dbg !3378
  %266 = mul nsw i64 %259, %59, !dbg !3379
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3380
  %268 = zext i1 %265 to i32, !dbg !3380
  br label %269, !dbg !3380

269:                                              ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ], !dbg !3374
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ], !dbg !3374
  %272 = or i32 %271, %261, !dbg !3470
  call void @llvm.dbg.value(metadata i32 %272, metadata !3358, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3370
  br label %184, !dbg !3458

273:                                              ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3399
  %275 = icmp slt i64 %274, %120, !dbg !3400
  %276 = mul nsw i64 %120, %59, !dbg !3401
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3402
  %278 = zext i1 %275 to i32, !dbg !3402
  br label %279, !dbg !3402

279:                                              ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ], !dbg !3396
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ], !dbg !3396
  %282 = or i32 %281, %121, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %282, metadata !3358, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3392
  br label %184, !dbg !3458

283:                                              ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3410
  %285 = icmp slt i64 %284, %133, !dbg !3411
  %286 = mul nsw i64 %133, %59, !dbg !3412
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3413
  %288 = zext i1 %285 to i32, !dbg !3413
  br label %289, !dbg !3413

289:                                              ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ], !dbg !3407
  %292 = or i32 %291, %134, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %292, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3407
  %293 = icmp slt i64 %290, %124, !dbg !3408
  br i1 %293, label %300, label %294, !dbg !3409

294:                                              ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3410
  %296 = icmp slt i64 %295, %290, !dbg !3411
  %297 = mul nsw i64 %290, %59, !dbg !3412
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3413
  %299 = zext i1 %296 to i32, !dbg !3413
  br label %300, !dbg !3413

300:                                              ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ], !dbg !3407
  %303 = or i32 %302, %292, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %303, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3407
  %304 = icmp slt i64 %301, %124, !dbg !3408
  br i1 %304, label %311, label %305, !dbg !3409

305:                                              ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3410
  %307 = icmp slt i64 %306, %301, !dbg !3411
  %308 = mul nsw i64 %301, %59, !dbg !3412
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3413
  %310 = zext i1 %307 to i32, !dbg !3413
  br label %311, !dbg !3413

311:                                              ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ], !dbg !3407
  %314 = or i32 %313, %303, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %314, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3407
  %315 = icmp slt i64 %312, %124, !dbg !3408
  br i1 %315, label %322, label %316, !dbg !3409

316:                                              ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3410
  %318 = icmp slt i64 %317, %312, !dbg !3411
  %319 = mul nsw i64 %312, %59, !dbg !3412
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3413
  %321 = zext i1 %318 to i32, !dbg !3413
  br label %322, !dbg !3413

322:                                              ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ], !dbg !3407
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ], !dbg !3407
  %325 = or i32 %324, %314, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %325, metadata !3358, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3403
  br label %184, !dbg !3458

326:                                              ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3421
  %328 = icmp slt i64 %327, %146, !dbg !3422
  %329 = mul nsw i64 %146, %59, !dbg !3423
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3424
  %331 = zext i1 %328 to i32, !dbg !3424
  br label %332, !dbg !3424

332:                                              ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ], !dbg !3418
  %335 = or i32 %334, %147, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %335, metadata !3358, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3414
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3418
  %336 = icmp slt i64 %333, %137, !dbg !3419
  br i1 %336, label %343, label %337, !dbg !3420

337:                                              ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3421
  %339 = icmp slt i64 %338, %333, !dbg !3422
  %340 = mul nsw i64 %333, %59, !dbg !3423
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3424
  %342 = zext i1 %339 to i32, !dbg !3424
  br label %343, !dbg !3424

343:                                              ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ], !dbg !3418
  %346 = or i32 %345, %335, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %346, metadata !3358, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3414
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3418
  %347 = icmp slt i64 %344, %137, !dbg !3419
  br i1 %347, label %354, label %348, !dbg !3420

348:                                              ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3421
  %350 = icmp slt i64 %349, %344, !dbg !3422
  %351 = mul nsw i64 %344, %59, !dbg !3423
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3424
  %353 = zext i1 %350 to i32, !dbg !3424
  br label %354, !dbg !3424

354:                                              ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ], !dbg !3418
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ], !dbg !3418
  %357 = or i32 %356, %346, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %357, metadata !3358, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3414
  br label %184, !dbg !3458

358:                                              ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3439
  %360 = icmp slt i64 %359, %166, !dbg !3440
  %361 = mul nsw i64 %166, %59, !dbg !3441
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3442
  %363 = zext i1 %360 to i32, !dbg !3442
  br label %364, !dbg !3442

364:                                              ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ], !dbg !3436
  %367 = or i32 %366, %167, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %367, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 6, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %368 = icmp slt i64 %365, %157, !dbg !3437
  br i1 %368, label %375, label %369, !dbg !3438

369:                                              ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3439
  %371 = icmp slt i64 %370, %365, !dbg !3440
  %372 = mul nsw i64 %365, %59, !dbg !3441
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3442
  %374 = zext i1 %371 to i32, !dbg !3442
  br label %375, !dbg !3442

375:                                              ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ], !dbg !3436
  %378 = or i32 %377, %367, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %378, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %379 = icmp slt i64 %376, %157, !dbg !3437
  br i1 %379, label %386, label %380, !dbg !3438

380:                                              ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3439
  %382 = icmp slt i64 %381, %376, !dbg !3440
  %383 = mul nsw i64 %376, %59, !dbg !3441
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3442
  %385 = zext i1 %382 to i32, !dbg !3442
  br label %386, !dbg !3442

386:                                              ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ], !dbg !3436
  %389 = or i32 %388, %378, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %389, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %390 = icmp slt i64 %387, %157, !dbg !3437
  br i1 %390, label %397, label %391, !dbg !3438

391:                                              ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3439
  %393 = icmp slt i64 %392, %387, !dbg !3440
  %394 = mul nsw i64 %387, %59, !dbg !3441
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3442
  %396 = zext i1 %393 to i32, !dbg !3442
  br label %397, !dbg !3442

397:                                              ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ], !dbg !3436
  %400 = or i32 %399, %389, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %400, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %401 = icmp slt i64 %398, %157, !dbg !3437
  br i1 %401, label %408, label %402, !dbg !3438

402:                                              ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3439
  %404 = icmp slt i64 %403, %398, !dbg !3440
  %405 = mul nsw i64 %398, %59, !dbg !3441
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3442
  %407 = zext i1 %404 to i32, !dbg !3442
  br label %408, !dbg !3442

408:                                              ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ], !dbg !3436
  %411 = or i32 %410, %400, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %411, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %412 = icmp slt i64 %409, %157, !dbg !3437
  br i1 %412, label %419, label %413, !dbg !3438

413:                                              ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3439
  %415 = icmp slt i64 %414, %409, !dbg !3440
  %416 = mul nsw i64 %409, %59, !dbg !3441
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3442
  %418 = zext i1 %415 to i32, !dbg !3442
  br label %419, !dbg !3442

419:                                              ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ], !dbg !3436
  %422 = or i32 %421, %411, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %422, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3436
  %423 = icmp slt i64 %420, %157, !dbg !3437
  br i1 %423, label %430, label %424, !dbg !3438

424:                                              ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3439
  %426 = icmp slt i64 %425, %420, !dbg !3440
  %427 = mul nsw i64 %420, %59, !dbg !3441
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3442
  %429 = zext i1 %426 to i32, !dbg !3442
  br label %430, !dbg !3442

430:                                              ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ], !dbg !3436
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ], !dbg !3436
  %433 = or i32 %432, %422, !dbg !3474
  call void @llvm.dbg.value(metadata i32 %433, metadata !3358, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3432
  br label %184, !dbg !3458

434:                                              ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3450
  %436 = icmp slt i64 %435, %179, !dbg !3451
  %437 = mul nsw i64 %179, %59, !dbg !3452
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3453
  %439 = zext i1 %436 to i32, !dbg !3453
  br label %440, !dbg !3453

440:                                              ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ], !dbg !3447
  %443 = or i32 %442, %180, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %443, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 5, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %444 = icmp slt i64 %441, %170, !dbg !3448
  br i1 %444, label %451, label %445, !dbg !3449

445:                                              ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3450
  %447 = icmp slt i64 %446, %441, !dbg !3451
  %448 = mul nsw i64 %441, %59, !dbg !3452
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3453
  %450 = zext i1 %447 to i32, !dbg !3453
  br label %451, !dbg !3453

451:                                              ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ], !dbg !3447
  %454 = or i32 %453, %443, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %454, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 4, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %455 = icmp slt i64 %452, %170, !dbg !3448
  br i1 %455, label %462, label %456, !dbg !3449

456:                                              ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3450
  %458 = icmp slt i64 %457, %452, !dbg !3451
  %459 = mul nsw i64 %452, %59, !dbg !3452
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3453
  %461 = zext i1 %458 to i32, !dbg !3453
  br label %462, !dbg !3453

462:                                              ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ], !dbg !3447
  %465 = or i32 %464, %454, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %465, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 3, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %466 = icmp slt i64 %463, %170, !dbg !3448
  br i1 %466, label %473, label %467, !dbg !3449

467:                                              ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3450
  %469 = icmp slt i64 %468, %463, !dbg !3451
  %470 = mul nsw i64 %463, %59, !dbg !3452
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3453
  %472 = zext i1 %469 to i32, !dbg !3453
  br label %473, !dbg !3453

473:                                              ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ], !dbg !3447
  %476 = or i32 %475, %465, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %476, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 2, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %477 = icmp slt i64 %474, %170, !dbg !3448
  br i1 %477, label %484, label %478, !dbg !3449

478:                                              ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3450
  %480 = icmp slt i64 %479, %474, !dbg !3451
  %481 = mul nsw i64 %474, %59, !dbg !3452
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3453
  %483 = zext i1 %480 to i32, !dbg !3453
  br label %484, !dbg !3453

484:                                              ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ], !dbg !3447
  %487 = or i32 %486, %476, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %487, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3328, metadata !DIExpression()), !dbg !3447
  %488 = icmp slt i64 %485, %170, !dbg !3448
  br i1 %488, label %495, label %489, !dbg !3449

489:                                              ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3450
  %491 = icmp slt i64 %490, %485, !dbg !3451
  %492 = mul nsw i64 %485, %59, !dbg !3452
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3453
  %494 = zext i1 %491 to i32, !dbg !3453
  br label %495, !dbg !3453

495:                                              ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ], !dbg !3447
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ], !dbg !3447
  %498 = or i32 %497, %487, !dbg !3475
  call void @llvm.dbg.value(metadata i32 %498, metadata !3358, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3357, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3443
  br label %184, !dbg !3458
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3476 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3478, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %1, metadata !3479, metadata !DIExpression()), !dbg !3484
  %3 = icmp eq i64 %0, 0, !dbg !3485
  %4 = icmp eq i64 %1, 0, !dbg !3486
  %5 = or i1 %3, %4, !dbg !3487
  br i1 %5, label %11, label %6, !dbg !3487

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3481, metadata !DIExpression()), !dbg !3488
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3489
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3489
  br i1 %8, label %9, label %11, !dbg !3491

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3492
  store i32 12, i32* %10, align 4, !dbg !3494, !tbaa !1191
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3478, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i64 %12, metadata !3479, metadata !DIExpression()), !dbg !3484
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %14, metadata !3480, metadata !DIExpression()), !dbg !3484
  br label %15, !dbg !3496

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3484
  ret i8* %16, !dbg !3497
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3498 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3506, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %1, metadata !3507, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %2, metadata !3508, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3509, metadata !DIExpression()), !dbg !3515
  %6 = bitcast i32* %5 to i8*, !dbg !3516
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3516
  %7 = icmp eq i32* %0, null, !dbg !3517
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3519
  call void @llvm.dbg.value(metadata i32* %8, metadata !3506, metadata !DIExpression()), !dbg !3515
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %9, metadata !3510, metadata !DIExpression()), !dbg !3515
  %10 = icmp ugt i64 %9, -3, !dbg !3521
  %11 = icmp ne i64 %2, 0, !dbg !3522
  %12 = and i1 %11, %10, !dbg !3523
  br i1 %12, label %13, label %18, !dbg !3523

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3524
  br i1 %14, label %18, label %15, !dbg !3525

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3526, !tbaa !1200
  call void @llvm.dbg.value(metadata i8 %16, metadata !3512, metadata !DIExpression()), !dbg !3527
  %17 = zext i8 %16 to i32, !dbg !3528
  store i32 %17, i32* %8, align 4, !dbg !3529, !tbaa !1191
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3530
  ret i64 %19, !dbg !3530
}

; Function Attrs: nounwind
declare !dbg !515 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3531 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3537, metadata !DIExpression()), !dbg !3542
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3543
  call void @llvm.dbg.value(metadata i1 undef, metadata !3538, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3544, metadata !DIExpression()), !dbg !3547
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3549
  %4 = load i32, i32* %3, align 8, !dbg !3549, !tbaa !1302
  %5 = and i32 %4, 32, !dbg !3549
  %6 = icmp eq i32 %5, 0, !dbg !3550
  call void @llvm.dbg.value(metadata i1 %6, metadata !3540, metadata !DIExpression()), !dbg !3542
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3551
  %8 = icmp ne i32 %7, 0, !dbg !3552
  call void @llvm.dbg.value(metadata i1 %8, metadata !3541, metadata !DIExpression()), !dbg !3542
  br i1 %6, label %9, label %19, !dbg !3553

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3555
  call void @llvm.dbg.value(metadata i1 %10, metadata !3538, metadata !DIExpression()), !dbg !3542
  %11 = xor i1 %8, true, !dbg !3556
  %12 = or i1 %10, %11, !dbg !3556
  %13 = sext i1 %8 to i32, !dbg !3556
  br i1 %12, label %22, label %14, !dbg !3556

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3557
  %16 = load i32, i32* %15, align 4, !dbg !3557, !tbaa !1191
  %17 = icmp ne i32 %16, 9, !dbg !3558
  %18 = sext i1 %17 to i32, !dbg !3559
  br label %22, !dbg !3559

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3560

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3562
  store i32 0, i32* %21, align 4, !dbg !3564, !tbaa !1191
  br label %22, !dbg !3562

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3542
  ret i32 %23, !dbg !3565
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3566 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()), !dbg !3573
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3574
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3574
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3569, metadata !DIExpression()), !dbg !3575
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3576
  %5 = icmp eq i32 %4, 0, !dbg !3576
  br i1 %5, label %6, label %13, !dbg !3578

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3579
  %8 = load i16, i16* %7, align 16, !dbg !3579
  %9 = icmp eq i16 %8, 67, !dbg !3579
  br i1 %9, label %13, label %10, !dbg !3580

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0), i64 6), !dbg !3581
  %12 = icmp ne i32 %11, 0, !dbg !3582
  br label %13, !dbg !3580

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3573
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3583
  ret i1 %14, !dbg !3583
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3584 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3586, metadata !DIExpression()), !dbg !3588
  %2 = icmp eq i8* %1, null, !dbg !3589
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %3, metadata !3586, metadata !DIExpression()), !dbg !3588
  %4 = load i8, i8* %3, align 1, !dbg !3592, !tbaa !1200
  %5 = icmp eq i8 %4, 0, !dbg !3596
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %3, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %6, metadata !3586, metadata !DIExpression()), !dbg !3588
  ret i8* %6, !dbg !3598
}

; Function Attrs: nounwind
declare !dbg !967 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3599 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3603, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i8* %1, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %2, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 %0, metadata !3607, metadata !DIExpression()) #18, !dbg !3616
  call void @llvm.dbg.value(metadata i8* %1, metadata !3610, metadata !DIExpression()) #18, !dbg !3616
  call void @llvm.dbg.value(metadata i64 %2, metadata !3611, metadata !DIExpression()) #18, !dbg !3616
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #18, !dbg !3624
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %4, metadata !3623, metadata !DIExpression()) #18, !dbg !3624
  call void @llvm.dbg.value(metadata i8* %4, metadata !3612, metadata !DIExpression()) #18, !dbg !3616
  %5 = icmp eq i8* %4, null, !dbg !3627
  br i1 %5, label %6, label %9, !dbg !3628

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3629
  br i1 %7, label %19, label %8, !dbg !3632

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3633, !tbaa !1200
  br label %19, !dbg !3634

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %10, metadata !3613, metadata !DIExpression()) #18, !dbg !3636
  %11 = icmp ult i64 %10, %2, !dbg !3637
  br i1 %11, label %12, label %14, !dbg !3639

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %1, metadata !3642, metadata !DIExpression()) #18, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %4, metadata !3645, metadata !DIExpression()) #18, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %13, metadata !3646, metadata !DIExpression()) #18, !dbg !3647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3649
  br label %19, !dbg !3650

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3651
  br i1 %15, label %19, label %16, !dbg !3654

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3655
  call void @llvm.dbg.value(metadata i8* %1, metadata !3642, metadata !DIExpression()) #18, !dbg !3657
  call void @llvm.dbg.value(metadata i8* %4, metadata !3645, metadata !DIExpression()) #18, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %17, metadata !3646, metadata !DIExpression()) #18, !dbg !3657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3659
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3660
  store i8 0, i8* %18, align 1, !dbg !3661, !tbaa !1200
  br label %19, !dbg !3662

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3663
  ret i32 %20, !dbg !3664
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3665 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3667, metadata !DIExpression()), !dbg !3668
  call void @llvm.dbg.value(metadata i32 %0, metadata !3618, metadata !DIExpression()) #18, !dbg !3669
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3671
  call void @llvm.dbg.value(metadata i8* %2, metadata !3623, metadata !DIExpression()) #18, !dbg !3669
  ret i8* %2, !dbg !3672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3673 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3679, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3683
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3684
  call void @llvm.dbg.value(metadata i32 %2, metadata !3681, metadata !DIExpression()), !dbg !3683
  %3 = icmp slt i32 %2, 0, !dbg !3685
  br i1 %3, label %4, label %6, !dbg !3687

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3688
  br label %24, !dbg !3689

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3690
  %8 = icmp eq i32 %7, 0, !dbg !3690
  br i1 %8, label %13, label %9, !dbg !3692

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3693
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3694
  %12 = icmp eq i64 %11, -1, !dbg !3695
  br i1 %12, label %16, label %13, !dbg !3696

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3697
  %15 = icmp eq i32 %14, 0, !dbg !3697
  br i1 %15, label %16, label %18, !dbg !3698

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %21, metadata !3682, metadata !DIExpression()), !dbg !3683
  br label %24, !dbg !3700

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3701
  %20 = load i32, i32* %19, align 4, !dbg !3701, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i32 %20, metadata !3680, metadata !DIExpression()), !dbg !3683
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3699
  call void @llvm.dbg.value(metadata i32 %21, metadata !3682, metadata !DIExpression()), !dbg !3683
  %22 = icmp eq i32 %20, 0, !dbg !3702
  br i1 %22, label %24, label %23, !dbg !3700

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3704, !tbaa !1191
  call void @llvm.dbg.value(metadata i32 -1, metadata !3682, metadata !DIExpression()), !dbg !3683
  br label %24, !dbg !3706

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3683
  ret i32 %25, !dbg !3707
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3708 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3714, metadata !DIExpression()), !dbg !3715
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3716
  br i1 %2, label %6, label %3, !dbg !3718

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3719
  %5 = icmp eq i32 %4, 0, !dbg !3719
  br i1 %5, label %6, label %8, !dbg !3720

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3721
  br label %17, !dbg !3722

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3723, metadata !DIExpression()) #18, !dbg !3728
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3730
  %10 = load i32, i32* %9, align 8, !dbg !3730, !tbaa !1302
  %11 = and i32 %10, 256, !dbg !3732
  %12 = icmp eq i32 %11, 0, !dbg !3732
  br i1 %12, label %15, label %13, !dbg !3733

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3734
  br label %15, !dbg !3734

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3735
  br label %17, !dbg !3736

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3715
  ret i32 %18, !dbg !3737
}

; Function Attrs: nofree nounwind
declare !dbg !1019 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3738 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3745, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3746, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 %2, metadata !3747, metadata !DIExpression()), !dbg !3751
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3752
  %5 = load i8*, i8** %4, align 8, !dbg !3752, !tbaa !3753
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3754
  %7 = load i8*, i8** %6, align 8, !dbg !3754, !tbaa !3755
  %8 = icmp eq i8* %5, %7, !dbg !3756
  br i1 %8, label %9, label %28, !dbg !3757

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3758
  %11 = load i8*, i8** %10, align 8, !dbg !3758, !tbaa !3759
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3760
  %13 = load i8*, i8** %12, align 8, !dbg !3760, !tbaa !3761
  %14 = icmp eq i8* %11, %13, !dbg !3762
  br i1 %14, label %15, label %28, !dbg !3763

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3764
  %17 = load i8*, i8** %16, align 8, !dbg !3764, !tbaa !3765
  %18 = icmp eq i8* %17, null, !dbg !3766
  br i1 %18, label %19, label %28, !dbg !3767

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3768
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %21, metadata !3748, metadata !DIExpression()), !dbg !3770
  %22 = icmp eq i64 %21, -1, !dbg !3771
  br i1 %22, label %30, label %23, !dbg !3773

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3774
  %25 = load i32, i32* %24, align 8, !dbg !3775, !tbaa !1302
  %26 = and i32 %25, -17, !dbg !3775
  store i32 %26, i32* %24, align 8, !dbg !3775, !tbaa !1302
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3776
  store i64 %21, i64* %27, align 8, !dbg !3777, !tbaa !3778
  br label %30, !dbg !3779

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3780
  br label %30, !dbg !3781

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3751
  ret i32 %31, !dbg !3782
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

!llvm.dbg.cu = !{!2, !198, !203, !249, !255, !296, !440, !434, !482, !503, !506, !509, !512, !531, !570, !577, !970, !973, !1016, !1057}
!llvm.ident = !{!1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098, !1098}
!llvm.module.flags = !{!1099, !1100, !1101, !1102, !1103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !193, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !192, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nice.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !13, !21, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 25, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !3, line: 170, baseType: !25, size: 32, elements: !54)
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 101, type: !23, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30, !31, !32, !33, !34, !37, !39, !40, !44, !47, !48, !49, !53}
!30 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 101, type: !25)
!31 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 101, type: !26)
!32 = !DILocalVariable(name: "current_niceness", scope: !22, file: !3, line: 103, type: !25)
!33 = !DILocalVariable(name: "adjustment", scope: !22, file: !3, line: 104, type: !25)
!34 = !DILocalVariable(name: "adjustment_given", scope: !22, file: !3, line: 105, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!37 = !DILocalVariable(name: "ok", scope: !22, file: !3, line: 106, type: !38)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 107, type: !25)
!40 = !DILocalVariable(name: "s", scope: !41, file: !3, line: 120, type: !35)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 119, column: 5)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 118, column: 3)
!43 = distinct !DILexicalBlock(scope: !22, file: !3, line: 118, column: 3)
!44 = !DILocalVariable(name: "c", scope: !45, file: !3, line: 129, type: !25)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 128, column: 9)
!46 = distinct !DILexicalBlock(scope: !41, file: !3, line: 122, column: 11)
!47 = !DILocalVariable(name: "fake_argc", scope: !45, file: !3, line: 130, type: !25)
!48 = !DILocalVariable(name: "fake_argv", scope: !45, file: !3, line: 131, type: !26)
!49 = !DILocalVariable(name: "tmp", scope: !50, file: !3, line: 171, type: !52)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 166, column: 5)
!51 = distinct !DILexicalBlock(scope: !22, file: !3, line: 165, column: 7)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "exit_status", scope: !22, file: !3, line: 218, type: !25)
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!56 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !58, line: 187, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "PRIO_PROCESS", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "PRIO_PGRP", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "PRIO_USER", value: 2, isUnsigned: true)
!63 = !{!64, !69, !129, !133, !137, !140, !143, !7, !150, !27, !119, !165, !169, !173, !177, !181, !185, !188}
!64 = !DISubprogram(name: "dcgettext", scope: !65, file: !65, line: 51, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!65 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!66 = !DISubroutineType(types: !67)
!67 = !{!27, !35, !35, !25}
!68 = !{}
!69 = !DISubprogram(name: "fputs_unlocked", scope: !70, file: !70, line: 662, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!70 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!71 = !DISubroutineType(types: !72)
!72 = !{!25, !35, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !76)
!75 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !92, !93, !94, !95, !98, !100, !102, !106, !109, !111, !114, !117, !118, !120, !124, !125}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 51, baseType: !25, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 36, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 70, baseType: !73, size: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !97, line: 152, baseType: !52)
!97 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !97, line: 153, baseType: !52)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !74, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !75, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !74, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !75, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !74, file: !75, line: 93, baseType: !73, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !74, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 46, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DISubprogram(name: "set_program_name", scope: !130, file: !130, line: 37, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!130 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!131 = !DISubroutineType(types: !132)
!132 = !{null, !35}
!133 = !DISubprogram(name: "setlocale", scope: !134, file: !134, line: 122, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!134 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!135 = !DISubroutineType(types: !136)
!136 = !{!27, !25, !35}
!137 = !DISubprogram(name: "bindtextdomain", scope: !65, file: !65, line: 86, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!138 = !DISubroutineType(types: !139)
!139 = !{!27, !35, !35}
!140 = !DISubprogram(name: "textdomain", scope: !65, file: !65, line: 82, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!141 = !DISubroutineType(types: !142)
!142 = !{!27, !35}
!143 = !DISubprogram(name: "atexit", scope: !144, file: !144, line: 595, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!144 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!145 = !DISubroutineType(types: !146)
!146 = !{!25, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null}
!150 = !DISubprogram(name: "getopt_long", scope: !151, file: !151, line: 66, type: !152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!151 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!152 = !DISubroutineType(types: !153)
!153 = !{!25, !25, !154, !35, !156, !163}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !151, line: 50, size: 256, elements: !159)
!159 = !{!160, !161, !162, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !151, line: 52, baseType: !35, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !158, file: !151, line: 55, baseType: !25, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !158, file: !151, line: 56, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !158, file: !151, line: 57, baseType: !25, size: 32, offset: 192)
!165 = !DISubprogram(name: "version_etc", scope: !166, file: !166, line: 69, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!166 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !DISubroutineType(types: !168)
!168 = !{null, !73, !35, !35, !35, null}
!169 = !DISubprogram(name: "xstrtol", scope: !14, file: !14, line: 43, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!170 = !DISubroutineType(types: !171)
!171 = !{!13, !35, !26, !25, !172, !35}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!173 = !DISubprogram(name: "quote", scope: !174, file: !174, line: 44, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!174 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!175 = !DISubroutineType(types: !176)
!176 = !{!35, !35}
!177 = !DISubprogram(name: "error", scope: !178, file: !178, line: 52, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!178 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!179 = !DISubroutineType(types: !180)
!180 = !{null, !25, !25, !35, null}
!181 = !DISubprogram(name: "getpriority", scope: !182, file: !182, line: 93, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!182 = !DIFile(filename: "/usr/include/sys/resource.h", directory: "")
!183 = !DISubroutineType(types: !184)
!184 = !{!25, !57, !7}
!185 = !DISubprogram(name: "setpriority", scope: !182, file: !182, line: 97, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!186 = !DISubroutineType(types: !187)
!187 = !{!25, !57, !7, !25}
!188 = !DISubprogram(name: "execvp", scope: !189, file: !189, line: 578, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!189 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!190 = !DISubroutineType(types: !191)
!191 = !{!25, !35, !154}
!192 = !{!0}
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 4)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "Version", scope: !198, file: !199, line: 2, type: !35, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !200, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = !{!196}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "file_name", scope: !203, file: !204, line: 46, type: !35, isLocal: true, isDefinition: true)
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !205, globals: !244, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = !{!206, !64, !242, !177}
!206 = !DISubprogram(name: "close_stream", scope: !207, file: !207, line: 2, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!207 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !DISubroutineType(types: !209)
!209 = !{!25, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !211, file: !75, line: 51, baseType: !25, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !211, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !211, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !211, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !211, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !211, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !211, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !211, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !211, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !211, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !211, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !211, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !211, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !211, file: !75, line: 70, baseType: !210, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !211, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !211, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !211, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !211, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !211, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !211, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !211, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !211, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !211, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !211, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !211, file: !75, line: 93, baseType: !210, size: 64, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !211, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !211, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !211, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !211, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!242 = !DISubprogram(name: "quotearg_colon", scope: !243, file: !243, line: 391, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!243 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!244 = !{!201, !245}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !203, file: !204, line: 56, type: !38, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "exit_failure", scope: !249, file: !250, line: 24, type: !252, isLocal: false, isDefinition: true)
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !251, splitDebugInlining: false, nameTableKind: None)
!250 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!251 = !{!247}
!252 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "program_name", scope: !255, file: !256, line: 33, type: !35, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !257, globals: !293, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = !{!119, !258, !27}
!258 = !DISubprogram(name: "fputs", scope: !70, file: !70, line: 626, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!259 = !DISubroutineType(types: !260)
!260 = !{!25, !35, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !262, file: !75, line: 51, baseType: !25, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !262, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !262, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !262, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !262, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !262, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !262, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !262, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !262, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !262, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !262, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !262, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !262, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !262, file: !75, line: 70, baseType: !261, size: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !262, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !262, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !262, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !262, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !262, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !262, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !262, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !262, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !262, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !262, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !262, file: !75, line: 93, baseType: !261, size: 64, offset: 1344)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !262, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !262, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !262, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !262, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!293 = !{!253}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !296, file: !297, line: 85, type: !428, isLocal: false, isDefinition: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !297, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !298, retainedTypes: !332, globals: !401, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!298 = !{!299, !312, !317}
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !243, line: 32, baseType: !7, size: 32, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!301 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!302 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!303 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!304 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!305 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!306 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!307 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!308 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!309 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!310 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!311 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !243, line: 242, baseType: !7, size: 32, elements: !313)
!313 = !{!314, !315, !316}
!314 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!315 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!316 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 46, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!320 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!321 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!322 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!323 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!324 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!325 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!326 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!327 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!328 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!330 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!331 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!332 = !{!333, !339, !355, !358, !25, !99, !361, !121, !376, !380, !64, !386, !390, !27, !394, !397, !398}
!333 = !DISubprogram(name: "xmemdup", scope: !334, file: !334, line: 62, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!334 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!335 = !DISubroutineType(types: !336)
!336 = !{!119, !337, !123}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!339 = !DISubprogram(name: "quotearg_alloc_mem", scope: !243, file: !243, line: 342, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!340 = !DISubroutineType(types: !341)
!341 = !{!27, !35, !123, !342, !343}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !297, line: 65, size: 448, elements: !346)
!346 = !{!347, !348, !349, !353, !354}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !345, file: !297, line: 68, baseType: !299, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !297, line: 71, baseType: !25, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !345, file: !297, line: 75, baseType: !350, size: 256, offset: 64)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !345, file: !297, line: 78, baseType: !35, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !345, file: !297, line: 81, baseType: !35, size: 64, offset: 384)
!355 = !DISubprogram(name: "free", scope: !144, file: !144, line: 565, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !119}
!358 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !243, file: !243, line: 408, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!359 = !DISubroutineType(types: !360)
!360 = !{!27, !25, !35, !35, !35, !123}
!361 = !DISubprogram(name: "rpl_mbrtowc", scope: !362, file: !362, line: 717, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!362 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!363 = !DISubroutineType(types: !364)
!364 = !{!123, !163, !35, !123, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 13, size: 64, elements: !368)
!367 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !366, file: !367, line: 15, baseType: !25, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !366, file: !367, line: 20, baseType: !371, size: 32, offset: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 16, size: 32, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !371, file: !367, line: 18, baseType: !7, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !371, file: !367, line: 19, baseType: !375, size: 32)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !194)
!376 = !DISubprogram(name: "iswprint", scope: !377, file: !377, line: 120, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!377 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!378 = !DISubroutineType(types: !379)
!379 = !{!25, !7}
!380 = !DISubprogram(name: "mbsinit", scope: !381, file: !381, line: 292, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!381 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!382 = !DISubroutineType(types: !383)
!383 = !{!25, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!386 = !DISubprogram(name: "locale_charset", scope: !387, file: !387, line: 35, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!387 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!388 = !DISubroutineType(types: !389)
!389 = !{!35}
!390 = !DISubprogram(name: "c_strcasecmp", scope: !391, file: !391, line: 42, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!391 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!392 = !DISubroutineType(types: !393)
!393 = !{!25, !35, !35}
!394 = !DISubprogram(name: "xmalloc", scope: !334, file: !334, line: 53, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!395 = !DISubroutineType(types: !396)
!396 = !{!119, !123}
!397 = !DISubprogram(name: "xalloc_die", scope: !334, file: !334, line: 51, type: !148, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !68)
!398 = !DISubprogram(name: "xrealloc", scope: !334, file: !334, line: 59, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!399 = !DISubroutineType(types: !400)
!400 = !{!119, !119, !123}
!401 = !{!294, !402, !408, !410, !412, !417, !424, !426}
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !296, file: !297, line: 101, type: !404, isLocal: false, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 320, elements: !406)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!406 = !{!407}
!407 = !DISubrange(count: 10)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !296, file: !297, line: 1052, type: !345, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !296, file: !297, line: 116, type: !345, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "slot0", scope: !296, file: !297, line: 842, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 256)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "slotvec", scope: !296, file: !297, line: 845, type: !419, isLocal: true, isDefinition: true)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !297, line: 834, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !420, file: !297, line: 836, baseType: !121, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !297, line: 837, baseType: !27, size: 64, offset: 64)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "nslots", scope: !296, file: !297, line: 843, type: !25, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "slotvec0", scope: !296, file: !297, line: 844, type: !420, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 704, elements: !430)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!430 = !{!431}
!431 = !DISubrange(count: 11)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !434, file: !435, line: 26, type: !437, isLocal: false, isDefinition: true)
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, globals: !436, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!436 = !{!432}
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 47)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !442, retainedTypes: !446, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !{!443}
!443 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !441, line: 40, baseType: !7, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!446 = !{!64, !447, !119}
!447 = !DISubprogram(name: "fputs_unlocked", scope: !70, file: !70, line: 662, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!448 = !DISubroutineType(types: !449)
!449 = !{!25, !35, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !451, file: !75, line: 51, baseType: !25, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !451, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !451, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !451, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !451, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !451, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !451, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !451, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !451, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !451, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !451, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !451, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !451, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !451, file: !75, line: 70, baseType: !450, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !451, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !451, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !451, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !451, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !451, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !451, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !451, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !451, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !451, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !451, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !451, file: !75, line: 93, baseType: !450, size: 64, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !451, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !451, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !451, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !451, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!482 = distinct !DICompileUnit(language: DW_LANG_C99, file: !483, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !484, retainedTypes: !497, splitDebugInlining: false, nameTableKind: None)
!483 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!484 = !{!485}
!485 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !486, file: !334, line: 186, baseType: !7, size: 32, elements: !495)
!486 = distinct !DISubprogram(name: "x2nrealloc", scope: !334, file: !334, line: 174, type: !487, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !490)
!487 = !DISubroutineType(types: !488)
!488 = !{!119, !119, !489, !121}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!490 = !{!491, !492, !493, !494}
!491 = !DILocalVariable(name: "p", arg: 1, scope: !486, file: !334, line: 174, type: !119)
!492 = !DILocalVariable(name: "pn", arg: 2, scope: !486, file: !334, line: 174, type: !489)
!493 = !DILocalVariable(name: "s", arg: 3, scope: !486, file: !334, line: 174, type: !121)
!494 = !DILocalVariable(name: "n", scope: !486, file: !334, line: 176, type: !121)
!495 = !{!496}
!496 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!497 = !{!121, !397, !394, !398, !27, !355, !119, !498, !501}
!498 = !DISubprogram(name: "xcalloc", scope: !334, file: !334, line: 57, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!499 = !DISubroutineType(types: !500)
!500 = !{!119, !123, !123}
!501 = !DISubprogram(name: "rpl_calloc", scope: !502, file: !502, line: 688, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!502 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!505 = !{!64, !177}
!506 = distinct !DICompileUnit(language: DW_LANG_C99, file: !507, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !508, splitDebugInlining: false, nameTableKind: None)
!507 = !DIFile(filename: "lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!508 = !{!13}
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!119}
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !{!515, !121, !527}
!515 = !DISubprogram(name: "mbrtowc", scope: !381, file: !381, line: 296, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!516 = !DISubroutineType(types: !517)
!517 = !{!123, !163, !35, !123, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 13, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !367, line: 15, baseType: !25, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !519, file: !367, line: 20, baseType: !523, size: 32, offset: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !367, line: 16, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !523, file: !367, line: 18, baseType: !7, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !523, file: !367, line: 19, baseType: !375, size: 32)
!527 = !DISubprogram(name: "hard_locale", scope: !528, file: !528, line: 26, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!528 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!529 = !DISubroutineType(types: !530)
!530 = !{!38, !25}
!531 = distinct !DICompileUnit(language: DW_LANG_C99, file: !532, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !533, splitDebugInlining: false, nameTableKind: None)
!532 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!533 = !{!534}
!534 = !DISubprogram(name: "rpl_fclose", scope: !535, file: !535, line: 672, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!535 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!536 = !DISubroutineType(types: !537)
!537 = !{!25, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !539, file: !75, line: 51, baseType: !25, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !539, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !539, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !539, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !539, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !539, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !539, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !539, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !539, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !539, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !539, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !539, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !539, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !539, file: !75, line: 70, baseType: !538, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !539, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !539, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !539, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !539, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !539, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !539, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !539, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !539, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !539, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !539, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !539, file: !75, line: 93, baseType: !538, size: 64, offset: 1344)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !539, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !539, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !539, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !539, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !{!573}
!573 = !DISubprogram(name: "setlocale_null_r", scope: !574, file: !574, line: 64, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!574 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !DISubroutineType(types: !576)
!576 = !{!25, !25, !27, !123}
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !579, retainedTypes: !966, splitDebugInlining: false, nameTableKind: None)
!578 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!579 = !{!580}
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !581, line: 41, baseType: !7, size: 32, elements: !582)
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
!966 = !{!967, !119}
!967 = !DISubprogram(name: "nl_langinfo", scope: !581, file: !581, line: 661, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!968 = !DISubroutineType(types: !969)
!969 = !{!27, !25}
!970 = distinct !DICompileUnit(language: DW_LANG_C99, file: !971, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!972 = !{!119, !133}
!973 = distinct !DICompileUnit(language: DW_LANG_C99, file: !974, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!975 = !{!976, !1011, !1012, !1015}
!976 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!977 = !DISubroutineType(types: !978)
!978 = !{!25, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !980, file: !75, line: 51, baseType: !25, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !980, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !980, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !980, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !980, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !980, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !980, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !980, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !980, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !980, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !980, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !980, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !980, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !980, file: !75, line: 70, baseType: !979, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !980, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !980, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !980, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !980, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !980, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !980, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !980, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !980, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !980, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !980, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !980, file: !75, line: 93, baseType: !979, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !980, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !980, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !980, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !980, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!1011 = !DISubprogram(name: "fclose", scope: !70, file: !70, line: 213, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1012 = !DISubprogram(name: "lseek", scope: !189, file: !189, line: 334, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!52, !25, !52, !25}
!1015 = !DISubprogram(name: "rpl_fflush", scope: !535, file: !535, line: 718, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1016 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1017, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1018 = !{!119, !1019, !1054}
!1019 = !DISubprogram(name: "fflush", scope: !70, file: !70, line: 218, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!25, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1023, file: !75, line: 51, baseType: !25, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1023, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1023, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1023, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1023, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1023, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1023, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1023, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1023, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1023, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1023, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1023, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1023, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1023, file: !75, line: 70, baseType: !1022, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1023, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1023, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1023, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1023, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1023, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1023, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1023, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1023, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1023, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1023, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1023, file: !75, line: 93, baseType: !1022, size: 64, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1023, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1023, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1023, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1023, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!1054 = !DISubprogram(name: "rpl_fseeko", scope: !535, file: !535, line: 1034, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!25, !1022, !52, !25}
!1057 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1058, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !68, retainedTypes: !1059, splitDebugInlining: false, nameTableKind: None)
!1058 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1059 = !{!119, !1060, !1012, !1095}
!1060 = !DISubprogram(name: "fileno", scope: !70, file: !70, line: 786, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!25, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 49, size: 1728, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1064, file: !75, line: 51, baseType: !25, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1064, file: !75, line: 54, baseType: !27, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1064, file: !75, line: 55, baseType: !27, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1064, file: !75, line: 56, baseType: !27, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1064, file: !75, line: 57, baseType: !27, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1064, file: !75, line: 58, baseType: !27, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1064, file: !75, line: 59, baseType: !27, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1064, file: !75, line: 60, baseType: !27, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1064, file: !75, line: 61, baseType: !27, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1064, file: !75, line: 64, baseType: !27, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1064, file: !75, line: 65, baseType: !27, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1064, file: !75, line: 66, baseType: !27, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1064, file: !75, line: 68, baseType: !90, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1064, file: !75, line: 70, baseType: !1063, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1064, file: !75, line: 72, baseType: !25, size: 32, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1064, file: !75, line: 73, baseType: !25, size: 32, offset: 928)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1064, file: !75, line: 74, baseType: !96, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1064, file: !75, line: 77, baseType: !99, size: 16, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1064, file: !75, line: 78, baseType: !101, size: 8, offset: 1040)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1064, file: !75, line: 79, baseType: !103, size: 8, offset: 1048)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1064, file: !75, line: 81, baseType: !107, size: 64, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1064, file: !75, line: 89, baseType: !110, size: 64, offset: 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1064, file: !75, line: 91, baseType: !112, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1064, file: !75, line: 92, baseType: !115, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1064, file: !75, line: 93, baseType: !1063, size: 64, offset: 1344)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1064, file: !75, line: 94, baseType: !119, size: 64, offset: 1408)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1064, file: !75, line: 95, baseType: !121, size: 64, offset: 1472)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1064, file: !75, line: 96, baseType: !25, size: 32, offset: 1536)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1064, file: !75, line: 98, baseType: !126, size: 160, offset: 1568)
!1095 = !DISubprogram(name: "fseeko", scope: !70, file: !70, line: 707, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !68)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!25, !1063, !52, !25}
!1098 = !{!"clang version 10.0.0 "}
!1099 = !{i32 7, !"Dwarf Version", i32 4}
!1100 = !{i32 2, !"Debug Info Version", i32 3}
!1101 = !{i32 1, !"wchar_size", i32 4}
!1102 = !{i32 7, !"PIC Level", i32 2}
!1103 = !{i32 7, !"PIE Level", i32 2}
!1104 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !1105, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !25}
!1107 = !{!1108}
!1108 = !DILocalVariable(name: "status", arg: 1, scope: !1104, file: !3, line: 67, type: !25)
!1109 = !DILocalVariable(name: "infomap", scope: !1110, file: !6, line: 636, type: !1122)
!1110 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 634, type: !131, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1111 = !{!1112, !1109, !1113, !1114, !1121}
!1112 = !DILocalVariable(name: "program", arg: 1, scope: !1110, file: !6, line: 634, type: !35)
!1113 = !DILocalVariable(name: "node", scope: !1110, file: !6, line: 646, type: !35)
!1114 = !DILocalVariable(name: "map_prog", scope: !1110, file: !6, line: 647, type: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1110, file: !6, line: 636, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1117, file: !6, line: 636, baseType: !35, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1117, file: !6, line: 636, baseType: !35, size: 64, offset: 64)
!1121 = !DILocalVariable(name: "lc_messages", scope: !1110, file: !6, line: 659, type: !35)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 896, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 7)
!1125 = !DILocation(line: 636, column: 67, scope: !1110, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 89, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 72, column: 5)
!1128 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 69, column: 7)
!1129 = !DILocation(line: 0, scope: !1104)
!1130 = !DILocation(line: 69, column: 14, scope: !1128)
!1131 = !DILocation(line: 69, column: 7, scope: !1104)
!1132 = !DILocation(line: 70, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 70, column: 5)
!1134 = !{!1135, !1135, i64 0}
!1135 = !{!"any pointer", !1136, i64 0}
!1136 = !{!"omnipotent char", !1137, i64 0}
!1137 = !{!"Simple C/C++ TBAA"}
!1138 = !DILocation(line: 73, column: 7, scope: !1127)
!1139 = !DILocation(line: 74, column: 7, scope: !1127)
!1140 = !DILocation(line: 590, column: 3, scope: !1141, inlinedAt: !1142)
!1141 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 588, type: !148, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!1142 = distinct !DILocation(line: 81, column: 7, scope: !1127)
!1143 = !DILocation(line: 83, column: 7, scope: !1127)
!1144 = !DILocation(line: 86, column: 7, scope: !1127)
!1145 = !DILocation(line: 87, column: 7, scope: !1127)
!1146 = !DILocation(line: 88, column: 7, scope: !1127)
!1147 = !DILocation(line: 0, scope: !1110, inlinedAt: !1126)
!1148 = !DILocation(line: 636, column: 3, scope: !1110, inlinedAt: !1126)
!1149 = !DILocation(line: 647, column: 36, scope: !1110, inlinedAt: !1126)
!1150 = !DILocation(line: 649, column: 3, scope: !1110, inlinedAt: !1126)
!1151 = !DILocation(line: 649, column: 33, scope: !1110, inlinedAt: !1126)
!1152 = !DILocation(line: 650, column: 13, scope: !1110, inlinedAt: !1126)
!1153 = !DILocation(line: 649, column: 20, scope: !1110, inlinedAt: !1126)
!1154 = !{!1155, !1135, i64 0}
!1155 = !{!"infomap", !1135, i64 0, !1135, i64 8}
!1156 = !DILocation(line: 649, column: 10, scope: !1110, inlinedAt: !1126)
!1157 = !DILocation(line: 649, column: 28, scope: !1110, inlinedAt: !1126)
!1158 = distinct !{!1158, !1150, !1152}
!1159 = !DILocation(line: 652, column: 17, scope: !1160, inlinedAt: !1126)
!1160 = distinct !DILexicalBlock(scope: !1110, file: !6, line: 652, column: 7)
!1161 = !{!1155, !1135, i64 8}
!1162 = !DILocation(line: 652, column: 7, scope: !1160, inlinedAt: !1126)
!1163 = !DILocation(line: 652, column: 7, scope: !1110, inlinedAt: !1126)
!1164 = !DILocation(line: 655, column: 3, scope: !1110, inlinedAt: !1126)
!1165 = !DILocation(line: 659, column: 29, scope: !1110, inlinedAt: !1126)
!1166 = !DILocation(line: 660, column: 7, scope: !1167, inlinedAt: !1126)
!1167 = distinct !DILexicalBlock(scope: !1110, file: !6, line: 660, column: 7)
!1168 = !DILocation(line: 660, column: 19, scope: !1167, inlinedAt: !1126)
!1169 = !DILocation(line: 660, column: 22, scope: !1167, inlinedAt: !1126)
!1170 = !DILocation(line: 660, column: 7, scope: !1110, inlinedAt: !1126)
!1171 = !DILocation(line: 666, column: 7, scope: !1172, inlinedAt: !1126)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !6, line: 661, column: 5)
!1173 = !DILocation(line: 668, column: 5, scope: !1172, inlinedAt: !1126)
!1174 = !DILocation(line: 669, column: 3, scope: !1110, inlinedAt: !1126)
!1175 = !DILocation(line: 671, column: 3, scope: !1110, inlinedAt: !1126)
!1176 = !DILocation(line: 673, column: 1, scope: !1110, inlinedAt: !1126)
!1177 = !DILocation(line: 91, column: 3, scope: !1104)
!1178 = !DILocation(line: 0, scope: !22)
!1179 = !DILocation(line: 110, column: 21, scope: !22)
!1180 = !DILocation(line: 110, column: 3, scope: !22)
!1181 = !DILocation(line: 111, column: 3, scope: !22)
!1182 = !DILocation(line: 112, column: 3, scope: !22)
!1183 = !DILocation(line: 113, column: 3, scope: !22)
!1184 = !DILocalVariable(name: "status", arg: 1, scope: !1185, file: !6, line: 99, type: !25)
!1185 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !1105, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1186 = !{!1184}
!1187 = !DILocation(line: 0, scope: !1185, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 115, column: 3, scope: !22)
!1189 = !DILocation(line: 102, column: 18, scope: !1190, inlinedAt: !1188)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !6, line: 101, column: 7)
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"int", !1136, i64 0}
!1193 = !DILocation(line: 116, column: 3, scope: !22)
!1194 = !DILocation(line: 118, column: 17, scope: !42)
!1195 = !DILocation(line: 118, column: 3, scope: !43)
!1196 = !DILocation(line: 0, scope: !45)
!1197 = !DILocation(line: 120, column: 23, scope: !41)
!1198 = !DILocation(line: 0, scope: !41)
!1199 = !DILocation(line: 122, column: 11, scope: !46)
!1200 = !{!1136, !1136, i64 0}
!1201 = !DILocation(line: 122, column: 16, scope: !46)
!1202 = !DILocation(line: 122, column: 23, scope: !46)
!1203 = !DILocation(line: 122, column: 26, scope: !46)
!1204 = !DILocation(line: 122, column: 11, scope: !41)
!1205 = !DILocation(line: 125, column: 11, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !46, file: !3, line: 123, column: 9)
!1207 = !DILocation(line: 126, column: 9, scope: !1206)
!1208 = !DILocation(line: 130, column: 37, scope: !45)
!1209 = !DILocation(line: 130, column: 32, scope: !45)
!1210 = !DILocation(line: 131, column: 35, scope: !45)
!1211 = !DILocation(line: 134, column: 26, scope: !45)
!1212 = !DILocation(line: 134, column: 24, scope: !45)
!1213 = !DILocation(line: 137, column: 18, scope: !45)
!1214 = !DILocation(line: 139, column: 15, scope: !45)
!1215 = !DILocation(line: 140, column: 16, scope: !45)
!1216 = !DILocation(line: 140, column: 13, scope: !45)
!1217 = !DILocation(line: 142, column: 11, scope: !45)
!1218 = !DILocation(line: 145, column: 34, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !45, file: !3, line: 143, column: 13)
!1220 = !DILocation(line: 151, column: 13, scope: !1219)
!1221 = !DILocation(line: 153, column: 13, scope: !1219)
!1222 = !DILocation(line: 156, column: 15, scope: !1219)
!1223 = !DILocation(line: 0, scope: !46)
!1224 = !DILocation(line: 0, scope: !43)
!1225 = !DILocation(line: 165, column: 7, scope: !51)
!1226 = !DILocation(line: 165, column: 7, scope: !22)
!1227 = !DILocation(line: 171, column: 7, scope: !50)
!1228 = !DILocation(line: 0, scope: !50)
!1229 = !DILocation(line: 172, column: 30, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !50, file: !3, line: 172, column: 11)
!1231 = !DILocation(line: 172, column: 28, scope: !1230)
!1232 = !DILocation(line: 172, column: 11, scope: !50)
!1233 = !DILocation(line: 173, column: 9, scope: !1230)
!1234 = !DILocation(line: 175, column: 20, scope: !50)
!1235 = !{!1236, !1236, i64 0}
!1236 = !{!"long", !1136, i64 0}
!1237 = !DILocation(line: 176, column: 5, scope: !51)
!1238 = !DILocation(line: 176, column: 5, scope: !50)
!1239 = !DILocation(line: 178, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !22, file: !3, line: 178, column: 7)
!1241 = !DILocation(line: 178, column: 7, scope: !22)
!1242 = !DILocation(line: 180, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 179, column: 5)
!1244 = !DILocation(line: 182, column: 24, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 181, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 180, column: 11)
!1247 = !DILocation(line: 182, column: 11, scope: !1245)
!1248 = !DILocation(line: 183, column: 11, scope: !1245)
!1249 = !DILocation(line: 186, column: 7, scope: !1243)
!1250 = !DILocation(line: 186, column: 13, scope: !1243)
!1251 = !DILocation(line: 187, column: 26, scope: !1243)
!1252 = !DILocation(line: 188, column: 28, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 188, column: 11)
!1254 = !DILocation(line: 188, column: 34, scope: !1253)
!1255 = !DILocation(line: 188, column: 37, scope: !1253)
!1256 = !DILocation(line: 188, column: 43, scope: !1253)
!1257 = !DILocation(line: 188, column: 11, scope: !1243)
!1258 = !DILocation(line: 189, column: 9, scope: !1253)
!1259 = !DILocation(line: 190, column: 7, scope: !1243)
!1260 = !DILocation(line: 191, column: 7, scope: !1243)
!1261 = !DILocation(line: 194, column: 3, scope: !22)
!1262 = !DILocation(line: 194, column: 9, scope: !22)
!1263 = !DILocation(line: 198, column: 22, scope: !22)
!1264 = !DILocation(line: 199, column: 24, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !22, file: !3, line: 199, column: 7)
!1266 = !DILocation(line: 199, column: 30, scope: !1265)
!1267 = !DILocation(line: 199, column: 33, scope: !1265)
!1268 = !DILocation(line: 199, column: 39, scope: !1265)
!1269 = !DILocation(line: 199, column: 7, scope: !22)
!1270 = !DILocation(line: 200, column: 5, scope: !1265)
!1271 = !DILocation(line: 201, column: 56, scope: !22)
!1272 = !DILocation(line: 201, column: 9, scope: !22)
!1273 = !DILocation(line: 201, column: 70, scope: !22)
!1274 = !DILocation(line: 203, column: 7, scope: !22)
!1275 = !DILocation(line: 205, column: 34, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 204, column: 5)
!1277 = distinct !DILexicalBlock(scope: !22, file: !3, line: 203, column: 7)
!1278 = !DILocalVariable(name: "err", arg: 1, scope: !1279, file: !3, line: 95, type: !25)
!1279 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 95, type: !529, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1280 = !{!1278}
!1281 = !DILocation(line: 0, scope: !1279, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 205, column: 14, scope: !1276)
!1283 = !DILocation(line: 97, column: 14, scope: !1279, inlinedAt: !1282)
!1284 = !DILocation(line: 97, column: 24, scope: !1279, inlinedAt: !1282)
!1285 = !DILocation(line: 205, column: 14, scope: !1276)
!1286 = !DILocation(line: 206, column: 38, scope: !1276)
!1287 = !DILocation(line: 205, column: 7, scope: !1276)
!1288 = !DILocation(line: 212, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 212, column: 11)
!1290 = !DILocalVariable(name: "__stream", arg: 1, scope: !1291, file: !1292, line: 135, type: !1295)
!1291 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1292, file: !1292, line: 135, type: !1293, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1292 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!25, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !74)
!1297 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1298 = !{!1290}
!1299 = !DILocation(line: 0, scope: !1291, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 212, column: 11, scope: !1289)
!1301 = !DILocation(line: 137, column: 10, scope: !1291, inlinedAt: !1300)
!1302 = !{!1303, !1192, i64 0}
!1303 = !{!"_IO_FILE", !1192, i64 0, !1135, i64 8, !1135, i64 16, !1135, i64 24, !1135, i64 32, !1135, i64 40, !1135, i64 48, !1135, i64 56, !1135, i64 64, !1135, i64 72, !1135, i64 80, !1135, i64 88, !1135, i64 96, !1135, i64 104, !1192, i64 112, !1192, i64 116, !1236, i64 120, !1304, i64 128, !1136, i64 130, !1136, i64 131, !1135, i64 136, !1236, i64 144, !1135, i64 152, !1135, i64 160, !1135, i64 168, !1135, i64 176, !1236, i64 184, !1192, i64 192, !1136, i64 196}
!1304 = !{!"short", !1136, i64 0}
!1305 = !DILocation(line: 212, column: 11, scope: !1276)
!1306 = !DILocation(line: 216, column: 11, scope: !22)
!1307 = !DILocation(line: 216, column: 3, scope: !22)
!1308 = !DILocation(line: 218, column: 21, scope: !22)
!1309 = !DILocation(line: 218, column: 27, scope: !22)
!1310 = !DILocation(line: 219, column: 33, scope: !22)
!1311 = !DILocation(line: 219, column: 26, scope: !22)
!1312 = !DILocation(line: 219, column: 3, scope: !22)
!1313 = !DILocation(line: 221, column: 1, scope: !22)
!1314 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !204, file: !204, line: 51, type: !131, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1315)
!1315 = !{!1316}
!1316 = !DILocalVariable(name: "file", arg: 1, scope: !1314, file: !204, line: 51, type: !35)
!1317 = !DILocation(line: 0, scope: !1314)
!1318 = !DILocation(line: 53, column: 13, scope: !1314)
!1319 = !DILocation(line: 54, column: 1, scope: !1314)
!1320 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !204, file: !204, line: 88, type: !1321, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !38}
!1323 = !{!1324}
!1324 = !DILocalVariable(name: "ignore", arg: 1, scope: !1320, file: !204, line: 88, type: !38)
!1325 = !DILocation(line: 0, scope: !1320)
!1326 = !DILocation(line: 90, column: 16, scope: !1320)
!1327 = !{!1328, !1328, i64 0}
!1328 = !{!"_Bool", !1136, i64 0}
!1329 = !DILocation(line: 91, column: 1, scope: !1320)
!1330 = distinct !DISubprogram(name: "close_stdout", scope: !204, file: !204, line: 117, type: !148, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "write_error", scope: !1333, file: !204, line: 122, type: !35)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !204, line: 121, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !204, line: 119, column: 7)
!1335 = !DILocation(line: 119, column: 21, scope: !1334)
!1336 = !DILocation(line: 119, column: 7, scope: !1334)
!1337 = !DILocation(line: 119, column: 29, scope: !1334)
!1338 = !DILocation(line: 120, column: 7, scope: !1334)
!1339 = !DILocation(line: 120, column: 12, scope: !1334)
!1340 = !{i8 0, i8 2}
!1341 = !DILocation(line: 120, column: 25, scope: !1334)
!1342 = !DILocation(line: 120, column: 28, scope: !1334)
!1343 = !DILocation(line: 120, column: 34, scope: !1334)
!1344 = !DILocation(line: 119, column: 7, scope: !1330)
!1345 = !DILocation(line: 122, column: 33, scope: !1333)
!1346 = !DILocation(line: 0, scope: !1333)
!1347 = !DILocation(line: 123, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1333, file: !204, line: 123, column: 11)
!1349 = !DILocation(line: 0, scope: !1348)
!1350 = !DILocation(line: 123, column: 11, scope: !1333)
!1351 = !DILocation(line: 124, column: 36, scope: !1348)
!1352 = !DILocation(line: 124, column: 9, scope: !1348)
!1353 = !DILocation(line: 127, column: 9, scope: !1348)
!1354 = !DILocation(line: 129, column: 14, scope: !1333)
!1355 = !DILocation(line: 129, column: 7, scope: !1333)
!1356 = !DILocation(line: 134, column: 42, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1330, file: !204, line: 134, column: 7)
!1358 = !DILocation(line: 134, column: 28, scope: !1357)
!1359 = !DILocation(line: 134, column: 50, scope: !1357)
!1360 = !DILocation(line: 134, column: 7, scope: !1330)
!1361 = !DILocation(line: 135, column: 12, scope: !1357)
!1362 = !DILocation(line: 135, column: 5, scope: !1357)
!1363 = !DILocation(line: 136, column: 1, scope: !1330)
!1364 = distinct !DISubprogram(name: "set_program_name", scope: !256, file: !256, line: 39, type: !131, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "argv0", arg: 1, scope: !1364, file: !256, line: 39, type: !35)
!1367 = !DILocalVariable(name: "slash", scope: !1364, file: !256, line: 46, type: !35)
!1368 = !DILocalVariable(name: "base", scope: !1364, file: !256, line: 47, type: !35)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocation(line: 51, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1364, file: !256, line: 51, column: 7)
!1372 = !DILocation(line: 51, column: 7, scope: !1364)
!1373 = !DILocation(line: 55, column: 14, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !256, line: 52, column: 5)
!1375 = !DILocation(line: 54, column: 7, scope: !1374)
!1376 = !DILocation(line: 56, column: 7, scope: !1374)
!1377 = !DILocation(line: 59, column: 11, scope: !1364)
!1378 = !DILocation(line: 60, column: 17, scope: !1364)
!1379 = !DILocation(line: 60, column: 11, scope: !1364)
!1380 = !DILocation(line: 61, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1364, file: !256, line: 61, column: 7)
!1382 = !DILocation(line: 61, column: 20, scope: !1381)
!1383 = !DILocation(line: 61, column: 25, scope: !1381)
!1384 = !DILocation(line: 61, column: 42, scope: !1381)
!1385 = !DILocation(line: 61, column: 28, scope: !1381)
!1386 = !DILocation(line: 61, column: 61, scope: !1381)
!1387 = !DILocation(line: 61, column: 7, scope: !1364)
!1388 = !DILocation(line: 64, column: 11, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !256, line: 64, column: 11)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !256, line: 62, column: 5)
!1391 = !DILocation(line: 64, column: 36, scope: !1389)
!1392 = !DILocation(line: 64, column: 11, scope: !1390)
!1393 = !DILocation(line: 66, column: 24, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !256, line: 65, column: 9)
!1395 = !DILocation(line: 70, column: 41, scope: !1394)
!1396 = !DILocation(line: 72, column: 9, scope: !1394)
!1397 = !DILocation(line: 84, column: 16, scope: !1364)
!1398 = !DILocation(line: 90, column: 27, scope: !1364)
!1399 = !DILocation(line: 92, column: 1, scope: !1364)
!1400 = distinct !DISubprogram(name: "clone_quoting_options", scope: !297, file: !297, line: 122, type: !1401, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1404)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!1403, !1403}
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1404 = !{!1405, !1406, !1407}
!1405 = !DILocalVariable(name: "o", arg: 1, scope: !1400, file: !297, line: 122, type: !1403)
!1406 = !DILocalVariable(name: "e", scope: !1400, file: !297, line: 124, type: !25)
!1407 = !DILocalVariable(name: "p", scope: !1400, file: !297, line: 125, type: !1403)
!1408 = !DILocation(line: 0, scope: !1400)
!1409 = !DILocation(line: 124, column: 11, scope: !1400)
!1410 = !DILocation(line: 125, column: 40, scope: !1400)
!1411 = !DILocation(line: 125, column: 31, scope: !1400)
!1412 = !DILocation(line: 127, column: 9, scope: !1400)
!1413 = !DILocation(line: 128, column: 3, scope: !1400)
!1414 = distinct !DISubprogram(name: "get_quoting_style", scope: !297, file: !297, line: 133, type: !1415, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!299, !343}
!1417 = !{!1418}
!1418 = !DILocalVariable(name: "o", arg: 1, scope: !1414, file: !297, line: 133, type: !343)
!1419 = !DILocation(line: 0, scope: !1414)
!1420 = !DILocation(line: 135, column: 11, scope: !1414)
!1421 = !DILocation(line: 135, column: 46, scope: !1414)
!1422 = !{!1423, !1136, i64 0}
!1423 = !{!"quoting_options", !1136, i64 0, !1192, i64 4, !1136, i64 8, !1135, i64 40, !1135, i64 48}
!1424 = !DILocation(line: 135, column: 3, scope: !1414)
!1425 = distinct !DISubprogram(name: "set_quoting_style", scope: !297, file: !297, line: 141, type: !1426, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1403, !299}
!1428 = !{!1429, !1430}
!1429 = !DILocalVariable(name: "o", arg: 1, scope: !1425, file: !297, line: 141, type: !1403)
!1430 = !DILocalVariable(name: "s", arg: 2, scope: !1425, file: !297, line: 141, type: !299)
!1431 = !DILocation(line: 0, scope: !1425)
!1432 = !DILocation(line: 143, column: 4, scope: !1425)
!1433 = !DILocation(line: 143, column: 39, scope: !1425)
!1434 = !DILocation(line: 143, column: 45, scope: !1425)
!1435 = !DILocation(line: 144, column: 1, scope: !1425)
!1436 = distinct !DISubprogram(name: "set_char_quoting", scope: !297, file: !297, line: 152, type: !1437, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!25, !1403, !28, !25}
!1439 = !{!1440, !1441, !1442, !1443, !1445, !1447, !1448}
!1440 = !DILocalVariable(name: "o", arg: 1, scope: !1436, file: !297, line: 152, type: !1403)
!1441 = !DILocalVariable(name: "c", arg: 2, scope: !1436, file: !297, line: 152, type: !28)
!1442 = !DILocalVariable(name: "i", arg: 3, scope: !1436, file: !297, line: 152, type: !25)
!1443 = !DILocalVariable(name: "uc", scope: !1436, file: !297, line: 154, type: !1444)
!1444 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1445 = !DILocalVariable(name: "p", scope: !1436, file: !297, line: 155, type: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1447 = !DILocalVariable(name: "shift", scope: !1436, file: !297, line: 157, type: !25)
!1448 = !DILocalVariable(name: "r", scope: !1436, file: !297, line: 158, type: !25)
!1449 = !DILocation(line: 0, scope: !1436)
!1450 = !DILocation(line: 156, column: 6, scope: !1436)
!1451 = !DILocation(line: 156, column: 62, scope: !1436)
!1452 = !DILocation(line: 156, column: 57, scope: !1436)
!1453 = !DILocation(line: 157, column: 15, scope: !1436)
!1454 = !DILocation(line: 158, column: 12, scope: !1436)
!1455 = !DILocation(line: 158, column: 15, scope: !1436)
!1456 = !DILocation(line: 158, column: 25, scope: !1436)
!1457 = !DILocation(line: 159, column: 13, scope: !1436)
!1458 = !DILocation(line: 159, column: 18, scope: !1436)
!1459 = !DILocation(line: 159, column: 23, scope: !1436)
!1460 = !DILocation(line: 159, column: 6, scope: !1436)
!1461 = !DILocation(line: 160, column: 3, scope: !1436)
!1462 = distinct !DISubprogram(name: "set_quoting_flags", scope: !297, file: !297, line: 168, type: !1463, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1465)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!25, !1403, !25}
!1465 = !{!1466, !1467, !1468}
!1466 = !DILocalVariable(name: "o", arg: 1, scope: !1462, file: !297, line: 168, type: !1403)
!1467 = !DILocalVariable(name: "i", arg: 2, scope: !1462, file: !297, line: 168, type: !25)
!1468 = !DILocalVariable(name: "r", scope: !1462, file: !297, line: 170, type: !25)
!1469 = !DILocation(line: 0, scope: !1462)
!1470 = !DILocation(line: 171, column: 8, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1462, file: !297, line: 171, column: 7)
!1472 = !DILocation(line: 171, column: 7, scope: !1462)
!1473 = !DILocation(line: 173, column: 10, scope: !1462)
!1474 = !{!1423, !1192, i64 4}
!1475 = !DILocation(line: 174, column: 12, scope: !1462)
!1476 = !DILocation(line: 175, column: 3, scope: !1462)
!1477 = distinct !DISubprogram(name: "set_custom_quoting", scope: !297, file: !297, line: 179, type: !1478, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1403, !35, !35}
!1480 = !{!1481, !1482, !1483}
!1481 = !DILocalVariable(name: "o", arg: 1, scope: !1477, file: !297, line: 179, type: !1403)
!1482 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1477, file: !297, line: 180, type: !35)
!1483 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1477, file: !297, line: 180, type: !35)
!1484 = !DILocation(line: 0, scope: !1477)
!1485 = !DILocation(line: 182, column: 8, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !297, line: 182, column: 7)
!1487 = !DILocation(line: 182, column: 7, scope: !1477)
!1488 = !DILocation(line: 184, column: 6, scope: !1477)
!1489 = !DILocation(line: 184, column: 12, scope: !1477)
!1490 = !DILocation(line: 185, column: 8, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1477, file: !297, line: 185, column: 7)
!1492 = !DILocation(line: 185, column: 23, scope: !1491)
!1493 = !DILocation(line: 185, column: 19, scope: !1491)
!1494 = !DILocation(line: 186, column: 5, scope: !1491)
!1495 = !DILocation(line: 187, column: 6, scope: !1477)
!1496 = !DILocation(line: 187, column: 17, scope: !1477)
!1497 = !{!1423, !1135, i64 40}
!1498 = !DILocation(line: 188, column: 6, scope: !1477)
!1499 = !DILocation(line: 188, column: 18, scope: !1477)
!1500 = !{!1423, !1135, i64 48}
!1501 = !DILocation(line: 189, column: 1, scope: !1477)
!1502 = distinct !DISubprogram(name: "quotearg_buffer", scope: !297, file: !297, line: 784, type: !1503, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!121, !27, !121, !35, !121, !343}
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1506 = !DILocalVariable(name: "buffer", arg: 1, scope: !1502, file: !297, line: 784, type: !27)
!1507 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1502, file: !297, line: 784, type: !121)
!1508 = !DILocalVariable(name: "arg", arg: 3, scope: !1502, file: !297, line: 785, type: !35)
!1509 = !DILocalVariable(name: "argsize", arg: 4, scope: !1502, file: !297, line: 785, type: !121)
!1510 = !DILocalVariable(name: "o", arg: 5, scope: !1502, file: !297, line: 786, type: !343)
!1511 = !DILocalVariable(name: "p", scope: !1502, file: !297, line: 788, type: !343)
!1512 = !DILocalVariable(name: "e", scope: !1502, file: !297, line: 789, type: !25)
!1513 = !DILocalVariable(name: "r", scope: !1502, file: !297, line: 790, type: !121)
!1514 = !DILocation(line: 0, scope: !1502)
!1515 = !DILocation(line: 788, column: 37, scope: !1502)
!1516 = !DILocation(line: 789, column: 11, scope: !1502)
!1517 = !DILocation(line: 791, column: 43, scope: !1502)
!1518 = !DILocation(line: 791, column: 53, scope: !1502)
!1519 = !DILocation(line: 791, column: 60, scope: !1502)
!1520 = !DILocation(line: 792, column: 43, scope: !1502)
!1521 = !DILocation(line: 792, column: 58, scope: !1502)
!1522 = !DILocation(line: 790, column: 14, scope: !1502)
!1523 = !DILocation(line: 793, column: 9, scope: !1502)
!1524 = !DILocation(line: 794, column: 3, scope: !1502)
!1525 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !297, file: !297, line: 256, type: !1526, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1530)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!121, !27, !121, !35, !121, !299, !25, !1528, !35, !35}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1555, !1556, !1557, !1558, !1559, !1562, !1563, !1569, !1572, !1573, !1580, !1583, !1584, !1585, !1586, !1587, !1588}
!1531 = !DILocalVariable(name: "buffer", arg: 1, scope: !1525, file: !297, line: 256, type: !27)
!1532 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1525, file: !297, line: 256, type: !121)
!1533 = !DILocalVariable(name: "arg", arg: 3, scope: !1525, file: !297, line: 257, type: !35)
!1534 = !DILocalVariable(name: "argsize", arg: 4, scope: !1525, file: !297, line: 257, type: !121)
!1535 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1525, file: !297, line: 258, type: !299)
!1536 = !DILocalVariable(name: "flags", arg: 6, scope: !1525, file: !297, line: 258, type: !25)
!1537 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1525, file: !297, line: 259, type: !1528)
!1538 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1525, file: !297, line: 260, type: !35)
!1539 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1525, file: !297, line: 261, type: !35)
!1540 = !DILocalVariable(name: "i", scope: !1525, file: !297, line: 263, type: !121)
!1541 = !DILocalVariable(name: "len", scope: !1525, file: !297, line: 264, type: !121)
!1542 = !DILocalVariable(name: "orig_buffersize", scope: !1525, file: !297, line: 265, type: !121)
!1543 = !DILocalVariable(name: "quote_string", scope: !1525, file: !297, line: 266, type: !35)
!1544 = !DILocalVariable(name: "quote_string_len", scope: !1525, file: !297, line: 267, type: !121)
!1545 = !DILocalVariable(name: "backslash_escapes", scope: !1525, file: !297, line: 268, type: !38)
!1546 = !DILocalVariable(name: "unibyte_locale", scope: !1525, file: !297, line: 269, type: !38)
!1547 = !DILocalVariable(name: "elide_outer_quotes", scope: !1525, file: !297, line: 270, type: !38)
!1548 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1525, file: !297, line: 271, type: !38)
!1549 = !DILocalVariable(name: "encountered_single_quote", scope: !1525, file: !297, line: 272, type: !38)
!1550 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1525, file: !297, line: 273, type: !38)
!1551 = !DILocalVariable(name: "c", scope: !1552, file: !297, line: 402, type: !1444)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !297, line: 401, column: 5)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !297, line: 400, column: 3)
!1554 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 400, column: 3)
!1555 = !DILocalVariable(name: "esc", scope: !1552, file: !297, line: 403, type: !1444)
!1556 = !DILocalVariable(name: "is_right_quote", scope: !1552, file: !297, line: 404, type: !38)
!1557 = !DILocalVariable(name: "escaping", scope: !1552, file: !297, line: 405, type: !38)
!1558 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1552, file: !297, line: 406, type: !38)
!1559 = !DILocalVariable(name: "m", scope: !1560, file: !297, line: 610, type: !121)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 608, column: 11)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 426, column: 9)
!1562 = !DILocalVariable(name: "printable", scope: !1560, file: !297, line: 612, type: !38)
!1563 = !DILocalVariable(name: "mbstate", scope: !1564, file: !297, line: 621, type: !1566)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !297, line: 620, column: 15)
!1565 = distinct !DILexicalBlock(scope: !1560, file: !297, line: 614, column: 17)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1567, line: 6, baseType: !1568)
!1567 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !367, line: 21, baseType: !366)
!1569 = !DILocalVariable(name: "w", scope: !1570, file: !297, line: 631, type: !1571)
!1570 = distinct !DILexicalBlock(scope: !1564, file: !297, line: 630, column: 19)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 74, baseType: !25)
!1572 = !DILocalVariable(name: "bytes", scope: !1570, file: !297, line: 632, type: !121)
!1573 = !DILocalVariable(name: "j", scope: !1574, file: !297, line: 657, type: !121)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !297, line: 656, column: 27)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !297, line: 654, column: 29)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !297, line: 649, column: 23)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !297, line: 641, column: 30)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !297, line: 636, column: 30)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !297, line: 634, column: 25)
!1580 = !DILocalVariable(name: "ilim", scope: !1581, file: !297, line: 684, type: !121)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !297, line: 681, column: 15)
!1582 = distinct !DILexicalBlock(scope: !1560, file: !297, line: 680, column: 17)
!1583 = !DILabel(scope: !1525, name: "process_input", file: !297, line: 314)
!1584 = !DILabel(scope: !1561, name: "c_and_shell_escape", file: !297, line: 512)
!1585 = !DILabel(scope: !1561, name: "c_escape", file: !297, line: 517)
!1586 = !DILabel(scope: !1552, name: "store_escape", file: !297, line: 719)
!1587 = !DILabel(scope: !1552, name: "store_c", file: !297, line: 722)
!1588 = !DILabel(scope: !1525, name: "force_outer_quoting_style", file: !297, line: 763)
!1589 = !DILocation(line: 0, scope: !1525)
!1590 = !DILocation(line: 269, column: 25, scope: !1525)
!1591 = !DILocation(line: 269, column: 36, scope: !1525)
!1592 = !DILocation(line: 270, column: 8, scope: !1525)
!1593 = !DILocation(line: 0, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 526, column: 15)
!1595 = !DILocation(line: 0, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !297, line: 462, column: 19)
!1597 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 455, column: 13)
!1598 = !DILocation(line: 0, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !297, line: 449, column: 20)
!1600 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 428, column: 15)
!1601 = !DILocation(line: 0, scope: !1564)
!1602 = !DILocation(line: 0, scope: !1570)
!1603 = !DILocation(line: 0, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 712, column: 11)
!1605 = !DILocation(line: 273, column: 3, scope: !1525)
!1606 = !DILocation(line: 265, column: 10, scope: !1525)
!1607 = !DILocation(line: 266, column: 15, scope: !1525)
!1608 = !DILocation(line: 267, column: 10, scope: !1525)
!1609 = !DILocation(line: 268, column: 8, scope: !1525)
!1610 = !DILocation(line: 271, column: 8, scope: !1525)
!1611 = !DILocation(line: 272, column: 8, scope: !1525)
!1612 = !DILocation(line: 273, column: 8, scope: !1525)
!1613 = !DILocation(line: 314, column: 2, scope: !1525)
!1614 = !DILocation(line: 316, column: 3, scope: !1525)
!1615 = !DILocation(line: 323, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 317, column: 5)
!1617 = !DILocation(line: 323, column: 12, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1616, file: !297, line: 323, column: 11)
!1619 = !DILocation(line: 324, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !297, line: 324, column: 9)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !297, line: 324, column: 9)
!1622 = !DILocation(line: 324, column: 9, scope: !1621)
!1623 = !DILocation(line: 362, column: 26, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !297, line: 340, column: 11)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !297, line: 339, column: 13)
!1626 = distinct !DILexicalBlock(scope: !1616, file: !297, line: 338, column: 7)
!1627 = !DILocation(line: 363, column: 27, scope: !1624)
!1628 = !DILocation(line: 364, column: 11, scope: !1624)
!1629 = !DILocation(line: 365, column: 14, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !297, line: 365, column: 13)
!1631 = !DILocation(line: 365, column: 13, scope: !1626)
!1632 = !DILocation(line: 366, column: 43, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !297, line: 366, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !297, line: 366, column: 11)
!1635 = !DILocation(line: 366, column: 11, scope: !1634)
!1636 = !DILocation(line: 367, column: 13, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !297, line: 367, column: 13)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !297, line: 367, column: 13)
!1639 = !DILocation(line: 367, column: 13, scope: !1638)
!1640 = !DILocation(line: 366, column: 70, scope: !1633)
!1641 = distinct !{!1641, !1635, !1642}
!1642 = !DILocation(line: 367, column: 13, scope: !1634)
!1643 = !DILocation(line: 264, column: 10, scope: !1525)
!1644 = !DILocation(line: 370, column: 28, scope: !1626)
!1645 = !DILocation(line: 372, column: 7, scope: !1616)
!1646 = !DILocation(line: 376, column: 7, scope: !1616)
!1647 = !DILocation(line: 379, column: 7, scope: !1616)
!1648 = !DILocation(line: 381, column: 12, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1616, file: !297, line: 381, column: 11)
!1650 = !DILocation(line: 381, column: 11, scope: !1616)
!1651 = !DILocation(line: 386, column: 12, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1616, file: !297, line: 386, column: 11)
!1653 = !DILocation(line: 386, column: 11, scope: !1616)
!1654 = !DILocation(line: 387, column: 9, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !297, line: 387, column: 9)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !297, line: 387, column: 9)
!1657 = !DILocation(line: 387, column: 9, scope: !1656)
!1658 = !DILocation(line: 394, column: 7, scope: !1616)
!1659 = !DILocation(line: 397, column: 7, scope: !1616)
!1660 = !DILocation(line: 0, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 408, column: 11)
!1662 = !DILocation(line: 0, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !297, line: 419, column: 15)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !297, line: 418, column: 9)
!1665 = !DILocation(line: 0, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 556, column: 15)
!1667 = !DILocation(line: 0, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 548, column: 15)
!1669 = !DILocation(line: 0, scope: !1575)
!1670 = !DILocation(line: 0, scope: !1582)
!1671 = !DILocation(line: 0, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 509, column: 15)
!1673 = !DILocation(line: 400, column: 8, scope: !1554)
!1674 = !DILocation(line: 0, scope: !1554)
!1675 = !DILocation(line: 400, column: 27, scope: !1553)
!1676 = !DILocation(line: 400, column: 19, scope: !1553)
!1677 = !DILocation(line: 400, column: 41, scope: !1553)
!1678 = !DILocation(line: 400, column: 48, scope: !1553)
!1679 = !DILocation(line: 400, column: 3, scope: !1554)
!1680 = !DILocation(line: 400, column: 60, scope: !1553)
!1681 = !DILocation(line: 0, scope: !1552)
!1682 = !DILocation(line: 409, column: 11, scope: !1661)
!1683 = !DILocation(line: 411, column: 17, scope: !1661)
!1684 = !DILocation(line: 412, column: 39, scope: !1661)
!1685 = !DILocation(line: 416, column: 32, scope: !1661)
!1686 = !DILocation(line: 412, column: 19, scope: !1661)
!1687 = !DILocation(line: 412, column: 15, scope: !1661)
!1688 = !DILocation(line: 417, column: 11, scope: !1661)
!1689 = !DILocation(line: 417, column: 26, scope: !1661)
!1690 = !DILocation(line: 417, column: 14, scope: !1661)
!1691 = !DILocation(line: 417, column: 63, scope: !1661)
!1692 = !DILocation(line: 408, column: 11, scope: !1552)
!1693 = !DILocation(line: 424, column: 11, scope: !1552)
!1694 = !DILocation(line: 425, column: 7, scope: !1552)
!1695 = !DILocation(line: 428, column: 15, scope: !1561)
!1696 = !DILocation(line: 430, column: 15, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !297, line: 430, column: 15)
!1698 = distinct !DILexicalBlock(scope: !1600, file: !297, line: 429, column: 13)
!1699 = !DILocation(line: 430, column: 15, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !297, line: 430, column: 15)
!1701 = !DILocation(line: 430, column: 15, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !297, line: 430, column: 15)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !297, line: 430, column: 15)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !297, line: 430, column: 15)
!1705 = !DILocation(line: 430, column: 15, scope: !1703)
!1706 = !DILocation(line: 430, column: 15, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !297, line: 430, column: 15)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !297, line: 430, column: 15)
!1709 = !DILocation(line: 430, column: 15, scope: !1708)
!1710 = !DILocation(line: 430, column: 15, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !297, line: 430, column: 15)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !297, line: 430, column: 15)
!1713 = !DILocation(line: 430, column: 15, scope: !1712)
!1714 = !DILocation(line: 430, column: 15, scope: !1704)
!1715 = !DILocation(line: 430, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !297, line: 430, column: 15)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !297, line: 430, column: 15)
!1718 = !DILocation(line: 430, column: 15, scope: !1717)
!1719 = !DILocation(line: 438, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1698, file: !297, line: 437, column: 19)
!1721 = !DILocation(line: 438, column: 24, scope: !1720)
!1722 = !DILocation(line: 438, column: 28, scope: !1720)
!1723 = !DILocation(line: 438, column: 38, scope: !1720)
!1724 = !DILocation(line: 438, column: 48, scope: !1720)
!1725 = !DILocation(line: 438, column: 59, scope: !1720)
!1726 = !DILocation(line: 440, column: 19, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !297, line: 440, column: 19)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !297, line: 440, column: 19)
!1729 = distinct !DILexicalBlock(scope: !1720, file: !297, line: 439, column: 17)
!1730 = !DILocation(line: 440, column: 19, scope: !1728)
!1731 = !DILocation(line: 441, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !297, line: 441, column: 19)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !297, line: 441, column: 19)
!1734 = !DILocation(line: 441, column: 19, scope: !1733)
!1735 = !DILocation(line: 442, column: 17, scope: !1729)
!1736 = !DILocation(line: 449, column: 20, scope: !1600)
!1737 = !DILocation(line: 454, column: 11, scope: !1561)
!1738 = !DILocation(line: 457, column: 19, scope: !1597)
!1739 = !DILocation(line: 463, column: 19, scope: !1596)
!1740 = !DILocation(line: 463, column: 24, scope: !1596)
!1741 = !DILocation(line: 463, column: 28, scope: !1596)
!1742 = !DILocation(line: 463, column: 38, scope: !1596)
!1743 = !DILocation(line: 463, column: 47, scope: !1596)
!1744 = !DILocation(line: 463, column: 41, scope: !1596)
!1745 = !DILocation(line: 463, column: 52, scope: !1596)
!1746 = !DILocation(line: 462, column: 19, scope: !1597)
!1747 = !DILocation(line: 464, column: 25, scope: !1596)
!1748 = !DILocation(line: 464, column: 17, scope: !1596)
!1749 = !DILocation(line: 471, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1596, file: !297, line: 465, column: 19)
!1751 = !DILocation(line: 475, column: 21, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !297, line: 475, column: 21)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !297, line: 475, column: 21)
!1754 = !DILocation(line: 475, column: 21, scope: !1753)
!1755 = !DILocation(line: 476, column: 21, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !297, line: 476, column: 21)
!1757 = distinct !DILexicalBlock(scope: !1750, file: !297, line: 476, column: 21)
!1758 = !DILocation(line: 476, column: 21, scope: !1757)
!1759 = !DILocation(line: 477, column: 21, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !297, line: 477, column: 21)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !297, line: 477, column: 21)
!1762 = !DILocation(line: 477, column: 21, scope: !1761)
!1763 = !DILocation(line: 478, column: 21, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !297, line: 478, column: 21)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !297, line: 478, column: 21)
!1766 = !DILocation(line: 478, column: 21, scope: !1765)
!1767 = !DILocation(line: 479, column: 21, scope: !1750)
!1768 = !DILocation(line: 492, column: 31, scope: !1561)
!1769 = !DILocation(line: 493, column: 31, scope: !1561)
!1770 = !DILocation(line: 495, column: 31, scope: !1561)
!1771 = !DILocation(line: 496, column: 31, scope: !1561)
!1772 = !DILocation(line: 497, column: 31, scope: !1561)
!1773 = !DILocation(line: 500, column: 15, scope: !1561)
!1774 = !DILocation(line: 502, column: 19, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !297, line: 501, column: 13)
!1776 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 500, column: 15)
!1777 = !DILocation(line: 509, column: 33, scope: !1672)
!1778 = !DILocation(line: 0, scope: !1561)
!1779 = !DILocation(line: 512, column: 9, scope: !1561)
!1780 = !DILocation(line: 514, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 513, column: 15)
!1782 = !DILocation(line: 517, column: 9, scope: !1561)
!1783 = !DILocation(line: 518, column: 15, scope: !1561)
!1784 = !DILocation(line: 526, column: 15, scope: !1561)
!1785 = !DILocation(line: 526, column: 40, scope: !1594)
!1786 = !DILocation(line: 526, column: 47, scope: !1594)
!1787 = !DILocation(line: 526, column: 18, scope: !1594)
!1788 = !DILocation(line: 530, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1561, file: !297, line: 530, column: 15)
!1790 = !DILocation(line: 530, column: 15, scope: !1561)
!1791 = !DILocation(line: 535, column: 11, scope: !1561)
!1792 = !DILocation(line: 549, column: 15, scope: !1668)
!1793 = !DILocation(line: 556, column: 15, scope: !1561)
!1794 = !DILocation(line: 558, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1666, file: !297, line: 557, column: 13)
!1796 = !DILocation(line: 561, column: 19, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1795, file: !297, line: 561, column: 19)
!1798 = !DILocation(line: 561, column: 35, scope: !1797)
!1799 = !DILocation(line: 561, column: 30, scope: !1797)
!1800 = !DILocation(line: 570, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !297, line: 570, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1795, file: !297, line: 570, column: 15)
!1803 = !DILocation(line: 570, column: 15, scope: !1802)
!1804 = !DILocation(line: 571, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !297, line: 571, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1795, file: !297, line: 571, column: 15)
!1807 = !DILocation(line: 571, column: 15, scope: !1806)
!1808 = !DILocation(line: 572, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !297, line: 572, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1795, file: !297, line: 572, column: 15)
!1811 = !DILocation(line: 572, column: 15, scope: !1810)
!1812 = !DILocation(line: 574, column: 13, scope: !1795)
!1813 = !DILocation(line: 614, column: 17, scope: !1560)
!1814 = !DILocation(line: 0, scope: !1560)
!1815 = !DILocation(line: 617, column: 29, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1565, file: !297, line: 615, column: 15)
!1817 = !{!1304, !1304, i64 0}
!1818 = !DILocation(line: 617, column: 27, scope: !1816)
!1819 = !DILocation(line: 618, column: 15, scope: !1816)
!1820 = !DILocation(line: 621, column: 17, scope: !1564)
!1821 = !DILocation(line: 621, column: 27, scope: !1564)
!1822 = !DILocalVariable(name: "__dest", arg: 1, scope: !1823, file: !1824, line: 59, type: !119)
!1823 = distinct !DISubprogram(name: "memset", scope: !1824, file: !1824, line: 59, type: !1825, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1827)
!1824 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!119, !119, !25, !121}
!1827 = !{!1822, !1828, !1829}
!1828 = !DILocalVariable(name: "__ch", arg: 2, scope: !1823, file: !1824, line: 59, type: !25)
!1829 = !DILocalVariable(name: "__len", arg: 3, scope: !1823, file: !1824, line: 59, type: !121)
!1830 = !DILocation(line: 0, scope: !1823, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 622, column: 17, scope: !1564)
!1832 = !DILocation(line: 71, column: 10, scope: !1823, inlinedAt: !1831)
!1833 = !DILocation(line: 626, column: 29, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1564, file: !297, line: 626, column: 21)
!1835 = !DILocation(line: 626, column: 21, scope: !1564)
!1836 = !DILocation(line: 627, column: 29, scope: !1834)
!1837 = !DILocation(line: 627, column: 19, scope: !1834)
!1838 = !DILocation(line: 629, column: 17, scope: !1564)
!1839 = !DILocation(line: 624, column: 19, scope: !1564)
!1840 = !DILocation(line: 625, column: 27, scope: !1564)
!1841 = !DILocation(line: 631, column: 21, scope: !1570)
!1842 = !DILocation(line: 632, column: 56, scope: !1570)
!1843 = !DILocation(line: 632, column: 50, scope: !1570)
!1844 = !DILocation(line: 633, column: 53, scope: !1570)
!1845 = !DILocation(line: 632, column: 36, scope: !1570)
!1846 = !DILocation(line: 634, column: 25, scope: !1570)
!1847 = !DILocation(line: 644, column: 38, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1577, file: !297, line: 642, column: 23)
!1849 = !DILocation(line: 644, column: 48, scope: !1848)
!1850 = !DILocation(line: 644, column: 25, scope: !1848)
!1851 = !DILocation(line: 644, column: 51, scope: !1848)
!1852 = !DILocation(line: 645, column: 28, scope: !1848)
!1853 = !DILocation(line: 644, column: 34, scope: !1848)
!1854 = distinct !{!1854, !1850, !1852}
!1855 = !DILocation(line: 658, column: 43, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !297, line: 658, column: 29)
!1857 = distinct !DILexicalBlock(scope: !1574, file: !297, line: 658, column: 29)
!1858 = !DILocation(line: 655, column: 29, scope: !1575)
!1859 = !DILocation(line: 0, scope: !1574)
!1860 = !DILocation(line: 659, column: 49, scope: !1856)
!1861 = !DILocation(line: 659, column: 39, scope: !1856)
!1862 = !DILocation(line: 659, column: 31, scope: !1856)
!1863 = !DILocation(line: 658, column: 53, scope: !1856)
!1864 = !DILocation(line: 658, column: 29, scope: !1857)
!1865 = distinct !{!1865, !1864, !1866}
!1866 = !DILocation(line: 667, column: 33, scope: !1857)
!1867 = !DILocation(line: 674, column: 19, scope: !1564)
!1868 = !DILocation(line: 670, column: 41, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1576, file: !297, line: 670, column: 29)
!1870 = !DILocation(line: 670, column: 31, scope: !1869)
!1871 = !DILocation(line: 670, column: 29, scope: !1576)
!1872 = !DILocation(line: 672, column: 27, scope: !1576)
!1873 = !DILocation(line: 675, column: 26, scope: !1564)
!1874 = !DILocation(line: 675, column: 24, scope: !1564)
!1875 = !DILocation(line: 674, column: 19, scope: !1570)
!1876 = distinct !{!1876, !1838, !1877}
!1877 = !DILocation(line: 675, column: 44, scope: !1564)
!1878 = !DILocation(line: 676, column: 15, scope: !1565)
!1879 = !DILocation(line: 0, scope: !1565)
!1880 = !DILocation(line: 678, column: 40, scope: !1560)
!1881 = !DILocation(line: 680, column: 19, scope: !1582)
!1882 = !DILocation(line: 680, column: 45, scope: !1582)
!1883 = !DILocation(line: 680, column: 23, scope: !1582)
!1884 = !DILocation(line: 684, column: 33, scope: !1581)
!1885 = !DILocation(line: 0, scope: !1581)
!1886 = !DILocation(line: 686, column: 17, scope: !1581)
!1887 = !DILocation(line: 405, column: 12, scope: !1552)
!1888 = !DILocation(line: 688, column: 43, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !297, line: 688, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !297, line: 687, column: 19)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !297, line: 686, column: 17)
!1892 = distinct !DILexicalBlock(scope: !1581, file: !297, line: 686, column: 17)
!1893 = !DILocation(line: 690, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !297, line: 690, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !297, line: 689, column: 23)
!1896 = !DILocation(line: 690, column: 25, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !297, line: 690, column: 25)
!1898 = !DILocation(line: 690, column: 25, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !297, line: 690, column: 25)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !297, line: 690, column: 25)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !297, line: 690, column: 25)
!1902 = !DILocation(line: 690, column: 25, scope: !1900)
!1903 = !DILocation(line: 690, column: 25, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !297, line: 690, column: 25)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !297, line: 690, column: 25)
!1906 = !DILocation(line: 690, column: 25, scope: !1905)
!1907 = !DILocation(line: 690, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !297, line: 690, column: 25)
!1909 = distinct !DILexicalBlock(scope: !1901, file: !297, line: 690, column: 25)
!1910 = !DILocation(line: 690, column: 25, scope: !1909)
!1911 = !DILocation(line: 690, column: 25, scope: !1901)
!1912 = !DILocation(line: 690, column: 25, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !297, line: 690, column: 25)
!1914 = distinct !DILexicalBlock(scope: !1894, file: !297, line: 690, column: 25)
!1915 = !DILocation(line: 690, column: 25, scope: !1914)
!1916 = !DILocation(line: 691, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !297, line: 691, column: 25)
!1918 = distinct !DILexicalBlock(scope: !1895, file: !297, line: 691, column: 25)
!1919 = !DILocation(line: 691, column: 25, scope: !1918)
!1920 = !DILocation(line: 692, column: 25, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !297, line: 692, column: 25)
!1922 = distinct !DILexicalBlock(scope: !1895, file: !297, line: 692, column: 25)
!1923 = !DILocation(line: 692, column: 25, scope: !1922)
!1924 = !DILocation(line: 693, column: 38, scope: !1895)
!1925 = !DILocation(line: 693, column: 33, scope: !1895)
!1926 = !DILocation(line: 694, column: 23, scope: !1895)
!1927 = !DILocation(line: 695, column: 30, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1889, file: !297, line: 695, column: 30)
!1929 = !DILocation(line: 695, column: 30, scope: !1889)
!1930 = !DILocation(line: 697, column: 25, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !297, line: 697, column: 25)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !297, line: 697, column: 25)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !297, line: 696, column: 23)
!1934 = !DILocation(line: 697, column: 25, scope: !1932)
!1935 = !DILocation(line: 699, column: 23, scope: !1933)
!1936 = !DILocation(line: 700, column: 35, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1890, file: !297, line: 700, column: 25)
!1938 = !DILocation(line: 700, column: 30, scope: !1937)
!1939 = !DILocation(line: 700, column: 25, scope: !1890)
!1940 = !DILocation(line: 702, column: 21, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !297, line: 702, column: 21)
!1942 = distinct !DILexicalBlock(scope: !1890, file: !297, line: 702, column: 21)
!1943 = !DILocation(line: 702, column: 21, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !297, line: 702, column: 21)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !297, line: 702, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !297, line: 702, column: 21)
!1947 = !DILocation(line: 702, column: 21, scope: !1945)
!1948 = !DILocation(line: 702, column: 21, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !297, line: 702, column: 21)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !297, line: 702, column: 21)
!1951 = !DILocation(line: 702, column: 21, scope: !1950)
!1952 = !DILocation(line: 702, column: 21, scope: !1946)
!1953 = !DILocation(line: 0, scope: !1890)
!1954 = !DILocation(line: 703, column: 21, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !297, line: 703, column: 21)
!1956 = distinct !DILexicalBlock(scope: !1890, file: !297, line: 703, column: 21)
!1957 = !DILocation(line: 703, column: 21, scope: !1956)
!1958 = !DILocation(line: 704, column: 25, scope: !1890)
!1959 = !DILocation(line: 686, column: 17, scope: !1891)
!1960 = distinct !{!1960, !1961, !1962}
!1961 = !DILocation(line: 686, column: 17, scope: !1892)
!1962 = !DILocation(line: 705, column: 19, scope: !1892)
!1963 = !DILocation(line: 416, column: 30, scope: !1661)
!1964 = !DILocation(line: 712, column: 34, scope: !1604)
!1965 = !DILocation(line: 715, column: 35, scope: !1604)
!1966 = !DILocation(line: 715, column: 17, scope: !1604)
!1967 = !DILocation(line: 715, column: 47, scope: !1604)
!1968 = !DILocation(line: 715, column: 65, scope: !1604)
!1969 = !DILocation(line: 716, column: 15, scope: !1604)
!1970 = !DILocation(line: 716, column: 11, scope: !1604)
!1971 = !DILocation(line: 712, column: 11, scope: !1552)
!1972 = !DILocation(line: 400, column: 10, scope: !1554)
!1973 = !DILocation(line: 719, column: 5, scope: !1552)
!1974 = !DILocation(line: 720, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 720, column: 7)
!1976 = !DILocation(line: 720, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1975, file: !297, line: 720, column: 7)
!1978 = !DILocation(line: 720, column: 7, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !297, line: 720, column: 7)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !297, line: 720, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !297, line: 720, column: 7)
!1982 = !DILocation(line: 720, column: 7, scope: !1980)
!1983 = !DILocation(line: 720, column: 7, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !297, line: 720, column: 7)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !297, line: 720, column: 7)
!1986 = !DILocation(line: 720, column: 7, scope: !1985)
!1987 = !DILocation(line: 720, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !297, line: 720, column: 7)
!1989 = distinct !DILexicalBlock(scope: !1981, file: !297, line: 720, column: 7)
!1990 = !DILocation(line: 720, column: 7, scope: !1989)
!1991 = !DILocation(line: 720, column: 7, scope: !1981)
!1992 = !DILocation(line: 720, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !297, line: 720, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1975, file: !297, line: 720, column: 7)
!1995 = !DILocation(line: 720, column: 7, scope: !1994)
!1996 = !DILocation(line: 722, column: 5, scope: !1552)
!1997 = !DILocation(line: 723, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !297, line: 723, column: 7)
!1999 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 723, column: 7)
!2000 = !DILocation(line: 424, column: 9, scope: !1552)
!2001 = !DILocation(line: 723, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !297, line: 723, column: 7)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !297, line: 723, column: 7)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !297, line: 723, column: 7)
!2005 = !DILocation(line: 723, column: 7, scope: !2003)
!2006 = !DILocation(line: 723, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !297, line: 723, column: 7)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !297, line: 723, column: 7)
!2009 = !DILocation(line: 723, column: 7, scope: !2008)
!2010 = !DILocation(line: 723, column: 7, scope: !2004)
!2011 = !DILocation(line: 724, column: 7, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !297, line: 724, column: 7)
!2013 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 724, column: 7)
!2014 = !DILocation(line: 724, column: 7, scope: !2013)
!2015 = !DILocation(line: 726, column: 13, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1552, file: !297, line: 726, column: 11)
!2017 = !DILocation(line: 726, column: 11, scope: !1552)
!2018 = !DILocation(line: 728, column: 5, scope: !1553)
!2019 = !DILocation(line: 400, column: 75, scope: !1553)
!2020 = !DILocation(line: 400, column: 3, scope: !1553)
!2021 = distinct !{!2021, !1679, !2022}
!2022 = !DILocation(line: 728, column: 5, scope: !1554)
!2023 = !DILocation(line: 730, column: 11, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 730, column: 7)
!2025 = !DILocation(line: 730, column: 16, scope: !2024)
!2026 = !DILocation(line: 738, column: 51, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 738, column: 7)
!2028 = !DILocation(line: 739, column: 10, scope: !2027)
!2029 = !DILocation(line: 741, column: 11, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !297, line: 741, column: 11)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !297, line: 740, column: 5)
!2032 = !DILocation(line: 741, column: 11, scope: !2031)
!2033 = !DILocation(line: 742, column: 16, scope: !2030)
!2034 = !DILocation(line: 742, column: 9, scope: !2030)
!2035 = !DILocation(line: 746, column: 18, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2030, file: !297, line: 746, column: 16)
!2037 = !DILocation(line: 746, column: 32, scope: !2036)
!2038 = !DILocation(line: 746, column: 29, scope: !2036)
!2039 = !DILocation(line: 755, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 755, column: 7)
!2041 = !DILocation(line: 755, column: 20, scope: !2040)
!2042 = !DILocation(line: 756, column: 12, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !297, line: 756, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !297, line: 756, column: 5)
!2045 = !DILocation(line: 756, column: 5, scope: !2044)
!2046 = !DILocation(line: 757, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !297, line: 757, column: 7)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !297, line: 757, column: 7)
!2049 = !DILocation(line: 757, column: 7, scope: !2048)
!2050 = !DILocation(line: 756, column: 39, scope: !2043)
!2051 = distinct !{!2051, !2045, !2052}
!2052 = !DILocation(line: 757, column: 7, scope: !2044)
!2053 = !DILocation(line: 759, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 759, column: 7)
!2055 = !DILocation(line: 759, column: 7, scope: !1525)
!2056 = !DILocation(line: 760, column: 5, scope: !2054)
!2057 = !DILocation(line: 760, column: 17, scope: !2054)
!2058 = !DILocation(line: 763, column: 2, scope: !1525)
!2059 = !DILocation(line: 766, column: 51, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1525, file: !297, line: 766, column: 7)
!2061 = !DILocation(line: 766, column: 21, scope: !2060)
!2062 = !DILocation(line: 770, column: 42, scope: !1525)
!2063 = !DILocation(line: 768, column: 10, scope: !1525)
!2064 = !DILocation(line: 768, column: 3, scope: !1525)
!2065 = !DILocation(line: 772, column: 1, scope: !1525)
!2066 = distinct !DISubprogram(name: "gettext_quote", scope: !297, file: !297, line: 207, type: !2067, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!35, !35, !299}
!2069 = !{!2070, !2071, !2072, !2073}
!2070 = !DILocalVariable(name: "msgid", arg: 1, scope: !2066, file: !297, line: 207, type: !35)
!2071 = !DILocalVariable(name: "s", arg: 2, scope: !2066, file: !297, line: 207, type: !299)
!2072 = !DILocalVariable(name: "translation", scope: !2066, file: !297, line: 209, type: !35)
!2073 = !DILocalVariable(name: "locale_code", scope: !2066, file: !297, line: 210, type: !35)
!2074 = !DILocation(line: 0, scope: !2066)
!2075 = !DILocation(line: 209, column: 29, scope: !2066)
!2076 = !DILocation(line: 212, column: 19, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !297, line: 212, column: 7)
!2078 = !DILocation(line: 212, column: 7, scope: !2066)
!2079 = !DILocation(line: 233, column: 17, scope: !2066)
!2080 = !DILocalVariable(name: "s1", arg: 1, scope: !2081, file: !2082, line: 160, type: !35)
!2081 = distinct !DISubprogram(name: "strcaseeq0", scope: !2082, file: !2082, line: 160, type: !2083, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2085)
!2082 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!2085 = !{!2080, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2086 = !DILocalVariable(name: "s2", arg: 2, scope: !2081, file: !2082, line: 160, type: !35)
!2087 = !DILocalVariable(name: "s20", arg: 3, scope: !2081, file: !2082, line: 160, type: !28)
!2088 = !DILocalVariable(name: "s21", arg: 4, scope: !2081, file: !2082, line: 160, type: !28)
!2089 = !DILocalVariable(name: "s22", arg: 5, scope: !2081, file: !2082, line: 160, type: !28)
!2090 = !DILocalVariable(name: "s23", arg: 6, scope: !2081, file: !2082, line: 160, type: !28)
!2091 = !DILocalVariable(name: "s24", arg: 7, scope: !2081, file: !2082, line: 160, type: !28)
!2092 = !DILocalVariable(name: "s25", arg: 8, scope: !2081, file: !2082, line: 160, type: !28)
!2093 = !DILocalVariable(name: "s26", arg: 9, scope: !2081, file: !2082, line: 160, type: !28)
!2094 = !DILocalVariable(name: "s27", arg: 10, scope: !2081, file: !2082, line: 160, type: !28)
!2095 = !DILocalVariable(name: "s28", arg: 11, scope: !2081, file: !2082, line: 160, type: !28)
!2096 = !DILocation(line: 0, scope: !2081, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 234, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2066, file: !297, line: 234, column: 7)
!2099 = !DILocation(line: 162, column: 7, scope: !2100, inlinedAt: !2097)
!2100 = distinct !DILexicalBlock(scope: !2081, file: !2082, line: 162, column: 7)
!2101 = !DILocalVariable(name: "s1", arg: 1, scope: !2102, file: !2082, line: 146, type: !35)
!2102 = distinct !DISubprogram(name: "strcaseeq1", scope: !2082, file: !2082, line: 146, type: !2103, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28}
!2105 = !{!2101, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114}
!2106 = !DILocalVariable(name: "s2", arg: 2, scope: !2102, file: !2082, line: 146, type: !35)
!2107 = !DILocalVariable(name: "s21", arg: 3, scope: !2102, file: !2082, line: 146, type: !28)
!2108 = !DILocalVariable(name: "s22", arg: 4, scope: !2102, file: !2082, line: 146, type: !28)
!2109 = !DILocalVariable(name: "s23", arg: 5, scope: !2102, file: !2082, line: 146, type: !28)
!2110 = !DILocalVariable(name: "s24", arg: 6, scope: !2102, file: !2082, line: 146, type: !28)
!2111 = !DILocalVariable(name: "s25", arg: 7, scope: !2102, file: !2082, line: 146, type: !28)
!2112 = !DILocalVariable(name: "s26", arg: 8, scope: !2102, file: !2082, line: 146, type: !28)
!2113 = !DILocalVariable(name: "s27", arg: 9, scope: !2102, file: !2082, line: 146, type: !28)
!2114 = !DILocalVariable(name: "s28", arg: 10, scope: !2102, file: !2082, line: 146, type: !28)
!2115 = !DILocation(line: 0, scope: !2102, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 167, column: 16, scope: !2117, inlinedAt: !2097)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !2082, line: 164, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2100, file: !2082, line: 163, column: 5)
!2119 = !DILocation(line: 148, column: 7, scope: !2120, inlinedAt: !2116)
!2120 = distinct !DILexicalBlock(scope: !2102, file: !2082, line: 148, column: 7)
!2121 = !DILocalVariable(name: "s1", arg: 1, scope: !2122, file: !2082, line: 132, type: !35)
!2122 = distinct !DISubprogram(name: "strcaseeq2", scope: !2082, file: !2082, line: 132, type: !2123, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28}
!2125 = !{!2121, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2126 = !DILocalVariable(name: "s2", arg: 2, scope: !2122, file: !2082, line: 132, type: !35)
!2127 = !DILocalVariable(name: "s22", arg: 3, scope: !2122, file: !2082, line: 132, type: !28)
!2128 = !DILocalVariable(name: "s23", arg: 4, scope: !2122, file: !2082, line: 132, type: !28)
!2129 = !DILocalVariable(name: "s24", arg: 5, scope: !2122, file: !2082, line: 132, type: !28)
!2130 = !DILocalVariable(name: "s25", arg: 6, scope: !2122, file: !2082, line: 132, type: !28)
!2131 = !DILocalVariable(name: "s26", arg: 7, scope: !2122, file: !2082, line: 132, type: !28)
!2132 = !DILocalVariable(name: "s27", arg: 8, scope: !2122, file: !2082, line: 132, type: !28)
!2133 = !DILocalVariable(name: "s28", arg: 9, scope: !2122, file: !2082, line: 132, type: !28)
!2134 = !DILocation(line: 0, scope: !2122, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 153, column: 16, scope: !2136, inlinedAt: !2116)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !2082, line: 150, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2120, file: !2082, line: 149, column: 5)
!2138 = !DILocation(line: 134, column: 7, scope: !2139, inlinedAt: !2135)
!2139 = distinct !DILexicalBlock(scope: !2122, file: !2082, line: 134, column: 7)
!2140 = !DILocalVariable(name: "s1", arg: 1, scope: !2141, file: !2082, line: 118, type: !35)
!2141 = distinct !DISubprogram(name: "strcaseeq3", scope: !2082, file: !2082, line: 118, type: !2142, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28}
!2144 = !{!2140, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2145 = !DILocalVariable(name: "s2", arg: 2, scope: !2141, file: !2082, line: 118, type: !35)
!2146 = !DILocalVariable(name: "s23", arg: 3, scope: !2141, file: !2082, line: 118, type: !28)
!2147 = !DILocalVariable(name: "s24", arg: 4, scope: !2141, file: !2082, line: 118, type: !28)
!2148 = !DILocalVariable(name: "s25", arg: 5, scope: !2141, file: !2082, line: 118, type: !28)
!2149 = !DILocalVariable(name: "s26", arg: 6, scope: !2141, file: !2082, line: 118, type: !28)
!2150 = !DILocalVariable(name: "s27", arg: 7, scope: !2141, file: !2082, line: 118, type: !28)
!2151 = !DILocalVariable(name: "s28", arg: 8, scope: !2141, file: !2082, line: 118, type: !28)
!2152 = !DILocation(line: 0, scope: !2141, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 139, column: 16, scope: !2154, inlinedAt: !2135)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !2082, line: 136, column: 11)
!2155 = distinct !DILexicalBlock(scope: !2139, file: !2082, line: 135, column: 5)
!2156 = !DILocation(line: 120, column: 7, scope: !2157, inlinedAt: !2153)
!2157 = distinct !DILexicalBlock(scope: !2141, file: !2082, line: 120, column: 7)
!2158 = !DILocation(line: 120, column: 7, scope: !2141, inlinedAt: !2153)
!2159 = !DILocalVariable(name: "s1", arg: 1, scope: !2160, file: !2082, line: 104, type: !35)
!2160 = distinct !DISubprogram(name: "strcaseeq4", scope: !2082, file: !2082, line: 104, type: !2161, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!25, !35, !35, !28, !28, !28, !28, !28}
!2163 = !{!2159, !2164, !2165, !2166, !2167, !2168, !2169}
!2164 = !DILocalVariable(name: "s2", arg: 2, scope: !2160, file: !2082, line: 104, type: !35)
!2165 = !DILocalVariable(name: "s24", arg: 3, scope: !2160, file: !2082, line: 104, type: !28)
!2166 = !DILocalVariable(name: "s25", arg: 4, scope: !2160, file: !2082, line: 104, type: !28)
!2167 = !DILocalVariable(name: "s26", arg: 5, scope: !2160, file: !2082, line: 104, type: !28)
!2168 = !DILocalVariable(name: "s27", arg: 6, scope: !2160, file: !2082, line: 104, type: !28)
!2169 = !DILocalVariable(name: "s28", arg: 7, scope: !2160, file: !2082, line: 104, type: !28)
!2170 = !DILocation(line: 0, scope: !2160, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 125, column: 16, scope: !2172, inlinedAt: !2153)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !2082, line: 122, column: 11)
!2173 = distinct !DILexicalBlock(scope: !2157, file: !2082, line: 121, column: 5)
!2174 = !DILocation(line: 106, column: 7, scope: !2175, inlinedAt: !2171)
!2175 = distinct !DILexicalBlock(scope: !2160, file: !2082, line: 106, column: 7)
!2176 = !DILocation(line: 106, column: 7, scope: !2160, inlinedAt: !2171)
!2177 = !DILocalVariable(name: "s1", arg: 1, scope: !2178, file: !2082, line: 90, type: !35)
!2178 = distinct !DISubprogram(name: "strcaseeq5", scope: !2082, file: !2082, line: 90, type: !2179, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2181)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!25, !35, !35, !28, !28, !28, !28}
!2181 = !{!2177, !2182, !2183, !2184, !2185, !2186}
!2182 = !DILocalVariable(name: "s2", arg: 2, scope: !2178, file: !2082, line: 90, type: !35)
!2183 = !DILocalVariable(name: "s25", arg: 3, scope: !2178, file: !2082, line: 90, type: !28)
!2184 = !DILocalVariable(name: "s26", arg: 4, scope: !2178, file: !2082, line: 90, type: !28)
!2185 = !DILocalVariable(name: "s27", arg: 5, scope: !2178, file: !2082, line: 90, type: !28)
!2186 = !DILocalVariable(name: "s28", arg: 6, scope: !2178, file: !2082, line: 90, type: !28)
!2187 = !DILocation(line: 0, scope: !2178, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 111, column: 16, scope: !2189, inlinedAt: !2171)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !2082, line: 108, column: 11)
!2190 = distinct !DILexicalBlock(scope: !2175, file: !2082, line: 107, column: 5)
!2191 = !DILocation(line: 92, column: 7, scope: !2192, inlinedAt: !2188)
!2192 = distinct !DILexicalBlock(scope: !2178, file: !2082, line: 92, column: 7)
!2193 = !DILocation(line: 92, column: 7, scope: !2178, inlinedAt: !2188)
!2194 = !DILocation(line: 235, column: 12, scope: !2098)
!2195 = !DILocation(line: 235, column: 21, scope: !2098)
!2196 = !DILocation(line: 235, column: 5, scope: !2098)
!2197 = !DILocation(line: 0, scope: !2102, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 167, column: 16, scope: !2117, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 236, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2066, file: !297, line: 236, column: 7)
!2201 = !DILocation(line: 148, column: 7, scope: !2120, inlinedAt: !2198)
!2202 = !DILocation(line: 0, scope: !2122, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 153, column: 16, scope: !2136, inlinedAt: !2198)
!2204 = !DILocation(line: 134, column: 7, scope: !2139, inlinedAt: !2203)
!2205 = !DILocation(line: 134, column: 7, scope: !2122, inlinedAt: !2203)
!2206 = !DILocation(line: 0, scope: !2141, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 139, column: 16, scope: !2154, inlinedAt: !2203)
!2208 = !DILocation(line: 120, column: 7, scope: !2157, inlinedAt: !2207)
!2209 = !DILocation(line: 120, column: 7, scope: !2141, inlinedAt: !2207)
!2210 = !DILocation(line: 0, scope: !2160, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 125, column: 16, scope: !2172, inlinedAt: !2207)
!2212 = !DILocation(line: 106, column: 7, scope: !2175, inlinedAt: !2211)
!2213 = !DILocation(line: 106, column: 7, scope: !2160, inlinedAt: !2211)
!2214 = !DILocation(line: 0, scope: !2178, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 111, column: 16, scope: !2189, inlinedAt: !2211)
!2216 = !DILocation(line: 92, column: 7, scope: !2192, inlinedAt: !2215)
!2217 = !DILocation(line: 92, column: 7, scope: !2178, inlinedAt: !2215)
!2218 = !DILocalVariable(name: "s1", arg: 1, scope: !2219, file: !2082, line: 76, type: !35)
!2219 = distinct !DISubprogram(name: "strcaseeq6", scope: !2082, file: !2082, line: 76, type: !2220, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!25, !35, !35, !28, !28, !28}
!2222 = !{!2218, !2223, !2224, !2225, !2226}
!2223 = !DILocalVariable(name: "s2", arg: 2, scope: !2219, file: !2082, line: 76, type: !35)
!2224 = !DILocalVariable(name: "s26", arg: 3, scope: !2219, file: !2082, line: 76, type: !28)
!2225 = !DILocalVariable(name: "s27", arg: 4, scope: !2219, file: !2082, line: 76, type: !28)
!2226 = !DILocalVariable(name: "s28", arg: 5, scope: !2219, file: !2082, line: 76, type: !28)
!2227 = !DILocation(line: 0, scope: !2219, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 97, column: 16, scope: !2229, inlinedAt: !2215)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !2082, line: 94, column: 11)
!2230 = distinct !DILexicalBlock(scope: !2192, file: !2082, line: 93, column: 5)
!2231 = !DILocation(line: 78, column: 7, scope: !2232, inlinedAt: !2228)
!2232 = distinct !DILexicalBlock(scope: !2219, file: !2082, line: 78, column: 7)
!2233 = !DILocation(line: 78, column: 7, scope: !2219, inlinedAt: !2228)
!2234 = !DILocalVariable(name: "s1", arg: 1, scope: !2235, file: !2082, line: 62, type: !35)
!2235 = distinct !DISubprogram(name: "strcaseeq7", scope: !2082, file: !2082, line: 62, type: !2236, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2238)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!25, !35, !35, !28, !28}
!2238 = !{!2234, !2239, !2240, !2241}
!2239 = !DILocalVariable(name: "s2", arg: 2, scope: !2235, file: !2082, line: 62, type: !35)
!2240 = !DILocalVariable(name: "s27", arg: 3, scope: !2235, file: !2082, line: 62, type: !28)
!2241 = !DILocalVariable(name: "s28", arg: 4, scope: !2235, file: !2082, line: 62, type: !28)
!2242 = !DILocation(line: 0, scope: !2235, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 83, column: 16, scope: !2244, inlinedAt: !2228)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !2082, line: 80, column: 11)
!2245 = distinct !DILexicalBlock(scope: !2232, file: !2082, line: 79, column: 5)
!2246 = !DILocation(line: 64, column: 7, scope: !2247, inlinedAt: !2243)
!2247 = distinct !DILexicalBlock(scope: !2235, file: !2082, line: 64, column: 7)
!2248 = !DILocation(line: 236, column: 7, scope: !2066)
!2249 = !DILocation(line: 237, column: 12, scope: !2200)
!2250 = !DILocation(line: 237, column: 21, scope: !2200)
!2251 = !DILocation(line: 237, column: 5, scope: !2200)
!2252 = !DILocation(line: 239, column: 13, scope: !2066)
!2253 = !DILocation(line: 239, column: 11, scope: !2066)
!2254 = !DILocation(line: 239, column: 3, scope: !2066)
!2255 = !DILocation(line: 240, column: 1, scope: !2066)
!2256 = distinct !DISubprogram(name: "quotearg_alloc", scope: !297, file: !297, line: 799, type: !2257, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!27, !35, !121, !343}
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "arg", arg: 1, scope: !2256, file: !297, line: 799, type: !35)
!2261 = !DILocalVariable(name: "argsize", arg: 2, scope: !2256, file: !297, line: 799, type: !121)
!2262 = !DILocalVariable(name: "o", arg: 3, scope: !2256, file: !297, line: 800, type: !343)
!2263 = !DILocation(line: 0, scope: !2256)
!2264 = !DILocalVariable(name: "arg", arg: 1, scope: !2265, file: !297, line: 812, type: !35)
!2265 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !297, file: !297, line: 812, type: !2266, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!27, !35, !121, !489, !343}
!2268 = !{!2264, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276}
!2269 = !DILocalVariable(name: "argsize", arg: 2, scope: !2265, file: !297, line: 812, type: !121)
!2270 = !DILocalVariable(name: "size", arg: 3, scope: !2265, file: !297, line: 812, type: !489)
!2271 = !DILocalVariable(name: "o", arg: 4, scope: !2265, file: !297, line: 813, type: !343)
!2272 = !DILocalVariable(name: "p", scope: !2265, file: !297, line: 815, type: !343)
!2273 = !DILocalVariable(name: "e", scope: !2265, file: !297, line: 816, type: !25)
!2274 = !DILocalVariable(name: "flags", scope: !2265, file: !297, line: 818, type: !25)
!2275 = !DILocalVariable(name: "bufsize", scope: !2265, file: !297, line: 819, type: !121)
!2276 = !DILocalVariable(name: "buf", scope: !2265, file: !297, line: 823, type: !27)
!2277 = !DILocation(line: 0, scope: !2265, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 802, column: 10, scope: !2256)
!2279 = !DILocation(line: 815, column: 37, scope: !2265, inlinedAt: !2278)
!2280 = !DILocation(line: 816, column: 11, scope: !2265, inlinedAt: !2278)
!2281 = !DILocation(line: 818, column: 18, scope: !2265, inlinedAt: !2278)
!2282 = !DILocation(line: 818, column: 24, scope: !2265, inlinedAt: !2278)
!2283 = !DILocation(line: 819, column: 69, scope: !2265, inlinedAt: !2278)
!2284 = !DILocation(line: 820, column: 53, scope: !2265, inlinedAt: !2278)
!2285 = !DILocation(line: 821, column: 49, scope: !2265, inlinedAt: !2278)
!2286 = !DILocation(line: 822, column: 49, scope: !2265, inlinedAt: !2278)
!2287 = !DILocation(line: 819, column: 20, scope: !2265, inlinedAt: !2278)
!2288 = !DILocation(line: 822, column: 62, scope: !2265, inlinedAt: !2278)
!2289 = !DILocalVariable(name: "n", arg: 1, scope: !2290, file: !334, line: 216, type: !121)
!2290 = distinct !DISubprogram(name: "xcharalloc", scope: !334, file: !334, line: 216, type: !2291, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!27, !121}
!2293 = !{!2289}
!2294 = !DILocation(line: 0, scope: !2290, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 823, column: 15, scope: !2265, inlinedAt: !2278)
!2296 = !DILocation(line: 218, column: 10, scope: !2290, inlinedAt: !2295)
!2297 = !DILocation(line: 824, column: 60, scope: !2265, inlinedAt: !2278)
!2298 = !DILocation(line: 826, column: 32, scope: !2265, inlinedAt: !2278)
!2299 = !DILocation(line: 826, column: 47, scope: !2265, inlinedAt: !2278)
!2300 = !DILocation(line: 824, column: 3, scope: !2265, inlinedAt: !2278)
!2301 = !DILocation(line: 827, column: 9, scope: !2265, inlinedAt: !2278)
!2302 = !DILocation(line: 802, column: 3, scope: !2256)
!2303 = !DILocation(line: 0, scope: !2265)
!2304 = !DILocation(line: 815, column: 37, scope: !2265)
!2305 = !DILocation(line: 816, column: 11, scope: !2265)
!2306 = !DILocation(line: 818, column: 18, scope: !2265)
!2307 = !DILocation(line: 818, column: 27, scope: !2265)
!2308 = !DILocation(line: 818, column: 24, scope: !2265)
!2309 = !DILocation(line: 819, column: 69, scope: !2265)
!2310 = !DILocation(line: 820, column: 53, scope: !2265)
!2311 = !DILocation(line: 821, column: 49, scope: !2265)
!2312 = !DILocation(line: 822, column: 49, scope: !2265)
!2313 = !DILocation(line: 819, column: 20, scope: !2265)
!2314 = !DILocation(line: 822, column: 62, scope: !2265)
!2315 = !DILocation(line: 0, scope: !2290, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 823, column: 15, scope: !2265)
!2317 = !DILocation(line: 218, column: 10, scope: !2290, inlinedAt: !2316)
!2318 = !DILocation(line: 824, column: 60, scope: !2265)
!2319 = !DILocation(line: 826, column: 32, scope: !2265)
!2320 = !DILocation(line: 826, column: 47, scope: !2265)
!2321 = !DILocation(line: 824, column: 3, scope: !2265)
!2322 = !DILocation(line: 827, column: 9, scope: !2265)
!2323 = !DILocation(line: 828, column: 7, scope: !2265)
!2324 = !DILocation(line: 829, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2265, file: !297, line: 828, column: 7)
!2326 = !DILocation(line: 829, column: 5, scope: !2325)
!2327 = !DILocation(line: 830, column: 3, scope: !2265)
!2328 = distinct !DISubprogram(name: "quotearg_free", scope: !297, file: !297, line: 848, type: !148, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2329)
!2329 = !{!2330, !2331}
!2330 = !DILocalVariable(name: "sv", scope: !2328, file: !297, line: 850, type: !419)
!2331 = !DILocalVariable(name: "i", scope: !2328, file: !297, line: 851, type: !25)
!2332 = !DILocation(line: 850, column: 24, scope: !2328)
!2333 = !DILocation(line: 0, scope: !2328)
!2334 = !DILocation(line: 852, column: 19, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !297, line: 852, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2328, file: !297, line: 852, column: 3)
!2337 = !DILocation(line: 852, column: 17, scope: !2335)
!2338 = !DILocation(line: 852, column: 3, scope: !2336)
!2339 = !DILocation(line: 853, column: 17, scope: !2335)
!2340 = !{!2341, !1135, i64 8}
!2341 = !{!"slotvec", !1236, i64 0, !1135, i64 8}
!2342 = !DILocation(line: 853, column: 5, scope: !2335)
!2343 = !DILocation(line: 852, column: 28, scope: !2335)
!2344 = distinct !{!2344, !2338, !2345}
!2345 = !DILocation(line: 853, column: 20, scope: !2336)
!2346 = !DILocation(line: 854, column: 13, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2328, file: !297, line: 854, column: 7)
!2348 = !DILocation(line: 854, column: 17, scope: !2347)
!2349 = !DILocation(line: 854, column: 7, scope: !2328)
!2350 = !DILocation(line: 856, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2347, file: !297, line: 855, column: 5)
!2352 = !DILocation(line: 857, column: 21, scope: !2351)
!2353 = !{!2341, !1236, i64 0}
!2354 = !DILocation(line: 858, column: 20, scope: !2351)
!2355 = !DILocation(line: 859, column: 5, scope: !2351)
!2356 = !DILocation(line: 860, column: 10, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2328, file: !297, line: 860, column: 7)
!2358 = !DILocation(line: 860, column: 7, scope: !2328)
!2359 = !DILocation(line: 862, column: 13, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !297, line: 861, column: 5)
!2361 = !DILocation(line: 862, column: 7, scope: !2360)
!2362 = !DILocation(line: 863, column: 15, scope: !2360)
!2363 = !DILocation(line: 864, column: 5, scope: !2360)
!2364 = !DILocation(line: 865, column: 10, scope: !2328)
!2365 = !DILocation(line: 866, column: 1, scope: !2328)
!2366 = distinct !DISubprogram(name: "quotearg_n", scope: !297, file: !297, line: 931, type: !135, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2367)
!2367 = !{!2368, !2369}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2366, file: !297, line: 931, type: !25)
!2369 = !DILocalVariable(name: "arg", arg: 2, scope: !2366, file: !297, line: 931, type: !35)
!2370 = !DILocation(line: 0, scope: !2366)
!2371 = !DILocation(line: 933, column: 10, scope: !2366)
!2372 = !DILocation(line: 933, column: 3, scope: !2366)
!2373 = distinct !DISubprogram(name: "quotearg_n_options", scope: !297, file: !297, line: 877, type: !2374, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!27, !25, !35, !121, !343}
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2386, !2387, !2389, !2390, !2391}
!2377 = !DILocalVariable(name: "n", arg: 1, scope: !2373, file: !297, line: 877, type: !25)
!2378 = !DILocalVariable(name: "arg", arg: 2, scope: !2373, file: !297, line: 877, type: !35)
!2379 = !DILocalVariable(name: "argsize", arg: 3, scope: !2373, file: !297, line: 877, type: !121)
!2380 = !DILocalVariable(name: "options", arg: 4, scope: !2373, file: !297, line: 878, type: !343)
!2381 = !DILocalVariable(name: "e", scope: !2373, file: !297, line: 880, type: !25)
!2382 = !DILocalVariable(name: "sv", scope: !2373, file: !297, line: 882, type: !419)
!2383 = !DILocalVariable(name: "preallocated", scope: !2384, file: !297, line: 889, type: !38)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !297, line: 888, column: 5)
!2385 = distinct !DILexicalBlock(scope: !2373, file: !297, line: 887, column: 7)
!2386 = !DILocalVariable(name: "nmax", scope: !2384, file: !297, line: 890, type: !25)
!2387 = !DILocalVariable(name: "size", scope: !2388, file: !297, line: 903, type: !121)
!2388 = distinct !DILexicalBlock(scope: !2373, file: !297, line: 902, column: 3)
!2389 = !DILocalVariable(name: "val", scope: !2388, file: !297, line: 904, type: !27)
!2390 = !DILocalVariable(name: "flags", scope: !2388, file: !297, line: 906, type: !25)
!2391 = !DILocalVariable(name: "qsize", scope: !2388, file: !297, line: 907, type: !121)
!2392 = !DILocation(line: 0, scope: !2373)
!2393 = !DILocation(line: 880, column: 11, scope: !2373)
!2394 = !DILocation(line: 882, column: 24, scope: !2373)
!2395 = !DILocation(line: 884, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2373, file: !297, line: 884, column: 7)
!2397 = !DILocation(line: 884, column: 7, scope: !2373)
!2398 = !DILocation(line: 885, column: 5, scope: !2396)
!2399 = !DILocation(line: 887, column: 7, scope: !2385)
!2400 = !DILocation(line: 887, column: 14, scope: !2385)
!2401 = !DILocation(line: 887, column: 7, scope: !2373)
!2402 = !DILocation(line: 889, column: 31, scope: !2384)
!2403 = !DILocation(line: 0, scope: !2384)
!2404 = !DILocation(line: 892, column: 16, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2384, file: !297, line: 892, column: 11)
!2406 = !DILocation(line: 892, column: 11, scope: !2384)
!2407 = !DILocation(line: 893, column: 9, scope: !2405)
!2408 = !DILocation(line: 895, column: 32, scope: !2384)
!2409 = !DILocation(line: 895, column: 61, scope: !2384)
!2410 = !DILocation(line: 895, column: 58, scope: !2384)
!2411 = !DILocation(line: 895, column: 66, scope: !2384)
!2412 = !DILocation(line: 895, column: 22, scope: !2384)
!2413 = !DILocation(line: 895, column: 15, scope: !2384)
!2414 = !DILocation(line: 896, column: 11, scope: !2384)
!2415 = !DILocation(line: 897, column: 15, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2384, file: !297, line: 896, column: 11)
!2417 = !{i64 0, i64 8, !1235, i64 8, i64 8, !1134}
!2418 = !DILocation(line: 897, column: 9, scope: !2416)
!2419 = !DILocation(line: 898, column: 20, scope: !2384)
!2420 = !DILocation(line: 898, column: 18, scope: !2384)
!2421 = !DILocation(line: 898, column: 15, scope: !2384)
!2422 = !DILocation(line: 898, column: 38, scope: !2384)
!2423 = !DILocation(line: 898, column: 31, scope: !2384)
!2424 = !DILocation(line: 898, column: 48, scope: !2384)
!2425 = !DILocation(line: 0, scope: !1823, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 898, column: 7, scope: !2384)
!2427 = !DILocation(line: 71, column: 10, scope: !1823, inlinedAt: !2426)
!2428 = !DILocation(line: 899, column: 14, scope: !2384)
!2429 = !DILocation(line: 900, column: 5, scope: !2384)
!2430 = !DILocation(line: 903, column: 19, scope: !2388)
!2431 = !DILocation(line: 903, column: 25, scope: !2388)
!2432 = !DILocation(line: 0, scope: !2388)
!2433 = !DILocation(line: 904, column: 23, scope: !2388)
!2434 = !DILocation(line: 906, column: 26, scope: !2388)
!2435 = !DILocation(line: 906, column: 32, scope: !2388)
!2436 = !DILocation(line: 908, column: 55, scope: !2388)
!2437 = !DILocation(line: 909, column: 46, scope: !2388)
!2438 = !DILocation(line: 910, column: 55, scope: !2388)
!2439 = !DILocation(line: 911, column: 55, scope: !2388)
!2440 = !DILocation(line: 907, column: 20, scope: !2388)
!2441 = !DILocation(line: 913, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2388, file: !297, line: 913, column: 9)
!2443 = !DILocation(line: 913, column: 9, scope: !2388)
!2444 = !DILocation(line: 915, column: 35, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !297, line: 914, column: 7)
!2446 = !DILocation(line: 915, column: 20, scope: !2445)
!2447 = !DILocation(line: 916, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !297, line: 916, column: 13)
!2449 = !DILocation(line: 916, column: 13, scope: !2445)
!2450 = !DILocation(line: 917, column: 11, scope: !2448)
!2451 = !DILocation(line: 0, scope: !2290, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 918, column: 27, scope: !2445)
!2453 = !DILocation(line: 218, column: 10, scope: !2290, inlinedAt: !2452)
!2454 = !DILocation(line: 918, column: 19, scope: !2445)
!2455 = !DILocation(line: 919, column: 69, scope: !2445)
!2456 = !DILocation(line: 921, column: 44, scope: !2445)
!2457 = !DILocation(line: 922, column: 44, scope: !2445)
!2458 = !DILocation(line: 919, column: 9, scope: !2445)
!2459 = !DILocation(line: 923, column: 7, scope: !2445)
!2460 = !DILocation(line: 925, column: 11, scope: !2388)
!2461 = !DILocation(line: 926, column: 5, scope: !2388)
!2462 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !297, file: !297, line: 937, type: !2463, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!27, !25, !35, !121}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2462, file: !297, line: 937, type: !25)
!2467 = !DILocalVariable(name: "arg", arg: 2, scope: !2462, file: !297, line: 937, type: !35)
!2468 = !DILocalVariable(name: "argsize", arg: 3, scope: !2462, file: !297, line: 937, type: !121)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 939, column: 10, scope: !2462)
!2471 = !DILocation(line: 939, column: 3, scope: !2462)
!2472 = distinct !DISubprogram(name: "quotearg", scope: !297, file: !297, line: 943, type: !141, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2473)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !297, line: 943, type: !35)
!2475 = !DILocation(line: 0, scope: !2472)
!2476 = !DILocation(line: 0, scope: !2366, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 945, column: 10, scope: !2472)
!2478 = !DILocation(line: 933, column: 10, scope: !2366, inlinedAt: !2477)
!2479 = !DILocation(line: 945, column: 3, scope: !2472)
!2480 = distinct !DISubprogram(name: "quotearg_mem", scope: !297, file: !297, line: 949, type: !2481, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!27, !35, !121}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "arg", arg: 1, scope: !2480, file: !297, line: 949, type: !35)
!2485 = !DILocalVariable(name: "argsize", arg: 2, scope: !2480, file: !297, line: 949, type: !121)
!2486 = !DILocation(line: 0, scope: !2480)
!2487 = !DILocation(line: 0, scope: !2462, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 951, column: 10, scope: !2480)
!2489 = !DILocation(line: 939, column: 10, scope: !2462, inlinedAt: !2488)
!2490 = !DILocation(line: 951, column: 3, scope: !2480)
!2491 = distinct !DISubprogram(name: "quotearg_n_style", scope: !297, file: !297, line: 955, type: !2492, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!27, !25, !299, !35}
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DILocalVariable(name: "n", arg: 1, scope: !2491, file: !297, line: 955, type: !25)
!2496 = !DILocalVariable(name: "s", arg: 2, scope: !2491, file: !297, line: 955, type: !299)
!2497 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !297, line: 955, type: !35)
!2498 = !DILocalVariable(name: "o", scope: !2491, file: !297, line: 957, type: !344)
!2499 = !DILocation(line: 0, scope: !2491)
!2500 = !DILocation(line: 957, column: 3, scope: !2491)
!2501 = !DILocation(line: 957, column: 32, scope: !2491)
!2502 = !DILocalVariable(name: "style", arg: 1, scope: !2503, file: !297, line: 193, type: !299)
!2503 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !297, file: !297, line: 193, type: !2504, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!345, !299}
!2506 = !{!2502, !2507}
!2507 = !DILocalVariable(name: "o", scope: !2503, file: !297, line: 195, type: !345)
!2508 = !DILocation(line: 0, scope: !2503, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 957, column: 36, scope: !2491)
!2510 = !DILocation(line: 195, column: 26, scope: !2503, inlinedAt: !2509)
!2511 = !{!2512}
!2512 = distinct !{!2512, !2513, !"quoting_options_from_style: argument 0"}
!2513 = distinct !{!2513, !"quoting_options_from_style"}
!2514 = !DILocation(line: 196, column: 13, scope: !2515, inlinedAt: !2509)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !297, line: 196, column: 7)
!2516 = !DILocation(line: 196, column: 7, scope: !2503, inlinedAt: !2509)
!2517 = !DILocation(line: 197, column: 5, scope: !2515, inlinedAt: !2509)
!2518 = !DILocation(line: 198, column: 5, scope: !2503, inlinedAt: !2509)
!2519 = !DILocation(line: 198, column: 11, scope: !2503, inlinedAt: !2509)
!2520 = !DILocation(line: 958, column: 10, scope: !2491)
!2521 = !DILocation(line: 959, column: 1, scope: !2491)
!2522 = !DILocation(line: 958, column: 3, scope: !2491)
!2523 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !297, file: !297, line: 962, type: !2524, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!27, !25, !299, !35, !121}
!2526 = !{!2527, !2528, !2529, !2530, !2531}
!2527 = !DILocalVariable(name: "n", arg: 1, scope: !2523, file: !297, line: 962, type: !25)
!2528 = !DILocalVariable(name: "s", arg: 2, scope: !2523, file: !297, line: 962, type: !299)
!2529 = !DILocalVariable(name: "arg", arg: 3, scope: !2523, file: !297, line: 963, type: !35)
!2530 = !DILocalVariable(name: "argsize", arg: 4, scope: !2523, file: !297, line: 963, type: !121)
!2531 = !DILocalVariable(name: "o", scope: !2523, file: !297, line: 965, type: !344)
!2532 = !DILocation(line: 0, scope: !2523)
!2533 = !DILocation(line: 965, column: 3, scope: !2523)
!2534 = !DILocation(line: 965, column: 32, scope: !2523)
!2535 = !DILocation(line: 0, scope: !2503, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 965, column: 36, scope: !2523)
!2537 = !DILocation(line: 195, column: 26, scope: !2503, inlinedAt: !2536)
!2538 = !{!2539}
!2539 = distinct !{!2539, !2540, !"quoting_options_from_style: argument 0"}
!2540 = distinct !{!2540, !"quoting_options_from_style"}
!2541 = !DILocation(line: 196, column: 13, scope: !2515, inlinedAt: !2536)
!2542 = !DILocation(line: 196, column: 7, scope: !2503, inlinedAt: !2536)
!2543 = !DILocation(line: 197, column: 5, scope: !2515, inlinedAt: !2536)
!2544 = !DILocation(line: 198, column: 5, scope: !2503, inlinedAt: !2536)
!2545 = !DILocation(line: 198, column: 11, scope: !2503, inlinedAt: !2536)
!2546 = !DILocation(line: 966, column: 10, scope: !2523)
!2547 = !DILocation(line: 967, column: 1, scope: !2523)
!2548 = !DILocation(line: 966, column: 3, scope: !2523)
!2549 = distinct !DISubprogram(name: "quotearg_style", scope: !297, file: !297, line: 970, type: !2550, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!27, !299, !35}
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "s", arg: 1, scope: !2549, file: !297, line: 970, type: !299)
!2554 = !DILocalVariable(name: "arg", arg: 2, scope: !2549, file: !297, line: 970, type: !35)
!2555 = !DILocation(line: 195, column: 26, scope: !2503, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 957, column: 36, scope: !2491, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 972, column: 10, scope: !2549)
!2558 = !DILocation(line: 957, column: 32, scope: !2491, inlinedAt: !2557)
!2559 = !DILocation(line: 0, scope: !2549)
!2560 = !DILocation(line: 0, scope: !2491, inlinedAt: !2557)
!2561 = !DILocation(line: 957, column: 3, scope: !2491, inlinedAt: !2557)
!2562 = !DILocation(line: 0, scope: !2503, inlinedAt: !2556)
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"quoting_options_from_style: argument 0"}
!2565 = distinct !{!2565, !"quoting_options_from_style"}
!2566 = !DILocation(line: 196, column: 13, scope: !2515, inlinedAt: !2556)
!2567 = !DILocation(line: 196, column: 7, scope: !2503, inlinedAt: !2556)
!2568 = !DILocation(line: 197, column: 5, scope: !2515, inlinedAt: !2556)
!2569 = !DILocation(line: 198, column: 5, scope: !2503, inlinedAt: !2556)
!2570 = !DILocation(line: 198, column: 11, scope: !2503, inlinedAt: !2556)
!2571 = !DILocation(line: 958, column: 10, scope: !2491, inlinedAt: !2557)
!2572 = !DILocation(line: 959, column: 1, scope: !2491, inlinedAt: !2557)
!2573 = !DILocation(line: 972, column: 3, scope: !2549)
!2574 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !297, file: !297, line: 976, type: !2575, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!27, !299, !35, !121}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "s", arg: 1, scope: !2574, file: !297, line: 976, type: !299)
!2579 = !DILocalVariable(name: "arg", arg: 2, scope: !2574, file: !297, line: 976, type: !35)
!2580 = !DILocalVariable(name: "argsize", arg: 3, scope: !2574, file: !297, line: 976, type: !121)
!2581 = !DILocation(line: 195, column: 26, scope: !2503, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 965, column: 36, scope: !2523, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 978, column: 10, scope: !2574)
!2584 = !DILocation(line: 965, column: 32, scope: !2523, inlinedAt: !2583)
!2585 = !DILocation(line: 0, scope: !2574)
!2586 = !DILocation(line: 0, scope: !2523, inlinedAt: !2583)
!2587 = !DILocation(line: 965, column: 3, scope: !2523, inlinedAt: !2583)
!2588 = !DILocation(line: 0, scope: !2503, inlinedAt: !2582)
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"quoting_options_from_style: argument 0"}
!2591 = distinct !{!2591, !"quoting_options_from_style"}
!2592 = !DILocation(line: 196, column: 13, scope: !2515, inlinedAt: !2582)
!2593 = !DILocation(line: 196, column: 7, scope: !2503, inlinedAt: !2582)
!2594 = !DILocation(line: 197, column: 5, scope: !2515, inlinedAt: !2582)
!2595 = !DILocation(line: 198, column: 5, scope: !2503, inlinedAt: !2582)
!2596 = !DILocation(line: 198, column: 11, scope: !2503, inlinedAt: !2582)
!2597 = !DILocation(line: 966, column: 10, scope: !2523, inlinedAt: !2583)
!2598 = !DILocation(line: 967, column: 1, scope: !2523, inlinedAt: !2583)
!2599 = !DILocation(line: 978, column: 3, scope: !2574)
!2600 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !297, file: !297, line: 982, type: !2601, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!27, !35, !121, !28}
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DILocalVariable(name: "arg", arg: 1, scope: !2600, file: !297, line: 982, type: !35)
!2605 = !DILocalVariable(name: "argsize", arg: 2, scope: !2600, file: !297, line: 982, type: !121)
!2606 = !DILocalVariable(name: "ch", arg: 3, scope: !2600, file: !297, line: 982, type: !28)
!2607 = !DILocalVariable(name: "options", scope: !2600, file: !297, line: 984, type: !345)
!2608 = !DILocation(line: 0, scope: !2600)
!2609 = !DILocation(line: 984, column: 3, scope: !2600)
!2610 = !DILocation(line: 984, column: 26, scope: !2600)
!2611 = !DILocation(line: 985, column: 13, scope: !2600)
!2612 = !{i64 0, i64 4, !1200, i64 4, i64 4, !1191, i64 8, i64 32, !1200, i64 40, i64 8, !1134, i64 48, i64 8, !1134}
!2613 = !DILocation(line: 0, scope: !1436, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 986, column: 3, scope: !2600)
!2615 = !DILocation(line: 156, column: 62, scope: !1436, inlinedAt: !2614)
!2616 = !DILocation(line: 156, column: 57, scope: !1436, inlinedAt: !2614)
!2617 = !DILocation(line: 157, column: 15, scope: !1436, inlinedAt: !2614)
!2618 = !DILocation(line: 158, column: 12, scope: !1436, inlinedAt: !2614)
!2619 = !DILocation(line: 158, column: 15, scope: !1436, inlinedAt: !2614)
!2620 = !DILocation(line: 158, column: 25, scope: !1436, inlinedAt: !2614)
!2621 = !DILocation(line: 159, column: 18, scope: !1436, inlinedAt: !2614)
!2622 = !DILocation(line: 159, column: 23, scope: !1436, inlinedAt: !2614)
!2623 = !DILocation(line: 159, column: 6, scope: !1436, inlinedAt: !2614)
!2624 = !DILocation(line: 987, column: 10, scope: !2600)
!2625 = !DILocation(line: 988, column: 1, scope: !2600)
!2626 = !DILocation(line: 987, column: 3, scope: !2600)
!2627 = distinct !DISubprogram(name: "quotearg_char", scope: !297, file: !297, line: 991, type: !2628, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!27, !35, !28}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "arg", arg: 1, scope: !2627, file: !297, line: 991, type: !35)
!2632 = !DILocalVariable(name: "ch", arg: 2, scope: !2627, file: !297, line: 991, type: !28)
!2633 = !DILocation(line: 984, column: 26, scope: !2600, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 993, column: 10, scope: !2627)
!2635 = !DILocation(line: 0, scope: !2627)
!2636 = !DILocation(line: 0, scope: !2600, inlinedAt: !2634)
!2637 = !DILocation(line: 984, column: 3, scope: !2600, inlinedAt: !2634)
!2638 = !DILocation(line: 985, column: 13, scope: !2600, inlinedAt: !2634)
!2639 = !DILocation(line: 0, scope: !1436, inlinedAt: !2640)
!2640 = distinct !DILocation(line: 986, column: 3, scope: !2600, inlinedAt: !2634)
!2641 = !DILocation(line: 156, column: 62, scope: !1436, inlinedAt: !2640)
!2642 = !DILocation(line: 156, column: 57, scope: !1436, inlinedAt: !2640)
!2643 = !DILocation(line: 157, column: 15, scope: !1436, inlinedAt: !2640)
!2644 = !DILocation(line: 158, column: 12, scope: !1436, inlinedAt: !2640)
!2645 = !DILocation(line: 158, column: 15, scope: !1436, inlinedAt: !2640)
!2646 = !DILocation(line: 158, column: 25, scope: !1436, inlinedAt: !2640)
!2647 = !DILocation(line: 159, column: 18, scope: !1436, inlinedAt: !2640)
!2648 = !DILocation(line: 159, column: 23, scope: !1436, inlinedAt: !2640)
!2649 = !DILocation(line: 159, column: 6, scope: !1436, inlinedAt: !2640)
!2650 = !DILocation(line: 987, column: 10, scope: !2600, inlinedAt: !2634)
!2651 = !DILocation(line: 988, column: 1, scope: !2600, inlinedAt: !2634)
!2652 = !DILocation(line: 993, column: 3, scope: !2627)
!2653 = distinct !DISubprogram(name: "quotearg_colon", scope: !297, file: !297, line: 997, type: !141, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2654)
!2654 = !{!2655}
!2655 = !DILocalVariable(name: "arg", arg: 1, scope: !2653, file: !297, line: 997, type: !35)
!2656 = !DILocation(line: 984, column: 26, scope: !2600, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 993, column: 10, scope: !2627, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 999, column: 10, scope: !2653)
!2659 = !DILocation(line: 0, scope: !2653)
!2660 = !DILocation(line: 0, scope: !2627, inlinedAt: !2658)
!2661 = !DILocation(line: 0, scope: !2600, inlinedAt: !2657)
!2662 = !DILocation(line: 984, column: 3, scope: !2600, inlinedAt: !2657)
!2663 = !DILocation(line: 985, column: 13, scope: !2600, inlinedAt: !2657)
!2664 = !DILocation(line: 0, scope: !1436, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 986, column: 3, scope: !2600, inlinedAt: !2657)
!2666 = !DILocation(line: 156, column: 57, scope: !1436, inlinedAt: !2665)
!2667 = !DILocation(line: 158, column: 12, scope: !1436, inlinedAt: !2665)
!2668 = !DILocation(line: 159, column: 6, scope: !1436, inlinedAt: !2665)
!2669 = !DILocation(line: 987, column: 10, scope: !2600, inlinedAt: !2657)
!2670 = !DILocation(line: 988, column: 1, scope: !2600, inlinedAt: !2657)
!2671 = !DILocation(line: 999, column: 3, scope: !2653)
!2672 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !297, file: !297, line: 1003, type: !2481, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2673)
!2673 = !{!2674, !2675}
!2674 = !DILocalVariable(name: "arg", arg: 1, scope: !2672, file: !297, line: 1003, type: !35)
!2675 = !DILocalVariable(name: "argsize", arg: 2, scope: !2672, file: !297, line: 1003, type: !121)
!2676 = !DILocation(line: 984, column: 26, scope: !2600, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1005, column: 10, scope: !2672)
!2678 = !DILocation(line: 0, scope: !2672)
!2679 = !DILocation(line: 0, scope: !2600, inlinedAt: !2677)
!2680 = !DILocation(line: 984, column: 3, scope: !2600, inlinedAt: !2677)
!2681 = !DILocation(line: 985, column: 13, scope: !2600, inlinedAt: !2677)
!2682 = !DILocation(line: 0, scope: !1436, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 986, column: 3, scope: !2600, inlinedAt: !2677)
!2684 = !DILocation(line: 156, column: 57, scope: !1436, inlinedAt: !2683)
!2685 = !DILocation(line: 158, column: 12, scope: !1436, inlinedAt: !2683)
!2686 = !DILocation(line: 159, column: 6, scope: !1436, inlinedAt: !2683)
!2687 = !DILocation(line: 987, column: 10, scope: !2600, inlinedAt: !2677)
!2688 = !DILocation(line: 988, column: 1, scope: !2600, inlinedAt: !2677)
!2689 = !DILocation(line: 1005, column: 3, scope: !2672)
!2690 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !297, file: !297, line: 1009, type: !2492, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2691)
!2691 = !{!2692, !2693, !2694, !2695}
!2692 = !DILocalVariable(name: "n", arg: 1, scope: !2690, file: !297, line: 1009, type: !25)
!2693 = !DILocalVariable(name: "s", arg: 2, scope: !2690, file: !297, line: 1009, type: !299)
!2694 = !DILocalVariable(name: "arg", arg: 3, scope: !2690, file: !297, line: 1009, type: !35)
!2695 = !DILocalVariable(name: "options", scope: !2690, file: !297, line: 1011, type: !345)
!2696 = !DILocation(line: 195, column: 26, scope: !2503, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1012, column: 13, scope: !2690)
!2698 = !DILocation(line: 0, scope: !2690)
!2699 = !DILocation(line: 1011, column: 3, scope: !2690)
!2700 = !DILocation(line: 1011, column: 26, scope: !2690)
!2701 = !DILocation(line: 1012, column: 13, scope: !2690)
!2702 = !DILocation(line: 0, scope: !2503, inlinedAt: !2697)
!2703 = !{!2704}
!2704 = distinct !{!2704, !2705, !"quoting_options_from_style: argument 0"}
!2705 = distinct !{!2705, !"quoting_options_from_style"}
!2706 = !DILocation(line: 196, column: 13, scope: !2515, inlinedAt: !2697)
!2707 = !DILocation(line: 196, column: 7, scope: !2503, inlinedAt: !2697)
!2708 = !DILocation(line: 197, column: 5, scope: !2515, inlinedAt: !2697)
!2709 = !DILocation(line: 0, scope: !1436, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1013, column: 3, scope: !2690)
!2711 = !DILocation(line: 156, column: 57, scope: !1436, inlinedAt: !2710)
!2712 = !DILocation(line: 158, column: 12, scope: !1436, inlinedAt: !2710)
!2713 = !DILocation(line: 159, column: 6, scope: !1436, inlinedAt: !2710)
!2714 = !DILocation(line: 1014, column: 10, scope: !2690)
!2715 = !DILocation(line: 1015, column: 1, scope: !2690)
!2716 = !DILocation(line: 1014, column: 3, scope: !2690)
!2717 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !297, file: !297, line: 1018, type: !2718, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!27, !25, !35, !35, !35}
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !297, line: 1018, type: !25)
!2722 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2717, file: !297, line: 1018, type: !35)
!2723 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2717, file: !297, line: 1019, type: !35)
!2724 = !DILocalVariable(name: "arg", arg: 4, scope: !2717, file: !297, line: 1019, type: !35)
!2725 = !DILocalVariable(name: "o", scope: !2726, file: !297, line: 1030, type: !345)
!2726 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !297, file: !297, line: 1026, type: !2727, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!27, !25, !35, !35, !35, !121}
!2729 = !{!2730, !2731, !2732, !2733, !2734, !2725}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2726, file: !297, line: 1026, type: !25)
!2731 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2726, file: !297, line: 1026, type: !35)
!2732 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2726, file: !297, line: 1027, type: !35)
!2733 = !DILocalVariable(name: "arg", arg: 4, scope: !2726, file: !297, line: 1028, type: !35)
!2734 = !DILocalVariable(name: "argsize", arg: 5, scope: !2726, file: !297, line: 1028, type: !121)
!2735 = !DILocation(line: 1030, column: 26, scope: !2726, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1021, column: 10, scope: !2717)
!2737 = !DILocation(line: 0, scope: !2717)
!2738 = !DILocation(line: 0, scope: !2726, inlinedAt: !2736)
!2739 = !DILocation(line: 1030, column: 3, scope: !2726, inlinedAt: !2736)
!2740 = !DILocation(line: 1030, column: 30, scope: !2726, inlinedAt: !2736)
!2741 = !DILocation(line: 0, scope: !1477, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1031, column: 3, scope: !2726, inlinedAt: !2736)
!2743 = !DILocation(line: 184, column: 6, scope: !1477, inlinedAt: !2742)
!2744 = !DILocation(line: 184, column: 12, scope: !1477, inlinedAt: !2742)
!2745 = !DILocation(line: 185, column: 8, scope: !1491, inlinedAt: !2742)
!2746 = !DILocation(line: 185, column: 23, scope: !1491, inlinedAt: !2742)
!2747 = !DILocation(line: 185, column: 19, scope: !1491, inlinedAt: !2742)
!2748 = !DILocation(line: 186, column: 5, scope: !1491, inlinedAt: !2742)
!2749 = !DILocation(line: 187, column: 6, scope: !1477, inlinedAt: !2742)
!2750 = !DILocation(line: 187, column: 17, scope: !1477, inlinedAt: !2742)
!2751 = !DILocation(line: 188, column: 6, scope: !1477, inlinedAt: !2742)
!2752 = !DILocation(line: 188, column: 18, scope: !1477, inlinedAt: !2742)
!2753 = !DILocation(line: 1032, column: 10, scope: !2726, inlinedAt: !2736)
!2754 = !DILocation(line: 1033, column: 1, scope: !2726, inlinedAt: !2736)
!2755 = !DILocation(line: 1021, column: 3, scope: !2717)
!2756 = !DILocation(line: 0, scope: !2726)
!2757 = !DILocation(line: 1030, column: 3, scope: !2726)
!2758 = !DILocation(line: 1030, column: 26, scope: !2726)
!2759 = !DILocation(line: 1030, column: 30, scope: !2726)
!2760 = !DILocation(line: 0, scope: !1477, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1031, column: 3, scope: !2726)
!2762 = !DILocation(line: 184, column: 6, scope: !1477, inlinedAt: !2761)
!2763 = !DILocation(line: 184, column: 12, scope: !1477, inlinedAt: !2761)
!2764 = !DILocation(line: 185, column: 8, scope: !1491, inlinedAt: !2761)
!2765 = !DILocation(line: 185, column: 23, scope: !1491, inlinedAt: !2761)
!2766 = !DILocation(line: 185, column: 19, scope: !1491, inlinedAt: !2761)
!2767 = !DILocation(line: 186, column: 5, scope: !1491, inlinedAt: !2761)
!2768 = !DILocation(line: 187, column: 6, scope: !1477, inlinedAt: !2761)
!2769 = !DILocation(line: 187, column: 17, scope: !1477, inlinedAt: !2761)
!2770 = !DILocation(line: 188, column: 6, scope: !1477, inlinedAt: !2761)
!2771 = !DILocation(line: 188, column: 18, scope: !1477, inlinedAt: !2761)
!2772 = !DILocation(line: 1032, column: 10, scope: !2726)
!2773 = !DILocation(line: 1033, column: 1, scope: !2726)
!2774 = !DILocation(line: 1032, column: 3, scope: !2726)
!2775 = distinct !DISubprogram(name: "quotearg_custom", scope: !297, file: !297, line: 1036, type: !2776, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!27, !35, !35, !35}
!2778 = !{!2779, !2780, !2781}
!2779 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2775, file: !297, line: 1036, type: !35)
!2780 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2775, file: !297, line: 1036, type: !35)
!2781 = !DILocalVariable(name: "arg", arg: 3, scope: !2775, file: !297, line: 1037, type: !35)
!2782 = !DILocation(line: 1030, column: 26, scope: !2726, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1021, column: 10, scope: !2717, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 1039, column: 10, scope: !2775)
!2785 = !DILocation(line: 0, scope: !2775)
!2786 = !DILocation(line: 0, scope: !2717, inlinedAt: !2784)
!2787 = !DILocation(line: 0, scope: !2726, inlinedAt: !2783)
!2788 = !DILocation(line: 1030, column: 3, scope: !2726, inlinedAt: !2783)
!2789 = !DILocation(line: 1030, column: 30, scope: !2726, inlinedAt: !2783)
!2790 = !DILocation(line: 0, scope: !1477, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1031, column: 3, scope: !2726, inlinedAt: !2783)
!2792 = !DILocation(line: 184, column: 6, scope: !1477, inlinedAt: !2791)
!2793 = !DILocation(line: 184, column: 12, scope: !1477, inlinedAt: !2791)
!2794 = !DILocation(line: 185, column: 8, scope: !1491, inlinedAt: !2791)
!2795 = !DILocation(line: 185, column: 23, scope: !1491, inlinedAt: !2791)
!2796 = !DILocation(line: 185, column: 19, scope: !1491, inlinedAt: !2791)
!2797 = !DILocation(line: 186, column: 5, scope: !1491, inlinedAt: !2791)
!2798 = !DILocation(line: 187, column: 6, scope: !1477, inlinedAt: !2791)
!2799 = !DILocation(line: 187, column: 17, scope: !1477, inlinedAt: !2791)
!2800 = !DILocation(line: 188, column: 6, scope: !1477, inlinedAt: !2791)
!2801 = !DILocation(line: 188, column: 18, scope: !1477, inlinedAt: !2791)
!2802 = !DILocation(line: 1032, column: 10, scope: !2726, inlinedAt: !2783)
!2803 = !DILocation(line: 1033, column: 1, scope: !2726, inlinedAt: !2783)
!2804 = !DILocation(line: 1039, column: 3, scope: !2775)
!2805 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !297, file: !297, line: 1043, type: !2806, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!27, !35, !35, !35, !121}
!2808 = !{!2809, !2810, !2811, !2812}
!2809 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2805, file: !297, line: 1043, type: !35)
!2810 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2805, file: !297, line: 1043, type: !35)
!2811 = !DILocalVariable(name: "arg", arg: 3, scope: !2805, file: !297, line: 1044, type: !35)
!2812 = !DILocalVariable(name: "argsize", arg: 4, scope: !2805, file: !297, line: 1044, type: !121)
!2813 = !DILocation(line: 1030, column: 26, scope: !2726, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1046, column: 10, scope: !2805)
!2815 = !DILocation(line: 0, scope: !2805)
!2816 = !DILocation(line: 0, scope: !2726, inlinedAt: !2814)
!2817 = !DILocation(line: 1030, column: 3, scope: !2726, inlinedAt: !2814)
!2818 = !DILocation(line: 1030, column: 30, scope: !2726, inlinedAt: !2814)
!2819 = !DILocation(line: 0, scope: !1477, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1031, column: 3, scope: !2726, inlinedAt: !2814)
!2821 = !DILocation(line: 184, column: 6, scope: !1477, inlinedAt: !2820)
!2822 = !DILocation(line: 184, column: 12, scope: !1477, inlinedAt: !2820)
!2823 = !DILocation(line: 185, column: 8, scope: !1491, inlinedAt: !2820)
!2824 = !DILocation(line: 185, column: 23, scope: !1491, inlinedAt: !2820)
!2825 = !DILocation(line: 185, column: 19, scope: !1491, inlinedAt: !2820)
!2826 = !DILocation(line: 186, column: 5, scope: !1491, inlinedAt: !2820)
!2827 = !DILocation(line: 187, column: 6, scope: !1477, inlinedAt: !2820)
!2828 = !DILocation(line: 187, column: 17, scope: !1477, inlinedAt: !2820)
!2829 = !DILocation(line: 188, column: 6, scope: !1477, inlinedAt: !2820)
!2830 = !DILocation(line: 188, column: 18, scope: !1477, inlinedAt: !2820)
!2831 = !DILocation(line: 1032, column: 10, scope: !2726, inlinedAt: !2814)
!2832 = !DILocation(line: 1033, column: 1, scope: !2726, inlinedAt: !2814)
!2833 = !DILocation(line: 1046, column: 3, scope: !2805)
!2834 = distinct !DISubprogram(name: "quote_n_mem", scope: !297, file: !297, line: 1061, type: !2835, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!35, !25, !35, !121}
!2837 = !{!2838, !2839, !2840}
!2838 = !DILocalVariable(name: "n", arg: 1, scope: !2834, file: !297, line: 1061, type: !25)
!2839 = !DILocalVariable(name: "arg", arg: 2, scope: !2834, file: !297, line: 1061, type: !35)
!2840 = !DILocalVariable(name: "argsize", arg: 3, scope: !2834, file: !297, line: 1061, type: !121)
!2841 = !DILocation(line: 0, scope: !2834)
!2842 = !DILocation(line: 1063, column: 10, scope: !2834)
!2843 = !DILocation(line: 1063, column: 3, scope: !2834)
!2844 = distinct !DISubprogram(name: "quote_mem", scope: !297, file: !297, line: 1067, type: !2845, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!35, !35, !121}
!2847 = !{!2848, !2849}
!2848 = !DILocalVariable(name: "arg", arg: 1, scope: !2844, file: !297, line: 1067, type: !35)
!2849 = !DILocalVariable(name: "argsize", arg: 2, scope: !2844, file: !297, line: 1067, type: !121)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 0, scope: !2834, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1069, column: 10, scope: !2844)
!2853 = !DILocation(line: 1063, column: 10, scope: !2834, inlinedAt: !2852)
!2854 = !DILocation(line: 1069, column: 3, scope: !2844)
!2855 = distinct !DISubprogram(name: "quote_n", scope: !297, file: !297, line: 1073, type: !2856, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!35, !25, !35}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "n", arg: 1, scope: !2855, file: !297, line: 1073, type: !25)
!2860 = !DILocalVariable(name: "arg", arg: 2, scope: !2855, file: !297, line: 1073, type: !35)
!2861 = !DILocation(line: 0, scope: !2855)
!2862 = !DILocation(line: 0, scope: !2834, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1075, column: 10, scope: !2855)
!2864 = !DILocation(line: 1063, column: 10, scope: !2834, inlinedAt: !2863)
!2865 = !DILocation(line: 1075, column: 3, scope: !2855)
!2866 = distinct !DISubprogram(name: "quote", scope: !297, file: !297, line: 1079, type: !175, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !2867)
!2867 = !{!2868}
!2868 = !DILocalVariable(name: "arg", arg: 1, scope: !2866, file: !297, line: 1079, type: !35)
!2869 = !DILocation(line: 0, scope: !2866)
!2870 = !DILocation(line: 0, scope: !2855, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1081, column: 10, scope: !2866)
!2872 = !DILocation(line: 0, scope: !2834, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1075, column: 10, scope: !2855, inlinedAt: !2871)
!2874 = !DILocation(line: 1063, column: 10, scope: !2834, inlinedAt: !2873)
!2875 = !DILocation(line: 1081, column: 3, scope: !2866)
!2876 = distinct !DISubprogram(name: "version_etc_arn", scope: !441, file: !441, line: 61, type: !2877, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !2882)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2879, !35, !35, !35, !2881, !121}
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !451)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888}
!2883 = !DILocalVariable(name: "stream", arg: 1, scope: !2876, file: !441, line: 61, type: !2879)
!2884 = !DILocalVariable(name: "command_name", arg: 2, scope: !2876, file: !441, line: 62, type: !35)
!2885 = !DILocalVariable(name: "package", arg: 3, scope: !2876, file: !441, line: 62, type: !35)
!2886 = !DILocalVariable(name: "version", arg: 4, scope: !2876, file: !441, line: 63, type: !35)
!2887 = !DILocalVariable(name: "authors", arg: 5, scope: !2876, file: !441, line: 64, type: !2881)
!2888 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2876, file: !441, line: 64, type: !121)
!2889 = !DILocation(line: 0, scope: !2876)
!2890 = !DILocation(line: 66, column: 7, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2876, file: !441, line: 66, column: 7)
!2892 = !DILocation(line: 66, column: 7, scope: !2876)
!2893 = !DILocation(line: 67, column: 5, scope: !2891)
!2894 = !DILocation(line: 69, column: 5, scope: !2891)
!2895 = !DILocation(line: 83, column: 3, scope: !2876)
!2896 = !DILocation(line: 85, column: 3, scope: !2876)
!2897 = !DILocation(line: 88, column: 3, scope: !2876)
!2898 = !DILocation(line: 95, column: 3, scope: !2876)
!2899 = !DILocation(line: 97, column: 3, scope: !2876)
!2900 = !DILocation(line: 105, column: 7, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2876, file: !441, line: 98, column: 5)
!2902 = !DILocation(line: 106, column: 7, scope: !2901)
!2903 = !DILocation(line: 109, column: 7, scope: !2901)
!2904 = !DILocation(line: 110, column: 7, scope: !2901)
!2905 = !DILocation(line: 113, column: 7, scope: !2901)
!2906 = !DILocation(line: 115, column: 7, scope: !2901)
!2907 = !DILocation(line: 120, column: 7, scope: !2901)
!2908 = !DILocation(line: 122, column: 7, scope: !2901)
!2909 = !DILocation(line: 127, column: 7, scope: !2901)
!2910 = !DILocation(line: 129, column: 7, scope: !2901)
!2911 = !DILocation(line: 134, column: 7, scope: !2901)
!2912 = !DILocation(line: 137, column: 7, scope: !2901)
!2913 = !DILocation(line: 142, column: 7, scope: !2901)
!2914 = !DILocation(line: 145, column: 7, scope: !2901)
!2915 = !DILocation(line: 150, column: 7, scope: !2901)
!2916 = !DILocation(line: 154, column: 7, scope: !2901)
!2917 = !DILocation(line: 159, column: 7, scope: !2901)
!2918 = !DILocation(line: 163, column: 7, scope: !2901)
!2919 = !DILocation(line: 170, column: 7, scope: !2901)
!2920 = !DILocation(line: 174, column: 7, scope: !2901)
!2921 = !DILocation(line: 176, column: 1, scope: !2876)
!2922 = distinct !DISubprogram(name: "version_etc_ar", scope: !441, file: !441, line: 183, type: !2923, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2879, !35, !35, !35, !2881}
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931}
!2926 = !DILocalVariable(name: "stream", arg: 1, scope: !2922, file: !441, line: 183, type: !2879)
!2927 = !DILocalVariable(name: "command_name", arg: 2, scope: !2922, file: !441, line: 184, type: !35)
!2928 = !DILocalVariable(name: "package", arg: 3, scope: !2922, file: !441, line: 184, type: !35)
!2929 = !DILocalVariable(name: "version", arg: 4, scope: !2922, file: !441, line: 185, type: !35)
!2930 = !DILocalVariable(name: "authors", arg: 5, scope: !2922, file: !441, line: 185, type: !2881)
!2931 = !DILocalVariable(name: "n_authors", scope: !2922, file: !441, line: 187, type: !121)
!2932 = !DILocation(line: 0, scope: !2922)
!2933 = !DILocation(line: 189, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2922, file: !441, line: 189, column: 3)
!2935 = !DILocation(line: 0, scope: !2934)
!2936 = !DILocation(line: 189, column: 23, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2934, file: !441, line: 189, column: 3)
!2938 = !DILocation(line: 189, column: 3, scope: !2934)
!2939 = !DILocation(line: 189, column: 52, scope: !2937)
!2940 = distinct !{!2940, !2938, !2941}
!2941 = !DILocation(line: 190, column: 5, scope: !2934)
!2942 = !DILocation(line: 191, column: 3, scope: !2922)
!2943 = !DILocation(line: 192, column: 1, scope: !2922)
!2944 = distinct !DISubprogram(name: "version_etc_va", scope: !441, file: !441, line: 199, type: !2945, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !2954)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2879, !35, !35, !35, !2947}
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !441, line: 192, size: 192, elements: !2949)
!2949 = !{!2950, !2951, !2952, !2953}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2948, file: !441, line: 192, baseType: !7, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2948, file: !441, line: 192, baseType: !7, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2948, file: !441, line: 192, baseType: !119, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2948, file: !441, line: 192, baseType: !119, size: 64, offset: 128)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961}
!2955 = !DILocalVariable(name: "stream", arg: 1, scope: !2944, file: !441, line: 199, type: !2879)
!2956 = !DILocalVariable(name: "command_name", arg: 2, scope: !2944, file: !441, line: 200, type: !35)
!2957 = !DILocalVariable(name: "package", arg: 3, scope: !2944, file: !441, line: 200, type: !35)
!2958 = !DILocalVariable(name: "version", arg: 4, scope: !2944, file: !441, line: 201, type: !35)
!2959 = !DILocalVariable(name: "authors", arg: 5, scope: !2944, file: !441, line: 201, type: !2947)
!2960 = !DILocalVariable(name: "n_authors", scope: !2944, file: !441, line: 203, type: !121)
!2961 = !DILocalVariable(name: "authtab", scope: !2944, file: !441, line: 204, type: !2962)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !406)
!2963 = !DILocation(line: 0, scope: !2944)
!2964 = !DILocation(line: 204, column: 3, scope: !2944)
!2965 = !DILocation(line: 204, column: 15, scope: !2944)
!2966 = !DILocation(line: 0, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !441, line: 206, column: 3)
!2968 = distinct !DILexicalBlock(scope: !2944, file: !441, line: 206, column: 3)
!2969 = !DILocation(line: 208, column: 35, scope: !2967)
!2970 = !DILocation(line: 208, column: 14, scope: !2967)
!2971 = !DILocation(line: 208, column: 33, scope: !2967)
!2972 = !DILocation(line: 208, column: 67, scope: !2967)
!2973 = !DILocation(line: 206, column: 3, scope: !2968)
!2974 = !DILocation(line: 0, scope: !2968)
!2975 = !DILocation(line: 211, column: 3, scope: !2944)
!2976 = !DILocation(line: 213, column: 1, scope: !2944)
!2977 = distinct !DISubprogram(name: "version_etc", scope: !441, file: !441, line: 230, type: !2978, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{null, !2879, !35, !35, !35, null}
!2980 = !{!2981, !2982, !2983, !2984, !2985}
!2981 = !DILocalVariable(name: "stream", arg: 1, scope: !2977, file: !441, line: 230, type: !2879)
!2982 = !DILocalVariable(name: "command_name", arg: 2, scope: !2977, file: !441, line: 231, type: !35)
!2983 = !DILocalVariable(name: "package", arg: 3, scope: !2977, file: !441, line: 231, type: !35)
!2984 = !DILocalVariable(name: "version", arg: 4, scope: !2977, file: !441, line: 232, type: !35)
!2985 = !DILocalVariable(name: "authors", scope: !2977, file: !441, line: 234, type: !2986)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !70, line: 52, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2988, line: 32, baseType: !2989)
!2988 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !441, line: 234, baseType: !2990)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2948, size: 192, elements: !104)
!2991 = !DILocation(line: 0, scope: !2977)
!2992 = !DILocation(line: 234, column: 3, scope: !2977)
!2993 = !DILocation(line: 234, column: 11, scope: !2977)
!2994 = !DILocation(line: 236, column: 3, scope: !2977)
!2995 = !DILocation(line: 237, column: 3, scope: !2977)
!2996 = !DILocation(line: 238, column: 3, scope: !2977)
!2997 = !DILocation(line: 239, column: 1, scope: !2977)
!2998 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !441, file: !441, line: 242, type: !148, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !68)
!2999 = !DILocation(line: 244, column: 3, scope: !2998)
!3000 = !DILocation(line: 249, column: 3, scope: !2998)
!3001 = !DILocation(line: 255, column: 3, scope: !2998)
!3002 = !DILocation(line: 260, column: 3, scope: !2998)
!3003 = !DILocation(line: 262, column: 1, scope: !2998)
!3004 = distinct !DISubprogram(name: "xnmalloc", scope: !334, file: !334, line: 99, type: !3005, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!119, !121, !121}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3004, file: !334, line: 99, type: !121)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !334, line: 99, type: !121)
!3010 = !DILocation(line: 0, scope: !3004)
!3011 = !DILocation(line: 101, column: 7, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !334, line: 101, column: 7)
!3013 = !DILocation(line: 101, column: 7, scope: !3004)
!3014 = !DILocation(line: 102, column: 5, scope: !3012)
!3015 = !DILocation(line: 103, column: 21, scope: !3004)
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3017, file: !483, line: 39, type: !121)
!3017 = distinct !DISubprogram(name: "xmalloc", scope: !483, file: !483, line: 39, type: !3018, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!119, !121}
!3020 = !{!3016, !3021}
!3021 = !DILocalVariable(name: "p", scope: !3017, file: !483, line: 41, type: !119)
!3022 = !DILocation(line: 0, scope: !3017, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 103, column: 10, scope: !3004)
!3024 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3023)
!3025 = !DILocation(line: 42, column: 8, scope: !3026, inlinedAt: !3023)
!3026 = distinct !DILexicalBlock(scope: !3017, file: !483, line: 42, column: 7)
!3027 = !DILocation(line: 42, column: 15, scope: !3026, inlinedAt: !3023)
!3028 = !DILocation(line: 42, column: 10, scope: !3026, inlinedAt: !3023)
!3029 = !DILocation(line: 43, column: 5, scope: !3026, inlinedAt: !3023)
!3030 = !DILocation(line: 103, column: 3, scope: !3004)
!3031 = !DILocation(line: 0, scope: !3017)
!3032 = !DILocation(line: 41, column: 13, scope: !3017)
!3033 = !DILocation(line: 42, column: 8, scope: !3026)
!3034 = !DILocation(line: 42, column: 15, scope: !3026)
!3035 = !DILocation(line: 42, column: 10, scope: !3026)
!3036 = !DILocation(line: 43, column: 5, scope: !3026)
!3037 = !DILocation(line: 44, column: 3, scope: !3017)
!3038 = distinct !DISubprogram(name: "xnrealloc", scope: !334, file: !334, line: 112, type: !3039, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!119, !119, !121, !121}
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !334, line: 112, type: !119)
!3043 = !DILocalVariable(name: "n", arg: 2, scope: !3038, file: !334, line: 112, type: !121)
!3044 = !DILocalVariable(name: "s", arg: 3, scope: !3038, file: !334, line: 112, type: !121)
!3045 = !DILocation(line: 0, scope: !3038)
!3046 = !DILocation(line: 114, column: 7, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !334, line: 114, column: 7)
!3048 = !DILocation(line: 114, column: 7, scope: !3038)
!3049 = !DILocation(line: 115, column: 5, scope: !3047)
!3050 = !DILocation(line: 116, column: 25, scope: !3038)
!3051 = !DILocalVariable(name: "p", arg: 1, scope: !3052, file: !483, line: 51, type: !119)
!3052 = distinct !DISubprogram(name: "xrealloc", scope: !483, file: !483, line: 51, type: !3053, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!119, !119, !121}
!3055 = !{!3051, !3056}
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3052, file: !483, line: 51, type: !121)
!3057 = !DILocation(line: 0, scope: !3052, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 116, column: 10, scope: !3038)
!3059 = !DILocation(line: 53, column: 8, scope: !3060, inlinedAt: !3058)
!3060 = distinct !DILexicalBlock(scope: !3052, file: !483, line: 53, column: 7)
!3061 = !DILocation(line: 53, column: 13, scope: !3060, inlinedAt: !3058)
!3062 = !DILocation(line: 53, column: 10, scope: !3060, inlinedAt: !3058)
!3063 = !DILocation(line: 57, column: 7, scope: !3064, inlinedAt: !3058)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !483, line: 54, column: 5)
!3065 = !DILocation(line: 58, column: 7, scope: !3064, inlinedAt: !3058)
!3066 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3058)
!3067 = !DILocation(line: 62, column: 8, scope: !3068, inlinedAt: !3058)
!3068 = distinct !DILexicalBlock(scope: !3052, file: !483, line: 62, column: 7)
!3069 = !DILocation(line: 62, column: 13, scope: !3068, inlinedAt: !3058)
!3070 = !DILocation(line: 62, column: 10, scope: !3068, inlinedAt: !3058)
!3071 = !DILocation(line: 63, column: 5, scope: !3068, inlinedAt: !3058)
!3072 = !DILocation(line: 116, column: 3, scope: !3038)
!3073 = !DILocation(line: 0, scope: !3052)
!3074 = !DILocation(line: 53, column: 8, scope: !3060)
!3075 = !DILocation(line: 53, column: 13, scope: !3060)
!3076 = !DILocation(line: 53, column: 10, scope: !3060)
!3077 = !DILocation(line: 57, column: 7, scope: !3064)
!3078 = !DILocation(line: 58, column: 7, scope: !3064)
!3079 = !DILocation(line: 61, column: 7, scope: !3052)
!3080 = !DILocation(line: 62, column: 8, scope: !3068)
!3081 = !DILocation(line: 62, column: 13, scope: !3068)
!3082 = !DILocation(line: 62, column: 10, scope: !3068)
!3083 = !DILocation(line: 63, column: 5, scope: !3068)
!3084 = !DILocation(line: 65, column: 1, scope: !3052)
!3085 = !DILocation(line: 0, scope: !486)
!3086 = !DILocation(line: 176, column: 14, scope: !486)
!3087 = !DILocation(line: 178, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !486, file: !334, line: 178, column: 7)
!3089 = !DILocation(line: 178, column: 7, scope: !486)
!3090 = !DILocation(line: 180, column: 13, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !334, line: 180, column: 11)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !334, line: 179, column: 5)
!3093 = !DILocation(line: 180, column: 11, scope: !3092)
!3094 = !DILocation(line: 188, column: 30, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3091, file: !334, line: 181, column: 9)
!3096 = !DILocation(line: 189, column: 16, scope: !3095)
!3097 = !DILocation(line: 189, column: 13, scope: !3095)
!3098 = !DILocation(line: 190, column: 9, scope: !3095)
!3099 = !DILocation(line: 191, column: 11, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3092, file: !334, line: 191, column: 11)
!3101 = !DILocation(line: 191, column: 11, scope: !3092)
!3102 = !DILocation(line: 206, column: 7, scope: !486)
!3103 = !DILocation(line: 207, column: 25, scope: !486)
!3104 = !DILocation(line: 0, scope: !3052, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 207, column: 10, scope: !486)
!3106 = !DILocation(line: 53, column: 10, scope: !3060, inlinedAt: !3105)
!3107 = !DILocation(line: 192, column: 9, scope: !3100)
!3108 = !DILocation(line: 200, column: 69, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !334, line: 200, column: 11)
!3110 = distinct !DILexicalBlock(scope: !3088, file: !334, line: 195, column: 5)
!3111 = !DILocation(line: 201, column: 11, scope: !3109)
!3112 = !DILocation(line: 200, column: 11, scope: !3110)
!3113 = !DILocation(line: 202, column: 9, scope: !3109)
!3114 = !DILocation(line: 203, column: 14, scope: !3110)
!3115 = !DILocation(line: 203, column: 18, scope: !3110)
!3116 = !DILocation(line: 203, column: 9, scope: !3110)
!3117 = !DILocation(line: 53, column: 8, scope: !3060, inlinedAt: !3105)
!3118 = !DILocation(line: 57, column: 7, scope: !3064, inlinedAt: !3105)
!3119 = !DILocation(line: 58, column: 7, scope: !3064, inlinedAt: !3105)
!3120 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3105)
!3121 = !DILocation(line: 62, column: 8, scope: !3068, inlinedAt: !3105)
!3122 = !DILocation(line: 62, column: 13, scope: !3068, inlinedAt: !3105)
!3123 = !DILocation(line: 62, column: 10, scope: !3068, inlinedAt: !3105)
!3124 = !DILocation(line: 63, column: 5, scope: !3068, inlinedAt: !3105)
!3125 = !DILocation(line: 207, column: 3, scope: !486)
!3126 = distinct !DISubprogram(name: "xcharalloc", scope: !334, file: !334, line: 216, type: !2291, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3127)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3126, file: !334, line: 216, type: !121)
!3129 = !DILocation(line: 0, scope: !3126)
!3130 = !DILocation(line: 0, scope: !3017, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 218, column: 10, scope: !3126)
!3132 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3131)
!3133 = !DILocation(line: 42, column: 8, scope: !3026, inlinedAt: !3131)
!3134 = !DILocation(line: 42, column: 15, scope: !3026, inlinedAt: !3131)
!3135 = !DILocation(line: 42, column: 10, scope: !3026, inlinedAt: !3131)
!3136 = !DILocation(line: 43, column: 5, scope: !3026, inlinedAt: !3131)
!3137 = !DILocation(line: 218, column: 3, scope: !3126)
!3138 = distinct !DISubprogram(name: "x2realloc", scope: !483, file: !483, line: 74, type: !3139, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!119, !119, !489}
!3141 = !{!3142, !3143}
!3142 = !DILocalVariable(name: "p", arg: 1, scope: !3138, file: !483, line: 74, type: !119)
!3143 = !DILocalVariable(name: "pn", arg: 2, scope: !3138, file: !483, line: 74, type: !489)
!3144 = !DILocation(line: 0, scope: !3138)
!3145 = !DILocation(line: 0, scope: !486, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 76, column: 10, scope: !3138)
!3147 = !DILocation(line: 176, column: 14, scope: !486, inlinedAt: !3146)
!3148 = !DILocation(line: 178, column: 9, scope: !3088, inlinedAt: !3146)
!3149 = !DILocation(line: 178, column: 7, scope: !486, inlinedAt: !3146)
!3150 = !DILocation(line: 180, column: 13, scope: !3091, inlinedAt: !3146)
!3151 = !DILocation(line: 180, column: 11, scope: !3092, inlinedAt: !3146)
!3152 = !DILocation(line: 191, column: 11, scope: !3100, inlinedAt: !3146)
!3153 = !DILocation(line: 191, column: 11, scope: !3092, inlinedAt: !3146)
!3154 = !DILocation(line: 206, column: 7, scope: !486, inlinedAt: !3146)
!3155 = !DILocation(line: 0, scope: !3052, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 207, column: 10, scope: !486, inlinedAt: !3146)
!3157 = !DILocation(line: 53, column: 10, scope: !3060, inlinedAt: !3156)
!3158 = !DILocation(line: 192, column: 9, scope: !3100, inlinedAt: !3146)
!3159 = !DILocation(line: 201, column: 11, scope: !3109, inlinedAt: !3146)
!3160 = !DILocation(line: 200, column: 11, scope: !3110, inlinedAt: !3146)
!3161 = !DILocation(line: 202, column: 9, scope: !3109, inlinedAt: !3146)
!3162 = !DILocation(line: 203, column: 14, scope: !3110, inlinedAt: !3146)
!3163 = !DILocation(line: 203, column: 18, scope: !3110, inlinedAt: !3146)
!3164 = !DILocation(line: 203, column: 9, scope: !3110, inlinedAt: !3146)
!3165 = !DILocation(line: 53, column: 8, scope: !3060, inlinedAt: !3156)
!3166 = !DILocation(line: 57, column: 7, scope: !3064, inlinedAt: !3156)
!3167 = !DILocation(line: 58, column: 7, scope: !3064, inlinedAt: !3156)
!3168 = !DILocation(line: 61, column: 7, scope: !3052, inlinedAt: !3156)
!3169 = !DILocation(line: 62, column: 8, scope: !3068, inlinedAt: !3156)
!3170 = !DILocation(line: 62, column: 13, scope: !3068, inlinedAt: !3156)
!3171 = !DILocation(line: 62, column: 10, scope: !3068, inlinedAt: !3156)
!3172 = !DILocation(line: 63, column: 5, scope: !3068, inlinedAt: !3156)
!3173 = !DILocation(line: 76, column: 3, scope: !3138)
!3174 = distinct !DISubprogram(name: "xzalloc", scope: !483, file: !483, line: 84, type: !3018, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3175)
!3175 = !{!3176}
!3176 = !DILocalVariable(name: "n", arg: 1, scope: !3174, file: !483, line: 84, type: !121)
!3177 = !DILocation(line: 0, scope: !3174)
!3178 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !483, line: 93, type: !121)
!3179 = distinct !DISubprogram(name: "xcalloc", scope: !483, file: !483, line: 93, type: !3005, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3180)
!3180 = !{!3178, !3181, !3182}
!3181 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !483, line: 93, type: !121)
!3182 = !DILocalVariable(name: "p", scope: !3179, file: !483, line: 95, type: !119)
!3183 = !DILocation(line: 0, scope: !3179, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 86, column: 10, scope: !3174)
!3185 = !DILocation(line: 100, column: 7, scope: !3186, inlinedAt: !3184)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !483, line: 100, column: 7)
!3187 = !DILocation(line: 101, column: 7, scope: !3186, inlinedAt: !3184)
!3188 = !DILocation(line: 101, column: 18, scope: !3186, inlinedAt: !3184)
!3189 = !DILocation(line: 101, column: 16, scope: !3186, inlinedAt: !3184)
!3190 = !DILocation(line: 100, column: 7, scope: !3179, inlinedAt: !3184)
!3191 = !DILocation(line: 102, column: 5, scope: !3186, inlinedAt: !3184)
!3192 = !DILocation(line: 86, column: 3, scope: !3174)
!3193 = !DILocation(line: 0, scope: !3179)
!3194 = !DILocation(line: 100, column: 7, scope: !3186)
!3195 = !DILocation(line: 101, column: 7, scope: !3186)
!3196 = !DILocation(line: 101, column: 18, scope: !3186)
!3197 = !DILocation(line: 101, column: 16, scope: !3186)
!3198 = !DILocation(line: 100, column: 7, scope: !3179)
!3199 = !DILocation(line: 102, column: 5, scope: !3186)
!3200 = !DILocation(line: 103, column: 3, scope: !3179)
!3201 = distinct !DISubprogram(name: "xmemdup", scope: !483, file: !483, line: 111, type: !3202, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!119, !337, !121}
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "p", arg: 1, scope: !3201, file: !483, line: 111, type: !337)
!3206 = !DILocalVariable(name: "s", arg: 2, scope: !3201, file: !483, line: 111, type: !121)
!3207 = !DILocation(line: 0, scope: !3201)
!3208 = !DILocation(line: 0, scope: !3017, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 113, column: 18, scope: !3201)
!3210 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3209)
!3211 = !DILocation(line: 42, column: 8, scope: !3026, inlinedAt: !3209)
!3212 = !DILocation(line: 42, column: 15, scope: !3026, inlinedAt: !3209)
!3213 = !DILocation(line: 42, column: 10, scope: !3026, inlinedAt: !3209)
!3214 = !DILocation(line: 43, column: 5, scope: !3026, inlinedAt: !3209)
!3215 = !DILocalVariable(name: "__dest", arg: 1, scope: !3216, file: !1824, line: 31, type: !3219)
!3216 = distinct !DISubprogram(name: "memcpy", scope: !1824, file: !1824, line: 31, type: !3217, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3221)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!119, !3219, !3220, !121}
!3219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!3220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !337)
!3221 = !{!3215, !3222, !3223}
!3222 = !DILocalVariable(name: "__src", arg: 2, scope: !3216, file: !1824, line: 31, type: !3220)
!3223 = !DILocalVariable(name: "__len", arg: 3, scope: !3216, file: !1824, line: 31, type: !121)
!3224 = !DILocation(line: 0, scope: !3216, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 113, column: 10, scope: !3201)
!3226 = !DILocation(line: 34, column: 10, scope: !3216, inlinedAt: !3225)
!3227 = !DILocation(line: 113, column: 3, scope: !3201)
!3228 = distinct !DISubprogram(name: "xstrdup", scope: !483, file: !483, line: 119, type: !141, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !3229)
!3229 = !{!3230}
!3230 = !DILocalVariable(name: "string", arg: 1, scope: !3228, file: !483, line: 119, type: !35)
!3231 = !DILocation(line: 0, scope: !3228)
!3232 = !DILocation(line: 121, column: 27, scope: !3228)
!3233 = !DILocation(line: 121, column: 43, scope: !3228)
!3234 = !DILocation(line: 0, scope: !3201, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 121, column: 10, scope: !3228)
!3236 = !DILocation(line: 0, scope: !3017, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 113, column: 18, scope: !3201, inlinedAt: !3235)
!3238 = !DILocation(line: 41, column: 13, scope: !3017, inlinedAt: !3237)
!3239 = !DILocation(line: 42, column: 8, scope: !3026, inlinedAt: !3237)
!3240 = !DILocation(line: 42, column: 15, scope: !3026, inlinedAt: !3237)
!3241 = !DILocation(line: 42, column: 10, scope: !3026, inlinedAt: !3237)
!3242 = !DILocation(line: 43, column: 5, scope: !3026, inlinedAt: !3237)
!3243 = !DILocation(line: 0, scope: !3216, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 113, column: 10, scope: !3201, inlinedAt: !3235)
!3245 = !DILocation(line: 34, column: 10, scope: !3216, inlinedAt: !3244)
!3246 = !DILocation(line: 121, column: 3, scope: !3228)
!3247 = distinct !DISubprogram(name: "xalloc_die", scope: !504, file: !504, line: 32, type: !148, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !68)
!3248 = !DILocation(line: 34, column: 10, scope: !3247)
!3249 = !DILocation(line: 34, column: 33, scope: !3247)
!3250 = !DILocation(line: 34, column: 3, scope: !3247)
!3251 = !DILocation(line: 40, column: 3, scope: !3247)
!3252 = distinct !DISubprogram(name: "xstrtol", scope: !507, file: !507, line: 76, type: !3253, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3256)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!3255, !35, !26, !25, !172, !35}
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 38, baseType: !13)
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3269, !3270}
!3257 = !DILocalVariable(name: "s", arg: 1, scope: !3252, file: !507, line: 76, type: !35)
!3258 = !DILocalVariable(name: "ptr", arg: 2, scope: !3252, file: !507, line: 76, type: !26)
!3259 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3252, file: !507, line: 76, type: !25)
!3260 = !DILocalVariable(name: "val", arg: 4, scope: !3252, file: !507, line: 77, type: !172)
!3261 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3252, file: !507, line: 77, type: !35)
!3262 = !DILocalVariable(name: "t_ptr", scope: !3252, file: !507, line: 79, type: !27)
!3263 = !DILocalVariable(name: "p", scope: !3252, file: !507, line: 80, type: !26)
!3264 = !DILocalVariable(name: "tmp", scope: !3252, file: !507, line: 81, type: !52)
!3265 = !DILocalVariable(name: "err", scope: !3252, file: !507, line: 82, type: !3255)
!3266 = !DILocalVariable(name: "base", scope: !3267, file: !507, line: 129, type: !25)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !507, line: 128, column: 5)
!3268 = distinct !DILexicalBlock(scope: !3252, file: !507, line: 127, column: 7)
!3269 = !DILocalVariable(name: "suffixes", scope: !3267, file: !507, line: 130, type: !25)
!3270 = !DILocalVariable(name: "overflow", scope: !3267, file: !507, line: 131, type: !3255)
!3271 = !DILocation(line: 0, scope: !3252)
!3272 = !DILocation(line: 79, column: 3, scope: !3252)
!3273 = !DILocation(line: 84, column: 3, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !507, line: 84, column: 3)
!3275 = distinct !DILexicalBlock(scope: !3252, file: !507, line: 84, column: 3)
!3276 = !DILocation(line: 86, column: 8, scope: !3252)
!3277 = !DILocation(line: 88, column: 3, scope: !3252)
!3278 = !DILocation(line: 88, column: 9, scope: !3252)
!3279 = !DILocation(line: 100, column: 9, scope: !3252)
!3280 = !DILocation(line: 102, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3252, file: !507, line: 102, column: 7)
!3282 = !DILocation(line: 102, column: 10, scope: !3281)
!3283 = !DILocation(line: 102, column: 7, scope: !3252)
!3284 = !DILocation(line: 106, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !507, line: 106, column: 11)
!3286 = distinct !DILexicalBlock(scope: !3281, file: !507, line: 103, column: 5)
!3287 = !DILocation(line: 106, column: 26, scope: !3285)
!3288 = !DILocation(line: 106, column: 29, scope: !3285)
!3289 = !DILocation(line: 106, column: 33, scope: !3285)
!3290 = !DILocation(line: 106, column: 36, scope: !3285)
!3291 = !DILocation(line: 106, column: 11, scope: !3286)
!3292 = !DILocation(line: 111, column: 12, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3281, file: !507, line: 111, column: 12)
!3294 = !DILocation(line: 111, column: 12, scope: !3281)
!3295 = !DILocation(line: 116, column: 5, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !507, line: 112, column: 5)
!3297 = !DILocation(line: 121, column: 8, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3252, file: !507, line: 121, column: 7)
!3299 = !DILocation(line: 121, column: 7, scope: !3252)
!3300 = !DILocation(line: 123, column: 12, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !507, line: 122, column: 5)
!3302 = !DILocation(line: 124, column: 7, scope: !3301)
!3303 = !DILocation(line: 127, column: 7, scope: !3268)
!3304 = !DILocation(line: 127, column: 11, scope: !3268)
!3305 = !DILocation(line: 127, column: 7, scope: !3252)
!3306 = !DILocation(line: 0, scope: !3267)
!3307 = !DILocation(line: 133, column: 12, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3267, file: !507, line: 133, column: 11)
!3309 = !DILocation(line: 133, column: 11, scope: !3267)
!3310 = !DILocation(line: 135, column: 16, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3308, file: !507, line: 134, column: 9)
!3312 = !DILocation(line: 136, column: 22, scope: !3311)
!3313 = !DILocation(line: 136, column: 11, scope: !3311)
!3314 = !DILocation(line: 139, column: 7, scope: !3267)
!3315 = !DILocation(line: 151, column: 15, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !507, line: 151, column: 15)
!3317 = distinct !DILexicalBlock(scope: !3267, file: !507, line: 140, column: 9)
!3318 = !DILocation(line: 151, column: 15, scope: !3317)
!3319 = !DILocation(line: 152, column: 21, scope: !3316)
!3320 = !DILocation(line: 152, column: 13, scope: !3316)
!3321 = !DILocation(line: 155, column: 21, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !507, line: 155, column: 21)
!3323 = distinct !DILexicalBlock(scope: !3316, file: !507, line: 153, column: 15)
!3324 = !DILocation(line: 155, column: 29, scope: !3322)
!3325 = !DILocation(line: 155, column: 21, scope: !3323)
!3326 = !DILocation(line: 163, column: 17, scope: !3323)
!3327 = !DILocation(line: 167, column: 7, scope: !3267)
!3328 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3329, file: !507, line: 48, type: !25)
!3329 = distinct !DISubprogram(name: "bkm_scale", scope: !507, file: !507, line: 48, type: !3330, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!3255, !172, !25}
!3332 = !{!3333, !3328}
!3333 = !DILocalVariable(name: "x", arg: 1, scope: !3329, file: !507, line: 48, type: !172)
!3334 = !DILocation(line: 0, scope: !3329, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 170, column: 22, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3267, file: !507, line: 168, column: 9)
!3337 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3335)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !507, line: 50, column: 7)
!3339 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3335)
!3340 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3335)
!3341 = distinct !DILexicalBlock(scope: !3329, file: !507, line: 55, column: 7)
!3342 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3335)
!3343 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3335)
!3344 = !DILocation(line: 0, scope: !3329, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 177, column: 22, scope: !3336)
!3346 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3345)
!3347 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3345)
!3348 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3345)
!3349 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3345)
!3350 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3345)
!3351 = !DILocalVariable(name: "base", arg: 2, scope: !3352, file: !507, line: 65, type: !25)
!3352 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !507, file: !507, line: 65, type: !3353, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !506, retainedNodes: !3355)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!3255, !172, !25, !25}
!3355 = !{!3356, !3351, !3357, !3358}
!3356 = !DILocalVariable(name: "x", arg: 1, scope: !3352, file: !507, line: 65, type: !172)
!3357 = !DILocalVariable(name: "power", arg: 3, scope: !3352, file: !507, line: 65, type: !25)
!3358 = !DILocalVariable(name: "err", scope: !3352, file: !507, line: 67, type: !3255)
!3359 = !DILocation(line: 0, scope: !3352, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 185, column: 22, scope: !3336)
!3361 = !DILocation(line: 0, scope: !3338, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3360)
!3363 = !DILocation(line: 0, scope: !3329, inlinedAt: !3362)
!3364 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3362)
!3365 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3362)
!3366 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3362)
!3367 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3362)
!3368 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3362)
!3369 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3362)
!3370 = !DILocation(line: 0, scope: !3352, inlinedAt: !3371)
!3371 = distinct !DILocation(line: 190, column: 22, scope: !3336)
!3372 = !DILocation(line: 0, scope: !3338, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3371)
!3374 = !DILocation(line: 0, scope: !3329, inlinedAt: !3373)
!3375 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3373)
!3376 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3373)
!3377 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3373)
!3378 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3373)
!3379 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3373)
!3380 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3373)
!3381 = !DILocation(line: 0, scope: !3352, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 195, column: 22, scope: !3336)
!3383 = !DILocation(line: 0, scope: !3338, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3382)
!3385 = !DILocation(line: 0, scope: !3329, inlinedAt: !3384)
!3386 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3384)
!3387 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3384)
!3388 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3384)
!3389 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3384)
!3390 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3384)
!3391 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3384)
!3392 = !DILocation(line: 0, scope: !3352, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 200, column: 22, scope: !3336)
!3394 = !DILocation(line: 0, scope: !3338, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3393)
!3396 = !DILocation(line: 0, scope: !3329, inlinedAt: !3395)
!3397 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3395)
!3398 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3395)
!3399 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3395)
!3400 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3395)
!3401 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3395)
!3402 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3395)
!3403 = !DILocation(line: 0, scope: !3352, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 204, column: 22, scope: !3336)
!3405 = !DILocation(line: 0, scope: !3338, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3404)
!3407 = !DILocation(line: 0, scope: !3329, inlinedAt: !3406)
!3408 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3406)
!3409 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3406)
!3410 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3406)
!3411 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3406)
!3412 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3406)
!3413 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3406)
!3414 = !DILocation(line: 0, scope: !3352, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 209, column: 22, scope: !3336)
!3416 = !DILocation(line: 0, scope: !3338, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3415)
!3418 = !DILocation(line: 0, scope: !3329, inlinedAt: !3417)
!3419 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3417)
!3420 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3417)
!3421 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3417)
!3422 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3417)
!3423 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3417)
!3424 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3417)
!3425 = !DILocation(line: 0, scope: !3329, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 213, column: 22, scope: !3336)
!3427 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3426)
!3428 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3426)
!3429 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3426)
!3430 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3426)
!3431 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3426)
!3432 = !DILocation(line: 0, scope: !3352, inlinedAt: !3433)
!3433 = distinct !DILocation(line: 217, column: 22, scope: !3336)
!3434 = !DILocation(line: 0, scope: !3338, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3433)
!3436 = !DILocation(line: 0, scope: !3329, inlinedAt: !3435)
!3437 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3435)
!3438 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3435)
!3439 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3435)
!3440 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3435)
!3441 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3435)
!3442 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3435)
!3443 = !DILocation(line: 0, scope: !3352, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 221, column: 22, scope: !3336)
!3445 = !DILocation(line: 0, scope: !3338, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 69, column: 12, scope: !3352, inlinedAt: !3444)
!3447 = !DILocation(line: 0, scope: !3329, inlinedAt: !3446)
!3448 = !DILocation(line: 50, column: 38, scope: !3338, inlinedAt: !3446)
!3449 = !DILocation(line: 50, column: 7, scope: !3329, inlinedAt: !3446)
!3450 = !DILocation(line: 55, column: 24, scope: !3341, inlinedAt: !3446)
!3451 = !DILocation(line: 55, column: 39, scope: !3341, inlinedAt: !3446)
!3452 = !DILocation(line: 60, column: 6, scope: !3329, inlinedAt: !3446)
!3453 = !DILocation(line: 55, column: 7, scope: !3329, inlinedAt: !3446)
!3454 = !DILocation(line: 225, column: 16, scope: !3336)
!3455 = !DILocation(line: 226, column: 22, scope: !3336)
!3456 = !DILocation(line: 226, column: 11, scope: !3336)
!3457 = !DILocation(line: 0, scope: !3336)
!3458 = !DILocation(line: 229, column: 11, scope: !3267)
!3459 = !DILocation(line: 230, column: 10, scope: !3267)
!3460 = !DILocation(line: 231, column: 11, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3267, file: !507, line: 231, column: 11)
!3462 = !DILocation(line: 232, column: 13, scope: !3461)
!3463 = !DILocation(line: 231, column: 11, scope: !3267)
!3464 = !DILocation(line: 107, column: 13, scope: !3285)
!3465 = !DILocation(line: 82, column: 16, scope: !3252)
!3466 = !DILocation(line: 235, column: 8, scope: !3252)
!3467 = !DILocation(line: 236, column: 3, scope: !3252)
!3468 = !DILocation(line: 237, column: 1, scope: !3252)
!3469 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3360)
!3470 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3371)
!3471 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3393)
!3472 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3404)
!3473 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3415)
!3474 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3433)
!3475 = !DILocation(line: 69, column: 9, scope: !3352, inlinedAt: !3444)
!3476 = distinct !DISubprogram(name: "rpl_calloc", scope: !510, file: !510, line: 42, type: !3005, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3477)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "n", arg: 1, scope: !3476, file: !510, line: 42, type: !121)
!3479 = !DILocalVariable(name: "s", arg: 2, scope: !3476, file: !510, line: 42, type: !121)
!3480 = !DILocalVariable(name: "result", scope: !3476, file: !510, line: 44, type: !119)
!3481 = !DILocalVariable(name: "bytes", scope: !3482, file: !510, line: 56, type: !121)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !510, line: 53, column: 5)
!3483 = distinct !DILexicalBlock(scope: !3476, file: !510, line: 47, column: 7)
!3484 = !DILocation(line: 0, scope: !3476)
!3485 = !DILocation(line: 47, column: 9, scope: !3483)
!3486 = !DILocation(line: 47, column: 19, scope: !3483)
!3487 = !DILocation(line: 47, column: 14, scope: !3483)
!3488 = !DILocation(line: 0, scope: !3482)
!3489 = !DILocation(line: 57, column: 21, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3482, file: !510, line: 57, column: 11)
!3491 = !DILocation(line: 57, column: 11, scope: !3482)
!3492 = !DILocation(line: 59, column: 11, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3490, file: !510, line: 58, column: 9)
!3494 = !DILocation(line: 59, column: 17, scope: !3493)
!3495 = !DILocation(line: 65, column: 12, scope: !3476)
!3496 = !DILocation(line: 72, column: 3, scope: !3476)
!3497 = !DILocation(line: 73, column: 1, scope: !3476)
!3498 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !513, file: !513, line: 86, type: !3499, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3505)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!121, !3501, !35, !121, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1567, line: 6, baseType: !3504)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !367, line: 21, baseType: !519)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3506 = !DILocalVariable(name: "pwc", arg: 1, scope: !3498, file: !513, line: 86, type: !3501)
!3507 = !DILocalVariable(name: "s", arg: 2, scope: !3498, file: !513, line: 86, type: !35)
!3508 = !DILocalVariable(name: "n", arg: 3, scope: !3498, file: !513, line: 86, type: !121)
!3509 = !DILocalVariable(name: "ps", arg: 4, scope: !3498, file: !513, line: 86, type: !3502)
!3510 = !DILocalVariable(name: "ret", scope: !3498, file: !513, line: 88, type: !121)
!3511 = !DILocalVariable(name: "wc", scope: !3498, file: !513, line: 89, type: !1571)
!3512 = !DILocalVariable(name: "uc", scope: !3513, file: !513, line: 156, type: !1444)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !513, line: 155, column: 5)
!3514 = distinct !DILexicalBlock(scope: !3498, file: !513, line: 154, column: 7)
!3515 = !DILocation(line: 0, scope: !3498)
!3516 = !DILocation(line: 89, column: 3, scope: !3498)
!3517 = !DILocation(line: 105, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3498, file: !513, line: 105, column: 7)
!3519 = !DILocation(line: 105, column: 7, scope: !3498)
!3520 = !DILocation(line: 145, column: 9, scope: !3498)
!3521 = !DILocation(line: 154, column: 19, scope: !3514)
!3522 = !DILocation(line: 154, column: 31, scope: !3514)
!3523 = !DILocation(line: 154, column: 26, scope: !3514)
!3524 = !DILocation(line: 154, column: 41, scope: !3514)
!3525 = !DILocation(line: 154, column: 7, scope: !3498)
!3526 = !DILocation(line: 156, column: 26, scope: !3513)
!3527 = !DILocation(line: 0, scope: !3513)
!3528 = !DILocation(line: 157, column: 14, scope: !3513)
!3529 = !DILocation(line: 157, column: 12, scope: !3513)
!3530 = !DILocation(line: 163, column: 1, scope: !3498)
!3531 = distinct !DISubprogram(name: "close_stream", scope: !532, file: !532, line: 56, type: !3532, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3536)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!25, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !539)
!3536 = !{!3537, !3538, !3540, !3541}
!3537 = !DILocalVariable(name: "stream", arg: 1, scope: !3531, file: !532, line: 56, type: !3534)
!3538 = !DILocalVariable(name: "some_pending", scope: !3531, file: !532, line: 58, type: !3539)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3540 = !DILocalVariable(name: "prev_fail", scope: !3531, file: !532, line: 59, type: !3539)
!3541 = !DILocalVariable(name: "fclose_fail", scope: !3531, file: !532, line: 60, type: !3539)
!3542 = !DILocation(line: 0, scope: !3531)
!3543 = !DILocation(line: 58, column: 30, scope: !3531)
!3544 = !DILocalVariable(name: "__stream", arg: 1, scope: !3545, file: !1292, line: 135, type: !3534)
!3545 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1292, file: !1292, line: 135, type: !3532, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !3546)
!3546 = !{!3544}
!3547 = !DILocation(line: 0, scope: !3545, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 59, column: 27, scope: !3531)
!3549 = !DILocation(line: 137, column: 10, scope: !3545, inlinedAt: !3548)
!3550 = !DILocation(line: 59, column: 43, scope: !3531)
!3551 = !DILocation(line: 60, column: 29, scope: !3531)
!3552 = !DILocation(line: 60, column: 45, scope: !3531)
!3553 = !DILocation(line: 70, column: 17, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3531, file: !532, line: 70, column: 7)
!3555 = !DILocation(line: 58, column: 50, scope: !3531)
!3556 = !DILocation(line: 70, column: 33, scope: !3554)
!3557 = !DILocation(line: 70, column: 53, scope: !3554)
!3558 = !DILocation(line: 70, column: 59, scope: !3554)
!3559 = !DILocation(line: 70, column: 7, scope: !3531)
!3560 = !DILocation(line: 72, column: 11, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3554, file: !532, line: 71, column: 5)
!3562 = !DILocation(line: 73, column: 9, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3561, file: !532, line: 72, column: 11)
!3564 = !DILocation(line: 73, column: 15, scope: !3563)
!3565 = !DILocation(line: 78, column: 1, scope: !3531)
!3566 = distinct !DISubprogram(name: "hard_locale", scope: !571, file: !571, line: 27, type: !529, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3567)
!3567 = !{!3568, !3569}
!3568 = !DILocalVariable(name: "category", arg: 1, scope: !3566, file: !571, line: 27, type: !25)
!3569 = !DILocalVariable(name: "locale", scope: !3566, file: !571, line: 29, type: !3570)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2056, elements: !3571)
!3571 = !{!3572}
!3572 = !DISubrange(count: 257)
!3573 = !DILocation(line: 0, scope: !3566)
!3574 = !DILocation(line: 29, column: 3, scope: !3566)
!3575 = !DILocation(line: 29, column: 8, scope: !3566)
!3576 = !DILocation(line: 31, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3566, file: !571, line: 31, column: 7)
!3578 = !DILocation(line: 31, column: 7, scope: !3566)
!3579 = !DILocation(line: 34, column: 12, scope: !3566)
!3580 = !DILocation(line: 34, column: 38, scope: !3566)
!3581 = !DILocation(line: 34, column: 41, scope: !3566)
!3582 = !DILocation(line: 34, column: 66, scope: !3566)
!3583 = !DILocation(line: 35, column: 1, scope: !3566)
!3584 = distinct !DISubprogram(name: "locale_charset", scope: !578, file: !578, line: 831, type: !388, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !577, retainedNodes: !3585)
!3585 = !{!3586}
!3586 = !DILocalVariable(name: "codeset", scope: !3584, file: !578, line: 833, type: !35)
!3587 = !DILocation(line: 847, column: 13, scope: !3584)
!3588 = !DILocation(line: 0, scope: !3584)
!3589 = !DILocation(line: 911, column: 15, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3584, file: !578, line: 911, column: 7)
!3591 = !DILocation(line: 911, column: 7, scope: !3584)
!3592 = !DILocation(line: 1070, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !578, line: 1070, column: 13)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !578, line: 1060, column: 7)
!3595 = distinct !DILexicalBlock(scope: !3584, file: !578, line: 1019, column: 3)
!3596 = !DILocation(line: 1070, column: 24, scope: !3593)
!3597 = !DILocation(line: 1070, column: 13, scope: !3594)
!3598 = !DILocation(line: 1158, column: 3, scope: !3584)
!3599 = distinct !DISubprogram(name: "setlocale_null_r", scope: !971, file: !971, line: 269, type: !3600, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!25, !25, !27, !121}
!3602 = !{!3603, !3604, !3605}
!3603 = !DILocalVariable(name: "category", arg: 1, scope: !3599, file: !971, line: 269, type: !25)
!3604 = !DILocalVariable(name: "buf", arg: 2, scope: !3599, file: !971, line: 269, type: !27)
!3605 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3599, file: !971, line: 269, type: !121)
!3606 = !DILocation(line: 0, scope: !3599)
!3607 = !DILocalVariable(name: "category", arg: 1, scope: !3608, file: !971, line: 91, type: !25)
!3608 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !971, file: !971, line: 91, type: !3600, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3609)
!3609 = !{!3607, !3610, !3611, !3612, !3613}
!3610 = !DILocalVariable(name: "buf", arg: 2, scope: !3608, file: !971, line: 91, type: !27)
!3611 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3608, file: !971, line: 91, type: !121)
!3612 = !DILocalVariable(name: "result", scope: !3608, file: !971, line: 140, type: !35)
!3613 = !DILocalVariable(name: "length", scope: !3614, file: !971, line: 154, type: !121)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !971, line: 153, column: 5)
!3615 = distinct !DILexicalBlock(scope: !3608, file: !971, line: 142, column: 7)
!3616 = !DILocation(line: 0, scope: !3608, inlinedAt: !3617)
!3617 = distinct !DILocation(line: 274, column: 10, scope: !3599)
!3618 = !DILocalVariable(name: "category", arg: 1, scope: !3619, file: !971, line: 60, type: !25)
!3619 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !971, file: !971, line: 60, type: !3620, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3622)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!35, !25}
!3622 = !{!3618, !3623}
!3623 = !DILocalVariable(name: "result", scope: !3619, file: !971, line: 62, type: !35)
!3624 = !DILocation(line: 0, scope: !3619, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 140, column: 24, scope: !3608, inlinedAt: !3617)
!3626 = !DILocation(line: 62, column: 24, scope: !3619, inlinedAt: !3625)
!3627 = !DILocation(line: 142, column: 14, scope: !3615, inlinedAt: !3617)
!3628 = !DILocation(line: 142, column: 7, scope: !3608, inlinedAt: !3617)
!3629 = !DILocation(line: 145, column: 19, scope: !3630, inlinedAt: !3617)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !971, line: 145, column: 11)
!3631 = distinct !DILexicalBlock(scope: !3615, file: !971, line: 143, column: 5)
!3632 = !DILocation(line: 145, column: 11, scope: !3631, inlinedAt: !3617)
!3633 = !DILocation(line: 149, column: 16, scope: !3630, inlinedAt: !3617)
!3634 = !DILocation(line: 149, column: 9, scope: !3630, inlinedAt: !3617)
!3635 = !DILocation(line: 154, column: 23, scope: !3614, inlinedAt: !3617)
!3636 = !DILocation(line: 0, scope: !3614, inlinedAt: !3617)
!3637 = !DILocation(line: 155, column: 18, scope: !3638, inlinedAt: !3617)
!3638 = distinct !DILexicalBlock(scope: !3614, file: !971, line: 155, column: 11)
!3639 = !DILocation(line: 155, column: 11, scope: !3614, inlinedAt: !3617)
!3640 = !DILocation(line: 157, column: 39, scope: !3641, inlinedAt: !3617)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !971, line: 156, column: 9)
!3642 = !DILocalVariable(name: "__dest", arg: 1, scope: !3643, file: !1824, line: 31, type: !3219)
!3643 = distinct !DISubprogram(name: "memcpy", scope: !1824, file: !1824, line: 31, type: !3217, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3644)
!3644 = !{!3642, !3645, !3646}
!3645 = !DILocalVariable(name: "__src", arg: 2, scope: !3643, file: !1824, line: 31, type: !3220)
!3646 = !DILocalVariable(name: "__len", arg: 3, scope: !3643, file: !1824, line: 31, type: !121)
!3647 = !DILocation(line: 0, scope: !3643, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 157, column: 11, scope: !3641, inlinedAt: !3617)
!3649 = !DILocation(line: 34, column: 10, scope: !3643, inlinedAt: !3648)
!3650 = !DILocation(line: 158, column: 11, scope: !3641, inlinedAt: !3617)
!3651 = !DILocation(line: 162, column: 23, scope: !3652, inlinedAt: !3617)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !971, line: 162, column: 15)
!3653 = distinct !DILexicalBlock(scope: !3638, file: !971, line: 161, column: 9)
!3654 = !DILocation(line: 162, column: 15, scope: !3653, inlinedAt: !3617)
!3655 = !DILocation(line: 167, column: 44, scope: !3656, inlinedAt: !3617)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !971, line: 163, column: 13)
!3657 = !DILocation(line: 0, scope: !3643, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 167, column: 15, scope: !3656, inlinedAt: !3617)
!3659 = !DILocation(line: 34, column: 10, scope: !3643, inlinedAt: !3658)
!3660 = !DILocation(line: 168, column: 15, scope: !3656, inlinedAt: !3617)
!3661 = !DILocation(line: 168, column: 32, scope: !3656, inlinedAt: !3617)
!3662 = !DILocation(line: 169, column: 13, scope: !3656, inlinedAt: !3617)
!3663 = !DILocation(line: 0, scope: !3615, inlinedAt: !3617)
!3664 = !DILocation(line: 274, column: 3, scope: !3599)
!3665 = distinct !DISubprogram(name: "setlocale_null", scope: !971, file: !971, line: 301, type: !3620, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !970, retainedNodes: !3666)
!3666 = !{!3667}
!3667 = !DILocalVariable(name: "category", arg: 1, scope: !3665, file: !971, line: 301, type: !25)
!3668 = !DILocation(line: 0, scope: !3665)
!3669 = !DILocation(line: 0, scope: !3619, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 304, column: 10, scope: !3665)
!3671 = !DILocation(line: 62, column: 24, scope: !3619, inlinedAt: !3670)
!3672 = !DILocation(line: 304, column: 3, scope: !3665)
!3673 = distinct !DISubprogram(name: "rpl_fclose", scope: !974, file: !974, line: 58, type: !3674, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3678)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!25, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !980)
!3678 = !{!3679, !3680, !3681, !3682}
!3679 = !DILocalVariable(name: "fp", arg: 1, scope: !3673, file: !974, line: 58, type: !3676)
!3680 = !DILocalVariable(name: "saved_errno", scope: !3673, file: !974, line: 60, type: !25)
!3681 = !DILocalVariable(name: "fd", scope: !3673, file: !974, line: 61, type: !25)
!3682 = !DILocalVariable(name: "result", scope: !3673, file: !974, line: 62, type: !25)
!3683 = !DILocation(line: 0, scope: !3673)
!3684 = !DILocation(line: 65, column: 8, scope: !3673)
!3685 = !DILocation(line: 66, column: 10, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3673, file: !974, line: 66, column: 7)
!3687 = !DILocation(line: 66, column: 7, scope: !3673)
!3688 = !DILocation(line: 67, column: 12, scope: !3686)
!3689 = !DILocation(line: 67, column: 5, scope: !3686)
!3690 = !DILocation(line: 72, column: 9, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3673, file: !974, line: 72, column: 7)
!3692 = !DILocation(line: 72, column: 23, scope: !3691)
!3693 = !DILocation(line: 72, column: 33, scope: !3691)
!3694 = !DILocation(line: 72, column: 26, scope: !3691)
!3695 = !DILocation(line: 72, column: 59, scope: !3691)
!3696 = !DILocation(line: 73, column: 7, scope: !3691)
!3697 = !DILocation(line: 73, column: 10, scope: !3691)
!3698 = !DILocation(line: 72, column: 7, scope: !3673)
!3699 = !DILocation(line: 100, column: 12, scope: !3673)
!3700 = !DILocation(line: 105, column: 7, scope: !3673)
!3701 = !DILocation(line: 74, column: 19, scope: !3691)
!3702 = !DILocation(line: 105, column: 19, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3673, file: !974, line: 105, column: 7)
!3704 = !DILocation(line: 107, column: 13, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3703, file: !974, line: 106, column: 5)
!3706 = !DILocation(line: 109, column: 5, scope: !3705)
!3707 = !DILocation(line: 112, column: 1, scope: !3673)
!3708 = distinct !DISubprogram(name: "rpl_fflush", scope: !1017, file: !1017, line: 129, type: !3709, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !3713)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!25, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !1023)
!3713 = !{!3714}
!3714 = !DILocalVariable(name: "stream", arg: 1, scope: !3708, file: !1017, line: 129, type: !3711)
!3715 = !DILocation(line: 0, scope: !3708)
!3716 = !DILocation(line: 150, column: 14, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3708, file: !1017, line: 150, column: 7)
!3718 = !DILocation(line: 150, column: 22, scope: !3717)
!3719 = !DILocation(line: 150, column: 27, scope: !3717)
!3720 = !DILocation(line: 150, column: 7, scope: !3708)
!3721 = !DILocation(line: 151, column: 12, scope: !3717)
!3722 = !DILocation(line: 151, column: 5, scope: !3717)
!3723 = !DILocalVariable(name: "fp", arg: 1, scope: !3724, file: !1017, line: 41, type: !3711)
!3724 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1017, file: !1017, line: 41, type: !3725, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{null, !3711}
!3727 = !{!3723}
!3728 = !DILocation(line: 0, scope: !3724, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 156, column: 3, scope: !3708)
!3730 = !DILocation(line: 43, column: 11, scope: !3731, inlinedAt: !3729)
!3731 = distinct !DILexicalBlock(scope: !3724, file: !1017, line: 43, column: 7)
!3732 = !DILocation(line: 43, column: 18, scope: !3731, inlinedAt: !3729)
!3733 = !DILocation(line: 43, column: 7, scope: !3724, inlinedAt: !3729)
!3734 = !DILocation(line: 45, column: 5, scope: !3731, inlinedAt: !3729)
!3735 = !DILocation(line: 158, column: 10, scope: !3708)
!3736 = !DILocation(line: 158, column: 3, scope: !3708)
!3737 = !DILocation(line: 235, column: 1, scope: !3708)
!3738 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1058, file: !1058, line: 28, type: !3739, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !3744)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!25, !3741, !3743, !25}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1297, line: 7, baseType: !1064)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !70, line: 63, baseType: !96)
!3744 = !{!3745, !3746, !3747, !3748}
!3745 = !DILocalVariable(name: "fp", arg: 1, scope: !3738, file: !1058, line: 28, type: !3741)
!3746 = !DILocalVariable(name: "offset", arg: 2, scope: !3738, file: !1058, line: 28, type: !3743)
!3747 = !DILocalVariable(name: "whence", arg: 3, scope: !3738, file: !1058, line: 28, type: !25)
!3748 = !DILocalVariable(name: "pos", scope: !3749, file: !1058, line: 117, type: !3743)
!3749 = distinct !DILexicalBlock(scope: !3750, file: !1058, line: 113, column: 5)
!3750 = distinct !DILexicalBlock(scope: !3738, file: !1058, line: 52, column: 7)
!3751 = !DILocation(line: 0, scope: !3738)
!3752 = !DILocation(line: 52, column: 11, scope: !3750)
!3753 = !{!1303, !1135, i64 16}
!3754 = !DILocation(line: 52, column: 31, scope: !3750)
!3755 = !{!1303, !1135, i64 8}
!3756 = !DILocation(line: 52, column: 24, scope: !3750)
!3757 = !DILocation(line: 53, column: 7, scope: !3750)
!3758 = !DILocation(line: 53, column: 14, scope: !3750)
!3759 = !{!1303, !1135, i64 40}
!3760 = !DILocation(line: 53, column: 35, scope: !3750)
!3761 = !{!1303, !1135, i64 32}
!3762 = !DILocation(line: 53, column: 28, scope: !3750)
!3763 = !DILocation(line: 54, column: 7, scope: !3750)
!3764 = !DILocation(line: 54, column: 14, scope: !3750)
!3765 = !{!1303, !1135, i64 72}
!3766 = !DILocation(line: 54, column: 28, scope: !3750)
!3767 = !DILocation(line: 52, column: 7, scope: !3738)
!3768 = !DILocation(line: 117, column: 26, scope: !3749)
!3769 = !DILocation(line: 117, column: 19, scope: !3749)
!3770 = !DILocation(line: 0, scope: !3749)
!3771 = !DILocation(line: 118, column: 15, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3749, file: !1058, line: 118, column: 11)
!3773 = !DILocation(line: 118, column: 11, scope: !3749)
!3774 = !DILocation(line: 129, column: 11, scope: !3749)
!3775 = !DILocation(line: 129, column: 18, scope: !3749)
!3776 = !DILocation(line: 130, column: 11, scope: !3749)
!3777 = !DILocation(line: 130, column: 19, scope: !3749)
!3778 = !{!1303, !1236, i64 144}
!3779 = !DILocation(line: 161, column: 7, scope: !3749)
!3780 = !DILocation(line: 163, column: 10, scope: !3738)
!3781 = !DILocation(line: 163, column: 3, scope: !3738)
!3782 = !DILocation(line: 164, column: 1, scope: !3738)
