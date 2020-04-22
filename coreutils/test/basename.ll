; ModuleID = 'coreutils-8.32/src/basename.bc'
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
@.str.1 = private unnamed_addr constant [53 x i8] c"Usage: %s NAME [SUFFIX]\0A  or:  %s OPTION... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Print NAME with any leading directory components removed.\0AIf specified, also remove a trailing SUFFIX.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [202 x i8] c"  -a, --multiple       support multiple arguments and treat each as a NAME\0A  -s, --suffix=SUFFIX  remove a trailing SUFFIX; implies -a\0A  -z, --zero           end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AExamples:\0A  %s /usr/bin/sort          -> \22sort\22\0A  %s include/stdio.h .h     -> \22stdio\22\0A  %s -s .h include/stdio.h  -> \22stdio\22\0A  %s -a any/str1 any/str2   -> \22str1\22 followed by \22str2\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"basename\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"+as:z\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), align 8, !dbg !138
@.str.37 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !143
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !187
@.str.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !189
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !195
@.str.57 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.58 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.59 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.62, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.64, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.69, i32 0, i32 0), i8* null], align 16, !dbg !236
@.str.60 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.61 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.62 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.63 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.64 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.65 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.66 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.67 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.68 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.69 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !344
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !350
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !352
@.str.11.70 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.72 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.73 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.74 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.75 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.76 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !359
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !366
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !354
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !368
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.83 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.85 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.86 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.87 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.88 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.89 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.90 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.91 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.92 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.93 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.94 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.95 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.96 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.99 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.100 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.101 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.102 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.103 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.104 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.105 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !374
@.str.1.116 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1064 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1069, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %0, metadata !1068, metadata !DIExpression()), !dbg !1090
  %3 = icmp eq i32 %0, 0, !dbg !1091
  br i1 %3, label %9, label %4, !dbg !1092

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1093, !tbaa !1095
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1093
  %7 = load i8*, i8** @program_name, align 8, !dbg !1093, !tbaa !1095
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1093
  br label %67, !dbg !1093

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1099
  %11 = load i8*, i8** @program_name, align 8, !dbg !1099, !tbaa !1095
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #20, !dbg !1099
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1100
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !1095
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1100
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0), i32 5) #20, !dbg !1101
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1101, !tbaa !1095
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #20, !dbg !1101
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1104
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104, !tbaa !1095
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1104
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1105
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1105, !tbaa !1095
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1105
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1106
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1106, !tbaa !1095
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1106
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.6, i64 0, i64 0), i32 5) #20, !dbg !1107
  %29 = load i8*, i8** @program_name, align 8, !dbg !1107, !tbaa !1095
  %30 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* %29, i8* %29, i8* %29, i8* %29) #20, !dbg !1107
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !1073, metadata !DIExpression()) #20, !dbg !1108
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #20, !dbg !1109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1086
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), metadata !1074, metadata !DIExpression()) #20, !dbg !1108
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1110
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  br label %33, !dbg !1111

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %34) #22, !dbg !1112
  %37 = icmp eq i32 %36, 0, !dbg !1112
  br i1 %37, label %43, label %38, !dbg !1111

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1113
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1114
  %41 = load i8*, i8** %40, align 8, !dbg !1114, !tbaa !1115
  %42 = icmp eq i8* %41, null, !dbg !1117
  br i1 %42, label %43, label %33, !dbg !1118, !llvm.loop !1119

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1075, metadata !DIExpression()) #20, !dbg !1108
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1120
  %46 = load i8*, i8** %45, align 8, !dbg !1120, !tbaa !1122
  %47 = icmp eq i8* %46, null, !dbg !1123
  %48 = select i1 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %46, !dbg !1124
  call void @llvm.dbg.value(metadata i8* %48, metadata !1074, metadata !DIExpression()) #20, !dbg !1108
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #20, !dbg !1125
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #20, !dbg !1125
  %51 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1126
  call void @llvm.dbg.value(metadata i8* %51, metadata !1082, metadata !DIExpression()) #20, !dbg !1108
  %52 = icmp eq i8* %51, null, !dbg !1127
  br i1 %52, label %60, label %53, !dbg !1129

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #22, !dbg !1130
  %55 = icmp eq i32 %54, 0, !dbg !1130
  br i1 %55, label %60, label %56, !dbg !1131

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #20, !dbg !1132
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1132, !tbaa !1095
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #20, !dbg !1132
  br label %60, !dbg !1134

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #20, !dbg !1135
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1135
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1136
  %64 = icmp eq i8* %48, getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), !dbg !1136
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1136
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #20, !dbg !1136
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #20, !dbg !1137
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #23, !dbg !1138
  unreachable, !dbg !1138
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1139 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8** %1, metadata !1145, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 0, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* null, metadata !1148, metadata !DIExpression()), !dbg !1151
  %3 = load i8*, i8** %1, align 8, !dbg !1152, !tbaa !1095
  tail call void @set_program_name(i8* %3) #20, !dbg !1153
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1154
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #20, !dbg !1155
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1156
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1157
  br label %16, !dbg !1158

8:                                                ; preds = %11, %16
  %9 = phi i8 [ %17, %16 ], [ 1, %11 ]
  %10 = phi i8 [ %18, %16 ], [ %12, %11 ]
  br label %11, !dbg !1159

11:                                               ; preds = %11, %8
  %12 = phi i8 [ %10, %8 ], [ 1, %11 ], !dbg !1160
  call void @llvm.dbg.value(metadata i8* %19, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !1146, metadata !DIExpression()), !dbg !1151
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #20, !dbg !1161
  call void @llvm.dbg.value(metadata i32 %13, metadata !1149, metadata !DIExpression()), !dbg !1162
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 115, label %14
    i32 97, label %8
    i32 122, label %11
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !1159

14:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  %15 = load i8*, i8** @optarg, align 8, !dbg !1163, !tbaa !1095
  call void @llvm.dbg.value(metadata i8* %15, metadata !1148, metadata !DIExpression()), !dbg !1151
  br label %16, !dbg !1165

16:                                               ; preds = %2, %14
  %17 = phi i8 [ 0, %2 ], [ 1, %14 ]
  %18 = phi i8 [ 0, %2 ], [ %12, %14 ]
  %19 = phi i8* [ null, %2 ], [ %15, %14 ]
  br label %8, !dbg !1159

20:                                               ; preds = %11
  tail call void @usage(i32 0) #24, !dbg !1166
  unreachable, !dbg !1166

21:                                               ; preds = %11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1167, !tbaa !1095
  %23 = load i8*, i8** @Version, align 8, !dbg !1167, !tbaa !1095
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #20, !dbg !1167
  tail call void @exit(i32 0) #23, !dbg !1167
  unreachable, !dbg !1167

24:                                               ; preds = %11
  tail call void @usage(i32 1) #24, !dbg !1168
  unreachable, !dbg !1168

25:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %19, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %19, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %19, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %9, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %12, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %19, metadata !1148, metadata !DIExpression()), !dbg !1151
  %26 = load i32, i32* @optind, align 4, !dbg !1169, !tbaa !1171
  %27 = icmp slt i32 %26, %0, !dbg !1173
  br i1 %27, label %30, label %28, !dbg !1174

28:                                               ; preds = %25
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #20, !dbg !1175
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %29) #20, !dbg !1177
  tail call void @usage(i32 1) #24, !dbg !1178
  unreachable, !dbg !1178

30:                                               ; preds = %25
  %31 = icmp ne i8 %9, 0, !dbg !1179
  %32 = xor i1 %31, true, !dbg !1181
  %33 = add nsw i32 %26, 2, !dbg !1182
  %34 = icmp slt i32 %33, %0, !dbg !1183
  %35 = and i1 %34, %32, !dbg !1181
  br i1 %35, label %36, label %44, !dbg !1181

36:                                               ; preds = %30
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #20, !dbg !1184
  %38 = load i32, i32* @optind, align 4, !dbg !1186, !tbaa !1171
  %39 = add nsw i32 %38, 2, !dbg !1187
  %40 = sext i32 %39 to i64, !dbg !1188
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !1188
  %42 = load i8*, i8** %41, align 8, !dbg !1188, !tbaa !1095
  %43 = tail call i8* @quote(i8* %42) #20, !dbg !1189
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37, i8* %43) #20, !dbg !1190
  tail call void @usage(i32 1) #24, !dbg !1191
  unreachable, !dbg !1191

44:                                               ; preds = %30
  br i1 %31, label %45, label %55, !dbg !1192

45:                                               ; preds = %44
  %46 = icmp ne i8 %12, 0, !dbg !1193
  br label %47, !dbg !1198

47:                                               ; preds = %45, %47
  %48 = phi i32 [ %26, %45 ], [ %53, %47 ]
  %49 = sext i32 %48 to i64, !dbg !1199
  %50 = getelementptr inbounds i8*, i8** %1, i64 %49, !dbg !1199
  %51 = load i8*, i8** %50, align 8, !dbg !1199, !tbaa !1095
  tail call fastcc void @perform_basename(i8* %51, i8* %19, i1 zeroext %46), !dbg !1200
  %52 = load i32, i32* @optind, align 4, !dbg !1201, !tbaa !1171
  %53 = add nsw i32 %52, 1, !dbg !1201
  store i32 %53, i32* @optind, align 4, !dbg !1201, !tbaa !1171
  %54 = icmp slt i32 %53, %0, !dbg !1202
  br i1 %54, label %47, label %68, !dbg !1198, !llvm.loop !1203

55:                                               ; preds = %44
  %56 = sext i32 %26 to i64, !dbg !1205
  %57 = getelementptr inbounds i8*, i8** %1, i64 %56, !dbg !1205
  %58 = load i8*, i8** %57, align 8, !dbg !1205, !tbaa !1095
  %59 = icmp eq i32 %33, %0, !dbg !1206
  br i1 %59, label %60, label %65, !dbg !1207

60:                                               ; preds = %55
  %61 = add nsw i32 %26, 1, !dbg !1208
  %62 = sext i32 %61 to i64, !dbg !1209
  %63 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !1209
  %64 = load i8*, i8** %63, align 8, !dbg !1209, !tbaa !1095
  br label %65, !dbg !1207

65:                                               ; preds = %55, %60
  %66 = phi i8* [ %64, %60 ], [ null, %55 ], !dbg !1207
  %67 = icmp ne i8 %12, 0, !dbg !1210
  tail call fastcc void @perform_basename(i8* %58, i8* %66, i1 zeroext %67), !dbg !1211
  br label %68

68:                                               ; preds = %47, %65
  ret i32 0, !dbg !1212
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

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @perform_basename(i8* %0, i8* readonly %1, i1 zeroext %2) unnamed_addr #8 !dbg !1213 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1217, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %1, metadata !1218, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i1 %2, metadata !1219, metadata !DIExpression()), !dbg !1221
  %4 = tail call noalias i8* @base_name(i8* %0) #20, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %4, metadata !1220, metadata !DIExpression()), !dbg !1221
  %5 = tail call zeroext i1 @strip_trailing_slashes(i8* %4) #20, !dbg !1223
  %6 = icmp eq i8* %1, null, !dbg !1224
  br i1 %6, label %29, label %7, !dbg !1226

7:                                                ; preds = %3
  %8 = load i8, i8* %4, align 1, !dbg !1227, !tbaa !1228
  %9 = icmp eq i8 %8, 47, !dbg !1227
  br i1 %9, label %29, label %10, !dbg !1229

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %4, metadata !1230, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %1, metadata !1235, metadata !DIExpression()) #20, !dbg !1238
  %11 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %4) #22, !dbg !1240
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %12, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  %13 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #22, !dbg !1242
  %14 = getelementptr inbounds i8, i8* %1, i64 %13, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %14, metadata !1237, metadata !DIExpression()) #20, !dbg !1238
  br label %15, !dbg !1244

15:                                               ; preds = %21, %10
  %16 = phi i8* [ %12, %10 ], [ %22, %21 ], !dbg !1238
  %17 = phi i8* [ %14, %10 ], [ %24, %21 ], !dbg !1238
  call void @llvm.dbg.value(metadata i8* %17, metadata !1237, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  %18 = icmp ugt i8* %16, %4, !dbg !1245
  %19 = icmp ugt i8* %17, %1, !dbg !1246
  %20 = and i1 %18, %19, !dbg !1246
  br i1 %20, label %21, label %27, !dbg !1244

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %22, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  %23 = load i8, i8* %22, align 1, !dbg !1249, !tbaa !1228
  %24 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1250
  call void @llvm.dbg.value(metadata i8* %24, metadata !1237, metadata !DIExpression()) #20, !dbg !1238
  %25 = load i8, i8* %24, align 1, !dbg !1251, !tbaa !1228
  %26 = icmp eq i8 %23, %25, !dbg !1252
  br i1 %26, label %15, label %29, !dbg !1253, !llvm.loop !1254

27:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %16, metadata !1236, metadata !DIExpression()) #20, !dbg !1238
  br i1 %18, label %28, label %29, !dbg !1256

28:                                               ; preds = %27
  store i8 0, i8* %16, align 1, !dbg !1257, !tbaa !1228
  br label %29, !dbg !1259

29:                                               ; preds = %21, %28, %27, %3, %7
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1260, !tbaa !1095
  %31 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %30), !dbg !1260
  %32 = select i1 %2, i32 0, i32 10, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %32, metadata !1262, metadata !DIExpression()) #20, !dbg !1268
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1270, !tbaa !1095
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 5, !dbg !1270
  %35 = load i8*, i8** %34, align 8, !dbg !1270, !tbaa !1271
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %33, i64 0, i32 6, !dbg !1270
  %37 = load i8*, i8** %36, align 8, !dbg !1270, !tbaa !1275
  %38 = icmp ult i8* %35, %37, !dbg !1270
  br i1 %38, label %41, label %39, !dbg !1270, !prof !1276, !misexpect !1277

39:                                               ; preds = %29
  %40 = tail call i32 @__overflow(%struct._IO_FILE* %33, i32 %32) #20, !dbg !1270
  br label %44, !dbg !1270

41:                                               ; preds = %29
  %42 = trunc i32 %32 to i8, !dbg !1270
  %43 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1270
  store i8* %43, i8** %34, align 8, !dbg !1270, !tbaa !1271
  store i8 %42, i8* %35, align 1, !dbg !1270, !tbaa !1228
  br label %44, !dbg !1270

44:                                               ; preds = %39, %41
  tail call void @free(i8* %4) #20, !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !130 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1282, metadata !DIExpression()), !dbg !1283
  store i8* %0, i8** @file_name, align 8, !dbg !1284, !tbaa !1095
  ret void, !dbg !1285
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1286 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1290, metadata !DIExpression()), !dbg !1291
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1292, !tbaa !1293
  ret void, !dbg !1295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1296 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1301, !tbaa !1095
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1302
  %3 = icmp eq i32 %2, 0, !dbg !1303
  br i1 %3, label %22, label %4, !dbg !1304

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1305, !tbaa !1293, !range !1306
  %6 = icmp eq i8 %5, 0, !dbg !1305
  br i1 %6, label %11, label %7, !dbg !1307

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1308
  %9 = load i32, i32* %8, align 4, !dbg !1308, !tbaa !1171
  %10 = icmp eq i32 %9, 32, !dbg !1309
  br i1 %10, label %22, label %11, !dbg !1310

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 5) #20, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %12, metadata !1298, metadata !DIExpression()), !dbg !1312
  %13 = load i8*, i8** @file_name, align 8, !dbg !1313, !tbaa !1095
  %14 = icmp eq i8* %13, null, !dbg !1313
  %15 = tail call i32* @__errno_location() #25, !dbg !1315
  %16 = load i32, i32* %15, align 4, !dbg !1315, !tbaa !1171
  br i1 %14, label %19, label %17, !dbg !1316

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1317
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.41, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1318
  br label %20, !dbg !1318

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.42, i64 0, i64 0), i8* %12) #20, !dbg !1319
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1320, !tbaa !1171
  tail call void @_exit(i32 %21) #23, !dbg !1321
  unreachable, !dbg !1321

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1322, !tbaa !1095
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1324
  %25 = icmp eq i32 %24, 0, !dbg !1325
  br i1 %25, label %28, label %26, !dbg !1326

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1327, !tbaa !1171
  tail call void @_exit(i32 %27) #23, !dbg !1328
  unreachable, !dbg !1328

28:                                               ; preds = %22
  ret void, !dbg !1329
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @base_name(i8* %0) local_unnamed_addr #8 !dbg !1330 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1332, metadata !DIExpression()), !dbg !1335
  %2 = tail call i8* @last_component(i8* %0) #22, !dbg !1336
  call void @llvm.dbg.value(metadata i8* %2, metadata !1333, metadata !DIExpression()), !dbg !1335
  %3 = load i8, i8* %2, align 1, !dbg !1337, !tbaa !1228
  %4 = icmp eq i8 %3, 0, !dbg !1337
  br i1 %4, label %5, label %8, !dbg !1339

5:                                                ; preds = %1
  %6 = tail call i64 @base_len(i8* %0) #22, !dbg !1340
  %7 = tail call noalias i8* @xstrndup(i8* %0, i64 %6) #20, !dbg !1341
  br label %16, !dbg !1342

8:                                                ; preds = %1
  %9 = tail call i64 @base_len(i8* nonnull %2) #22, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %9, metadata !1334, metadata !DIExpression()), !dbg !1335
  %10 = getelementptr inbounds i8, i8* %2, i64 %9, !dbg !1344
  %11 = load i8, i8* %10, align 1, !dbg !1344, !tbaa !1228
  %12 = icmp eq i8 %11, 47, !dbg !1344
  %13 = zext i1 %12 to i64, !dbg !1346
  %14 = add i64 %9, %13, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %14, metadata !1334, metadata !DIExpression()), !dbg !1335
  %15 = tail call noalias i8* @xstrndup(i8* nonnull %2, i64 %14) #20, !dbg !1347
  br label %16, !dbg !1348

16:                                               ; preds = %8, %5
  %17 = phi i8* [ %15, %8 ], [ %7, %5 ], !dbg !1335
  ret i8* %17, !dbg !1349
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #13 !dbg !1350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1352, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %0, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1356
  br label %2, !dbg !1357

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8* %3, metadata !1353, metadata !DIExpression()), !dbg !1356
  %4 = load i8, i8* %3, align 1, !dbg !1358, !tbaa !1228
  %5 = icmp eq i8 %4, 47, !dbg !1358
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %6, metadata !1353, metadata !DIExpression()), !dbg !1356
  br i1 %5, label %2, label %7, !dbg !1357, !llvm.loop !1360

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1361
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1364
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1365
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %11, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %10, metadata !1354, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1366

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1367
  %14 = icmp eq i8 %13, 0, !dbg !1367
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1371
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1371
  br label %17, !dbg !1371

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1356
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %19, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %18, metadata !1353, metadata !DIExpression()), !dbg !1356
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1372
  call void @llvm.dbg.value(metadata i8* %20, metadata !1354, metadata !DIExpression()), !dbg !1356
  %21 = load i8, i8* %20, align 1, !dbg !1361, !tbaa !1228
  br label %7, !dbg !1373, !llvm.loop !1374

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %9, metadata !1353, metadata !DIExpression()), !dbg !1356
  ret i8* %9, !dbg !1376
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #14 !dbg !1377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1381, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 0, metadata !1383, metadata !DIExpression()), !dbg !1384
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %2, metadata !1382, metadata !DIExpression()), !dbg !1384
  br label %3, !dbg !1387

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1388
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  %5 = icmp ugt i64 %4, 1, !dbg !1389
  br i1 %5, label %6, label %11, !dbg !1391

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !1392
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1392
  %9 = load i8, i8* %8, align 1, !dbg !1392, !tbaa !1228
  %10 = icmp eq i8 %9, 47, !dbg !1392
  br i1 %10, label %3, label %11, !dbg !1393, !llvm.loop !1394

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i64 %4, metadata !1382, metadata !DIExpression()), !dbg !1384
  ret i64 %4, !dbg !1396
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local zeroext i1 @strip_trailing_slashes(i8* %0) local_unnamed_addr #15 !dbg !1397 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1399, metadata !DIExpression()), !dbg !1403
  %2 = tail call i8* @last_component(i8* %0) #22, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %2, metadata !1400, metadata !DIExpression()), !dbg !1403
  %3 = load i8, i8* %2, align 1, !dbg !1405, !tbaa !1228
  %4 = icmp eq i8 %3, 0, !dbg !1405
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1407
  call void @llvm.dbg.value(metadata i8* %5, metadata !1400, metadata !DIExpression()), !dbg !1403
  %6 = tail call i64 @base_len(i8* %5) #22, !dbg !1408
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1409
  call void @llvm.dbg.value(metadata i8* %7, metadata !1401, metadata !DIExpression()), !dbg !1403
  %8 = load i8, i8* %7, align 1, !dbg !1410, !tbaa !1228
  %9 = icmp ne i8 %8, 0, !dbg !1411
  call void @llvm.dbg.value(metadata i1 %9, metadata !1402, metadata !DIExpression()), !dbg !1403
  store i8 0, i8* %7, align 1, !dbg !1412, !tbaa !1228
  ret i1 %9, !dbg !1413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1416, metadata !DIExpression()), !dbg !1419
  %2 = icmp eq i8* %0, null, !dbg !1420
  br i1 %2, label %3, label %6, !dbg !1422

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1423, !tbaa !1095
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.57, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1425
  tail call void @abort() #23, !dbg !1426
  unreachable, !dbg !1426

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %7, metadata !1417, metadata !DIExpression()), !dbg !1419
  %8 = icmp eq i8* %7, null, !dbg !1428
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1429
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %10, metadata !1418, metadata !DIExpression()), !dbg !1419
  %11 = ptrtoint i8* %10 to i64, !dbg !1430
  %12 = ptrtoint i8* %0 to i64, !dbg !1430
  %13 = sub i64 %11, %12, !dbg !1430
  %14 = icmp sgt i64 %13, 6, !dbg !1432
  br i1 %14, label %15, label %24, !dbg !1433

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1434
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.58, i64 0, i64 0), i64 7) #22, !dbg !1435
  %18 = icmp eq i32 %17, 0, !dbg !1436
  br i1 %18, label %19, label %24, !dbg !1437

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1416, metadata !DIExpression()), !dbg !1419
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.59, i64 0, i64 0), i64 3) #22, !dbg !1438
  %21 = icmp eq i32 %20, 0, !dbg !1441
  br i1 %21, label %22, label %24, !dbg !1442

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %23, metadata !1416, metadata !DIExpression()), !dbg !1419
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1445, !tbaa !1095
  br label %24, !dbg !1446

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1416, metadata !DIExpression()), !dbg !1419
  store i8* %25, i8** @program_name, align 8, !dbg !1447, !tbaa !1095
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1448, !tbaa !1095
  ret void, !dbg !1449
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1450 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1455, metadata !DIExpression()), !dbg !1458
  %2 = tail call i32* @__errno_location() #25, !dbg !1459
  %3 = load i32, i32* %2, align 4, !dbg !1459, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %3, metadata !1456, metadata !DIExpression()), !dbg !1458
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1460
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1460
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1460
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !1461
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i32 %3, i32* %2, align 4, !dbg !1462, !tbaa !1171
  ret %struct.quoting_options* %8, !dbg !1463
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1464 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1468, metadata !DIExpression()), !dbg !1469
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1470
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1470
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1471
  %5 = load i32, i32* %4, align 8, !dbg !1471, !tbaa !1472
  ret i32 %5, !dbg !1474
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1475 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1479, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32 %1, metadata !1480, metadata !DIExpression()), !dbg !1481
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1482
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1482
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1483
  store i32 %1, i32* %5, align 8, !dbg !1484, !tbaa !1472
  ret void, !dbg !1485
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1486 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1490, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i32 %2, metadata !1492, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %1, metadata !1493, metadata !DIExpression()), !dbg !1498
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1499
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1499
  %6 = lshr i8 %1, 5, !dbg !1500
  %7 = zext i8 %6 to i64, !dbg !1500
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1501
  call void @llvm.dbg.value(metadata i32* %8, metadata !1494, metadata !DIExpression()), !dbg !1498
  %9 = and i8 %1, 31, !dbg !1502
  %10 = zext i8 %9 to i32, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %10, metadata !1496, metadata !DIExpression()), !dbg !1498
  %11 = load i32, i32* %8, align 4, !dbg !1503, !tbaa !1171
  %12 = lshr i32 %11, %10, !dbg !1504
  %13 = and i32 %12, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %13, metadata !1497, metadata !DIExpression()), !dbg !1498
  %14 = and i32 %2, 1, !dbg !1506
  %15 = xor i32 %13, %14, !dbg !1507
  %16 = shl i32 %15, %10, !dbg !1508
  %17 = xor i32 %16, %11, !dbg !1509
  store i32 %17, i32* %8, align 4, !dbg !1509, !tbaa !1171
  ret i32 %13, !dbg !1510
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1511 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1515, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1518
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1519
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1515, metadata !DIExpression()), !dbg !1518
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1522
  %6 = load i32, i32* %5, align 4, !dbg !1522, !tbaa !1523
  call void @llvm.dbg.value(metadata i32 %6, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i32 %1, i32* %5, align 4, !dbg !1524, !tbaa !1523
  ret i32 %6, !dbg !1525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1526 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1530, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* %1, metadata !1531, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8* %2, metadata !1532, metadata !DIExpression()), !dbg !1533
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1534
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1530, metadata !DIExpression()), !dbg !1533
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1537
  store i32 10, i32* %6, align 8, !dbg !1538, !tbaa !1472
  %7 = icmp ne i8* %1, null, !dbg !1539
  %8 = icmp ne i8* %2, null, !dbg !1541
  %9 = and i1 %7, %8, !dbg !1542
  br i1 %9, label %11, label %10, !dbg !1542

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1543
  unreachable, !dbg !1543

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1544
  store i8* %1, i8** %12, align 8, !dbg !1545, !tbaa !1546
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1547
  store i8* %2, i8** %13, align 8, !dbg !1548, !tbaa !1549
  ret void, !dbg !1550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1551 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1555, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %1, metadata !1556, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i8* %2, metadata !1557, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata i64 %3, metadata !1558, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1559, metadata !DIExpression()), !dbg !1563
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1564
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1564
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1560, metadata !DIExpression()), !dbg !1563
  %8 = tail call i32* @__errno_location() #25, !dbg !1565
  %9 = load i32, i32* %8, align 4, !dbg !1565, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %9, metadata !1561, metadata !DIExpression()), !dbg !1563
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1566
  %11 = load i32, i32* %10, align 8, !dbg !1566, !tbaa !1472
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1567
  %13 = load i32, i32* %12, align 4, !dbg !1567, !tbaa !1523
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1568
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1569
  %16 = load i8*, i8** %15, align 8, !dbg !1569, !tbaa !1546
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1570
  %18 = load i8*, i8** %17, align 8, !dbg !1570, !tbaa !1549
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %19, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i32 %9, i32* %8, align 4, !dbg !1572, !tbaa !1171
  ret i64 %19, !dbg !1573
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1574 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1580, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %1, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %2, metadata !1582, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %3, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %4, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %5, metadata !1585, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32* %6, metadata !1586, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %7, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %8, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* null, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1638
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !1639
  %14 = icmp eq i64 %13, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i1 %14, metadata !1595, metadata !DIExpression()), !dbg !1638
  %15 = lshr i32 %5, 1, !dbg !1641
  %16 = trunc i32 %15 to i8, !dbg !1641
  %17 = and i8 %16, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i8 %17, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1638
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1642
  %19 = and i32 %5, 4, !dbg !1644
  %20 = icmp eq i32 %19, 0, !dbg !1644
  %21 = and i32 %5, 1, !dbg !1647
  %22 = icmp eq i32 %21, 0, !dbg !1647
  %23 = bitcast i64* %10 to i8*, !dbg !1650
  %24 = bitcast i32* %12 to i8*, !dbg !1651
  %25 = icmp eq i32* %6, null, !dbg !1652
  br label %26, !dbg !1654

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1655
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1656
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1657
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1658
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1638
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1659
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1660
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1661
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %38, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %37, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %36, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %35, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %34, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %33, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %32, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %31, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %30, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %29, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %28, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %27, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1632), !dbg !1662
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
  ], !dbg !1663

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %35, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1584, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1664

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 5, metadata !1584, metadata !DIExpression()), !dbg !1638
  %42 = and i8 %35, 1, !dbg !1666
  %43 = icmp eq i8 %42, 0, !dbg !1666
  br i1 %43, label %44, label %92, !dbg !1664

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1668
  br i1 %45, label %92, label %46, !dbg !1671

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1668, !tbaa !1228
  br label %92, !dbg !1668

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.70, i64 0, i64 0), i32 %27), !dbg !1672
  call void @llvm.dbg.value(metadata i8* %48, metadata !1587, metadata !DIExpression()), !dbg !1638
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), i32 %27), !dbg !1676
  call void @llvm.dbg.value(metadata i8* %49, metadata !1588, metadata !DIExpression()), !dbg !1638
  br label %50, !dbg !1677

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %51, metadata !1587, metadata !DIExpression()), !dbg !1638
  %53 = and i8 %35, 1, !dbg !1678
  %54 = icmp eq i8 %53, 0, !dbg !1678
  br i1 %54, label %55, label %70, !dbg !1680

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1638
  %56 = load i8, i8* %51, align 1, !dbg !1681, !tbaa !1228
  %57 = icmp eq i8 %56, 0, !dbg !1684
  br i1 %57, label %70, label %58, !dbg !1684

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %61, metadata !1590, metadata !DIExpression()), !dbg !1638
  %62 = icmp ult i64 %61, %39, !dbg !1685
  br i1 %62, label %63, label %65, !dbg !1688

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1685
  store i8 %59, i8* %64, align 1, !dbg !1685, !tbaa !1228
  br label %65, !dbg !1685

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %66, metadata !1590, metadata !DIExpression()), !dbg !1638
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %67, metadata !1592, metadata !DIExpression()), !dbg !1638
  %68 = load i8, i8* %67, align 1, !dbg !1681, !tbaa !1228
  %69 = icmp eq i8 %68, 0, !dbg !1684
  br i1 %69, label %70, label %58, !dbg !1684, !llvm.loop !1690

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1692
  call void @llvm.dbg.value(metadata i64 %71, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %52, metadata !1592, metadata !DIExpression()), !dbg !1638
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %72, metadata !1593, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1694

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1638
  br label %74, !dbg !1695

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %75, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1638
  br label %76, !dbg !1696

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1658
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %78, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %77, metadata !1594, metadata !DIExpression()), !dbg !1638
  %79 = and i8 %78, 1, !dbg !1697
  %80 = icmp eq i8 %79, 0, !dbg !1697
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1699
  br label %82, !dbg !1699

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1638
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1641
  call void @llvm.dbg.value(metadata i8 %84, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %83, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  %85 = and i8 %84, 1, !dbg !1700
  %86 = icmp eq i8 %85, 0, !dbg !1700
  br i1 %86, label %87, label %92, !dbg !1702

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1703
  br i1 %88, label %92, label %89, !dbg !1706

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1703, !tbaa !1228
  br label %92, !dbg !1703

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1638
  br label %92, !dbg !1707

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1708
  unreachable, !dbg !1708

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1692
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), %40 ], !dbg !1638
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1638
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1638
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %100, metadata !1596, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %98, metadata !1593, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %96, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %93, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1638
  %101 = and i8 %99, 1, !dbg !1709
  %102 = icmp ne i8 %101, 0, !dbg !1709
  %103 = icmp ne i32 %93, 2, !dbg !1709
  %104 = and i1 %103, %102, !dbg !1709
  %105 = icmp ne i64 %98, 0, !dbg !1709
  %106 = and i1 %105, %104, !dbg !1709
  %107 = icmp ugt i64 %98, 1, !dbg !1709
  %108 = and i8 %100, 1, !dbg !1711
  %109 = icmp eq i8 %108, 0, !dbg !1711
  %110 = icmp eq i32 %93, 2, !dbg !1714
  %111 = or i1 %103, %109, !dbg !1716
  %112 = icmp ne i8 %108, 0, !dbg !1718
  %113 = and i1 %110, %112, !dbg !1718
  %114 = xor i1 %102, true, !dbg !1719
  %115 = xor i1 %104, true, !dbg !1652
  %116 = and i1 %109, %115, !dbg !1652
  %117 = or i1 %25, %116, !dbg !1652
  %118 = and i8 %99, %100, !dbg !1720
  %119 = and i8 %118, 1, !dbg !1720
  %120 = icmp ne i8 %119, 0, !dbg !1720
  %121 = and i1 %120, %105, !dbg !1720
  br label %122, !dbg !1722

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1723
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1692
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1655
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1659
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1660
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1661
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %126, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %123, metadata !1589, metadata !DIExpression()), !dbg !1638
  %131 = icmp eq i64 %126, -1, !dbg !1724
  br i1 %131, label %132, label %136, !dbg !1725

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1726
  %134 = load i8, i8* %133, align 1, !dbg !1726, !tbaa !1228
  %135 = icmp eq i8 %134, 0, !dbg !1727
  br i1 %135, label %581, label %138, !dbg !1728

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1729
  br i1 %137, label %581, label %138, !dbg !1728

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1730
  br i1 %106, label %139, label %154, !dbg !1731

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1732
  %141 = and i1 %107, %131, !dbg !1733
  br i1 %141, label %142, label %144, !dbg !1733

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %143, metadata !1583, metadata !DIExpression()), !dbg !1638
  br label %144, !dbg !1735

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1583, metadata !DIExpression()), !dbg !1638
  %146 = icmp ugt i64 %140, %145, !dbg !1736
  br i1 %146, label %154, label %147, !dbg !1737

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1738
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1739
  %150 = icmp ne i32 %149, 0, !dbg !1740
  %151 = or i1 %150, %109, !dbg !1741
  %152 = xor i1 %150, true, !dbg !1741
  %153 = zext i1 %152 to i8, !dbg !1741
  br i1 %151, label %154, label %639, !dbg !1741

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8 %156, metadata !1605, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %155, metadata !1583, metadata !DIExpression()), !dbg !1638
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1742
  %158 = load i8, i8* %157, align 1, !dbg !1742, !tbaa !1228
  call void @llvm.dbg.value(metadata i8 %158, metadata !1600, metadata !DIExpression()), !dbg !1730
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
  ], !dbg !1743

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1744

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1745

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1730
  %162 = and i8 %127, 1, !dbg !1748
  %163 = icmp eq i8 %162, 0, !dbg !1748
  %164 = and i1 %110, %163, !dbg !1748
  br i1 %164, label %165, label %181, !dbg !1748

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1750
  br i1 %166, label %167, label %169, !dbg !1754

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1750
  store i8 39, i8* %168, align 1, !dbg !1750, !tbaa !1228
  br label %169, !dbg !1750

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %170, metadata !1590, metadata !DIExpression()), !dbg !1638
  %171 = icmp ult i64 %170, %130, !dbg !1755
  br i1 %171, label %172, label %174, !dbg !1758

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1755
  store i8 36, i8* %173, align 1, !dbg !1755, !tbaa !1228
  br label %174, !dbg !1755

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %175, metadata !1590, metadata !DIExpression()), !dbg !1638
  %176 = icmp ult i64 %175, %130, !dbg !1759
  br i1 %176, label %177, label %179, !dbg !1762

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1759
  store i8 39, i8* %178, align 1, !dbg !1759, !tbaa !1228
  br label %179, !dbg !1759

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %180, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %181, !dbg !1763

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1638
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %183, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %182, metadata !1590, metadata !DIExpression()), !dbg !1638
  %184 = icmp ult i64 %182, %130, !dbg !1764
  br i1 %184, label %185, label %187, !dbg !1767

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1764
  store i8 92, i8* %186, align 1, !dbg !1764, !tbaa !1228
  br label %187, !dbg !1764

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %188, metadata !1590, metadata !DIExpression()), !dbg !1638
  br i1 %103, label %189, label %463, !dbg !1768

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1770
  %191 = icmp ult i64 %190, %155, !dbg !1771
  br i1 %191, label %192, label %463, !dbg !1772

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1773
  %194 = load i8, i8* %193, align 1, !dbg !1773, !tbaa !1228
  %195 = add i8 %194, -48, !dbg !1774
  %196 = icmp ult i8 %195, 10, !dbg !1774
  br i1 %196, label %197, label %463, !dbg !1774

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1775
  br i1 %198, label %199, label %201, !dbg !1779

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1775
  store i8 48, i8* %200, align 1, !dbg !1775, !tbaa !1228
  br label %201, !dbg !1775

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %202, metadata !1590, metadata !DIExpression()), !dbg !1638
  %203 = icmp ult i64 %202, %130, !dbg !1780
  br i1 %203, label %204, label %206, !dbg !1783

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1780
  store i8 48, i8* %205, align 1, !dbg !1780, !tbaa !1228
  br label %206, !dbg !1780

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %207, metadata !1590, metadata !DIExpression()), !dbg !1638
  br label %463, !dbg !1784

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1785

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1786

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1787

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1788

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1789
  %214 = icmp ult i64 %213, %155, !dbg !1790
  br i1 %214, label %215, label %463, !dbg !1791

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1792
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1793
  %218 = load i8, i8* %217, align 1, !dbg !1793, !tbaa !1228
  %219 = icmp eq i8 %218, 63, !dbg !1794
  br i1 %219, label %220, label %463, !dbg !1795

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1796
  %222 = load i8, i8* %221, align 1, !dbg !1796, !tbaa !1228
  %223 = sext i8 %222 to i32, !dbg !1796
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
  ], !dbg !1797

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1798

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %213, metadata !1589, metadata !DIExpression()), !dbg !1638
  %226 = icmp ult i64 %124, %130, !dbg !1800
  br i1 %226, label %227, label %229, !dbg !1803

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1800
  store i8 63, i8* %228, align 1, !dbg !1800, !tbaa !1228
  br label %229, !dbg !1800

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %230, metadata !1590, metadata !DIExpression()), !dbg !1638
  %231 = icmp ult i64 %230, %130, !dbg !1804
  br i1 %231, label %232, label %234, !dbg !1807

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1804
  store i8 34, i8* %233, align 1, !dbg !1804, !tbaa !1228
  br label %234, !dbg !1804

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %235, metadata !1590, metadata !DIExpression()), !dbg !1638
  %236 = icmp ult i64 %235, %130, !dbg !1808
  br i1 %236, label %237, label %239, !dbg !1811

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1808
  store i8 34, i8* %238, align 1, !dbg !1808, !tbaa !1228
  br label %239, !dbg !1808

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %240, metadata !1590, metadata !DIExpression()), !dbg !1638
  %241 = icmp ult i64 %240, %130, !dbg !1812
  br i1 %241, label %242, label %244, !dbg !1815

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1812
  store i8 63, i8* %243, align 1, !dbg !1812, !tbaa !1228
  br label %244, !dbg !1812

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %245, metadata !1590, metadata !DIExpression()), !dbg !1638
  br label %463, !dbg !1816

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1604, metadata !DIExpression()), !dbg !1730
  br label %256, !dbg !1817

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1604, metadata !DIExpression()), !dbg !1730
  br label %256, !dbg !1818

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1604, metadata !DIExpression()), !dbg !1730
  br label %254, !dbg !1819

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1604, metadata !DIExpression()), !dbg !1730
  br label %254, !dbg !1820

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1604, metadata !DIExpression()), !dbg !1730
  br label %256, !dbg !1821

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1604, metadata !DIExpression()), !dbg !1730
  br i1 %110, label %252, label %253, !dbg !1822

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1823

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1826

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1827
  call void @llvm.dbg.value(metadata i8 %255, metadata !1604, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.label(metadata !1633), !dbg !1828
  br i1 %111, label %256, label %625, !dbg !1829

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1827
  call void @llvm.dbg.value(metadata i8 %257, metadata !1604, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.label(metadata !1634), !dbg !1831
  br i1 %102, label %488, label %463, !dbg !1832

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1833

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1834, !tbaa !1228
  %261 = icmp eq i8 %260, 0, !dbg !1835
  br i1 %261, label %262, label %463, !dbg !1836

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1837
  br i1 %263, label %264, label %463, !dbg !1839

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1730
  br label %265, !dbg !1840

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8 %266, metadata !1607, metadata !DIExpression()), !dbg !1730
  br i1 %111, label %463, label %625, !dbg !1841

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1730
  br i1 %110, label %268, label %463, !dbg !1842

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1843

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1845
  %271 = icmp ne i64 %125, 0, !dbg !1847
  %272 = or i1 %271, %270, !dbg !1848
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1848
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %274, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %273, metadata !1591, metadata !DIExpression()), !dbg !1638
  %275 = icmp ult i64 %124, %274, !dbg !1849
  br i1 %275, label %276, label %278, !dbg !1852

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1849
  store i8 39, i8* %277, align 1, !dbg !1849, !tbaa !1228
  br label %278, !dbg !1849

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %279, metadata !1590, metadata !DIExpression()), !dbg !1638
  %280 = icmp ult i64 %279, %274, !dbg !1853
  br i1 %280, label %281, label %283, !dbg !1856

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1853
  store i8 92, i8* %282, align 1, !dbg !1853, !tbaa !1228
  br label %283, !dbg !1853

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %284, metadata !1590, metadata !DIExpression()), !dbg !1638
  %285 = icmp ult i64 %284, %274, !dbg !1857
  br i1 %285, label %286, label %288, !dbg !1860

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1857
  store i8 39, i8* %287, align 1, !dbg !1857, !tbaa !1228
  br label %288, !dbg !1857

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %289, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %463, !dbg !1861

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1862

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1608, metadata !DIExpression()), !dbg !1863
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !1864
  %293 = load i16*, i16** %292, align 8, !dbg !1864, !tbaa !1095
  %294 = zext i8 %158 to i64, !dbg !1864
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1864
  %296 = load i16, i16* %295, align 2, !dbg !1864, !tbaa !1866
  %297 = lshr i16 %296, 14, !dbg !1867
  %298 = trunc i16 %297 to i8, !dbg !1867
  %299 = and i8 %298, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i8 %299, metadata !1611, metadata !DIExpression()), !dbg !1863
  br label %355, !dbg !1868

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1869
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1612, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %23, metadata !1871, metadata !DIExpression()) #20, !dbg !1879
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()) #20, !dbg !1879
  call void @llvm.dbg.value(metadata i64 8, metadata !1878, metadata !DIExpression()) #20, !dbg !1879
  store i64 0, i64* %10, align 8, !dbg !1881
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1863
  %301 = icmp eq i64 %155, -1, !dbg !1882
  br i1 %301, label %302, label %304, !dbg !1884

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %303, metadata !1583, metadata !DIExpression()), !dbg !1638
  br label %304, !dbg !1886

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1730
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  br label %306, !dbg !1887

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1888
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1889
  call void @llvm.dbg.value(metadata i8 %308, metadata !1611, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1890
  %309 = add i64 %307, %123, !dbg !1891
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1892
  %311 = sub i64 %305, %309, !dbg !1893
  call void @llvm.dbg.value(metadata i32* %12, metadata !1618, metadata !DIExpression(DW_OP_deref)), !dbg !1651
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %312, metadata !1621, metadata !DIExpression()), !dbg !1651
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1895

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  %314 = icmp ugt i64 %305, %309, !dbg !1896
  br i1 %314, label %315, label %340, !dbg !1898

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1899
  br label %317, !dbg !1899

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1608, metadata !DIExpression()), !dbg !1863
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1900
  %321 = load i8, i8* %320, align 1, !dbg !1900, !tbaa !1228
  %322 = icmp eq i8 %321, 0, !dbg !1898
  br i1 %322, label %340, label %323, !dbg !1899

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %324, metadata !1608, metadata !DIExpression()), !dbg !1863
  %325 = add i64 %324, %123, !dbg !1902
  %326 = icmp ult i64 %325, %305, !dbg !1896
  br i1 %326, label %317, label %340, !dbg !1898, !llvm.loop !1903

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1904
  %329 = and i1 %113, %328, !dbg !1907
  call void @llvm.dbg.value(metadata i64 1, metadata !1622, metadata !DIExpression()), !dbg !1908
  br i1 %329, label %330, label %343, !dbg !1907

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1622, metadata !DIExpression()), !dbg !1908
  %332 = add i64 %331, %309, !dbg !1909
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1910
  %334 = load i8, i8* %333, align 1, !dbg !1910, !tbaa !1228
  %335 = sext i8 %334 to i32, !dbg !1910
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1911

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %337, metadata !1622, metadata !DIExpression()), !dbg !1908
  %338 = icmp eq i64 %337, %312, !dbg !1904
  br i1 %338, label %343, label %330, !dbg !1913, !llvm.loop !1914

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %308, metadata !1611, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %307, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %308, metadata !1611, metadata !DIExpression()), !dbg !1863
  br label %340, !dbg !1916

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1916
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1917, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %344, metadata !1618, metadata !DIExpression()), !dbg !1651
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !1919
  %346 = icmp eq i32 %345, 0, !dbg !1919
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1920
  call void @llvm.dbg.value(metadata i8 %347, metadata !1611, metadata !DIExpression()), !dbg !1863
  %348 = add i64 %312, %307, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %348, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 %347, metadata !1611, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %348, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1916
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !1922
  %350 = icmp eq i32 %349, 0, !dbg !1923
  br i1 %350, label %306, label %351, !dbg !1924, !llvm.loop !1925

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1927
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 2, metadata !1584, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %99, metadata !1594, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %305, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !1916
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !1927
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1730
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1928
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1928
  call void @llvm.dbg.value(metadata i8 %358, metadata !1611, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %357, metadata !1608, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %356, metadata !1583, metadata !DIExpression()), !dbg !1638
  %359 = and i8 %358, 1, !dbg !1929
  %360 = icmp ne i8 %359, 0, !dbg !1929
  call void @llvm.dbg.value(metadata i8 %359, metadata !1607, metadata !DIExpression()), !dbg !1730
  %361 = icmp ult i64 %357, 2, !dbg !1930
  %362 = or i1 %360, %114, !dbg !1931
  %363 = and i1 %361, %362, !dbg !1932
  br i1 %363, label %463, label %364, !dbg !1932

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %365, metadata !1629, metadata !DIExpression()), !dbg !1934
  br label %366, !dbg !1935

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1723
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1638
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1659
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1730
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1730
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1936
  call void @llvm.dbg.value(metadata i8 %372, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %371, metadata !1605, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %370, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %369, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %368, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %367, metadata !1589, metadata !DIExpression()), !dbg !1638
  br i1 %362, label %419, label %373, !dbg !1937

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1942

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1730
  %375 = and i8 %369, 1, !dbg !1945
  %376 = icmp eq i8 %375, 0, !dbg !1945
  %377 = and i1 %110, %376, !dbg !1945
  br i1 %377, label %378, label %394, !dbg !1945

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1947
  br i1 %379, label %380, label %382, !dbg !1951

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1947
  store i8 39, i8* %381, align 1, !dbg !1947, !tbaa !1228
  br label %382, !dbg !1947

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %383, metadata !1590, metadata !DIExpression()), !dbg !1638
  %384 = icmp ult i64 %383, %130, !dbg !1952
  br i1 %384, label %385, label %387, !dbg !1955

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1952
  store i8 36, i8* %386, align 1, !dbg !1952, !tbaa !1228
  br label %387, !dbg !1952

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %388, metadata !1590, metadata !DIExpression()), !dbg !1638
  %389 = icmp ult i64 %388, %130, !dbg !1956
  br i1 %389, label %390, label %392, !dbg !1959

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1956
  store i8 39, i8* %391, align 1, !dbg !1956, !tbaa !1228
  br label %392, !dbg !1956

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %393, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %394, !dbg !1960

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1638
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %396, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %395, metadata !1590, metadata !DIExpression()), !dbg !1638
  %397 = icmp ult i64 %395, %130, !dbg !1961
  br i1 %397, label %398, label %400, !dbg !1964

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1961
  store i8 92, i8* %399, align 1, !dbg !1961, !tbaa !1228
  br label %400, !dbg !1961

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %401, metadata !1590, metadata !DIExpression()), !dbg !1638
  %402 = icmp ult i64 %401, %130, !dbg !1965
  br i1 %402, label %403, label %407, !dbg !1968

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1965
  %405 = or i8 %404, 48, !dbg !1965
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1965
  store i8 %405, i8* %406, align 1, !dbg !1965, !tbaa !1228
  br label %407, !dbg !1965

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %408, metadata !1590, metadata !DIExpression()), !dbg !1638
  %409 = icmp ult i64 %408, %130, !dbg !1969
  br i1 %409, label %410, label %415, !dbg !1972

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1969
  %412 = and i8 %411, 7, !dbg !1969
  %413 = or i8 %412, 48, !dbg !1969
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1969
  store i8 %413, i8* %414, align 1, !dbg !1969, !tbaa !1228
  br label %415, !dbg !1969

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %416, metadata !1590, metadata !DIExpression()), !dbg !1638
  %417 = and i8 %370, 7, !dbg !1973
  %418 = or i8 %417, 48, !dbg !1974
  call void @llvm.dbg.value(metadata i8 %418, metadata !1600, metadata !DIExpression()), !dbg !1730
  br label %428, !dbg !1975

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1976
  %421 = icmp eq i8 %420, 0, !dbg !1976
  br i1 %421, label %428, label %422, !dbg !1978

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1979
  br i1 %423, label %424, label %426, !dbg !1983

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1979
  store i8 92, i8* %425, align 1, !dbg !1979, !tbaa !1228
  br label %426, !dbg !1979

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %427, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1730
  br label %428, !dbg !1984

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1638
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1659
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1730
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1730
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1730
  call void @llvm.dbg.value(metadata i8 %433, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %432, metadata !1605, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %431, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %430, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %429, metadata !1590, metadata !DIExpression()), !dbg !1638
  %434 = add i64 %367, 1, !dbg !1985
  %435 = icmp ugt i64 %365, %434, !dbg !1987
  br i1 %435, label %436, label %526, !dbg !1988

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1989
  %438 = icmp ne i8 %437, 0, !dbg !1989
  %439 = and i8 %433, 1, !dbg !1989
  %440 = icmp eq i8 %439, 0, !dbg !1989
  %441 = and i1 %438, %440, !dbg !1989
  br i1 %441, label %442, label %453, !dbg !1989

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1992
  br i1 %443, label %444, label %446, !dbg !1996

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1992
  store i8 39, i8* %445, align 1, !dbg !1992, !tbaa !1228
  br label %446, !dbg !1992

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %447, metadata !1590, metadata !DIExpression()), !dbg !1638
  %448 = icmp ult i64 %447, %130, !dbg !1997
  br i1 %448, label %449, label %451, !dbg !2000

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1997
  store i8 39, i8* %450, align 1, !dbg !1997, !tbaa !1228
  br label %451, !dbg !1997

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %452, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %453, !dbg !2001

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2002
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %455, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %454, metadata !1590, metadata !DIExpression()), !dbg !1638
  %456 = icmp ult i64 %454, %130, !dbg !2003
  br i1 %456, label %457, label %459, !dbg !2006

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2003
  store i8 %431, i8* %458, align 1, !dbg !2003, !tbaa !1228
  br label %459, !dbg !2003

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %460, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %434, metadata !1589, metadata !DIExpression()), !dbg !1638
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2007
  %462 = load i8, i8* %461, align 1, !dbg !2007, !tbaa !1228
  call void @llvm.dbg.value(metadata i8 %462, metadata !1600, metadata !DIExpression()), !dbg !1730
  br label %366, !dbg !2008, !llvm.loop !2009

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1723
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1638
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1655
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2012
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1638
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1638
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1730
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1730
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1730
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %472, metadata !1607, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %471, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %156, metadata !1605, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %470, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %469, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %468, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %467, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %466, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %465, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %464, metadata !1589, metadata !DIExpression()), !dbg !1638
  br i1 %117, label %486, label %474, !dbg !2013

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2014
  %476 = zext i8 %475 to i64, !dbg !2014
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2015
  %478 = load i32, i32* %477, align 4, !dbg !2015, !tbaa !1171
  %479 = and i8 %470, 31, !dbg !2016
  %480 = zext i8 %479 to i32, !dbg !2016
  %481 = shl nuw i32 1, %480, !dbg !2017
  %482 = and i32 %478, %481, !dbg !2017
  %483 = icmp eq i32 %482, 0, !dbg !2017
  %484 = icmp eq i8 %156, 0, !dbg !2018
  %485 = and i1 %484, %483, !dbg !2019
  br i1 %485, label %526, label %488, !dbg !2019

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2018
  br i1 %487, label %526, label %488, !dbg !2020

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2021
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1638
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1655
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2012
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1659
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1660
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1730
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1730
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %496, metadata !1607, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %495, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %494, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %493, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %492, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %491, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %490, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %489, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1635), !dbg !2022
  br i1 %109, label %498, label %629, !dbg !2023

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1730
  %499 = and i8 %493, 1, !dbg !2025
  %500 = icmp eq i8 %499, 0, !dbg !2025
  %501 = and i1 %110, %500, !dbg !2025
  br i1 %501, label %502, label %518, !dbg !2025

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2027
  br i1 %503, label %504, label %506, !dbg !2031

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2027
  store i8 39, i8* %505, align 1, !dbg !2027, !tbaa !1228
  br label %506, !dbg !2027

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %507, metadata !1590, metadata !DIExpression()), !dbg !1638
  %508 = icmp ult i64 %507, %497, !dbg !2032
  br i1 %508, label %509, label %511, !dbg !2035

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2032
  store i8 36, i8* %510, align 1, !dbg !2032, !tbaa !1228
  br label %511, !dbg !2032

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %512, metadata !1590, metadata !DIExpression()), !dbg !1638
  %513 = icmp ult i64 %512, %497, !dbg !2036
  br i1 %513, label %514, label %516, !dbg !2039

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2036
  store i8 39, i8* %515, align 1, !dbg !2036, !tbaa !1228
  br label %516, !dbg !2036

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %517, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %518, !dbg !2040

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1730
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %520, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %519, metadata !1590, metadata !DIExpression()), !dbg !1638
  %521 = icmp ult i64 %519, %497, !dbg !2041
  br i1 %521, label %522, label %524, !dbg !2044

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2041
  store i8 92, i8* %523, align 1, !dbg !2041, !tbaa !1228
  br label %524, !dbg !2041

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %525, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %536, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %535, metadata !1607, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %534, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %533, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %532, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %531, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %530, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %529, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %528, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %527, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2045
  br label %553, !dbg !2046

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2021
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1638
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1655
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2012
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1659
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1660
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2049
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1730
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1730
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %535, metadata !1607, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %534, metadata !1606, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %533, metadata !1600, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 %532, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %531, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %530, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %529, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %528, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %527, metadata !1589, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1636), !dbg !2045
  %537 = and i8 %531, 1, !dbg !2046
  %538 = icmp ne i8 %537, 0, !dbg !2046
  %539 = and i8 %534, 1, !dbg !2046
  %540 = icmp eq i8 %539, 0, !dbg !2046
  %541 = and i1 %538, %540, !dbg !2046
  br i1 %541, label %542, label %553, !dbg !2046

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2050
  br i1 %543, label %544, label %546, !dbg !2054

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2050
  store i8 39, i8* %545, align 1, !dbg !2050, !tbaa !1228
  br label %546, !dbg !2050

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %547, metadata !1590, metadata !DIExpression()), !dbg !1638
  %548 = icmp ult i64 %547, %536, !dbg !2055
  br i1 %548, label %549, label %551, !dbg !2058

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2055
  store i8 39, i8* %550, align 1, !dbg !2055, !tbaa !1228
  br label %551, !dbg !2055

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %552, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1638
  br label %553, !dbg !2059

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1730
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1638
  call void @llvm.dbg.value(metadata i8 %562, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %561, metadata !1590, metadata !DIExpression()), !dbg !1638
  %563 = icmp ult i64 %561, %554, !dbg !2060
  br i1 %563, label %564, label %566, !dbg !2063

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2060
  store i8 %556, i8* %565, align 1, !dbg !2060, !tbaa !1228
  br label %566, !dbg !2060

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %567, metadata !1590, metadata !DIExpression()), !dbg !1638
  %568 = and i8 %555, 1, !dbg !2064
  %569 = icmp eq i8 %568, 0, !dbg !2064
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2066
  call void @llvm.dbg.value(metadata i8 %570, metadata !1599, metadata !DIExpression()), !dbg !1638
  br label %571, !dbg !2067

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2021
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1638
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1655
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2012
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1659
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1638
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1661
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %578, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %577, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %576, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %575, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %574, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %573, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %572, metadata !1589, metadata !DIExpression()), !dbg !1638
  %580 = add i64 %572, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %580, metadata !1589, metadata !DIExpression()), !dbg !1638
  br label %122, !dbg !2069, !llvm.loop !2070

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %127, metadata !1597, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %128, metadata !1598, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 %129, metadata !1599, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  %583 = icmp eq i64 %124, 0, !dbg !2072
  %584 = and i1 %110, %583, !dbg !2074
  %585 = xor i1 %584, true, !dbg !2074
  %586 = or i1 %109, %585, !dbg !2074
  br i1 %586, label %587, label %629, !dbg !2074

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2075
  %589 = xor i1 %588, true, !dbg !2075
  %590 = and i8 %128, 1, !dbg !2077
  %591 = icmp eq i8 %590, 0, !dbg !2077
  %592 = or i1 %591, %589, !dbg !2075
  br i1 %592, label %602, label %593, !dbg !2075

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2078
  %595 = icmp eq i8 %594, 0, !dbg !2078
  br i1 %595, label %598, label %596, !dbg !2081

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %94, metadata !1587, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %95, metadata !1588, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %125, metadata !1591, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %582, metadata !1583, metadata !DIExpression()), !dbg !1638
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2082
  br label %645, !dbg !2083

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2084
  %600 = icmp ne i64 %125, 0, !dbg !2086
  %601 = and i1 %600, %599, !dbg !2087
  br i1 %601, label %26, label %602, !dbg !2087

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %130, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  %603 = icmp ne i8* %97, null, !dbg !2088
  %604 = and i1 %603, %109, !dbg !2090
  br i1 %604, label %605, label %620, !dbg !2090

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %124, metadata !1590, metadata !DIExpression()), !dbg !1638
  %606 = load i8, i8* %97, align 1, !dbg !2091, !tbaa !1228
  %607 = icmp eq i8 %606, 0, !dbg !2094
  br i1 %607, label %620, label %608, !dbg !2094

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1592, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %611, metadata !1590, metadata !DIExpression()), !dbg !1638
  %612 = icmp ult i64 %611, %130, !dbg !2095
  br i1 %612, label %613, label %615, !dbg !2098

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2095
  store i8 %609, i8* %614, align 1, !dbg !2095, !tbaa !1228
  br label %615, !dbg !2095

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %616, metadata !1590, metadata !DIExpression()), !dbg !1638
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2099
  call void @llvm.dbg.value(metadata i8* %617, metadata !1592, metadata !DIExpression()), !dbg !1638
  %618 = load i8, i8* %617, align 1, !dbg !2091, !tbaa !1228
  %619 = icmp eq i8 %618, 0, !dbg !2094
  br i1 %619, label %620, label %608, !dbg !2094, !llvm.loop !2100

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1692
  call void @llvm.dbg.value(metadata i64 %621, metadata !1590, metadata !DIExpression()), !dbg !1638
  %622 = icmp ult i64 %621, %130, !dbg !2102
  br i1 %622, label %623, label %645, !dbg !2104

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2105
  store i8 0, i8* %624, align 1, !dbg !2106, !tbaa !1228
  br label %645, !dbg !2105

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %630, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1637), !dbg !2107
  %627 = icmp eq i8 %101, 0, !dbg !2108
  %628 = select i1 %627, i32 2, i32 4, !dbg !2108
  br label %635, !dbg !2108

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1581, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %630, metadata !1583, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.label(metadata !1637), !dbg !2107
  %632 = icmp eq i32 %93, 2, !dbg !2110
  %633 = icmp eq i8 %101, 0, !dbg !2108
  %634 = select i1 %633, i32 2, i32 4, !dbg !2108
  br i1 %632, label %635, label %639, !dbg !2108

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2108

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1584, metadata !DIExpression()), !dbg !1638
  %643 = and i32 %5, -3, !dbg !2111
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2112
  br label %645, !dbg !2113

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2114
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %1, metadata !2120, metadata !DIExpression()), !dbg !2123
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %3, metadata !2121, metadata !DIExpression()), !dbg !2123
  %4 = icmp eq i8* %3, %0, !dbg !2125
  br i1 %4, label %5, label %71, !dbg !2127

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %6, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %6, metadata !2129, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8* undef, metadata !2135, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 85, metadata !2136, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 84, metadata !2137, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 70, metadata !2138, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 45, metadata !2139, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 56, metadata !2140, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 0, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 0, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 0, metadata !2143, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2145
  %7 = load i8, i8* %6, align 1, !dbg !2148, !tbaa !1228
  %8 = and i8 %7, -33, !dbg !2148
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2148

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2150, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* undef, metadata !2155, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 84, metadata !2156, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 70, metadata !2157, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 45, metadata !2158, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 56, metadata !2159, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2164
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2168
  %11 = load i8, i8* %10, align 1, !dbg !2168, !tbaa !1228
  %12 = and i8 %11, -33, !dbg !2168
  %13 = icmp eq i8 %12, 84, !dbg !2168
  br i1 %13, label %14, label %68, !dbg !2168

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2170, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8* undef, metadata !2175, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 70, metadata !2176, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 45, metadata !2177, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 56, metadata !2178, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata i8 0, metadata !2182, metadata !DIExpression()), !dbg !2183
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2187
  %16 = load i8, i8* %15, align 1, !dbg !2187, !tbaa !1228
  %17 = and i8 %16, -33, !dbg !2187
  %18 = icmp eq i8 %17, 70, !dbg !2187
  br i1 %18, label %19, label %68, !dbg !2187

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 45, metadata !2195, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 56, metadata !2196, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2197, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 0, metadata !2200, metadata !DIExpression()), !dbg !2201
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2205
  %21 = load i8, i8* %20, align 1, !dbg !2205, !tbaa !1228
  %22 = icmp eq i8 %21, 45, !dbg !2205
  br i1 %22, label %23, label %68, !dbg !2207

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2208, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8* undef, metadata !2213, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 56, metadata !2214, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2219
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2223
  %25 = load i8, i8* %24, align 1, !dbg !2223, !tbaa !1228
  %26 = icmp eq i8 %25, 56, !dbg !2223
  br i1 %26, label %27, label %68, !dbg !2225

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2226, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* undef, metadata !2231, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2236
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2240
  %29 = load i8, i8* %28, align 1, !dbg !2240, !tbaa !1228
  %30 = icmp eq i8 %29, 0, !dbg !2240
  br i1 %30, label %31, label %68, !dbg !2242

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2243, !tbaa !1228
  %33 = icmp eq i8 %32, 96, !dbg !2244
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.73, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.74, i64 0, i64 0), !dbg !2243
  br label %71, !dbg !2245

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2150, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* undef, metadata !2155, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 66, metadata !2156, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 49, metadata !2157, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 56, metadata !2158, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 48, metadata !2159, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 51, metadata !2160, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 48, metadata !2161, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 0, metadata !2162, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 0, metadata !2163, metadata !DIExpression()), !dbg !2246
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2250
  %37 = load i8, i8* %36, align 1, !dbg !2250, !tbaa !1228
  %38 = and i8 %37, -33, !dbg !2250
  %39 = icmp eq i8 %38, 66, !dbg !2250
  br i1 %39, label %40, label %68, !dbg !2250

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2170, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* undef, metadata !2175, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 49, metadata !2176, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 56, metadata !2177, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 48, metadata !2178, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 51, metadata !2179, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 48, metadata !2180, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 0, metadata !2182, metadata !DIExpression()), !dbg !2251
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2253
  %42 = load i8, i8* %41, align 1, !dbg !2253, !tbaa !1228
  %43 = icmp eq i8 %42, 49, !dbg !2253
  br i1 %43, label %44, label %68, !dbg !2254

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2189, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8* undef, metadata !2194, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 56, metadata !2195, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 48, metadata !2196, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 51, metadata !2197, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 48, metadata !2198, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2199, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i8 0, metadata !2200, metadata !DIExpression()), !dbg !2255
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2257
  %46 = load i8, i8* %45, align 1, !dbg !2257, !tbaa !1228
  %47 = icmp eq i8 %46, 56, !dbg !2257
  br i1 %47, label %48, label %68, !dbg !2258

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2208, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8* undef, metadata !2213, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 48, metadata !2214, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 51, metadata !2215, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 48, metadata !2216, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 0, metadata !2217, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8 0, metadata !2218, metadata !DIExpression()), !dbg !2259
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2261
  %50 = load i8, i8* %49, align 1, !dbg !2261, !tbaa !1228
  %51 = icmp eq i8 %50, 48, !dbg !2261
  br i1 %51, label %52, label %68, !dbg !2262

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2226, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* undef, metadata !2231, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 51, metadata !2232, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 48, metadata !2233, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, metadata !2234, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8 0, metadata !2235, metadata !DIExpression()), !dbg !2263
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2265
  %54 = load i8, i8* %53, align 1, !dbg !2265, !tbaa !1228
  %55 = icmp eq i8 %54, 51, !dbg !2265
  br i1 %55, label %56, label %68, !dbg !2266

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2267, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* undef, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 48, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2276
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2280
  %58 = load i8, i8* %57, align 1, !dbg !2280, !tbaa !1228
  %59 = icmp eq i8 %58, 48, !dbg !2280
  br i1 %59, label %60, label %68, !dbg !2282

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2283, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* undef, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2291
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2295
  %62 = load i8, i8* %61, align 1, !dbg !2295, !tbaa !1228
  %63 = icmp eq i8 %62, 0, !dbg !2295
  br i1 %63, label %64, label %68, !dbg !2297

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2298, !tbaa !1228
  %66 = icmp eq i8 %65, 96, !dbg !2299
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.75, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.76, i64 0, i64 0), !dbg !2298
  br label %71, !dbg !2300

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2301
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.72, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.71, i64 0, i64 0), !dbg !2302
  br label %71, !dbg !2303

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2123
  ret i8* %72, !dbg !2304
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !318 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !322 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i64 %1, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()) #20, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()) #20, !dbg !2326
  call void @llvm.dbg.value(metadata i64* null, metadata !2319, metadata !DIExpression()) #20, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2320, metadata !DIExpression()) #20, !dbg !2326
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2328
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2321, metadata !DIExpression()) #20, !dbg !2326
  %6 = tail call i32* @__errno_location() #25, !dbg !2329
  %7 = load i32, i32* %6, align 4, !dbg !2329, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %7, metadata !2322, metadata !DIExpression()) #20, !dbg !2326
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2330
  %9 = load i32, i32* %8, align 4, !dbg !2330, !tbaa !1523
  %10 = or i32 %9, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %10, metadata !2323, metadata !DIExpression()) #20, !dbg !2326
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2332
  %12 = load i32, i32* %11, align 8, !dbg !2332, !tbaa !1472
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2334
  %15 = load i8*, i8** %14, align 8, !dbg !2334, !tbaa !1546
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2335
  %17 = load i8*, i8** %16, align 8, !dbg !2335, !tbaa !1549
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !2336
  %19 = add i64 %18, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %19, metadata !2324, metadata !DIExpression()) #20, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %19, metadata !2338, metadata !DIExpression()) #20, !dbg !2343
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %20, metadata !2325, metadata !DIExpression()) #20, !dbg !2326
  %21 = load i32, i32* %11, align 8, !dbg !2346, !tbaa !1472
  %22 = load i8*, i8** %14, align 8, !dbg !2347, !tbaa !1546
  %23 = load i8*, i8** %16, align 8, !dbg !2348, !tbaa !1549
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !2349
  store i32 %7, i32* %6, align 4, !dbg !2350, !tbaa !1171
  ret i8* %20, !dbg !2351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2314 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2313, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64* %2, metadata !2319, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2320, metadata !DIExpression()), !dbg !2352
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2353
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2321, metadata !DIExpression()), !dbg !2352
  %7 = tail call i32* @__errno_location() #25, !dbg !2354
  %8 = load i32, i32* %7, align 4, !dbg !2354, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %8, metadata !2322, metadata !DIExpression()), !dbg !2352
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2355
  %10 = load i32, i32* %9, align 4, !dbg !2355, !tbaa !1523
  %11 = icmp ne i64* %2, null, !dbg !2356
  %12 = xor i1 %11, true, !dbg !2356
  %13 = zext i1 %12 to i32, !dbg !2356
  %14 = or i32 %10, %13, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %14, metadata !2323, metadata !DIExpression()), !dbg !2352
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2358
  %16 = load i32, i32* %15, align 8, !dbg !2358, !tbaa !1472
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2359
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2360
  %19 = load i8*, i8** %18, align 8, !dbg !2360, !tbaa !1546
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2361
  %21 = load i8*, i8** %20, align 8, !dbg !2361, !tbaa !1549
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2362
  %23 = add i64 %22, 1, !dbg !2363
  call void @llvm.dbg.value(metadata i64 %23, metadata !2324, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %23, metadata !2338, metadata !DIExpression()) #20, !dbg !2364
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !2366
  call void @llvm.dbg.value(metadata i8* %24, metadata !2325, metadata !DIExpression()), !dbg !2352
  %25 = load i32, i32* %15, align 8, !dbg !2367, !tbaa !1472
  %26 = load i8*, i8** %18, align 8, !dbg !2368, !tbaa !1546
  %27 = load i8*, i8** %20, align 8, !dbg !2369, !tbaa !1549
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2370
  store i32 %8, i32* %7, align 4, !dbg !2371, !tbaa !1171
  br i1 %11, label %29, label %30, !dbg !2372

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2373, !tbaa !2375
  br label %30, !dbg !2376

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2378 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2382, !tbaa !1095
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 1, metadata !2381, metadata !DIExpression()), !dbg !2383
  %2 = load i32, i32* @nslots, align 4, !dbg !2384, !tbaa !1171
  %3 = icmp sgt i32 %2, 1, !dbg !2387
  br i1 %3, label %4, label %12, !dbg !2388

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2381, metadata !DIExpression()), !dbg !2383
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2389
  %7 = load i8*, i8** %6, align 8, !dbg !2389, !tbaa !2390
  tail call void @free(i8* %7) #20, !dbg !2392
  %8 = add nuw nsw i64 %5, 1, !dbg !2393
  call void @llvm.dbg.value(metadata i64 %8, metadata !2381, metadata !DIExpression()), !dbg !2383
  %9 = load i32, i32* @nslots, align 4, !dbg !2384, !tbaa !1171
  %10 = sext i32 %9 to i64, !dbg !2387
  %11 = icmp slt i64 %8, %10, !dbg !2387
  br i1 %11, label %4, label %12, !dbg !2388, !llvm.loop !2394

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2396
  %14 = load i8*, i8** %13, align 8, !dbg !2396, !tbaa !2390
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2398
  br i1 %15, label %17, label %16, !dbg !2399

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !2400
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2402, !tbaa !2403
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2404, !tbaa !2390
  br label %17, !dbg !2405

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2406
  br i1 %18, label %21, label %19, !dbg !2408

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2409
  tail call void @free(i8* %20) #20, !dbg !2411
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2412, !tbaa !1095
  br label %21, !dbg !2413

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2414, !tbaa !1171
  ret void, !dbg !2415
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %1, metadata !2419, metadata !DIExpression()), !dbg !2420
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2421
  ret i8* %3, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %2, metadata !2429, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2430, metadata !DIExpression()), !dbg !2442
  %5 = tail call i32* @__errno_location() #25, !dbg !2443
  %6 = load i32, i32* %5, align 4, !dbg !2443, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %6, metadata !2431, metadata !DIExpression()), !dbg !2442
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2444, !tbaa !1095
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2432, metadata !DIExpression()), !dbg !2442
  %8 = icmp slt i32 %0, 0, !dbg !2445
  br i1 %8, label %9, label %10, !dbg !2447

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2448
  unreachable, !dbg !2448

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2449, !tbaa !1171
  %12 = icmp sgt i32 %11, %0, !dbg !2450
  br i1 %12, label %34, label %13, !dbg !2451

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2452
  call void @llvm.dbg.value(metadata i1 %14, metadata !2433, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2436, metadata !DIExpression()), !dbg !2453
  %15 = icmp eq i32 %0, 2147483647, !dbg !2454
  br i1 %15, label %16, label %17, !dbg !2456

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2457
  unreachable, !dbg !2457

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2458
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2458
  %20 = add nuw nsw i32 %0, 1, !dbg !2459
  %21 = sext i32 %20 to i64, !dbg !2460
  %22 = shl nuw nsw i64 %21, 4, !dbg !2461
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !2462
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2462
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2432, metadata !DIExpression()), !dbg !2442
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2463, !tbaa !1095
  br i1 %14, label %25, label %26, !dbg !2464

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2465, !tbaa.struct !2467
  br label %26, !dbg !2468

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2469, !tbaa !1171
  %28 = sext i32 %27 to i64, !dbg !2470
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2470
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2471
  %31 = sub nsw i32 %20, %27, !dbg !2472
  %32 = sext i32 %31 to i64, !dbg !2473
  %33 = shl nsw i64 %32, 4, !dbg !2474
  call void @llvm.dbg.value(metadata i8* %30, metadata !1871, metadata !DIExpression()) #20, !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !1877, metadata !DIExpression()) #20, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %33, metadata !1878, metadata !DIExpression()) #20, !dbg !2475
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !2477
  store i32 %20, i32* @nslots, align 4, !dbg !2478, !tbaa !1171
  br label %34, !dbg !2479

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2442
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2432, metadata !DIExpression()), !dbg !2442
  %36 = zext i32 %0 to i64, !dbg !2480
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2481
  %38 = load i64, i64* %37, align 8, !dbg !2481, !tbaa !2403
  call void @llvm.dbg.value(metadata i64 %38, metadata !2437, metadata !DIExpression()), !dbg !2482
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2483
  %40 = load i8*, i8** %39, align 8, !dbg !2483, !tbaa !2390
  call void @llvm.dbg.value(metadata i8* %40, metadata !2439, metadata !DIExpression()), !dbg !2482
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2484
  %42 = load i32, i32* %41, align 4, !dbg !2484, !tbaa !1523
  %43 = or i32 %42, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %43, metadata !2440, metadata !DIExpression()), !dbg !2482
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2486
  %45 = load i32, i32* %44, align 8, !dbg !2486, !tbaa !1472
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2487
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2488
  %48 = load i8*, i8** %47, align 8, !dbg !2488, !tbaa !1546
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2489
  %50 = load i8*, i8** %49, align 8, !dbg !2489, !tbaa !1549
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %51, metadata !2441, metadata !DIExpression()), !dbg !2482
  %52 = icmp ugt i64 %38, %51, !dbg !2491
  br i1 %52, label %63, label %53, !dbg !2493

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %54, metadata !2437, metadata !DIExpression()), !dbg !2482
  store i64 %54, i64* %37, align 8, !dbg !2496, !tbaa !2403
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2497
  br i1 %55, label %57, label %56, !dbg !2499

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !2500
  br label %57, !dbg !2500

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2338, metadata !DIExpression()) #20, !dbg !2501
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %58, metadata !2439, metadata !DIExpression()), !dbg !2482
  store i8* %58, i8** %39, align 8, !dbg !2504, !tbaa !2390
  %59 = load i32, i32* %44, align 8, !dbg !2505, !tbaa !1472
  %60 = load i8*, i8** %47, align 8, !dbg !2506, !tbaa !1546
  %61 = load i8*, i8** %49, align 8, !dbg !2507, !tbaa !1549
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2508
  br label %63, !dbg !2509

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2482
  call void @llvm.dbg.value(metadata i8* %64, metadata !2439, metadata !DIExpression()), !dbg !2482
  store i32 %6, i32* %5, align 4, !dbg !2510, !tbaa !1171
  ret i8* %64, !dbg !2511
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8* %1, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 %2, metadata !2518, metadata !DIExpression()), !dbg !2519
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2520
  ret i8* %4, !dbg !2521
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()) #20, !dbg !2526
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()) #20, !dbg !2526
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !2528
  ret i8* %2, !dbg !2529
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 0, metadata !2516, metadata !DIExpression()) #20, !dbg !2537
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()) #20, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()) #20, !dbg !2537
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !2539
  ret i8* %3, !dbg !2540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2541 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %1, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %2, metadata !2547, metadata !DIExpression()), !dbg !2549
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2550
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2548, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()) #20, !dbg !2558
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2557, metadata !DIExpression()) #20, !dbg !2560
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !2560, !alias.scope !2561
  %6 = icmp eq i32 %1, 10, !dbg !2564
  br i1 %6, label %7, label %8, !dbg !2566

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2567, !noalias !2561
  unreachable, !dbg !2567

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2568
  store i32 %1, i32* %9, align 8, !dbg !2569, !tbaa !1472, !alias.scope !2561
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2570
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2571
  ret i8* %10, !dbg !2572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2573 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %1, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %2, metadata !2579, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %3, metadata !2580, metadata !DIExpression()), !dbg !2582
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()) #20, !dbg !2585
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2557, metadata !DIExpression()) #20, !dbg !2587
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !2587, !alias.scope !2588
  %7 = icmp eq i32 %1, 10, !dbg !2591
  br i1 %7, label %8, label %9, !dbg !2592

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2593, !noalias !2588
  unreachable, !dbg !2593

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2594
  store i32 %1, i32* %10, align 8, !dbg !2595, !tbaa !1472, !alias.scope !2588
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2597
  ret i8* %11, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2599 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2548, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %0, metadata !2603, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()) #20, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()) #20, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %1, metadata !2547, metadata !DIExpression()) #20, !dbg !2610
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2611
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()) #20, !dbg !2612
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !2605, !alias.scope !2613
  %5 = icmp eq i32 %0, 10, !dbg !2616
  br i1 %5, label %6, label %7, !dbg !2617

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2618, !noalias !2613
  unreachable, !dbg !2618

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2619
  store i32 %0, i32* %8, align 8, !dbg !2620, !tbaa !1472, !alias.scope !2613
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2622
  ret i8* %9, !dbg !2623
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2624 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2557, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2581, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i64 %2, metadata !2630, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 0, metadata !2577, metadata !DIExpression()) #20, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()) #20, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()) #20, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %2, metadata !2580, metadata !DIExpression()) #20, !dbg !2636
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()) #20, !dbg !2638
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !2631, !alias.scope !2639
  %6 = icmp eq i32 %0, 10, !dbg !2642
  br i1 %6, label %7, label %8, !dbg !2643

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2644, !noalias !2639
  unreachable, !dbg !2644

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2645
  store i32 %0, i32* %9, align 8, !dbg !2646, !tbaa !1472, !alias.scope !2639
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !2647
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2648
  ret i8* %10, !dbg !2649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2650 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8 %2, metadata !2656, metadata !DIExpression()), !dbg !2658
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2659
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2659
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2661, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1490, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %2, metadata !1491, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %2, metadata !1493, metadata !DIExpression()), !dbg !2663
  %6 = lshr i8 %2, 5, !dbg !2665
  %7 = zext i8 %6 to i64, !dbg !2665
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2666
  call void @llvm.dbg.value(metadata i32* %8, metadata !1494, metadata !DIExpression()), !dbg !2663
  %9 = and i8 %2, 31, !dbg !2667
  %10 = zext i8 %9 to i32, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %10, metadata !1496, metadata !DIExpression()), !dbg !2663
  %11 = load i32, i32* %8, align 4, !dbg !2668, !tbaa !1171
  %12 = lshr i32 %11, %10, !dbg !2669
  %13 = and i32 %12, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %13, metadata !1497, metadata !DIExpression()), !dbg !2663
  %14 = xor i32 %13, 1, !dbg !2671
  %15 = shl i32 %14, %10, !dbg !2672
  %16 = xor i32 %15, %11, !dbg !2673
  store i32 %16, i32* %8, align 4, !dbg !2673, !tbaa !1171
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2675
  ret i8* %17, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2677 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2657, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8 %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #20, !dbg !2686
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()) #20, !dbg !2686
  call void @llvm.dbg.value(metadata i8 %1, metadata !2656, metadata !DIExpression()) #20, !dbg !2686
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2687
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2688, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1490, metadata !DIExpression()) #20, !dbg !2689
  call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()) #20, !dbg !2689
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()) #20, !dbg !2689
  call void @llvm.dbg.value(metadata i8 %1, metadata !1493, metadata !DIExpression()) #20, !dbg !2689
  %5 = lshr i8 %1, 5, !dbg !2691
  %6 = zext i8 %5 to i64, !dbg !2691
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2692
  call void @llvm.dbg.value(metadata i32* %7, metadata !1494, metadata !DIExpression()) #20, !dbg !2689
  %8 = and i8 %1, 31, !dbg !2693
  %9 = zext i8 %8 to i32, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %9, metadata !1496, metadata !DIExpression()) #20, !dbg !2689
  %10 = load i32, i32* %7, align 4, !dbg !2694, !tbaa !1171
  %11 = lshr i32 %10, %9, !dbg !2695
  %12 = and i32 %11, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %12, metadata !1497, metadata !DIExpression()) #20, !dbg !2689
  %13 = xor i32 %12, 1, !dbg !2697
  %14 = shl i32 %13, %9, !dbg !2698
  %15 = xor i32 %14, %10, !dbg !2699
  store i32 %15, i32* %7, align 4, !dbg !2699, !tbaa !1171
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2701
  ret i8* %16, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2703 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2657, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %0, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()) #20, !dbg !2710
  call void @llvm.dbg.value(metadata i8 58, metadata !2682, metadata !DIExpression()) #20, !dbg !2710
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #20, !dbg !2711
  call void @llvm.dbg.value(metadata i64 -1, metadata !2655, metadata !DIExpression()) #20, !dbg !2711
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()) #20, !dbg !2711
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !2712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2713, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1490, metadata !DIExpression()) #20, !dbg !2714
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()) #20, !dbg !2714
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()) #20, !dbg !2714
  call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()) #20, !dbg !2714
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2716
  call void @llvm.dbg.value(metadata i32* %4, metadata !1494, metadata !DIExpression()) #20, !dbg !2714
  call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()) #20, !dbg !2714
  %5 = load i32, i32* %4, align 4, !dbg !2717, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %5, metadata !1497, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !2714
  %6 = or i32 %5, 67108864, !dbg !2718
  store i32 %6, i32* %4, align 4, !dbg !2718, !tbaa !1171
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !2720
  ret i8* %7, !dbg !2721
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2722 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2657, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %0, metadata !2724, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i8* %0, metadata !2654, metadata !DIExpression()) #20, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %1, metadata !2655, metadata !DIExpression()) #20, !dbg !2729
  call void @llvm.dbg.value(metadata i8 58, metadata !2656, metadata !DIExpression()) #20, !dbg !2729
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2730
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2731, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1490, metadata !DIExpression()) #20, !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()) #20, !dbg !2732
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()) #20, !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()) #20, !dbg !2732
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2734
  call void @llvm.dbg.value(metadata i32* %5, metadata !1494, metadata !DIExpression()) #20, !dbg !2732
  call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()) #20, !dbg !2732
  %6 = load i32, i32* %5, align 4, !dbg !2735, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %6, metadata !1497, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !2732
  %7 = or i32 %6, 67108864, !dbg !2736
  store i32 %7, i32* %5, align 4, !dbg !2736, !tbaa !1171
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !2738
  ret i8* %8, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2740 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2557, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2746
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %1, metadata !2743, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2744, metadata !DIExpression()), !dbg !2748
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2749
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2745, metadata !DIExpression()), !dbg !2750
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()) #20, !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2752
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2746, !alias.scope !2753
  %8 = icmp eq i32 %1, 10, !dbg !2756
  br i1 %8, label %9, label %10, !dbg !2757

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2758, !noalias !2753
  unreachable, !dbg !2758

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2752
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2751
  store i32 %1, i32* %11, align 8, !dbg !2751, !tbaa.struct !2662
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2751
  %13 = bitcast i32* %12 to i8*, !dbg !2751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2751, !tbaa.struct !2662
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2751
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1490, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()), !dbg !2759
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2761
  call void @llvm.dbg.value(metadata i32* %14, metadata !1494, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()), !dbg !2759
  %15 = load i32, i32* %14, align 4, !dbg !2762, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %15, metadata !1497, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2759
  %16 = or i32 %15, 67108864, !dbg !2763
  store i32 %16, i32* %14, align 4, !dbg !2763, !tbaa !1171
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2765
  ret i8* %17, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2767 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2775, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %3, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()) #20, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()) #20, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()) #20, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %3, metadata !2783, metadata !DIExpression()) #20, !dbg !2788
  call void @llvm.dbg.value(metadata i64 -1, metadata !2784, metadata !DIExpression()) #20, !dbg !2788
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2789
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2790, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1530, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %1, metadata !1531, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata i8* %2, metadata !1532, metadata !DIExpression()) #20, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1530, metadata !DIExpression()) #20, !dbg !2791
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2793
  store i32 10, i32* %7, align 8, !dbg !2794, !tbaa !1472
  %8 = icmp ne i8* %1, null, !dbg !2795
  %9 = icmp ne i8* %2, null, !dbg !2796
  %10 = and i1 %8, %9, !dbg !2797
  br i1 %10, label %12, label %11, !dbg !2797

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2798
  unreachable, !dbg !2798

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2799
  store i8* %1, i8** %13, align 8, !dbg !2800, !tbaa !1546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2801
  store i8* %2, i8** %14, align 8, !dbg !2802, !tbaa !1549
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2804
  ret i8* %15, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2776 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2780, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %3, metadata !2783, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %4, metadata !2784, metadata !DIExpression()), !dbg !2806
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !2807
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2775, metadata !DIExpression()), !dbg !2808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2809, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1530, metadata !DIExpression()) #20, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !1531, metadata !DIExpression()) #20, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %2, metadata !1532, metadata !DIExpression()) #20, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1530, metadata !DIExpression()) #20, !dbg !2810
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2812
  store i32 10, i32* %8, align 8, !dbg !2813, !tbaa !1472
  %9 = icmp ne i8* %1, null, !dbg !2814
  %10 = icmp ne i8* %2, null, !dbg !2815
  %11 = and i1 %9, %10, !dbg !2816
  br i1 %11, label %13, label %12, !dbg !2816

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2817
  unreachable, !dbg !2817

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2818
  store i8* %1, i8** %14, align 8, !dbg !2819, !tbaa !1546
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2820
  store i8* %2, i8** %15, align 8, !dbg !2821, !tbaa !1549
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2822
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !2823
  ret i8* %16, !dbg !2824
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2825 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2775, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %0, metadata !2829, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8* %1, metadata !2830, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8* %2, metadata !2831, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()) #20, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %0, metadata !2772, metadata !DIExpression()) #20, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2773, metadata !DIExpression()) #20, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %2, metadata !2774, metadata !DIExpression()) #20, !dbg !2836
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()) #20, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()) #20, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #20, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !2783, metadata !DIExpression()) #20, !dbg !2837
  call void @llvm.dbg.value(metadata i64 -1, metadata !2784, metadata !DIExpression()) #20, !dbg !2837
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2838
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2839, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1530, metadata !DIExpression()) #20, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %0, metadata !1531, metadata !DIExpression()) #20, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %1, metadata !1532, metadata !DIExpression()) #20, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1530, metadata !DIExpression()) #20, !dbg !2840
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2842
  store i32 10, i32* %6, align 8, !dbg !2843, !tbaa !1472
  %7 = icmp ne i8* %0, null, !dbg !2844
  %8 = icmp ne i8* %1, null, !dbg !2845
  %9 = and i1 %7, %8, !dbg !2846
  br i1 %9, label %11, label %10, !dbg !2846

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2847
  unreachable, !dbg !2847

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2848
  store i8* %0, i8** %12, align 8, !dbg !2849, !tbaa !1546
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2850
  store i8* %1, i8** %13, align 8, !dbg !2851, !tbaa !1549
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !2852
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !2853
  ret i8* %14, !dbg !2854
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2855 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2775, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %0, metadata !2859, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i64 %3, metadata !2862, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()) #20, !dbg !2866
  call void @llvm.dbg.value(metadata i8* %0, metadata !2781, metadata !DIExpression()) #20, !dbg !2866
  call void @llvm.dbg.value(metadata i8* %1, metadata !2782, metadata !DIExpression()) #20, !dbg !2866
  call void @llvm.dbg.value(metadata i8* %2, metadata !2783, metadata !DIExpression()) #20, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %3, metadata !2784, metadata !DIExpression()) #20, !dbg !2866
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !2868, !tbaa.struct !2662
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1530, metadata !DIExpression()) #20, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %0, metadata !1531, metadata !DIExpression()) #20, !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !1532, metadata !DIExpression()) #20, !dbg !2869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1530, metadata !DIExpression()) #20, !dbg !2869
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2871
  store i32 10, i32* %7, align 8, !dbg !2872, !tbaa !1472
  %8 = icmp ne i8* %0, null, !dbg !2873
  %9 = icmp ne i8* %1, null, !dbg !2874
  %10 = and i1 %8, %9, !dbg !2875
  br i1 %10, label %12, label %11, !dbg !2875

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2876
  unreachable, !dbg !2876

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2877
  store i8* %0, i8** %13, align 8, !dbg !2878, !tbaa !1546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2879
  store i8* %1, i8** %14, align 8, !dbg !2880, !tbaa !1549
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !2882
  ret i8* %15, !dbg !2883
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %2, metadata !2890, metadata !DIExpression()), !dbg !2891
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2892
  ret i8* %4, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 0, metadata !2888, metadata !DIExpression()) #20, !dbg !2901
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()) #20, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()) #20, !dbg !2901
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2903
  ret i8* %3, !dbg !2904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %1, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 %0, metadata !2888, metadata !DIExpression()) #20, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !2889, metadata !DIExpression()) #20, !dbg !2912
  call void @llvm.dbg.value(metadata i64 -1, metadata !2890, metadata !DIExpression()) #20, !dbg !2912
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2914
  ret i8* %3, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2909, metadata !DIExpression()) #20, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %0, metadata !2910, metadata !DIExpression()) #20, !dbg !2920
  call void @llvm.dbg.value(metadata i32 0, metadata !2888, metadata !DIExpression()) #20, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()) #20, !dbg !2922
  call void @llvm.dbg.value(metadata i64 -1, metadata !2890, metadata !DIExpression()) #20, !dbg !2922
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !2924
  ret i8* %2, !dbg !2925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2926 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2934, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %1, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %2, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8* %3, metadata !2937, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8** %4, metadata !2938, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %5, metadata !2939, metadata !DIExpression()), !dbg !2940
  %7 = icmp eq i8* %1, null, !dbg !2941
  br i1 %7, label %10, label %8, !dbg !2943

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !2944
  br label %12, !dbg !2944

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.82, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !2945
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.83, i64 0, i64 0), i32 5) #20, !dbg !2946
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !2946
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2947
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.85, i64 0, i64 0), i32 5) #20, !dbg !2948
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.86, i64 0, i64 0)) #20, !dbg !2948
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2949
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
  ], !dbg !2950

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.87, i64 0, i64 0), i32 5) #20, !dbg !2951
  %21 = load i8*, i8** %4, align 8, !dbg !2951, !tbaa !1095
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !2951
  br label %147, !dbg !2953

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.88, i64 0, i64 0), i32 5) #20, !dbg !2954
  %25 = load i8*, i8** %4, align 8, !dbg !2954, !tbaa !1095
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2954
  %27 = load i8*, i8** %26, align 8, !dbg !2954, !tbaa !1095
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !2954
  br label %147, !dbg !2955

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.89, i64 0, i64 0), i32 5) #20, !dbg !2956
  %31 = load i8*, i8** %4, align 8, !dbg !2956, !tbaa !1095
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2956
  %33 = load i8*, i8** %32, align 8, !dbg !2956, !tbaa !1095
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2956
  %35 = load i8*, i8** %34, align 8, !dbg !2956, !tbaa !1095
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !2956
  br label %147, !dbg !2957

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.90, i64 0, i64 0), i32 5) #20, !dbg !2958
  %39 = load i8*, i8** %4, align 8, !dbg !2958, !tbaa !1095
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2958
  %41 = load i8*, i8** %40, align 8, !dbg !2958, !tbaa !1095
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2958
  %43 = load i8*, i8** %42, align 8, !dbg !2958, !tbaa !1095
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2958
  %45 = load i8*, i8** %44, align 8, !dbg !2958, !tbaa !1095
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !2958
  br label %147, !dbg !2959

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.91, i64 0, i64 0), i32 5) #20, !dbg !2960
  %49 = load i8*, i8** %4, align 8, !dbg !2960, !tbaa !1095
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2960
  %51 = load i8*, i8** %50, align 8, !dbg !2960, !tbaa !1095
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2960
  %53 = load i8*, i8** %52, align 8, !dbg !2960, !tbaa !1095
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2960
  %55 = load i8*, i8** %54, align 8, !dbg !2960, !tbaa !1095
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2960
  %57 = load i8*, i8** %56, align 8, !dbg !2960, !tbaa !1095
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !2960
  br label %147, !dbg !2961

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.92, i64 0, i64 0), i32 5) #20, !dbg !2962
  %61 = load i8*, i8** %4, align 8, !dbg !2962, !tbaa !1095
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2962
  %63 = load i8*, i8** %62, align 8, !dbg !2962, !tbaa !1095
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2962
  %65 = load i8*, i8** %64, align 8, !dbg !2962, !tbaa !1095
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2962
  %67 = load i8*, i8** %66, align 8, !dbg !2962, !tbaa !1095
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2962
  %69 = load i8*, i8** %68, align 8, !dbg !2962, !tbaa !1095
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2962
  %71 = load i8*, i8** %70, align 8, !dbg !2962, !tbaa !1095
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !2962
  br label %147, !dbg !2963

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.93, i64 0, i64 0), i32 5) #20, !dbg !2964
  %75 = load i8*, i8** %4, align 8, !dbg !2964, !tbaa !1095
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2964
  %77 = load i8*, i8** %76, align 8, !dbg !2964, !tbaa !1095
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2964
  %79 = load i8*, i8** %78, align 8, !dbg !2964, !tbaa !1095
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2964
  %81 = load i8*, i8** %80, align 8, !dbg !2964, !tbaa !1095
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2964
  %83 = load i8*, i8** %82, align 8, !dbg !2964, !tbaa !1095
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2964
  %85 = load i8*, i8** %84, align 8, !dbg !2964, !tbaa !1095
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2964
  %87 = load i8*, i8** %86, align 8, !dbg !2964, !tbaa !1095
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !2964
  br label %147, !dbg !2965

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.94, i64 0, i64 0), i32 5) #20, !dbg !2966
  %91 = load i8*, i8** %4, align 8, !dbg !2966, !tbaa !1095
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2966
  %93 = load i8*, i8** %92, align 8, !dbg !2966, !tbaa !1095
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2966
  %95 = load i8*, i8** %94, align 8, !dbg !2966, !tbaa !1095
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2966
  %97 = load i8*, i8** %96, align 8, !dbg !2966, !tbaa !1095
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2966
  %99 = load i8*, i8** %98, align 8, !dbg !2966, !tbaa !1095
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2966
  %101 = load i8*, i8** %100, align 8, !dbg !2966, !tbaa !1095
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2966
  %103 = load i8*, i8** %102, align 8, !dbg !2966, !tbaa !1095
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2966
  %105 = load i8*, i8** %104, align 8, !dbg !2966, !tbaa !1095
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !2966
  br label %147, !dbg !2967

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.95, i64 0, i64 0), i32 5) #20, !dbg !2968
  %109 = load i8*, i8** %4, align 8, !dbg !2968, !tbaa !1095
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2968
  %111 = load i8*, i8** %110, align 8, !dbg !2968, !tbaa !1095
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2968
  %113 = load i8*, i8** %112, align 8, !dbg !2968, !tbaa !1095
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2968
  %115 = load i8*, i8** %114, align 8, !dbg !2968, !tbaa !1095
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2968
  %117 = load i8*, i8** %116, align 8, !dbg !2968, !tbaa !1095
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2968
  %119 = load i8*, i8** %118, align 8, !dbg !2968, !tbaa !1095
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2968
  %121 = load i8*, i8** %120, align 8, !dbg !2968, !tbaa !1095
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2968
  %123 = load i8*, i8** %122, align 8, !dbg !2968, !tbaa !1095
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2968
  %125 = load i8*, i8** %124, align 8, !dbg !2968, !tbaa !1095
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !2968
  br label %147, !dbg !2969

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.96, i64 0, i64 0), i32 5) #20, !dbg !2970
  %129 = load i8*, i8** %4, align 8, !dbg !2970, !tbaa !1095
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2970
  %131 = load i8*, i8** %130, align 8, !dbg !2970, !tbaa !1095
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2970
  %133 = load i8*, i8** %132, align 8, !dbg !2970, !tbaa !1095
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2970
  %135 = load i8*, i8** %134, align 8, !dbg !2970, !tbaa !1095
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2970
  %137 = load i8*, i8** %136, align 8, !dbg !2970, !tbaa !1095
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2970
  %139 = load i8*, i8** %138, align 8, !dbg !2970, !tbaa !1095
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2970
  %141 = load i8*, i8** %140, align 8, !dbg !2970, !tbaa !1095
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2970
  %143 = load i8*, i8** %142, align 8, !dbg !2970, !tbaa !1095
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2970
  %145 = load i8*, i8** %144, align 8, !dbg !2970, !tbaa !1095
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !2970
  br label %147, !dbg !2971

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2973 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2977, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2978, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %2, metadata !2979, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8** %4, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 0, metadata !2982, metadata !DIExpression()), !dbg !2983
  br label %6, !dbg !2984

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2986
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2987
  %9 = load i8*, i8** %8, align 8, !dbg !2987, !tbaa !1095
  %10 = icmp eq i8* %9, null, !dbg !2989
  %11 = add i64 %7, 1, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %11, metadata !2982, metadata !DIExpression()), !dbg !2983
  br i1 %10, label %12, label %6, !dbg !2989, !llvm.loop !2991

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %7, metadata !2982, metadata !DIExpression()), !dbg !2983
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2993
  ret void, !dbg !2994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2995 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3006, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %1, metadata !3007, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %2, metadata !3008, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %3, metadata !3009, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3010, metadata !DIExpression()), !dbg !3014
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3015
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3015
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 0, metadata !3011, metadata !DIExpression()), !dbg !3014
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3017
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3017
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3017
  %11 = load i32, i32* %8, align 8, !dbg !3020
  %12 = icmp ult i32 %11, 41, !dbg !3020
  br i1 %12, label %13, label %18, !dbg !3020

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3020
  %15 = zext i32 %11 to i64, !dbg !3020
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3020
  %17 = add nuw nsw i32 %11, 8, !dbg !3020
  store i32 %17, i32* %8, align 8, !dbg !3020
  br label %21, !dbg !3020

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3020
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3020
  store i8* %20, i8** %9, align 8, !dbg !3020
  br label %21, !dbg !3020

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3020
  %25 = load i8*, i8** %24, align 8, !dbg !3020
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3021
  store i8* %25, i8** %26, align 16, !dbg !3022, !tbaa !1095
  %27 = icmp eq i8* %25, null, !dbg !3023
  br i1 %27, label %30, label %28, !dbg !3024

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3011, metadata !DIExpression()), !dbg !3014
  %29 = icmp ult i32 %22, 41, !dbg !3020
  br i1 %29, label %35, label %32, !dbg !3020

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3025
  call void @llvm.dbg.value(metadata i64 %31, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %31, metadata !3011, metadata !DIExpression()), !dbg !3014
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3027
  ret void, !dbg !3027

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3020
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3020
  store i8* %34, i8** %9, align 8, !dbg !3020
  br label %40, !dbg !3020

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3020
  %37 = zext i32 %22 to i64, !dbg !3020
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3020
  %39 = add nuw nsw i32 %22, 8, !dbg !3020
  store i32 %39, i32* %8, align 8, !dbg !3020
  br label %40, !dbg !3020

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3020
  %44 = load i8*, i8** %43, align 8, !dbg !3020
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3021
  store i8* %44, i8** %45, align 8, !dbg !3022, !tbaa !1095
  %46 = icmp eq i8* %44, null, !dbg !3023
  br i1 %46, label %30, label %47, !dbg !3024

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3011, metadata !DIExpression()), !dbg !3014
  %48 = icmp ult i32 %41, 41, !dbg !3020
  br i1 %48, label %52, label %49, !dbg !3020

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3020
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3020
  store i8* %51, i8** %9, align 8, !dbg !3020
  br label %57, !dbg !3020

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3020
  %54 = zext i32 %41 to i64, !dbg !3020
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3020
  %56 = add nuw nsw i32 %41, 8, !dbg !3020
  store i32 %56, i32* %8, align 8, !dbg !3020
  br label %57, !dbg !3020

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3020
  %61 = load i8*, i8** %60, align 8, !dbg !3020
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3021
  store i8* %61, i8** %62, align 16, !dbg !3022, !tbaa !1095
  %63 = icmp eq i8* %61, null, !dbg !3023
  br i1 %63, label %30, label %64, !dbg !3024

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3011, metadata !DIExpression()), !dbg !3014
  %65 = icmp ult i32 %58, 41, !dbg !3020
  br i1 %65, label %69, label %66, !dbg !3020

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3020
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3020
  store i8* %68, i8** %9, align 8, !dbg !3020
  br label %74, !dbg !3020

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3020
  %71 = zext i32 %58 to i64, !dbg !3020
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3020
  %73 = add nuw nsw i32 %58, 8, !dbg !3020
  store i32 %73, i32* %8, align 8, !dbg !3020
  br label %74, !dbg !3020

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3020
  %78 = load i8*, i8** %77, align 8, !dbg !3020
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3021
  store i8* %78, i8** %79, align 8, !dbg !3022, !tbaa !1095
  %80 = icmp eq i8* %78, null, !dbg !3023
  br i1 %80, label %30, label %81, !dbg !3024

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3011, metadata !DIExpression()), !dbg !3014
  %82 = icmp ult i32 %75, 41, !dbg !3020
  br i1 %82, label %86, label %83, !dbg !3020

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3020
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3020
  store i8* %85, i8** %9, align 8, !dbg !3020
  br label %91, !dbg !3020

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3020
  %88 = zext i32 %75 to i64, !dbg !3020
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3020
  %90 = add nuw nsw i32 %75, 8, !dbg !3020
  store i32 %90, i32* %8, align 8, !dbg !3020
  br label %91, !dbg !3020

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3020
  %95 = load i8*, i8** %94, align 8, !dbg !3020
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3021
  store i8* %95, i8** %96, align 16, !dbg !3022, !tbaa !1095
  %97 = icmp eq i8* %95, null, !dbg !3023
  br i1 %97, label %30, label %98, !dbg !3024

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3011, metadata !DIExpression()), !dbg !3014
  %99 = icmp ult i32 %92, 41, !dbg !3020
  br i1 %99, label %103, label %100, !dbg !3020

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3020
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3020
  store i8* %102, i8** %9, align 8, !dbg !3020
  br label %108, !dbg !3020

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3020
  %105 = zext i32 %92 to i64, !dbg !3020
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3020
  %107 = add nuw nsw i32 %92, 8, !dbg !3020
  store i32 %107, i32* %8, align 8, !dbg !3020
  br label %108, !dbg !3020

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3020
  %111 = load i8*, i8** %110, align 8, !dbg !3020
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3021
  store i8* %111, i8** %112, align 8, !dbg !3022, !tbaa !1095
  %113 = icmp eq i8* %111, null, !dbg !3023
  br i1 %113, label %30, label %114, !dbg !3024

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3011, metadata !DIExpression()), !dbg !3014
  %115 = load i8*, i8** %9, align 8, !dbg !3020
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3020
  store i8* %116, i8** %9, align 8, !dbg !3020
  %117 = bitcast i8* %115 to i8**, !dbg !3020
  %118 = load i8*, i8** %117, align 8, !dbg !3020
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3021
  store i8* %118, i8** %119, align 16, !dbg !3022, !tbaa !1095
  %120 = icmp eq i8* %118, null, !dbg !3023
  br i1 %120, label %30, label %121, !dbg !3024

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3011, metadata !DIExpression()), !dbg !3014
  %122 = load i8*, i8** %9, align 8, !dbg !3020
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3020
  store i8* %123, i8** %9, align 8, !dbg !3020
  %124 = bitcast i8* %122 to i8**, !dbg !3020
  %125 = load i8*, i8** %124, align 8, !dbg !3020
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3021
  store i8* %125, i8** %126, align 8, !dbg !3022, !tbaa !1095
  %127 = icmp eq i8* %125, null, !dbg !3023
  br i1 %127, label %30, label %128, !dbg !3024

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3011, metadata !DIExpression()), !dbg !3014
  %129 = load i8*, i8** %9, align 8, !dbg !3020
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3020
  store i8* %130, i8** %9, align 8, !dbg !3020
  %131 = bitcast i8* %129 to i8**, !dbg !3020
  %132 = load i8*, i8** %131, align 8, !dbg !3020
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3021
  store i8* %132, i8** %133, align 16, !dbg !3022, !tbaa !1095
  %134 = icmp eq i8* %132, null, !dbg !3023
  br i1 %134, label %30, label %135, !dbg !3024

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3011, metadata !DIExpression()), !dbg !3014
  %136 = load i8*, i8** %9, align 8, !dbg !3020
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3020
  store i8* %137, i8** %9, align 8, !dbg !3020
  %138 = bitcast i8* %136 to i8**, !dbg !3020
  %139 = load i8*, i8** %138, align 8, !dbg !3020
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3021
  store i8* %139, i8** %140, align 8, !dbg !3022, !tbaa !1095
  %141 = icmp eq i8* %139, null, !dbg !3023
  %142 = select i1 %141, i64 9, i64 10, !dbg !3024
  br label %30, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3028 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3032, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %1, metadata !3033, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !3034, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %3, metadata !3035, metadata !DIExpression()), !dbg !3042
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3043
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3036, metadata !DIExpression()), !dbg !3044
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3045
  call void @llvm.va_start(i8* nonnull %6), !dbg !3045
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3046
  call void @llvm.va_end(i8* nonnull %6), !dbg !3047
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3048
  ret void, !dbg !3048
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3049 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3050, !tbaa !1095
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.84, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3050
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.99, i64 0, i64 0), i32 5) #20, !dbg !3051
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.100, i64 0, i64 0)) #20, !dbg !3051
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.101, i64 0, i64 0), i32 5) #20, !dbg !3052
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.102, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.103, i64 0, i64 0)) #20, !dbg !3052
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.104, i64 0, i64 0), i32 5) #20, !dbg !3053
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.105, i64 0, i64 0)) #20, !dbg !3053
  ret void, !dbg !3054
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3055 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  %3 = udiv i64 9223372036854775807, %1, !dbg !3062
  %4 = icmp ult i64 %3, %0, !dbg !3062
  br i1 %4, label %5, label %6, !dbg !3064

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3065
  unreachable, !dbg !3065

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %7, metadata !3067, metadata !DIExpression()) #20, !dbg !3073
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %8, metadata !3072, metadata !DIExpression()) #20, !dbg !3073
  %9 = icmp eq i8* %8, null, !dbg !3076
  %10 = icmp ne i64 %7, 0, !dbg !3078
  %11 = and i1 %10, %9, !dbg !3079
  br i1 %11, label %12, label %13, !dbg !3079

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3080
  unreachable, !dbg !3080

13:                                               ; preds = %6
  ret i8* %8, !dbg !3081
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3068 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3067, metadata !DIExpression()), !dbg !3082
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3072, metadata !DIExpression()), !dbg !3082
  %3 = icmp eq i8* %2, null, !dbg !3084
  %4 = icmp ne i64 %0, 0, !dbg !3085
  %5 = and i1 %4, %3, !dbg !3086
  br i1 %5, label %6, label %7, !dbg !3086

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3087
  unreachable, !dbg !3087

7:                                                ; preds = %1
  ret i8* %2, !dbg !3088
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3089 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %2, metadata !3095, metadata !DIExpression()), !dbg !3096
  %4 = udiv i64 9223372036854775807, %2, !dbg !3097
  %5 = icmp ult i64 %4, %1, !dbg !3097
  br i1 %5, label %6, label %7, !dbg !3099

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3100
  unreachable, !dbg !3100

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #20, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %8, metadata !3107, metadata !DIExpression()) #20, !dbg !3108
  %9 = icmp eq i64 %8, 0, !dbg !3110
  %10 = icmp ne i8* %0, null, !dbg !3112
  %11 = and i1 %10, %9, !dbg !3113
  br i1 %11, label %12, label %13, !dbg !3113

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3114
  br label %19, !dbg !3116

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %14, metadata !3102, metadata !DIExpression()) #20, !dbg !3108
  %15 = icmp eq i8* %14, null, !dbg !3118
  %16 = icmp ne i64 %8, 0, !dbg !3120
  %17 = and i1 %16, %15, !dbg !3121
  br i1 %17, label %18, label %19, !dbg !3121

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3122
  unreachable, !dbg !3122

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3108
  ret i8* %20, !dbg !3123
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3124
  %3 = icmp eq i64 %1, 0, !dbg !3125
  %4 = icmp ne i8* %0, null, !dbg !3126
  %5 = and i1 %4, %3, !dbg !3127
  br i1 %5, label %6, label %7, !dbg !3127

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3128
  br label %13, !dbg !3129

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3130
  call void @llvm.dbg.value(metadata i8* %8, metadata !3102, metadata !DIExpression()), !dbg !3124
  %9 = icmp eq i8* %8, null, !dbg !3131
  %10 = icmp ne i64 %1, 0, !dbg !3132
  %11 = and i1 %10, %9, !dbg !3133
  br i1 %11, label %12, label %13, !dbg !3133

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3134
  unreachable, !dbg !3134

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3124
  ret i8* %14, !dbg !3135
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !445 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !450, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64* %1, metadata !451, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %2, metadata !452, metadata !DIExpression()), !dbg !3136
  %4 = load i64, i64* %1, align 8, !dbg !3137, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %4, metadata !453, metadata !DIExpression()), !dbg !3136
  %5 = icmp eq i8* %0, null, !dbg !3138
  br i1 %5, label %6, label %20, !dbg !3140

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3141
  br i1 %7, label %8, label %13, !dbg !3144

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %9, metadata !453, metadata !DIExpression()), !dbg !3136
  %10 = icmp ugt i64 %2, 128, !dbg !3147
  %11 = zext i1 %10 to i64, !dbg !3147
  %12 = add nuw nsw i64 %9, %11, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %12, metadata !453, metadata !DIExpression()), !dbg !3136
  br label %13, !dbg !3149

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3136
  call void @llvm.dbg.value(metadata i64 %14, metadata !453, metadata !DIExpression()), !dbg !3136
  %15 = udiv i64 9223372036854775807, %2, !dbg !3150
  %16 = icmp ult i64 %15, %14, !dbg !3150
  br i1 %16, label %19, label %17, !dbg !3152

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !453, metadata !DIExpression()), !dbg !3136
  store i64 %14, i64* %1, align 8, !dbg !3153, !tbaa !2375
  %18 = mul i64 %14, %2, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #20, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %28, metadata !3107, metadata !DIExpression()) #20, !dbg !3155
  br label %31, !dbg !3157

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3158
  unreachable, !dbg !3158

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3159
  %22 = icmp ugt i64 %21, %4, !dbg !3162
  br i1 %22, label %24, label %23, !dbg !3163

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3164
  unreachable, !dbg !3164

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3165
  %26 = add nuw i64 %4, 1, !dbg !3166
  %27 = add i64 %26, %25, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %27, metadata !453, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %27, metadata !453, metadata !DIExpression()), !dbg !3136
  store i64 %27, i64* %1, align 8, !dbg !3153, !tbaa !2375
  %28 = mul i64 %27, %2, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #20, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %28, metadata !3107, metadata !DIExpression()) #20, !dbg !3155
  %29 = icmp eq i64 %28, 0, !dbg !3168
  br i1 %29, label %30, label %31, !dbg !3157

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3169
  br label %38, !dbg !3170

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3171
  call void @llvm.dbg.value(metadata i8* %33, metadata !3102, metadata !DIExpression()) #20, !dbg !3155
  %34 = icmp eq i8* %33, null, !dbg !3172
  %35 = icmp ne i64 %32, 0, !dbg !3173
  %36 = and i1 %35, %34, !dbg !3174
  br i1 %36, label %37, label %38, !dbg !3174

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3175
  unreachable, !dbg !3175

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3155
  ret i8* %39, !dbg !3176
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3177 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3179, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %0, metadata !3067, metadata !DIExpression()) #20, !dbg !3181
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %2, metadata !3072, metadata !DIExpression()) #20, !dbg !3181
  %3 = icmp eq i8* %2, null, !dbg !3184
  %4 = icmp ne i64 %0, 0, !dbg !3185
  %5 = and i1 %4, %3, !dbg !3186
  br i1 %5, label %6, label %7, !dbg !3186

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3187
  unreachable, !dbg !3187

7:                                                ; preds = %1
  ret i8* %2, !dbg !3188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3189 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3193, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64* %1, metadata !3194, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8* %0, metadata !450, metadata !DIExpression()) #20, !dbg !3196
  call void @llvm.dbg.value(metadata i64* %1, metadata !451, metadata !DIExpression()) #20, !dbg !3196
  call void @llvm.dbg.value(metadata i64 1, metadata !452, metadata !DIExpression()) #20, !dbg !3196
  %3 = load i64, i64* %1, align 8, !dbg !3198, !tbaa !2375
  call void @llvm.dbg.value(metadata i64 %3, metadata !453, metadata !DIExpression()) #20, !dbg !3196
  %4 = icmp eq i8* %0, null, !dbg !3199
  br i1 %4, label %5, label %12, !dbg !3200

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3201
  br i1 %6, label %9, label %7, !dbg !3202

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !453, metadata !DIExpression()) #20, !dbg !3196
  %8 = icmp slt i64 %3, 0, !dbg !3203
  br i1 %8, label %11, label %9, !dbg !3204

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !453, metadata !DIExpression()) #20, !dbg !3196
  store i64 %10, i64* %1, align 8, !dbg !3205, !tbaa !2375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #20, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %18, metadata !3107, metadata !DIExpression()) #20, !dbg !3206
  br label %21, !dbg !3208

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3209
  unreachable, !dbg !3209

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3210
  br i1 %13, label %15, label %14, !dbg !3211

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3212
  unreachable, !dbg !3212

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3213
  %17 = add nuw nsw i64 %3, 1, !dbg !3214
  %18 = add nuw nsw i64 %17, %16, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %18, metadata !453, metadata !DIExpression()) #20, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %18, metadata !453, metadata !DIExpression()) #20, !dbg !3196
  store i64 %18, i64* %1, align 8, !dbg !3205, !tbaa !2375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3102, metadata !DIExpression()) #20, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %18, metadata !3107, metadata !DIExpression()) #20, !dbg !3206
  %19 = icmp eq i64 %18, 0, !dbg !3216
  br i1 %19, label %20, label %21, !dbg !3208

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3217
  br label %28, !dbg !3218

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %23, metadata !3102, metadata !DIExpression()) #20, !dbg !3206
  %24 = icmp eq i8* %23, null, !dbg !3220
  %25 = icmp ne i64 %22, 0, !dbg !3221
  %26 = and i1 %25, %24, !dbg !3222
  br i1 %26, label %27, label %28, !dbg !3222

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3223
  unreachable, !dbg !3223

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3206
  ret i8* %29, !dbg !3224
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3225 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %0, metadata !3229, metadata !DIExpression()) #20, !dbg !3234
  call void @llvm.dbg.value(metadata i64 1, metadata !3232, metadata !DIExpression()) #20, !dbg !3234
  %2 = icmp slt i64 %0, 0, !dbg !3236
  br i1 %2, label %6, label %3, !dbg !3238

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %4, metadata !3233, metadata !DIExpression()) #20, !dbg !3234
  %5 = icmp eq i8* %4, null, !dbg !3240
  br i1 %5, label %6, label %7, !dbg !3241

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3242
  unreachable, !dbg !3242

7:                                                ; preds = %3
  ret i8* %4, !dbg !3243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3230 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3229, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3232, metadata !DIExpression()), !dbg !3244
  %3 = udiv i64 9223372036854775807, %1, !dbg !3245
  %4 = icmp ult i64 %3, %0, !dbg !3245
  br i1 %4, label %8, label %5, !dbg !3246

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %6, metadata !3233, metadata !DIExpression()), !dbg !3244
  %7 = icmp eq i8* %6, null, !dbg !3248
  br i1 %7, label %8, label %9, !dbg !3249

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3250
  unreachable, !dbg !3250

9:                                                ; preds = %5
  ret i8* %6, !dbg !3251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3252 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()) #20, !dbg !3259
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %3, metadata !3072, metadata !DIExpression()) #20, !dbg !3259
  %4 = icmp eq i8* %3, null, !dbg !3262
  %5 = icmp ne i64 %1, 0, !dbg !3263
  %6 = and i1 %5, %4, !dbg !3264
  br i1 %6, label %7, label %8, !dbg !3264

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3265
  unreachable, !dbg !3265

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3266, metadata !DIExpression()) #20, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()) #20, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %1, metadata !3274, metadata !DIExpression()) #20, !dbg !3275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3277
  ret i8* %3, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3279 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3282
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3283
  %3 = add i64 %2, 1, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #20, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %3, metadata !3257, metadata !DIExpression()) #20, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %3, metadata !3067, metadata !DIExpression()) #20, !dbg !3287
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %4, metadata !3072, metadata !DIExpression()) #20, !dbg !3287
  %5 = icmp eq i8* %4, null, !dbg !3290
  %6 = icmp ne i64 %3, 0, !dbg !3291
  %7 = and i1 %6, %5, !dbg !3292
  br i1 %7, label %8, label %9, !dbg !3292

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3293
  unreachable, !dbg !3293

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3266, metadata !DIExpression()) #20, !dbg !3294
  call void @llvm.dbg.value(metadata i8* %0, metadata !3273, metadata !DIExpression()) #20, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %3, metadata !3274, metadata !DIExpression()) #20, !dbg !3294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3296
  ret i8* %4, !dbg !3297
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3298 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3299, !tbaa !1171
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.116, i64 0, i64 0), i32 5) #20, !dbg !3300
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %2) #20, !dbg !3301
  tail call void @abort() #23, !dbg !3302
  unreachable, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3308
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #20, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %3, metadata !3307, metadata !DIExpression()), !dbg !3308
  %4 = icmp eq i8* %3, null, !dbg !3310
  br i1 %4, label %5, label %6, !dbg !3312

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3313
  unreachable, !dbg !3313

6:                                                ; preds = %2
  ret i8* %3, !dbg !3314
}

; Function Attrs: nofree nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #15 !dbg !3315 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3323
  %3 = icmp eq i64 %0, 0, !dbg !3324
  %4 = icmp eq i64 %1, 0, !dbg !3325
  %5 = or i1 %3, %4, !dbg !3326
  br i1 %5, label %11, label %6, !dbg !3326

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3320, metadata !DIExpression()), !dbg !3327
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3328
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3328
  br i1 %8, label %9, label %11, !dbg !3330

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3331
  store i32 12, i32* %10, align 4, !dbg !3333, !tbaa !1171
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %12, metadata !3318, metadata !DIExpression()), !dbg !3323
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %14, metadata !3319, metadata !DIExpression()), !dbg !3323
  br label %15, !dbg !3335

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3323
  ret i8* %16, !dbg !3336
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3337 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3345, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %1, metadata !3346, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !3347, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3348, metadata !DIExpression()), !dbg !3354
  %6 = bitcast i32* %5 to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3355
  %7 = icmp eq i32* %0, null, !dbg !3356
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3358
  call void @llvm.dbg.value(metadata i32* %8, metadata !3345, metadata !DIExpression()), !dbg !3354
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !3359
  call void @llvm.dbg.value(metadata i64 %9, metadata !3349, metadata !DIExpression()), !dbg !3354
  %10 = icmp ugt i64 %9, -3, !dbg !3360
  %11 = icmp ne i64 %2, 0, !dbg !3361
  %12 = and i1 %11, %10, !dbg !3362
  br i1 %12, label %13, label %18, !dbg !3362

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !3363
  br i1 %14, label %18, label %15, !dbg !3364

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3365, !tbaa !1228
  call void @llvm.dbg.value(metadata i8 %16, metadata !3351, metadata !DIExpression()), !dbg !3366
  %17 = zext i8 %16 to i32, !dbg !3367
  store i32 %17, i32* %8, align 4, !dbg !3368, !tbaa !1171
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !3369
  ret i64 %19, !dbg !3369
}

; Function Attrs: nounwind
declare !dbg !474 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3370 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3376, metadata !DIExpression()), !dbg !3381
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !3382
  call void @llvm.dbg.value(metadata i1 undef, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3388
  %4 = load i32, i32* %3, align 8, !dbg !3388, !tbaa !3389
  %5 = and i32 %4, 32, !dbg !3388
  %6 = icmp eq i32 %5, 0, !dbg !3390
  call void @llvm.dbg.value(metadata i1 %6, metadata !3379, metadata !DIExpression()), !dbg !3381
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !3391
  %8 = icmp ne i32 %7, 0, !dbg !3392
  call void @llvm.dbg.value(metadata i1 %8, metadata !3380, metadata !DIExpression()), !dbg !3381
  br i1 %6, label %9, label %19, !dbg !3393

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3395
  call void @llvm.dbg.value(metadata i1 %10, metadata !3377, metadata !DIExpression()), !dbg !3381
  %11 = xor i1 %8, true, !dbg !3396
  %12 = or i1 %10, %11, !dbg !3396
  %13 = sext i1 %8 to i32, !dbg !3396
  br i1 %12, label %22, label %14, !dbg !3396

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3397
  %16 = load i32, i32* %15, align 4, !dbg !3397, !tbaa !1171
  %17 = icmp ne i32 %16, 9, !dbg !3398
  %18 = sext i1 %17 to i32, !dbg !3399
  br label %22, !dbg !3399

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3400

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3402
  store i32 0, i32* %21, align 4, !dbg !3404, !tbaa !1171
  br label %22, !dbg !3402

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3381
  ret i32 %23, !dbg !3405
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3406 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3408, metadata !DIExpression()), !dbg !3413
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3414
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !3414
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3409, metadata !DIExpression()), !dbg !3415
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !3416
  %5 = icmp eq i32 %4, 0, !dbg !3416
  br i1 %5, label %6, label %13, !dbg !3418

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3419
  %8 = load i16, i16* %7, align 16, !dbg !3419
  %9 = icmp eq i16 %8, 67, !dbg !3419
  br i1 %9, label %13, label %10, !dbg !3420

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3421
  %12 = icmp ne i32 %11, 0, !dbg !3422
  br label %13, !dbg !3420

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3413
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !3423
  ret i1 %14, !dbg !3423
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3424 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %1, metadata !3426, metadata !DIExpression()), !dbg !3428
  %2 = icmp eq i8* %1, null, !dbg !3429
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3431
  call void @llvm.dbg.value(metadata i8* %3, metadata !3426, metadata !DIExpression()), !dbg !3428
  %4 = load i8, i8* %3, align 1, !dbg !3432, !tbaa !1228
  %5 = icmp eq i8 %4, 0, !dbg !3436
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %6, metadata !3426, metadata !DIExpression()), !dbg !3428
  ret i8* %6, !dbg !3438
}

; Function Attrs: nounwind
declare !dbg !926 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3443, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i8* %1, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %2, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()) #20, !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()) #20, !dbg !3456
  call void @llvm.dbg.value(metadata i64 %2, metadata !3451, metadata !DIExpression()) #20, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3458, metadata !DIExpression()) #20, !dbg !3464
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %4, metadata !3463, metadata !DIExpression()) #20, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %4, metadata !3452, metadata !DIExpression()) #20, !dbg !3456
  %5 = icmp eq i8* %4, null, !dbg !3467
  br i1 %5, label %6, label %9, !dbg !3468

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3469
  br i1 %7, label %19, label %8, !dbg !3472

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3473, !tbaa !1228
  br label %19, !dbg !3474

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %10, metadata !3453, metadata !DIExpression()) #20, !dbg !3476
  %11 = icmp ult i64 %10, %2, !dbg !3477
  br i1 %11, label %12, label %14, !dbg !3479

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()) #20, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %4, metadata !3485, metadata !DIExpression()) #20, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %13, metadata !3486, metadata !DIExpression()) #20, !dbg !3487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !3489
  br label %19, !dbg !3490

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3491
  br i1 %15, label %19, label %16, !dbg !3494

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3495
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()) #20, !dbg !3497
  call void @llvm.dbg.value(metadata i8* %4, metadata !3485, metadata !DIExpression()) #20, !dbg !3497
  call void @llvm.dbg.value(metadata i64 %17, metadata !3486, metadata !DIExpression()) #20, !dbg !3497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !3499
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3500
  store i8 0, i8* %18, align 1, !dbg !3501, !tbaa !1228
  br label %19, !dbg !3502

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3503
  ret i32 %20, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i32 %0, metadata !3458, metadata !DIExpression()) #20, !dbg !3509
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %2, metadata !3463, metadata !DIExpression()) #20, !dbg !3509
  ret i8* %2, !dbg !3512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3513 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3523
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3524
  call void @llvm.dbg.value(metadata i32 %2, metadata !3521, metadata !DIExpression()), !dbg !3523
  %3 = icmp slt i32 %2, 0, !dbg !3525
  br i1 %3, label %4, label %6, !dbg !3527

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3528
  br label %24, !dbg !3529

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3530
  %8 = icmp eq i32 %7, 0, !dbg !3530
  br i1 %8, label %13, label %9, !dbg !3532

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3533
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !3534
  %12 = icmp eq i64 %11, -1, !dbg !3535
  br i1 %12, label %16, label %13, !dbg !3536

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !3537
  %15 = icmp eq i32 %14, 0, !dbg !3537
  br i1 %15, label %16, label %18, !dbg !3538

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3520, metadata !DIExpression()), !dbg !3523
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %21, metadata !3522, metadata !DIExpression()), !dbg !3523
  br label %24, !dbg !3540

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3541
  %20 = load i32, i32* %19, align 4, !dbg !3541, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 %20, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i32 %20, metadata !3520, metadata !DIExpression()), !dbg !3523
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %21, metadata !3522, metadata !DIExpression()), !dbg !3523
  %22 = icmp eq i32 %20, 0, !dbg !3542
  br i1 %22, label %24, label %23, !dbg !3540

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3544, !tbaa !1171
  call void @llvm.dbg.value(metadata i32 -1, metadata !3522, metadata !DIExpression()), !dbg !3523
  br label %24, !dbg !3546

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3523
  ret i32 %25, !dbg !3547
}

; Function Attrs: nofree nounwind
declare !dbg !935 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !970 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !971 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3548 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3554, metadata !DIExpression()), !dbg !3555
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3556
  br i1 %2, label %6, label %3, !dbg !3558

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !3559
  %5 = icmp eq i32 %4, 0, !dbg !3559
  br i1 %5, label %6, label %8, !dbg !3560

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3561
  br label %17, !dbg !3562

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3563, metadata !DIExpression()) #20, !dbg !3568
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3570
  %10 = load i32, i32* %9, align 8, !dbg !3570, !tbaa !3389
  %11 = and i32 %10, 256, !dbg !3572
  %12 = icmp eq i32 %11, 0, !dbg !3572
  br i1 %12, label %15, label %13, !dbg !3573

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !3574
  br label %15, !dbg !3574

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3575
  br label %17, !dbg !3576

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3555
  ret i32 %18, !dbg !3577
}

; Function Attrs: nofree nounwind
declare !dbg !979 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3578 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3585, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %1, metadata !3586, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %2, metadata !3587, metadata !DIExpression()), !dbg !3591
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3592
  %5 = load i8*, i8** %4, align 8, !dbg !3592, !tbaa !3593
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3594
  %7 = load i8*, i8** %6, align 8, !dbg !3594, !tbaa !3595
  %8 = icmp eq i8* %5, %7, !dbg !3596
  br i1 %8, label %9, label %28, !dbg !3597

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3598
  %11 = load i8*, i8** %10, align 8, !dbg !3598, !tbaa !1271
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3599
  %13 = load i8*, i8** %12, align 8, !dbg !3599, !tbaa !3600
  %14 = icmp eq i8* %11, %13, !dbg !3601
  br i1 %14, label %15, label %28, !dbg !3602

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3603
  %17 = load i8*, i8** %16, align 8, !dbg !3603, !tbaa !3604
  %18 = icmp eq i8* %17, null, !dbg !3605
  br i1 %18, label %19, label %28, !dbg !3606

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !3607
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %21, metadata !3588, metadata !DIExpression()), !dbg !3609
  %22 = icmp eq i64 %21, -1, !dbg !3610
  br i1 %22, label %30, label %23, !dbg !3612

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3613
  %25 = load i32, i32* %24, align 8, !dbg !3614, !tbaa !3389
  %26 = and i32 %25, -17, !dbg !3614
  store i32 %26, i32* %24, align 8, !dbg !3614, !tbaa !3389
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3615
  store i64 %21, i64* %27, align 8, !dbg !3616, !tbaa !3617
  br label %30, !dbg !3618

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3619
  br label %30, !dbg !3620

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3591
  ret i32 %31, !dbg !3621
}

; Function Attrs: nofree nounwind
declare !dbg !1055 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !140, !145, !382, !393, !396, !191, !197, !238, !399, !376, !441, !462, !465, !468, !471, !490, !529, !536, !929, !932, !976, !1017}
!llvm.ident = !{!1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058, !1058}
!llvm.module.flags = !{!1059, !1060, !1061, !1062, !1063}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 31, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !134, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basename.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !10, !66, !112, !116, !120, !124, !126, !130, !133}
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
!120 = !DISubprogram(name: "quote", scope: !121, file: !121, line: 44, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!12, !12}
!124 = !DISubprogram(name: "base_name", scope: !125, file: !125, line: 39, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!125 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubprogram(name: "strip_trailing_slashes", scope: !125, file: !125, line: 48, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !10}
!129 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !66}
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !{!0}
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1536, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 6)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "Version", scope: !140, file: !141, line: 2, type: !12, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !142, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!142 = !{!138}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "file_name", scope: !145, file: !146, line: 46, type: !12, isLocal: true, isDefinition: true)
!145 = distinct !DICompileUnit(language: DW_LANG_C99, file: !146, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !186, splitDebugInlining: false, nameTableKind: None)
!146 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!147 = !{!148, !6, !184, !116}
!148 = !DISubprogram(name: "close_stream", scope: !149, file: !149, line: 2, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!149 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !DISubroutineType(types: !151)
!151 = !{!14, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !153, file: !21, line: 51, baseType: !14, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !153, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !153, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !153, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !153, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !153, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !153, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !153, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !153, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !153, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !153, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !153, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !153, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !153, file: !21, line: 70, baseType: !152, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !153, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !153, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !153, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !153, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !153, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !153, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !153, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !153, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !153, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !153, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !153, file: !21, line: 93, baseType: !152, size: 64, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !153, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !153, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !153, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !153, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!184 = !DISubprogram(name: "quotearg_colon", scope: !185, file: !185, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!185 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = !{!143, !187}
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !145, file: !146, line: 56, type: !129, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "exit_failure", scope: !191, file: !192, line: 24, type: !194, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !193, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = !{!189}
!194 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "program_name", scope: !197, file: !198, line: 33, type: !12, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !199, globals: !235, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!66, !200, !10}
!200 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!201 = !DISubroutineType(types: !202)
!202 = !{!14, !12, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !204, file: !21, line: 51, baseType: !14, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !204, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !204, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !204, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !204, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !204, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !204, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !204, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !204, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !204, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !204, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !204, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !204, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !204, file: !21, line: 70, baseType: !203, size: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !204, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !204, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !204, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !204, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !204, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !204, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !204, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !204, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !204, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !204, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !204, file: !21, line: 93, baseType: !203, size: 64, offset: 1344)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !204, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !204, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !204, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !204, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!235 = !{!195}
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !238, file: !239, line: 85, type: !370, isLocal: false, isDefinition: true)
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !240, retainedTypes: !275, globals: !343, splitDebugInlining: false, nameTableKind: None)
!239 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !{!241, !255, !260}
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !185, line: 32, baseType: !242, size: 32, elements: !243)
!242 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!244 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!245 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!246 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!247 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!248 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!249 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!250 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!251 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!252 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!253 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!254 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !185, line: 242, baseType: !242, size: 32, elements: !256)
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!258 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!259 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !261, line: 46, baseType: !242, size: 32, elements: !262)
!261 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!263 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!264 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!265 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!266 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!267 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!268 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!269 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!270 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!271 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!272 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!273 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!274 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!275 = !{!276, !282, !130, !298, !14, !46, !301, !68, !318, !322, !6, !328, !332, !10, !336, !339, !340}
!276 = !DISubprogram(name: "xmemdup", scope: !277, file: !277, line: 62, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!277 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!278 = !DISubroutineType(types: !279)
!279 = !{!66, !280, !70}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!282 = !DISubprogram(name: "quotearg_alloc_mem", scope: !185, file: !185, line: 342, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!283 = !DISubroutineType(types: !284)
!284 = !{!10, !12, !70, !285, !286}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !239, line: 65, size: 448, elements: !289)
!289 = !{!290, !291, !292, !296, !297}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !288, file: !239, line: 68, baseType: !241, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !239, line: 71, baseType: !14, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !288, file: !239, line: 75, baseType: !293, size: 256, offset: 64)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 8)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !288, file: !239, line: 78, baseType: !12, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !288, file: !239, line: 81, baseType: !12, size: 64, offset: 384)
!298 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !185, file: !185, line: 408, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{!10, !14, !12, !12, !12, !70}
!301 = !DISubprogram(name: "rpl_mbrtowc", scope: !302, file: !302, line: 717, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!302 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!303 = !DISubroutineType(types: !304)
!304 = !{!70, !110, !12, !70, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 13, size: 64, elements: !308)
!307 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !306, file: !307, line: 15, baseType: !14, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !306, file: !307, line: 20, baseType: !311, size: 32, offset: 32)
!311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !307, line: 16, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !311, file: !307, line: 18, baseType: !242, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !311, file: !307, line: 19, baseType: !315, size: 32)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 4)
!318 = !DISubprogram(name: "iswprint", scope: !319, file: !319, line: 120, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!319 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!320 = !DISubroutineType(types: !321)
!321 = !{!14, !242}
!322 = !DISubprogram(name: "mbsinit", scope: !323, file: !323, line: 292, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!323 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!324 = !DISubroutineType(types: !325)
!325 = !{!14, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!328 = !DISubprogram(name: "locale_charset", scope: !329, file: !329, line: 35, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!329 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = !DISubroutineType(types: !331)
!331 = !{!12}
!332 = !DISubprogram(name: "c_strcasecmp", scope: !333, file: !333, line: 42, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!333 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!334 = !DISubroutineType(types: !335)
!335 = !{!14, !12, !12}
!336 = !DISubprogram(name: "xmalloc", scope: !277, file: !277, line: 53, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!337 = !DISubroutineType(types: !338)
!338 = !{!66, !70}
!339 = !DISubprogram(name: "xalloc_die", scope: !277, file: !277, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!340 = !DISubprogram(name: "xrealloc", scope: !277, file: !277, line: 59, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!341 = !DISubroutineType(types: !342)
!342 = !{!66, !66, !70}
!343 = !{!236, !344, !350, !352, !354, !359, !366, !368}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !238, file: !239, line: 101, type: !346, isLocal: false, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 320, elements: !348)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!348 = !{!349}
!349 = !DISubrange(count: 10)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !238, file: !239, line: 1052, type: !288, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !238, file: !239, line: 116, type: !288, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "slot0", scope: !238, file: !239, line: 842, type: !356, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 256)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "slotvec", scope: !238, file: !239, line: 845, type: !361, isLocal: true, isDefinition: true)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !239, line: 834, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !362, file: !239, line: 836, baseType: !68, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !362, file: !239, line: 837, baseType: !10, size: 64, offset: 64)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "nslots", scope: !238, file: !239, line: 843, type: !14, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "slotvec0", scope: !238, file: !239, line: 844, type: !362, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 704, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!372 = !{!373}
!373 = !DISubrange(count: 11)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !376, file: !377, line: 26, type: !379, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !378, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!378 = !{!374}
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 47)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/basename.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!384 = !{!385, !386, !389}
!385 = !DISubprogram(name: "last_component", scope: !125, file: !125, line: 46, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!386 = !DISubprogram(name: "base_len", scope: !125, file: !125, line: 44, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!387 = !DISubroutineType(types: !388)
!388 = !{!70, !12}
!389 = !DISubprogram(name: "xstrndup", scope: !390, file: !390, line: 23, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!390 = !DIFile(filename: "./lib/xstrndup.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!391 = !DISubroutineType(types: !392)
!392 = !{!10, !12, !70}
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!395 = !{!10}
!396 = distinct !DICompileUnit(language: DW_LANG_C99, file: !397, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !398, splitDebugInlining: false, nameTableKind: None)
!397 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!398 = !{!385, !386}
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !401, retainedTypes: !405, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!401 = !{!402}
!402 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !400, line: 40, baseType: !242, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!405 = !{!6, !406, !66}
!406 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!407 = !DISubroutineType(types: !408)
!408 = !{!14, !12, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !410, file: !21, line: 51, baseType: !14, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !410, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !410, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !410, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !410, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !410, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !410, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !410, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !410, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !410, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !410, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !410, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !410, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !410, file: !21, line: 70, baseType: !409, size: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !410, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !410, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !410, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !410, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !410, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !410, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !410, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !410, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !410, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !410, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !410, file: !21, line: 93, baseType: !409, size: 64, offset: 1344)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !410, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !410, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !410, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !410, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !443, retainedTypes: !456, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!443 = !{!444}
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !445, file: !277, line: 186, baseType: !242, size: 32, elements: !454)
!445 = distinct !DISubprogram(name: "x2nrealloc", scope: !277, file: !277, line: 174, type: !446, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !449)
!446 = !DISubroutineType(types: !447)
!447 = !{!66, !66, !448, !68}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!449 = !{!450, !451, !452, !453}
!450 = !DILocalVariable(name: "p", arg: 1, scope: !445, file: !277, line: 174, type: !66)
!451 = !DILocalVariable(name: "pn", arg: 2, scope: !445, file: !277, line: 174, type: !448)
!452 = !DILocalVariable(name: "s", arg: 3, scope: !445, file: !277, line: 174, type: !68)
!453 = !DILocalVariable(name: "n", scope: !445, file: !277, line: 176, type: !68)
!454 = !{!455}
!455 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!456 = !{!68, !339, !336, !340, !10, !130, !66, !457, !460}
!457 = !DISubprogram(name: "xcalloc", scope: !277, file: !277, line: 57, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!458 = !DISubroutineType(types: !459)
!459 = !{!66, !70, !70}
!460 = !DISubprogram(name: "rpl_calloc", scope: !461, file: !461, line: 688, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!461 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !463, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !464, splitDebugInlining: false, nameTableKind: None)
!463 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!464 = !{!6, !116}
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!467 = !{!339}
!468 = distinct !DICompileUnit(language: DW_LANG_C99, file: !469, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !470, splitDebugInlining: false, nameTableKind: None)
!469 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!470 = !{!66}
!471 = distinct !DICompileUnit(language: DW_LANG_C99, file: !472, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !473, splitDebugInlining: false, nameTableKind: None)
!472 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!473 = !{!474, !68, !486}
!474 = !DISubprogram(name: "mbrtowc", scope: !323, file: !323, line: 296, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{!70, !110, !12, !70, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 13, size: 64, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !478, file: !307, line: 15, baseType: !14, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !478, file: !307, line: 20, baseType: !482, size: 32, offset: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !307, line: 16, size: 32, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !482, file: !307, line: 18, baseType: !242, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !482, file: !307, line: 19, baseType: !315, size: 32)
!486 = !DISubprogram(name: "hard_locale", scope: !487, file: !487, line: 26, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!487 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!488 = !DISubroutineType(types: !489)
!489 = !{!129, !14}
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!492 = !{!493}
!493 = !DISubprogram(name: "rpl_fclose", scope: !494, file: !494, line: 672, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!494 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = !DISubroutineType(types: !496)
!496 = !{!14, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !498, file: !21, line: 51, baseType: !14, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !498, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !498, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !498, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !498, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !498, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !498, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !498, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !498, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !498, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !498, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !498, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !498, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !498, file: !21, line: 70, baseType: !497, size: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !498, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !498, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !498, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !498, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !498, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !498, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !498, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !498, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !498, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !498, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !498, file: !21, line: 93, baseType: !497, size: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !498, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !498, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !498, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !498, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !531, splitDebugInlining: false, nameTableKind: None)
!530 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!531 = !{!532}
!532 = !DISubprogram(name: "setlocale_null_r", scope: !533, file: !533, line: 64, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!533 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!534 = !DISubroutineType(types: !535)
!535 = !{!14, !14, !10, !70}
!536 = distinct !DICompileUnit(language: DW_LANG_C99, file: !537, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !538, retainedTypes: !925, splitDebugInlining: false, nameTableKind: None)
!537 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!538 = !{!539}
!539 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !540, line: 41, baseType: !242, size: 32, elements: !541)
!540 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!542 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!543 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!544 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!545 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!546 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!547 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!548 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!549 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!550 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!551 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!552 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!553 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!554 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!555 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!556 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!557 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!558 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!559 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!560 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!561 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!562 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!563 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!564 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!565 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!566 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!567 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!568 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!569 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!570 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!571 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!572 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!573 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!574 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!575 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!576 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!577 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!578 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!579 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!580 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!581 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!582 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!583 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!584 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!585 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!586 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!587 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!588 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!589 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!590 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!591 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!650 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!653 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!654 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!655 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!656 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!657 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!658 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!659 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!660 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!661 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!662 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!663 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!664 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!737 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!810 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!811 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!812 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!813 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!814 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!815 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!816 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!817 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!818 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!819 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!820 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!821 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!822 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!823 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!824 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!826 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!827 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!828 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!829 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!830 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!831 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!857 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!858 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!859 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!860 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!861 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!866 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!867 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!868 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!869 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!925 = !{!926, !66}
!926 = !DISubprogram(name: "nl_langinfo", scope: !540, file: !540, line: 661, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!927 = !DISubroutineType(types: !928)
!928 = !{!10, !14}
!929 = distinct !DICompileUnit(language: DW_LANG_C99, file: !930, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !931, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!931 = !{!66, !80}
!932 = distinct !DICompileUnit(language: DW_LANG_C99, file: !933, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !934, splitDebugInlining: false, nameTableKind: None)
!933 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!934 = !{!935, !970, !971, !975}
!935 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!936 = !DISubroutineType(types: !937)
!937 = !{!14, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !939, file: !21, line: 51, baseType: !14, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !939, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !939, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !939, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !939, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !939, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !939, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !939, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !939, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !939, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !939, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !939, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !939, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !939, file: !21, line: 70, baseType: !938, size: 64, offset: 832)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !939, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !939, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !939, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !939, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !939, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !939, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !939, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !939, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !939, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !939, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !939, file: !21, line: 93, baseType: !938, size: 64, offset: 1344)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !939, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !939, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !939, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !939, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!970 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!971 = !DISubprogram(name: "lseek", scope: !972, file: !972, line: 334, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!972 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!973 = !DISubroutineType(types: !974)
!974 = !{!44, !14, !44, !14}
!975 = !DISubprogram(name: "rpl_fflush", scope: !494, file: !494, line: 718, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !977, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!977 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!978 = !{!66, !979, !1014}
!979 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!980 = !DISubroutineType(types: !981)
!981 = !{!14, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !983, file: !21, line: 51, baseType: !14, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !983, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !983, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !983, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !983, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !983, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !983, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !983, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !983, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !983, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !983, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !983, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !983, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !983, file: !21, line: 70, baseType: !982, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !983, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !983, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !983, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !983, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !983, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !983, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !983, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !983, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !983, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !983, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !983, file: !21, line: 93, baseType: !982, size: 64, offset: 1344)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !983, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !983, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !983, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !983, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1014 = !DISubprogram(name: "rpl_fseeko", scope: !494, file: !494, line: 1034, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!14, !982, !44, !14}
!1017 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1018, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1019, splitDebugInlining: false, nameTableKind: None)
!1018 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1019 = !{!66, !1020, !971, !1055}
!1020 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!14, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1024, file: !21, line: 51, baseType: !14, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1024, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1024, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1024, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1024, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1024, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1024, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1024, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1024, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1024, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1024, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1024, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1024, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1024, file: !21, line: 70, baseType: !1023, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1024, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1024, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1024, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1024, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1024, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1024, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1024, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1024, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1024, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1024, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1024, file: !21, line: 93, baseType: !1023, size: 64, offset: 1344)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1024, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1024, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1024, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1024, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1055 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!14, !1023, !44, !14}
!1058 = !{!"clang version 10.0.0 "}
!1059 = !{i32 7, !"Dwarf Version", i32 4}
!1060 = !{i32 2, !"Debug Info Version", i32 3}
!1061 = !{i32 1, !"wchar_size", i32 4}
!1062 = !{i32 7, !"PIC Level", i32 2}
!1063 = !{i32 7, !"PIE Level", i32 2}
!1064 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 42, type: !1065, scopeLine: 43, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !14}
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "status", arg: 1, scope: !1064, file: !3, line: 42, type: !14)
!1069 = !DILocalVariable(name: "infomap", scope: !1070, file: !1071, line: 636, type: !1083)
!1070 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1071, file: !1071, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1072)
!1071 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1072 = !{!1073, !1069, !1074, !1075, !1082}
!1073 = !DILocalVariable(name: "program", arg: 1, scope: !1070, file: !1071, line: 634, type: !12)
!1074 = !DILocalVariable(name: "node", scope: !1070, file: !1071, line: 646, type: !12)
!1075 = !DILocalVariable(name: "map_prog", scope: !1070, file: !1071, line: 647, type: !1076)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1070, file: !1071, line: 636, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1078, file: !1071, line: 636, baseType: !12, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1078, file: !1071, line: 636, baseType: !12, size: 64, offset: 64)
!1082 = !DILocalVariable(name: "lc_messages", scope: !1070, file: !1071, line: 659, type: !12)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 896, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 7)
!1086 = !DILocation(line: 636, column: 67, scope: !1070, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 76, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 47, column: 5)
!1089 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 44, column: 7)
!1090 = !DILocation(line: 0, scope: !1064)
!1091 = !DILocation(line: 44, column: 14, scope: !1089)
!1092 = !DILocation(line: 44, column: 7, scope: !1064)
!1093 = !DILocation(line: 45, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 45, column: 5)
!1095 = !{!1096, !1096, i64 0}
!1096 = !{!"any pointer", !1097, i64 0}
!1097 = !{!"omnipotent char", !1098, i64 0}
!1098 = !{!"Simple C/C++ TBAA"}
!1099 = !DILocation(line: 48, column: 7, scope: !1088)
!1100 = !DILocation(line: 53, column: 7, scope: !1088)
!1101 = !DILocation(line: 590, column: 3, scope: !1102, inlinedAt: !1103)
!1102 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1071, file: !1071, line: 588, type: !95, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1103 = distinct !DILocation(line: 58, column: 7, scope: !1088)
!1104 = !DILocation(line: 60, column: 7, scope: !1088)
!1105 = !DILocation(line: 65, column: 7, scope: !1088)
!1106 = !DILocation(line: 66, column: 7, scope: !1088)
!1107 = !DILocation(line: 67, column: 7, scope: !1088)
!1108 = !DILocation(line: 0, scope: !1070, inlinedAt: !1087)
!1109 = !DILocation(line: 636, column: 3, scope: !1070, inlinedAt: !1087)
!1110 = !DILocation(line: 647, column: 36, scope: !1070, inlinedAt: !1087)
!1111 = !DILocation(line: 649, column: 3, scope: !1070, inlinedAt: !1087)
!1112 = !DILocation(line: 649, column: 33, scope: !1070, inlinedAt: !1087)
!1113 = !DILocation(line: 650, column: 13, scope: !1070, inlinedAt: !1087)
!1114 = !DILocation(line: 649, column: 20, scope: !1070, inlinedAt: !1087)
!1115 = !{!1116, !1096, i64 0}
!1116 = !{!"infomap", !1096, i64 0, !1096, i64 8}
!1117 = !DILocation(line: 649, column: 10, scope: !1070, inlinedAt: !1087)
!1118 = !DILocation(line: 649, column: 28, scope: !1070, inlinedAt: !1087)
!1119 = distinct !{!1119, !1111, !1113}
!1120 = !DILocation(line: 652, column: 17, scope: !1121, inlinedAt: !1087)
!1121 = distinct !DILexicalBlock(scope: !1070, file: !1071, line: 652, column: 7)
!1122 = !{!1116, !1096, i64 8}
!1123 = !DILocation(line: 652, column: 7, scope: !1121, inlinedAt: !1087)
!1124 = !DILocation(line: 652, column: 7, scope: !1070, inlinedAt: !1087)
!1125 = !DILocation(line: 655, column: 3, scope: !1070, inlinedAt: !1087)
!1126 = !DILocation(line: 659, column: 29, scope: !1070, inlinedAt: !1087)
!1127 = !DILocation(line: 660, column: 7, scope: !1128, inlinedAt: !1087)
!1128 = distinct !DILexicalBlock(scope: !1070, file: !1071, line: 660, column: 7)
!1129 = !DILocation(line: 660, column: 19, scope: !1128, inlinedAt: !1087)
!1130 = !DILocation(line: 660, column: 22, scope: !1128, inlinedAt: !1087)
!1131 = !DILocation(line: 660, column: 7, scope: !1070, inlinedAt: !1087)
!1132 = !DILocation(line: 666, column: 7, scope: !1133, inlinedAt: !1087)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !1071, line: 661, column: 5)
!1134 = !DILocation(line: 668, column: 5, scope: !1133, inlinedAt: !1087)
!1135 = !DILocation(line: 669, column: 3, scope: !1070, inlinedAt: !1087)
!1136 = !DILocation(line: 671, column: 3, scope: !1070, inlinedAt: !1087)
!1137 = !DILocation(line: 673, column: 1, scope: !1070, inlinedAt: !1087)
!1138 = !DILocation(line: 78, column: 3, scope: !1064)
!1139 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 124, type: !1140, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!14, !14, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149}
!1144 = !DILocalVariable(name: "argc", arg: 1, scope: !1139, file: !3, line: 124, type: !14)
!1145 = !DILocalVariable(name: "argv", arg: 2, scope: !1139, file: !3, line: 124, type: !1142)
!1146 = !DILocalVariable(name: "multiple_names", scope: !1139, file: !3, line: 126, type: !129)
!1147 = !DILocalVariable(name: "use_nuls", scope: !1139, file: !3, line: 127, type: !129)
!1148 = !DILocalVariable(name: "suffix", scope: !1139, file: !3, line: 128, type: !12)
!1149 = !DILocalVariable(name: "c", scope: !1150, file: !3, line: 140, type: !14)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 139, column: 5)
!1151 = !DILocation(line: 0, scope: !1139)
!1152 = !DILocation(line: 131, column: 21, scope: !1139)
!1153 = !DILocation(line: 131, column: 3, scope: !1139)
!1154 = !DILocation(line: 132, column: 3, scope: !1139)
!1155 = !DILocation(line: 133, column: 3, scope: !1139)
!1156 = !DILocation(line: 134, column: 3, scope: !1139)
!1157 = !DILocation(line: 136, column: 3, scope: !1139)
!1158 = !DILocation(line: 138, column: 3, scope: !1139)
!1159 = !DILocation(line: 142, column: 11, scope: !1150)
!1160 = !DILocation(line: 127, column: 8, scope: !1139)
!1161 = !DILocation(line: 140, column: 15, scope: !1150)
!1162 = !DILocation(line: 0, scope: !1150)
!1163 = !DILocation(line: 148, column: 20, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 146, column: 9)
!1165 = !DILocation(line: 150, column: 11, scope: !1164)
!1166 = !DILocation(line: 160, column: 9, scope: !1164)
!1167 = !DILocation(line: 161, column: 9, scope: !1164)
!1168 = !DILocation(line: 164, column: 11, scope: !1164)
!1169 = !DILocation(line: 168, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 168, column: 7)
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"int", !1097, i64 0}
!1173 = !DILocation(line: 168, column: 12, scope: !1170)
!1174 = !DILocation(line: 168, column: 7, scope: !1139)
!1175 = !DILocation(line: 170, column: 20, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 169, column: 5)
!1177 = !DILocation(line: 170, column: 7, scope: !1176)
!1178 = !DILocation(line: 171, column: 7, scope: !1176)
!1179 = !DILocation(line: 174, column: 8, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 174, column: 7)
!1181 = !DILocation(line: 174, column: 23, scope: !1180)
!1182 = !DILocation(line: 174, column: 33, scope: !1180)
!1183 = !DILocation(line: 174, column: 37, scope: !1180)
!1184 = !DILocation(line: 176, column: 20, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 175, column: 5)
!1186 = !DILocation(line: 176, column: 55, scope: !1185)
!1187 = !DILocation(line: 176, column: 62, scope: !1185)
!1188 = !DILocation(line: 176, column: 50, scope: !1185)
!1189 = !DILocation(line: 176, column: 43, scope: !1185)
!1190 = !DILocation(line: 176, column: 7, scope: !1185)
!1191 = !DILocation(line: 177, column: 7, scope: !1185)
!1192 = !DILocation(line: 180, column: 7, scope: !1139)
!1193 = !DILocation(line: 0, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 182, column: 7)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 182, column: 7)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 181, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 180, column: 7)
!1198 = !DILocation(line: 182, column: 7, scope: !1195)
!1199 = !DILocation(line: 183, column: 27, scope: !1194)
!1200 = !DILocation(line: 183, column: 9, scope: !1194)
!1201 = !DILocation(line: 182, column: 35, scope: !1194)
!1202 = !DILocation(line: 182, column: 21, scope: !1194)
!1203 = distinct !{!1203, !1198, !1204}
!1204 = !DILocation(line: 183, column: 57, scope: !1195)
!1205 = !DILocation(line: 186, column: 23, scope: !1197)
!1206 = !DILocation(line: 187, column: 34, scope: !1197)
!1207 = !DILocation(line: 187, column: 23, scope: !1197)
!1208 = !DILocation(line: 187, column: 56, scope: !1197)
!1209 = !DILocation(line: 187, column: 44, scope: !1197)
!1210 = !DILocation(line: 187, column: 69, scope: !1197)
!1211 = !DILocation(line: 186, column: 5, scope: !1197)
!1212 = !DILocation(line: 190, column: 1, scope: !1139)
!1213 = distinct !DISubprogram(name: "perform_basename", scope: !3, file: !3, line: 104, type: !1214, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !12, !12, !129}
!1216 = !{!1217, !1218, !1219, !1220}
!1217 = !DILocalVariable(name: "string", arg: 1, scope: !1213, file: !3, line: 104, type: !12)
!1218 = !DILocalVariable(name: "suffix", arg: 2, scope: !1213, file: !3, line: 104, type: !12)
!1219 = !DILocalVariable(name: "use_nuls", arg: 3, scope: !1213, file: !3, line: 104, type: !129)
!1220 = !DILocalVariable(name: "name", scope: !1213, file: !3, line: 106, type: !10)
!1221 = !DILocation(line: 0, scope: !1213)
!1222 = !DILocation(line: 106, column: 16, scope: !1213)
!1223 = !DILocation(line: 107, column: 3, scope: !1213)
!1224 = !DILocation(line: 115, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 115, column: 7)
!1226 = !DILocation(line: 115, column: 14, scope: !1225)
!1227 = !DILocation(line: 115, column: 17, scope: !1225)
!1228 = !{!1097, !1097, i64 0}
!1229 = !DILocation(line: 115, column: 7, scope: !1213)
!1230 = !DILocalVariable(name: "name", arg: 1, scope: !1231, file: !3, line: 85, type: !10)
!1231 = distinct !DISubprogram(name: "remove_suffix", scope: !3, file: !3, line: 85, type: !1232, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !10, !12}
!1234 = !{!1230, !1235, !1236, !1237}
!1235 = !DILocalVariable(name: "suffix", arg: 2, scope: !1231, file: !3, line: 85, type: !12)
!1236 = !DILocalVariable(name: "np", scope: !1231, file: !3, line: 87, type: !10)
!1237 = !DILocalVariable(name: "sp", scope: !1231, file: !3, line: 88, type: !12)
!1238 = !DILocation(line: 0, scope: !1231, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 116, column: 5, scope: !1225)
!1240 = !DILocation(line: 90, column: 15, scope: !1231, inlinedAt: !1239)
!1241 = !DILocation(line: 90, column: 13, scope: !1231, inlinedAt: !1239)
!1242 = !DILocation(line: 91, column: 17, scope: !1231, inlinedAt: !1239)
!1243 = !DILocation(line: 91, column: 15, scope: !1231, inlinedAt: !1239)
!1244 = !DILocation(line: 93, column: 3, scope: !1231, inlinedAt: !1239)
!1245 = !DILocation(line: 93, column: 13, scope: !1231, inlinedAt: !1239)
!1246 = !DILocation(line: 93, column: 20, scope: !1231, inlinedAt: !1239)
!1247 = !DILocation(line: 94, column: 10, scope: !1248, inlinedAt: !1239)
!1248 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 94, column: 9)
!1249 = !DILocation(line: 94, column: 9, scope: !1248, inlinedAt: !1239)
!1250 = !DILocation(line: 94, column: 19, scope: !1248, inlinedAt: !1239)
!1251 = !DILocation(line: 94, column: 18, scope: !1248, inlinedAt: !1239)
!1252 = !DILocation(line: 94, column: 15, scope: !1248, inlinedAt: !1239)
!1253 = !DILocation(line: 94, column: 9, scope: !1231, inlinedAt: !1239)
!1254 = distinct !{!1254, !1244, !1255}
!1255 = !DILocation(line: 95, column: 7, scope: !1231, inlinedAt: !1239)
!1256 = !DILocation(line: 96, column: 7, scope: !1231, inlinedAt: !1239)
!1257 = !DILocation(line: 97, column: 9, scope: !1258, inlinedAt: !1239)
!1258 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 96, column: 7)
!1259 = !DILocation(line: 97, column: 5, scope: !1258, inlinedAt: !1239)
!1260 = !DILocation(line: 118, column: 3, scope: !1213)
!1261 = !DILocation(line: 119, column: 3, scope: !1213)
!1262 = !DILocalVariable(name: "__c", arg: 1, scope: !1263, file: !1264, line: 108, type: !14)
!1263 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1264, file: !1264, line: 108, type: !1265, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1267)
!1264 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!14, !14}
!1267 = !{!1262}
!1268 = !DILocation(line: 0, scope: !1263, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 119, column: 3, scope: !1213)
!1270 = !DILocation(line: 110, column: 10, scope: !1263, inlinedAt: !1269)
!1271 = !{!1272, !1096, i64 40}
!1272 = !{!"_IO_FILE", !1172, i64 0, !1096, i64 8, !1096, i64 16, !1096, i64 24, !1096, i64 32, !1096, i64 40, !1096, i64 48, !1096, i64 56, !1096, i64 64, !1096, i64 72, !1096, i64 80, !1096, i64 88, !1096, i64 96, !1096, i64 104, !1172, i64 112, !1172, i64 116, !1273, i64 120, !1274, i64 128, !1097, i64 130, !1097, i64 131, !1096, i64 136, !1273, i64 144, !1096, i64 152, !1096, i64 160, !1096, i64 168, !1096, i64 176, !1273, i64 184, !1172, i64 192, !1097, i64 196}
!1273 = !{!"long", !1097, i64 0}
!1274 = !{!"short", !1097, i64 0}
!1275 = !{!1272, !1096, i64 48}
!1276 = !{!"branch_weights", i32 2000, i32 1}
!1277 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1278 = !DILocation(line: 120, column: 3, scope: !1213)
!1279 = !DILocation(line: 121, column: 1, scope: !1213)
!1280 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !146, file: !146, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1281)
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "file", arg: 1, scope: !1280, file: !146, line: 51, type: !12)
!1283 = !DILocation(line: 0, scope: !1280)
!1284 = !DILocation(line: 53, column: 13, scope: !1280)
!1285 = !DILocation(line: 54, column: 1, scope: !1280)
!1286 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !146, file: !146, line: 88, type: !1287, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !129}
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "ignore", arg: 1, scope: !1286, file: !146, line: 88, type: !129)
!1291 = !DILocation(line: 0, scope: !1286)
!1292 = !DILocation(line: 90, column: 16, scope: !1286)
!1293 = !{!1294, !1294, i64 0}
!1294 = !{!"_Bool", !1097, i64 0}
!1295 = !DILocation(line: 91, column: 1, scope: !1286)
!1296 = distinct !DISubprogram(name: "close_stdout", scope: !146, file: !146, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !145, retainedNodes: !1297)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "write_error", scope: !1299, file: !146, line: 122, type: !12)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !146, line: 121, column: 5)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !146, line: 119, column: 7)
!1301 = !DILocation(line: 119, column: 21, scope: !1300)
!1302 = !DILocation(line: 119, column: 7, scope: !1300)
!1303 = !DILocation(line: 119, column: 29, scope: !1300)
!1304 = !DILocation(line: 120, column: 7, scope: !1300)
!1305 = !DILocation(line: 120, column: 12, scope: !1300)
!1306 = !{i8 0, i8 2}
!1307 = !DILocation(line: 120, column: 25, scope: !1300)
!1308 = !DILocation(line: 120, column: 28, scope: !1300)
!1309 = !DILocation(line: 120, column: 34, scope: !1300)
!1310 = !DILocation(line: 119, column: 7, scope: !1296)
!1311 = !DILocation(line: 122, column: 33, scope: !1299)
!1312 = !DILocation(line: 0, scope: !1299)
!1313 = !DILocation(line: 123, column: 11, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !146, line: 123, column: 11)
!1315 = !DILocation(line: 0, scope: !1314)
!1316 = !DILocation(line: 123, column: 11, scope: !1299)
!1317 = !DILocation(line: 124, column: 36, scope: !1314)
!1318 = !DILocation(line: 124, column: 9, scope: !1314)
!1319 = !DILocation(line: 127, column: 9, scope: !1314)
!1320 = !DILocation(line: 129, column: 14, scope: !1299)
!1321 = !DILocation(line: 129, column: 7, scope: !1299)
!1322 = !DILocation(line: 134, column: 42, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1296, file: !146, line: 134, column: 7)
!1324 = !DILocation(line: 134, column: 28, scope: !1323)
!1325 = !DILocation(line: 134, column: 50, scope: !1323)
!1326 = !DILocation(line: 134, column: 7, scope: !1296)
!1327 = !DILocation(line: 135, column: 12, scope: !1323)
!1328 = !DILocation(line: 135, column: 5, scope: !1323)
!1329 = !DILocation(line: 136, column: 1, scope: !1296)
!1330 = distinct !DISubprogram(name: "base_name", scope: !383, file: !383, line: 28, type: !88, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1331)
!1331 = !{!1332, !1333, !1334}
!1332 = !DILocalVariable(name: "name", arg: 1, scope: !1330, file: !383, line: 28, type: !12)
!1333 = !DILocalVariable(name: "base", scope: !1330, file: !383, line: 30, type: !12)
!1334 = !DILocalVariable(name: "length", scope: !1330, file: !383, line: 31, type: !68)
!1335 = !DILocation(line: 0, scope: !1330)
!1336 = !DILocation(line: 30, column: 22, scope: !1330)
!1337 = !DILocation(line: 35, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !383, line: 35, column: 7)
!1339 = !DILocation(line: 35, column: 7, scope: !1330)
!1340 = !DILocation(line: 36, column: 28, scope: !1338)
!1341 = !DILocation(line: 36, column: 12, scope: !1338)
!1342 = !DILocation(line: 36, column: 5, scope: !1338)
!1343 = !DILocation(line: 39, column: 12, scope: !1330)
!1344 = !DILocation(line: 40, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1330, file: !383, line: 40, column: 7)
!1346 = !DILocation(line: 40, column: 7, scope: !1330)
!1347 = !DILocation(line: 57, column: 10, scope: !1330)
!1348 = !DILocation(line: 57, column: 3, scope: !1330)
!1349 = !DILocation(line: 58, column: 1, scope: !1330)
!1350 = distinct !DISubprogram(name: "last_component", scope: !394, file: !394, line: 30, type: !88, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1351)
!1351 = !{!1352, !1353, !1354, !1355}
!1352 = !DILocalVariable(name: "name", arg: 1, scope: !1350, file: !394, line: 30, type: !12)
!1353 = !DILocalVariable(name: "base", scope: !1350, file: !394, line: 32, type: !12)
!1354 = !DILocalVariable(name: "p", scope: !1350, file: !394, line: 33, type: !12)
!1355 = !DILocalVariable(name: "saw_slash", scope: !1350, file: !394, line: 34, type: !129)
!1356 = !DILocation(line: 0, scope: !1350)
!1357 = !DILocation(line: 36, column: 3, scope: !1350)
!1358 = !DILocation(line: 36, column: 10, scope: !1350)
!1359 = !DILocation(line: 37, column: 9, scope: !1350)
!1360 = distinct !{!1360, !1357, !1359}
!1361 = !DILocation(line: 39, column: 18, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !394, line: 39, column: 3)
!1363 = distinct !DILexicalBlock(scope: !1350, file: !394, line: 39, column: 3)
!1364 = !DILocation(line: 32, column: 15, scope: !1350)
!1365 = !DILocation(line: 0, scope: !1363)
!1366 = !DILocation(line: 39, column: 3, scope: !1363)
!1367 = !DILocation(line: 43, column: 16, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !394, line: 43, column: 16)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !394, line: 41, column: 11)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !394, line: 40, column: 5)
!1371 = !DILocation(line: 43, column: 16, scope: !1369)
!1372 = !DILocation(line: 39, column: 23, scope: !1362)
!1373 = !DILocation(line: 39, column: 3, scope: !1362)
!1374 = distinct !{!1374, !1366, !1375}
!1375 = !DILocation(line: 48, column: 5, scope: !1363)
!1376 = !DILocation(line: 50, column: 3, scope: !1350)
!1377 = distinct !DISubprogram(name: "base_len", scope: !394, file: !394, line: 58, type: !1378, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !1380)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!68, !12}
!1380 = !{!1381, !1382, !1383}
!1381 = !DILocalVariable(name: "name", arg: 1, scope: !1377, file: !394, line: 58, type: !12)
!1382 = !DILocalVariable(name: "len", scope: !1377, file: !394, line: 60, type: !68)
!1383 = !DILocalVariable(name: "prefix_len", scope: !1377, file: !394, line: 61, type: !68)
!1384 = !DILocation(line: 0, scope: !1377)
!1385 = !DILocation(line: 63, column: 14, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !394, line: 63, column: 3)
!1387 = !DILocation(line: 63, column: 8, scope: !1386)
!1388 = !DILocation(line: 0, scope: !1386)
!1389 = !DILocation(line: 63, column: 32, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !394, line: 63, column: 3)
!1391 = !DILocation(line: 63, column: 38, scope: !1390)
!1392 = !DILocation(line: 63, column: 41, scope: !1390)
!1393 = !DILocation(line: 63, column: 3, scope: !1386)
!1394 = distinct !{!1394, !1393, !1395}
!1395 = !DILocation(line: 64, column: 5, scope: !1386)
!1396 = !DILocation(line: 74, column: 3, scope: !1377)
!1397 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !397, file: !397, line: 31, type: !127, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !396, retainedNodes: !1398)
!1398 = !{!1399, !1400, !1401, !1402}
!1399 = !DILocalVariable(name: "file", arg: 1, scope: !1397, file: !397, line: 31, type: !10)
!1400 = !DILocalVariable(name: "base", scope: !1397, file: !397, line: 33, type: !10)
!1401 = !DILocalVariable(name: "base_lim", scope: !1397, file: !397, line: 34, type: !10)
!1402 = !DILocalVariable(name: "had_slash", scope: !1397, file: !397, line: 35, type: !129)
!1403 = !DILocation(line: 0, scope: !1397)
!1404 = !DILocation(line: 33, column: 16, scope: !1397)
!1405 = !DILocation(line: 39, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !397, line: 39, column: 7)
!1407 = !DILocation(line: 39, column: 7, scope: !1397)
!1408 = !DILocation(line: 41, column: 21, scope: !1397)
!1409 = !DILocation(line: 41, column: 19, scope: !1397)
!1410 = !DILocation(line: 42, column: 16, scope: !1397)
!1411 = !DILocation(line: 42, column: 26, scope: !1397)
!1412 = !DILocation(line: 43, column: 13, scope: !1397)
!1413 = !DILocation(line: 44, column: 3, scope: !1397)
!1414 = distinct !DISubprogram(name: "set_program_name", scope: !198, file: !198, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !1415)
!1415 = !{!1416, !1417, !1418}
!1416 = !DILocalVariable(name: "argv0", arg: 1, scope: !1414, file: !198, line: 39, type: !12)
!1417 = !DILocalVariable(name: "slash", scope: !1414, file: !198, line: 46, type: !12)
!1418 = !DILocalVariable(name: "base", scope: !1414, file: !198, line: 47, type: !12)
!1419 = !DILocation(line: 0, scope: !1414)
!1420 = !DILocation(line: 51, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1414, file: !198, line: 51, column: 7)
!1422 = !DILocation(line: 51, column: 7, scope: !1414)
!1423 = !DILocation(line: 55, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !198, line: 52, column: 5)
!1425 = !DILocation(line: 54, column: 7, scope: !1424)
!1426 = !DILocation(line: 56, column: 7, scope: !1424)
!1427 = !DILocation(line: 59, column: 11, scope: !1414)
!1428 = !DILocation(line: 60, column: 17, scope: !1414)
!1429 = !DILocation(line: 60, column: 11, scope: !1414)
!1430 = !DILocation(line: 61, column: 12, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1414, file: !198, line: 61, column: 7)
!1432 = !DILocation(line: 61, column: 20, scope: !1431)
!1433 = !DILocation(line: 61, column: 25, scope: !1431)
!1434 = !DILocation(line: 61, column: 42, scope: !1431)
!1435 = !DILocation(line: 61, column: 28, scope: !1431)
!1436 = !DILocation(line: 61, column: 61, scope: !1431)
!1437 = !DILocation(line: 61, column: 7, scope: !1414)
!1438 = !DILocation(line: 64, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !198, line: 64, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1431, file: !198, line: 62, column: 5)
!1441 = !DILocation(line: 64, column: 36, scope: !1439)
!1442 = !DILocation(line: 64, column: 11, scope: !1440)
!1443 = !DILocation(line: 66, column: 24, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !198, line: 65, column: 9)
!1445 = !DILocation(line: 70, column: 41, scope: !1444)
!1446 = !DILocation(line: 72, column: 9, scope: !1444)
!1447 = !DILocation(line: 84, column: 16, scope: !1414)
!1448 = !DILocation(line: 90, column: 27, scope: !1414)
!1449 = !DILocation(line: 92, column: 1, scope: !1414)
!1450 = distinct !DISubprogram(name: "clone_quoting_options", scope: !239, file: !239, line: 122, type: !1451, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1454)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1453, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!1454 = !{!1455, !1456, !1457}
!1455 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !239, line: 122, type: !1453)
!1456 = !DILocalVariable(name: "e", scope: !1450, file: !239, line: 124, type: !14)
!1457 = !DILocalVariable(name: "p", scope: !1450, file: !239, line: 125, type: !1453)
!1458 = !DILocation(line: 0, scope: !1450)
!1459 = !DILocation(line: 124, column: 11, scope: !1450)
!1460 = !DILocation(line: 125, column: 40, scope: !1450)
!1461 = !DILocation(line: 125, column: 31, scope: !1450)
!1462 = !DILocation(line: 127, column: 9, scope: !1450)
!1463 = !DILocation(line: 128, column: 3, scope: !1450)
!1464 = distinct !DISubprogram(name: "get_quoting_style", scope: !239, file: !239, line: 133, type: !1465, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!241, !286}
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "o", arg: 1, scope: !1464, file: !239, line: 133, type: !286)
!1469 = !DILocation(line: 0, scope: !1464)
!1470 = !DILocation(line: 135, column: 11, scope: !1464)
!1471 = !DILocation(line: 135, column: 46, scope: !1464)
!1472 = !{!1473, !1097, i64 0}
!1473 = !{!"quoting_options", !1097, i64 0, !1172, i64 4, !1097, i64 8, !1096, i64 40, !1096, i64 48}
!1474 = !DILocation(line: 135, column: 3, scope: !1464)
!1475 = distinct !DISubprogram(name: "set_quoting_style", scope: !239, file: !239, line: 141, type: !1476, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{null, !1453, !241}
!1478 = !{!1479, !1480}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1475, file: !239, line: 141, type: !1453)
!1480 = !DILocalVariable(name: "s", arg: 2, scope: !1475, file: !239, line: 141, type: !241)
!1481 = !DILocation(line: 0, scope: !1475)
!1482 = !DILocation(line: 143, column: 4, scope: !1475)
!1483 = !DILocation(line: 143, column: 39, scope: !1475)
!1484 = !DILocation(line: 143, column: 45, scope: !1475)
!1485 = !DILocation(line: 144, column: 1, scope: !1475)
!1486 = distinct !DISubprogram(name: "set_char_quoting", scope: !239, file: !239, line: 152, type: !1487, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!14, !1453, !11, !14}
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1496, !1497}
!1490 = !DILocalVariable(name: "o", arg: 1, scope: !1486, file: !239, line: 152, type: !1453)
!1491 = !DILocalVariable(name: "c", arg: 2, scope: !1486, file: !239, line: 152, type: !11)
!1492 = !DILocalVariable(name: "i", arg: 3, scope: !1486, file: !239, line: 152, type: !14)
!1493 = !DILocalVariable(name: "uc", scope: !1486, file: !239, line: 154, type: !133)
!1494 = !DILocalVariable(name: "p", scope: !1486, file: !239, line: 155, type: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!1496 = !DILocalVariable(name: "shift", scope: !1486, file: !239, line: 157, type: !14)
!1497 = !DILocalVariable(name: "r", scope: !1486, file: !239, line: 158, type: !14)
!1498 = !DILocation(line: 0, scope: !1486)
!1499 = !DILocation(line: 156, column: 6, scope: !1486)
!1500 = !DILocation(line: 156, column: 62, scope: !1486)
!1501 = !DILocation(line: 156, column: 57, scope: !1486)
!1502 = !DILocation(line: 157, column: 15, scope: !1486)
!1503 = !DILocation(line: 158, column: 12, scope: !1486)
!1504 = !DILocation(line: 158, column: 15, scope: !1486)
!1505 = !DILocation(line: 158, column: 25, scope: !1486)
!1506 = !DILocation(line: 159, column: 13, scope: !1486)
!1507 = !DILocation(line: 159, column: 18, scope: !1486)
!1508 = !DILocation(line: 159, column: 23, scope: !1486)
!1509 = !DILocation(line: 159, column: 6, scope: !1486)
!1510 = !DILocation(line: 160, column: 3, scope: !1486)
!1511 = distinct !DISubprogram(name: "set_quoting_flags", scope: !239, file: !239, line: 168, type: !1512, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!14, !1453, !14}
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !239, line: 168, type: !1453)
!1516 = !DILocalVariable(name: "i", arg: 2, scope: !1511, file: !239, line: 168, type: !14)
!1517 = !DILocalVariable(name: "r", scope: !1511, file: !239, line: 170, type: !14)
!1518 = !DILocation(line: 0, scope: !1511)
!1519 = !DILocation(line: 171, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1511, file: !239, line: 171, column: 7)
!1521 = !DILocation(line: 171, column: 7, scope: !1511)
!1522 = !DILocation(line: 173, column: 10, scope: !1511)
!1523 = !{!1473, !1172, i64 4}
!1524 = !DILocation(line: 174, column: 12, scope: !1511)
!1525 = !DILocation(line: 175, column: 3, scope: !1511)
!1526 = distinct !DISubprogram(name: "set_custom_quoting", scope: !239, file: !239, line: 179, type: !1527, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1529)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1453, !12, !12}
!1529 = !{!1530, !1531, !1532}
!1530 = !DILocalVariable(name: "o", arg: 1, scope: !1526, file: !239, line: 179, type: !1453)
!1531 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1526, file: !239, line: 180, type: !12)
!1532 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1526, file: !239, line: 180, type: !12)
!1533 = !DILocation(line: 0, scope: !1526)
!1534 = !DILocation(line: 182, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !239, line: 182, column: 7)
!1536 = !DILocation(line: 182, column: 7, scope: !1526)
!1537 = !DILocation(line: 184, column: 6, scope: !1526)
!1538 = !DILocation(line: 184, column: 12, scope: !1526)
!1539 = !DILocation(line: 185, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1526, file: !239, line: 185, column: 7)
!1541 = !DILocation(line: 185, column: 23, scope: !1540)
!1542 = !DILocation(line: 185, column: 19, scope: !1540)
!1543 = !DILocation(line: 186, column: 5, scope: !1540)
!1544 = !DILocation(line: 187, column: 6, scope: !1526)
!1545 = !DILocation(line: 187, column: 17, scope: !1526)
!1546 = !{!1473, !1096, i64 40}
!1547 = !DILocation(line: 188, column: 6, scope: !1526)
!1548 = !DILocation(line: 188, column: 18, scope: !1526)
!1549 = !{!1473, !1096, i64 48}
!1550 = !DILocation(line: 189, column: 1, scope: !1526)
!1551 = distinct !DISubprogram(name: "quotearg_buffer", scope: !239, file: !239, line: 784, type: !1552, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!68, !10, !68, !12, !68, !286}
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562}
!1555 = !DILocalVariable(name: "buffer", arg: 1, scope: !1551, file: !239, line: 784, type: !10)
!1556 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1551, file: !239, line: 784, type: !68)
!1557 = !DILocalVariable(name: "arg", arg: 3, scope: !1551, file: !239, line: 785, type: !12)
!1558 = !DILocalVariable(name: "argsize", arg: 4, scope: !1551, file: !239, line: 785, type: !68)
!1559 = !DILocalVariable(name: "o", arg: 5, scope: !1551, file: !239, line: 786, type: !286)
!1560 = !DILocalVariable(name: "p", scope: !1551, file: !239, line: 788, type: !286)
!1561 = !DILocalVariable(name: "e", scope: !1551, file: !239, line: 789, type: !14)
!1562 = !DILocalVariable(name: "r", scope: !1551, file: !239, line: 790, type: !68)
!1563 = !DILocation(line: 0, scope: !1551)
!1564 = !DILocation(line: 788, column: 37, scope: !1551)
!1565 = !DILocation(line: 789, column: 11, scope: !1551)
!1566 = !DILocation(line: 791, column: 43, scope: !1551)
!1567 = !DILocation(line: 791, column: 53, scope: !1551)
!1568 = !DILocation(line: 791, column: 60, scope: !1551)
!1569 = !DILocation(line: 792, column: 43, scope: !1551)
!1570 = !DILocation(line: 792, column: 58, scope: !1551)
!1571 = !DILocation(line: 790, column: 14, scope: !1551)
!1572 = !DILocation(line: 793, column: 9, scope: !1551)
!1573 = !DILocation(line: 794, column: 3, scope: !1551)
!1574 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !239, file: !239, line: 256, type: !1575, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1579)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!68, !10, !68, !12, !68, !241, !14, !1577, !12, !12}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1604, !1605, !1606, !1607, !1608, !1611, !1612, !1618, !1621, !1622, !1629, !1632, !1633, !1634, !1635, !1636, !1637}
!1580 = !DILocalVariable(name: "buffer", arg: 1, scope: !1574, file: !239, line: 256, type: !10)
!1581 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1574, file: !239, line: 256, type: !68)
!1582 = !DILocalVariable(name: "arg", arg: 3, scope: !1574, file: !239, line: 257, type: !12)
!1583 = !DILocalVariable(name: "argsize", arg: 4, scope: !1574, file: !239, line: 257, type: !68)
!1584 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1574, file: !239, line: 258, type: !241)
!1585 = !DILocalVariable(name: "flags", arg: 6, scope: !1574, file: !239, line: 258, type: !14)
!1586 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1574, file: !239, line: 259, type: !1577)
!1587 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1574, file: !239, line: 260, type: !12)
!1588 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1574, file: !239, line: 261, type: !12)
!1589 = !DILocalVariable(name: "i", scope: !1574, file: !239, line: 263, type: !68)
!1590 = !DILocalVariable(name: "len", scope: !1574, file: !239, line: 264, type: !68)
!1591 = !DILocalVariable(name: "orig_buffersize", scope: !1574, file: !239, line: 265, type: !68)
!1592 = !DILocalVariable(name: "quote_string", scope: !1574, file: !239, line: 266, type: !12)
!1593 = !DILocalVariable(name: "quote_string_len", scope: !1574, file: !239, line: 267, type: !68)
!1594 = !DILocalVariable(name: "backslash_escapes", scope: !1574, file: !239, line: 268, type: !129)
!1595 = !DILocalVariable(name: "unibyte_locale", scope: !1574, file: !239, line: 269, type: !129)
!1596 = !DILocalVariable(name: "elide_outer_quotes", scope: !1574, file: !239, line: 270, type: !129)
!1597 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1574, file: !239, line: 271, type: !129)
!1598 = !DILocalVariable(name: "encountered_single_quote", scope: !1574, file: !239, line: 272, type: !129)
!1599 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1574, file: !239, line: 273, type: !129)
!1600 = !DILocalVariable(name: "c", scope: !1601, file: !239, line: 402, type: !133)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !239, line: 401, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !239, line: 400, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 400, column: 3)
!1604 = !DILocalVariable(name: "esc", scope: !1601, file: !239, line: 403, type: !133)
!1605 = !DILocalVariable(name: "is_right_quote", scope: !1601, file: !239, line: 404, type: !129)
!1606 = !DILocalVariable(name: "escaping", scope: !1601, file: !239, line: 405, type: !129)
!1607 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1601, file: !239, line: 406, type: !129)
!1608 = !DILocalVariable(name: "m", scope: !1609, file: !239, line: 610, type: !68)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 608, column: 11)
!1610 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 426, column: 9)
!1611 = !DILocalVariable(name: "printable", scope: !1609, file: !239, line: 612, type: !129)
!1612 = !DILocalVariable(name: "mbstate", scope: !1613, file: !239, line: 621, type: !1615)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !239, line: 620, column: 15)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !239, line: 614, column: 17)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1616, line: 6, baseType: !1617)
!1616 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !307, line: 21, baseType: !306)
!1618 = !DILocalVariable(name: "w", scope: !1619, file: !239, line: 631, type: !1620)
!1619 = distinct !DILexicalBlock(scope: !1613, file: !239, line: 630, column: 19)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1621 = !DILocalVariable(name: "bytes", scope: !1619, file: !239, line: 632, type: !68)
!1622 = !DILocalVariable(name: "j", scope: !1623, file: !239, line: 657, type: !68)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !239, line: 656, column: 27)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !239, line: 654, column: 29)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !239, line: 649, column: 23)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !239, line: 641, column: 30)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !239, line: 636, column: 30)
!1628 = distinct !DILexicalBlock(scope: !1619, file: !239, line: 634, column: 25)
!1629 = !DILocalVariable(name: "ilim", scope: !1630, file: !239, line: 684, type: !68)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !239, line: 681, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1609, file: !239, line: 680, column: 17)
!1632 = !DILabel(scope: !1574, name: "process_input", file: !239, line: 314)
!1633 = !DILabel(scope: !1610, name: "c_and_shell_escape", file: !239, line: 512)
!1634 = !DILabel(scope: !1610, name: "c_escape", file: !239, line: 517)
!1635 = !DILabel(scope: !1601, name: "store_escape", file: !239, line: 719)
!1636 = !DILabel(scope: !1601, name: "store_c", file: !239, line: 722)
!1637 = !DILabel(scope: !1574, name: "force_outer_quoting_style", file: !239, line: 763)
!1638 = !DILocation(line: 0, scope: !1574)
!1639 = !DILocation(line: 269, column: 25, scope: !1574)
!1640 = !DILocation(line: 269, column: 36, scope: !1574)
!1641 = !DILocation(line: 270, column: 8, scope: !1574)
!1642 = !DILocation(line: 0, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 526, column: 15)
!1644 = !DILocation(line: 0, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !239, line: 462, column: 19)
!1646 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 455, column: 13)
!1647 = !DILocation(line: 0, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !239, line: 449, column: 20)
!1649 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 428, column: 15)
!1650 = !DILocation(line: 0, scope: !1613)
!1651 = !DILocation(line: 0, scope: !1619)
!1652 = !DILocation(line: 0, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 712, column: 11)
!1654 = !DILocation(line: 273, column: 3, scope: !1574)
!1655 = !DILocation(line: 265, column: 10, scope: !1574)
!1656 = !DILocation(line: 266, column: 15, scope: !1574)
!1657 = !DILocation(line: 267, column: 10, scope: !1574)
!1658 = !DILocation(line: 268, column: 8, scope: !1574)
!1659 = !DILocation(line: 271, column: 8, scope: !1574)
!1660 = !DILocation(line: 272, column: 8, scope: !1574)
!1661 = !DILocation(line: 273, column: 8, scope: !1574)
!1662 = !DILocation(line: 314, column: 2, scope: !1574)
!1663 = !DILocation(line: 316, column: 3, scope: !1574)
!1664 = !DILocation(line: 323, column: 11, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 317, column: 5)
!1666 = !DILocation(line: 323, column: 12, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !239, line: 323, column: 11)
!1668 = !DILocation(line: 324, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !239, line: 324, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !239, line: 324, column: 9)
!1671 = !DILocation(line: 324, column: 9, scope: !1670)
!1672 = !DILocation(line: 362, column: 26, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !239, line: 340, column: 11)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !239, line: 339, column: 13)
!1675 = distinct !DILexicalBlock(scope: !1665, file: !239, line: 338, column: 7)
!1676 = !DILocation(line: 363, column: 27, scope: !1673)
!1677 = !DILocation(line: 364, column: 11, scope: !1673)
!1678 = !DILocation(line: 365, column: 14, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !239, line: 365, column: 13)
!1680 = !DILocation(line: 365, column: 13, scope: !1675)
!1681 = !DILocation(line: 366, column: 43, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !239, line: 366, column: 11)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !239, line: 366, column: 11)
!1684 = !DILocation(line: 366, column: 11, scope: !1683)
!1685 = !DILocation(line: 367, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !239, line: 367, column: 13)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !239, line: 367, column: 13)
!1688 = !DILocation(line: 367, column: 13, scope: !1687)
!1689 = !DILocation(line: 366, column: 70, scope: !1682)
!1690 = distinct !{!1690, !1684, !1691}
!1691 = !DILocation(line: 367, column: 13, scope: !1683)
!1692 = !DILocation(line: 264, column: 10, scope: !1574)
!1693 = !DILocation(line: 370, column: 28, scope: !1675)
!1694 = !DILocation(line: 372, column: 7, scope: !1665)
!1695 = !DILocation(line: 376, column: 7, scope: !1665)
!1696 = !DILocation(line: 379, column: 7, scope: !1665)
!1697 = !DILocation(line: 381, column: 12, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1665, file: !239, line: 381, column: 11)
!1699 = !DILocation(line: 381, column: 11, scope: !1665)
!1700 = !DILocation(line: 386, column: 12, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1665, file: !239, line: 386, column: 11)
!1702 = !DILocation(line: 386, column: 11, scope: !1665)
!1703 = !DILocation(line: 387, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !239, line: 387, column: 9)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !239, line: 387, column: 9)
!1706 = !DILocation(line: 387, column: 9, scope: !1705)
!1707 = !DILocation(line: 394, column: 7, scope: !1665)
!1708 = !DILocation(line: 397, column: 7, scope: !1665)
!1709 = !DILocation(line: 0, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 408, column: 11)
!1711 = !DILocation(line: 0, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !239, line: 419, column: 15)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !239, line: 418, column: 9)
!1714 = !DILocation(line: 0, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 556, column: 15)
!1716 = !DILocation(line: 0, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 548, column: 15)
!1718 = !DILocation(line: 0, scope: !1624)
!1719 = !DILocation(line: 0, scope: !1631)
!1720 = !DILocation(line: 0, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 509, column: 15)
!1722 = !DILocation(line: 400, column: 8, scope: !1603)
!1723 = !DILocation(line: 0, scope: !1603)
!1724 = !DILocation(line: 400, column: 27, scope: !1602)
!1725 = !DILocation(line: 400, column: 19, scope: !1602)
!1726 = !DILocation(line: 400, column: 41, scope: !1602)
!1727 = !DILocation(line: 400, column: 48, scope: !1602)
!1728 = !DILocation(line: 400, column: 3, scope: !1603)
!1729 = !DILocation(line: 400, column: 60, scope: !1602)
!1730 = !DILocation(line: 0, scope: !1601)
!1731 = !DILocation(line: 409, column: 11, scope: !1710)
!1732 = !DILocation(line: 411, column: 17, scope: !1710)
!1733 = !DILocation(line: 412, column: 39, scope: !1710)
!1734 = !DILocation(line: 416, column: 32, scope: !1710)
!1735 = !DILocation(line: 412, column: 19, scope: !1710)
!1736 = !DILocation(line: 412, column: 15, scope: !1710)
!1737 = !DILocation(line: 417, column: 11, scope: !1710)
!1738 = !DILocation(line: 417, column: 26, scope: !1710)
!1739 = !DILocation(line: 417, column: 14, scope: !1710)
!1740 = !DILocation(line: 417, column: 63, scope: !1710)
!1741 = !DILocation(line: 408, column: 11, scope: !1601)
!1742 = !DILocation(line: 424, column: 11, scope: !1601)
!1743 = !DILocation(line: 425, column: 7, scope: !1601)
!1744 = !DILocation(line: 428, column: 15, scope: !1610)
!1745 = !DILocation(line: 430, column: 15, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !239, line: 430, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1649, file: !239, line: 429, column: 13)
!1748 = !DILocation(line: 430, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !239, line: 430, column: 15)
!1750 = !DILocation(line: 430, column: 15, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !239, line: 430, column: 15)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !239, line: 430, column: 15)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !239, line: 430, column: 15)
!1754 = !DILocation(line: 430, column: 15, scope: !1752)
!1755 = !DILocation(line: 430, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !239, line: 430, column: 15)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !239, line: 430, column: 15)
!1758 = !DILocation(line: 430, column: 15, scope: !1757)
!1759 = !DILocation(line: 430, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !239, line: 430, column: 15)
!1761 = distinct !DILexicalBlock(scope: !1753, file: !239, line: 430, column: 15)
!1762 = !DILocation(line: 430, column: 15, scope: !1761)
!1763 = !DILocation(line: 430, column: 15, scope: !1753)
!1764 = !DILocation(line: 430, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !239, line: 430, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1746, file: !239, line: 430, column: 15)
!1767 = !DILocation(line: 430, column: 15, scope: !1766)
!1768 = !DILocation(line: 438, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1747, file: !239, line: 437, column: 19)
!1770 = !DILocation(line: 438, column: 24, scope: !1769)
!1771 = !DILocation(line: 438, column: 28, scope: !1769)
!1772 = !DILocation(line: 438, column: 38, scope: !1769)
!1773 = !DILocation(line: 438, column: 48, scope: !1769)
!1774 = !DILocation(line: 438, column: 59, scope: !1769)
!1775 = !DILocation(line: 440, column: 19, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !239, line: 440, column: 19)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !239, line: 440, column: 19)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !239, line: 439, column: 17)
!1779 = !DILocation(line: 440, column: 19, scope: !1777)
!1780 = !DILocation(line: 441, column: 19, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !239, line: 441, column: 19)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !239, line: 441, column: 19)
!1783 = !DILocation(line: 441, column: 19, scope: !1782)
!1784 = !DILocation(line: 442, column: 17, scope: !1778)
!1785 = !DILocation(line: 449, column: 20, scope: !1649)
!1786 = !DILocation(line: 454, column: 11, scope: !1610)
!1787 = !DILocation(line: 457, column: 19, scope: !1646)
!1788 = !DILocation(line: 463, column: 19, scope: !1645)
!1789 = !DILocation(line: 463, column: 24, scope: !1645)
!1790 = !DILocation(line: 463, column: 28, scope: !1645)
!1791 = !DILocation(line: 463, column: 38, scope: !1645)
!1792 = !DILocation(line: 463, column: 47, scope: !1645)
!1793 = !DILocation(line: 463, column: 41, scope: !1645)
!1794 = !DILocation(line: 463, column: 52, scope: !1645)
!1795 = !DILocation(line: 462, column: 19, scope: !1646)
!1796 = !DILocation(line: 464, column: 25, scope: !1645)
!1797 = !DILocation(line: 464, column: 17, scope: !1645)
!1798 = !DILocation(line: 471, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1645, file: !239, line: 465, column: 19)
!1800 = !DILocation(line: 475, column: 21, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !239, line: 475, column: 21)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !239, line: 475, column: 21)
!1803 = !DILocation(line: 475, column: 21, scope: !1802)
!1804 = !DILocation(line: 476, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !239, line: 476, column: 21)
!1806 = distinct !DILexicalBlock(scope: !1799, file: !239, line: 476, column: 21)
!1807 = !DILocation(line: 476, column: 21, scope: !1806)
!1808 = !DILocation(line: 477, column: 21, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !239, line: 477, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1799, file: !239, line: 477, column: 21)
!1811 = !DILocation(line: 477, column: 21, scope: !1810)
!1812 = !DILocation(line: 478, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !239, line: 478, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1799, file: !239, line: 478, column: 21)
!1815 = !DILocation(line: 478, column: 21, scope: !1814)
!1816 = !DILocation(line: 479, column: 21, scope: !1799)
!1817 = !DILocation(line: 492, column: 31, scope: !1610)
!1818 = !DILocation(line: 493, column: 31, scope: !1610)
!1819 = !DILocation(line: 495, column: 31, scope: !1610)
!1820 = !DILocation(line: 496, column: 31, scope: !1610)
!1821 = !DILocation(line: 497, column: 31, scope: !1610)
!1822 = !DILocation(line: 500, column: 15, scope: !1610)
!1823 = !DILocation(line: 502, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !239, line: 501, column: 13)
!1825 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 500, column: 15)
!1826 = !DILocation(line: 509, column: 33, scope: !1721)
!1827 = !DILocation(line: 0, scope: !1610)
!1828 = !DILocation(line: 512, column: 9, scope: !1610)
!1829 = !DILocation(line: 514, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 513, column: 15)
!1831 = !DILocation(line: 517, column: 9, scope: !1610)
!1832 = !DILocation(line: 518, column: 15, scope: !1610)
!1833 = !DILocation(line: 526, column: 15, scope: !1610)
!1834 = !DILocation(line: 526, column: 40, scope: !1643)
!1835 = !DILocation(line: 526, column: 47, scope: !1643)
!1836 = !DILocation(line: 526, column: 18, scope: !1643)
!1837 = !DILocation(line: 530, column: 17, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1610, file: !239, line: 530, column: 15)
!1839 = !DILocation(line: 530, column: 15, scope: !1610)
!1840 = !DILocation(line: 535, column: 11, scope: !1610)
!1841 = !DILocation(line: 549, column: 15, scope: !1717)
!1842 = !DILocation(line: 556, column: 15, scope: !1610)
!1843 = !DILocation(line: 558, column: 19, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1715, file: !239, line: 557, column: 13)
!1845 = !DILocation(line: 561, column: 19, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1844, file: !239, line: 561, column: 19)
!1847 = !DILocation(line: 561, column: 35, scope: !1846)
!1848 = !DILocation(line: 561, column: 30, scope: !1846)
!1849 = !DILocation(line: 570, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !239, line: 570, column: 15)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !239, line: 570, column: 15)
!1852 = !DILocation(line: 570, column: 15, scope: !1851)
!1853 = !DILocation(line: 571, column: 15, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !239, line: 571, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1844, file: !239, line: 571, column: 15)
!1856 = !DILocation(line: 571, column: 15, scope: !1855)
!1857 = !DILocation(line: 572, column: 15, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !239, line: 572, column: 15)
!1859 = distinct !DILexicalBlock(scope: !1844, file: !239, line: 572, column: 15)
!1860 = !DILocation(line: 572, column: 15, scope: !1859)
!1861 = !DILocation(line: 574, column: 13, scope: !1844)
!1862 = !DILocation(line: 614, column: 17, scope: !1609)
!1863 = !DILocation(line: 0, scope: !1609)
!1864 = !DILocation(line: 617, column: 29, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1614, file: !239, line: 615, column: 15)
!1866 = !{!1274, !1274, i64 0}
!1867 = !DILocation(line: 617, column: 27, scope: !1865)
!1868 = !DILocation(line: 618, column: 15, scope: !1865)
!1869 = !DILocation(line: 621, column: 17, scope: !1613)
!1870 = !DILocation(line: 621, column: 27, scope: !1613)
!1871 = !DILocalVariable(name: "__dest", arg: 1, scope: !1872, file: !1873, line: 59, type: !66)
!1872 = distinct !DISubprogram(name: "memset", scope: !1873, file: !1873, line: 59, type: !1874, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !1876)
!1873 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!66, !66, !14, !68}
!1876 = !{!1871, !1877, !1878}
!1877 = !DILocalVariable(name: "__ch", arg: 2, scope: !1872, file: !1873, line: 59, type: !14)
!1878 = !DILocalVariable(name: "__len", arg: 3, scope: !1872, file: !1873, line: 59, type: !68)
!1879 = !DILocation(line: 0, scope: !1872, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 622, column: 17, scope: !1613)
!1881 = !DILocation(line: 71, column: 10, scope: !1872, inlinedAt: !1880)
!1882 = !DILocation(line: 626, column: 29, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1613, file: !239, line: 626, column: 21)
!1884 = !DILocation(line: 626, column: 21, scope: !1613)
!1885 = !DILocation(line: 627, column: 29, scope: !1883)
!1886 = !DILocation(line: 627, column: 19, scope: !1883)
!1887 = !DILocation(line: 629, column: 17, scope: !1613)
!1888 = !DILocation(line: 624, column: 19, scope: !1613)
!1889 = !DILocation(line: 625, column: 27, scope: !1613)
!1890 = !DILocation(line: 631, column: 21, scope: !1619)
!1891 = !DILocation(line: 632, column: 56, scope: !1619)
!1892 = !DILocation(line: 632, column: 50, scope: !1619)
!1893 = !DILocation(line: 633, column: 53, scope: !1619)
!1894 = !DILocation(line: 632, column: 36, scope: !1619)
!1895 = !DILocation(line: 634, column: 25, scope: !1619)
!1896 = !DILocation(line: 644, column: 38, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1626, file: !239, line: 642, column: 23)
!1898 = !DILocation(line: 644, column: 48, scope: !1897)
!1899 = !DILocation(line: 644, column: 25, scope: !1897)
!1900 = !DILocation(line: 644, column: 51, scope: !1897)
!1901 = !DILocation(line: 645, column: 28, scope: !1897)
!1902 = !DILocation(line: 644, column: 34, scope: !1897)
!1903 = distinct !{!1903, !1899, !1901}
!1904 = !DILocation(line: 658, column: 43, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !239, line: 658, column: 29)
!1906 = distinct !DILexicalBlock(scope: !1623, file: !239, line: 658, column: 29)
!1907 = !DILocation(line: 655, column: 29, scope: !1624)
!1908 = !DILocation(line: 0, scope: !1623)
!1909 = !DILocation(line: 659, column: 49, scope: !1905)
!1910 = !DILocation(line: 659, column: 39, scope: !1905)
!1911 = !DILocation(line: 659, column: 31, scope: !1905)
!1912 = !DILocation(line: 658, column: 53, scope: !1905)
!1913 = !DILocation(line: 658, column: 29, scope: !1906)
!1914 = distinct !{!1914, !1913, !1915}
!1915 = !DILocation(line: 667, column: 33, scope: !1906)
!1916 = !DILocation(line: 674, column: 19, scope: !1613)
!1917 = !DILocation(line: 670, column: 41, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1625, file: !239, line: 670, column: 29)
!1919 = !DILocation(line: 670, column: 31, scope: !1918)
!1920 = !DILocation(line: 670, column: 29, scope: !1625)
!1921 = !DILocation(line: 672, column: 27, scope: !1625)
!1922 = !DILocation(line: 675, column: 26, scope: !1613)
!1923 = !DILocation(line: 675, column: 24, scope: !1613)
!1924 = !DILocation(line: 674, column: 19, scope: !1619)
!1925 = distinct !{!1925, !1887, !1926}
!1926 = !DILocation(line: 675, column: 44, scope: !1613)
!1927 = !DILocation(line: 676, column: 15, scope: !1614)
!1928 = !DILocation(line: 0, scope: !1614)
!1929 = !DILocation(line: 678, column: 40, scope: !1609)
!1930 = !DILocation(line: 680, column: 19, scope: !1631)
!1931 = !DILocation(line: 680, column: 45, scope: !1631)
!1932 = !DILocation(line: 680, column: 23, scope: !1631)
!1933 = !DILocation(line: 684, column: 33, scope: !1630)
!1934 = !DILocation(line: 0, scope: !1630)
!1935 = !DILocation(line: 686, column: 17, scope: !1630)
!1936 = !DILocation(line: 405, column: 12, scope: !1601)
!1937 = !DILocation(line: 688, column: 43, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !239, line: 688, column: 25)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !239, line: 687, column: 19)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !239, line: 686, column: 17)
!1941 = distinct !DILexicalBlock(scope: !1630, file: !239, line: 686, column: 17)
!1942 = !DILocation(line: 690, column: 25, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !239, line: 690, column: 25)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !239, line: 689, column: 23)
!1945 = !DILocation(line: 690, column: 25, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !239, line: 690, column: 25)
!1947 = !DILocation(line: 690, column: 25, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !239, line: 690, column: 25)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !239, line: 690, column: 25)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !239, line: 690, column: 25)
!1951 = !DILocation(line: 690, column: 25, scope: !1949)
!1952 = !DILocation(line: 690, column: 25, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !239, line: 690, column: 25)
!1954 = distinct !DILexicalBlock(scope: !1950, file: !239, line: 690, column: 25)
!1955 = !DILocation(line: 690, column: 25, scope: !1954)
!1956 = !DILocation(line: 690, column: 25, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !239, line: 690, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1950, file: !239, line: 690, column: 25)
!1959 = !DILocation(line: 690, column: 25, scope: !1958)
!1960 = !DILocation(line: 690, column: 25, scope: !1950)
!1961 = !DILocation(line: 690, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !239, line: 690, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1943, file: !239, line: 690, column: 25)
!1964 = !DILocation(line: 690, column: 25, scope: !1963)
!1965 = !DILocation(line: 691, column: 25, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !239, line: 691, column: 25)
!1967 = distinct !DILexicalBlock(scope: !1944, file: !239, line: 691, column: 25)
!1968 = !DILocation(line: 691, column: 25, scope: !1967)
!1969 = !DILocation(line: 692, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !239, line: 692, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1944, file: !239, line: 692, column: 25)
!1972 = !DILocation(line: 692, column: 25, scope: !1971)
!1973 = !DILocation(line: 693, column: 38, scope: !1944)
!1974 = !DILocation(line: 693, column: 33, scope: !1944)
!1975 = !DILocation(line: 694, column: 23, scope: !1944)
!1976 = !DILocation(line: 695, column: 30, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1938, file: !239, line: 695, column: 30)
!1978 = !DILocation(line: 695, column: 30, scope: !1938)
!1979 = !DILocation(line: 697, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !239, line: 697, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !239, line: 697, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !239, line: 696, column: 23)
!1983 = !DILocation(line: 697, column: 25, scope: !1981)
!1984 = !DILocation(line: 699, column: 23, scope: !1982)
!1985 = !DILocation(line: 700, column: 35, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1939, file: !239, line: 700, column: 25)
!1987 = !DILocation(line: 700, column: 30, scope: !1986)
!1988 = !DILocation(line: 700, column: 25, scope: !1939)
!1989 = !DILocation(line: 702, column: 21, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !239, line: 702, column: 21)
!1991 = distinct !DILexicalBlock(scope: !1939, file: !239, line: 702, column: 21)
!1992 = !DILocation(line: 702, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !239, line: 702, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !239, line: 702, column: 21)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !239, line: 702, column: 21)
!1996 = !DILocation(line: 702, column: 21, scope: !1994)
!1997 = !DILocation(line: 702, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !239, line: 702, column: 21)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !239, line: 702, column: 21)
!2000 = !DILocation(line: 702, column: 21, scope: !1999)
!2001 = !DILocation(line: 702, column: 21, scope: !1995)
!2002 = !DILocation(line: 0, scope: !1939)
!2003 = !DILocation(line: 703, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !239, line: 703, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1939, file: !239, line: 703, column: 21)
!2006 = !DILocation(line: 703, column: 21, scope: !2005)
!2007 = !DILocation(line: 704, column: 25, scope: !1939)
!2008 = !DILocation(line: 686, column: 17, scope: !1940)
!2009 = distinct !{!2009, !2010, !2011}
!2010 = !DILocation(line: 686, column: 17, scope: !1941)
!2011 = !DILocation(line: 705, column: 19, scope: !1941)
!2012 = !DILocation(line: 416, column: 30, scope: !1710)
!2013 = !DILocation(line: 712, column: 34, scope: !1653)
!2014 = !DILocation(line: 715, column: 35, scope: !1653)
!2015 = !DILocation(line: 715, column: 17, scope: !1653)
!2016 = !DILocation(line: 715, column: 47, scope: !1653)
!2017 = !DILocation(line: 715, column: 65, scope: !1653)
!2018 = !DILocation(line: 716, column: 15, scope: !1653)
!2019 = !DILocation(line: 716, column: 11, scope: !1653)
!2020 = !DILocation(line: 712, column: 11, scope: !1601)
!2021 = !DILocation(line: 400, column: 10, scope: !1603)
!2022 = !DILocation(line: 719, column: 5, scope: !1601)
!2023 = !DILocation(line: 720, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 720, column: 7)
!2025 = !DILocation(line: 720, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2024, file: !239, line: 720, column: 7)
!2027 = !DILocation(line: 720, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !239, line: 720, column: 7)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !239, line: 720, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !239, line: 720, column: 7)
!2031 = !DILocation(line: 720, column: 7, scope: !2029)
!2032 = !DILocation(line: 720, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !239, line: 720, column: 7)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !239, line: 720, column: 7)
!2035 = !DILocation(line: 720, column: 7, scope: !2034)
!2036 = !DILocation(line: 720, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !239, line: 720, column: 7)
!2038 = distinct !DILexicalBlock(scope: !2030, file: !239, line: 720, column: 7)
!2039 = !DILocation(line: 720, column: 7, scope: !2038)
!2040 = !DILocation(line: 720, column: 7, scope: !2030)
!2041 = !DILocation(line: 720, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !239, line: 720, column: 7)
!2043 = distinct !DILexicalBlock(scope: !2024, file: !239, line: 720, column: 7)
!2044 = !DILocation(line: 720, column: 7, scope: !2043)
!2045 = !DILocation(line: 722, column: 5, scope: !1601)
!2046 = !DILocation(line: 723, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !239, line: 723, column: 7)
!2048 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 723, column: 7)
!2049 = !DILocation(line: 424, column: 9, scope: !1601)
!2050 = !DILocation(line: 723, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !239, line: 723, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !239, line: 723, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2047, file: !239, line: 723, column: 7)
!2054 = !DILocation(line: 723, column: 7, scope: !2052)
!2055 = !DILocation(line: 723, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !239, line: 723, column: 7)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !239, line: 723, column: 7)
!2058 = !DILocation(line: 723, column: 7, scope: !2057)
!2059 = !DILocation(line: 723, column: 7, scope: !2053)
!2060 = !DILocation(line: 724, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !239, line: 724, column: 7)
!2062 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 724, column: 7)
!2063 = !DILocation(line: 724, column: 7, scope: !2062)
!2064 = !DILocation(line: 726, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1601, file: !239, line: 726, column: 11)
!2066 = !DILocation(line: 726, column: 11, scope: !1601)
!2067 = !DILocation(line: 728, column: 5, scope: !1602)
!2068 = !DILocation(line: 400, column: 75, scope: !1602)
!2069 = !DILocation(line: 400, column: 3, scope: !1602)
!2070 = distinct !{!2070, !1728, !2071}
!2071 = !DILocation(line: 728, column: 5, scope: !1603)
!2072 = !DILocation(line: 730, column: 11, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 730, column: 7)
!2074 = !DILocation(line: 730, column: 16, scope: !2073)
!2075 = !DILocation(line: 738, column: 51, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 738, column: 7)
!2077 = !DILocation(line: 739, column: 10, scope: !2076)
!2078 = !DILocation(line: 741, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !239, line: 741, column: 11)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !239, line: 740, column: 5)
!2081 = !DILocation(line: 741, column: 11, scope: !2080)
!2082 = !DILocation(line: 742, column: 16, scope: !2079)
!2083 = !DILocation(line: 742, column: 9, scope: !2079)
!2084 = !DILocation(line: 746, column: 18, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !239, line: 746, column: 16)
!2086 = !DILocation(line: 746, column: 32, scope: !2085)
!2087 = !DILocation(line: 746, column: 29, scope: !2085)
!2088 = !DILocation(line: 755, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 755, column: 7)
!2090 = !DILocation(line: 755, column: 20, scope: !2089)
!2091 = !DILocation(line: 756, column: 12, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !239, line: 756, column: 5)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !239, line: 756, column: 5)
!2094 = !DILocation(line: 756, column: 5, scope: !2093)
!2095 = !DILocation(line: 757, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !239, line: 757, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2092, file: !239, line: 757, column: 7)
!2098 = !DILocation(line: 757, column: 7, scope: !2097)
!2099 = !DILocation(line: 756, column: 39, scope: !2092)
!2100 = distinct !{!2100, !2094, !2101}
!2101 = !DILocation(line: 757, column: 7, scope: !2093)
!2102 = !DILocation(line: 759, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 759, column: 7)
!2104 = !DILocation(line: 759, column: 7, scope: !1574)
!2105 = !DILocation(line: 760, column: 5, scope: !2103)
!2106 = !DILocation(line: 760, column: 17, scope: !2103)
!2107 = !DILocation(line: 763, column: 2, scope: !1574)
!2108 = !DILocation(line: 766, column: 51, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1574, file: !239, line: 766, column: 7)
!2110 = !DILocation(line: 766, column: 21, scope: !2109)
!2111 = !DILocation(line: 770, column: 42, scope: !1574)
!2112 = !DILocation(line: 768, column: 10, scope: !1574)
!2113 = !DILocation(line: 768, column: 3, scope: !1574)
!2114 = !DILocation(line: 772, column: 1, scope: !1574)
!2115 = distinct !DISubprogram(name: "gettext_quote", scope: !239, file: !239, line: 207, type: !2116, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!12, !12, !241}
!2118 = !{!2119, !2120, !2121, !2122}
!2119 = !DILocalVariable(name: "msgid", arg: 1, scope: !2115, file: !239, line: 207, type: !12)
!2120 = !DILocalVariable(name: "s", arg: 2, scope: !2115, file: !239, line: 207, type: !241)
!2121 = !DILocalVariable(name: "translation", scope: !2115, file: !239, line: 209, type: !12)
!2122 = !DILocalVariable(name: "locale_code", scope: !2115, file: !239, line: 210, type: !12)
!2123 = !DILocation(line: 0, scope: !2115)
!2124 = !DILocation(line: 209, column: 29, scope: !2115)
!2125 = !DILocation(line: 212, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2115, file: !239, line: 212, column: 7)
!2127 = !DILocation(line: 212, column: 7, scope: !2115)
!2128 = !DILocation(line: 233, column: 17, scope: !2115)
!2129 = !DILocalVariable(name: "s1", arg: 1, scope: !2130, file: !2131, line: 160, type: !12)
!2130 = distinct !DISubprogram(name: "strcaseeq0", scope: !2131, file: !2131, line: 160, type: !2132, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2134)
!2131 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2134 = !{!2129, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!2135 = !DILocalVariable(name: "s2", arg: 2, scope: !2130, file: !2131, line: 160, type: !12)
!2136 = !DILocalVariable(name: "s20", arg: 3, scope: !2130, file: !2131, line: 160, type: !11)
!2137 = !DILocalVariable(name: "s21", arg: 4, scope: !2130, file: !2131, line: 160, type: !11)
!2138 = !DILocalVariable(name: "s22", arg: 5, scope: !2130, file: !2131, line: 160, type: !11)
!2139 = !DILocalVariable(name: "s23", arg: 6, scope: !2130, file: !2131, line: 160, type: !11)
!2140 = !DILocalVariable(name: "s24", arg: 7, scope: !2130, file: !2131, line: 160, type: !11)
!2141 = !DILocalVariable(name: "s25", arg: 8, scope: !2130, file: !2131, line: 160, type: !11)
!2142 = !DILocalVariable(name: "s26", arg: 9, scope: !2130, file: !2131, line: 160, type: !11)
!2143 = !DILocalVariable(name: "s27", arg: 10, scope: !2130, file: !2131, line: 160, type: !11)
!2144 = !DILocalVariable(name: "s28", arg: 11, scope: !2130, file: !2131, line: 160, type: !11)
!2145 = !DILocation(line: 0, scope: !2130, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 234, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2115, file: !239, line: 234, column: 7)
!2148 = !DILocation(line: 162, column: 7, scope: !2149, inlinedAt: !2146)
!2149 = distinct !DILexicalBlock(scope: !2130, file: !2131, line: 162, column: 7)
!2150 = !DILocalVariable(name: "s1", arg: 1, scope: !2151, file: !2131, line: 146, type: !12)
!2151 = distinct !DISubprogram(name: "strcaseeq1", scope: !2131, file: !2131, line: 146, type: !2152, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2154 = !{!2150, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163}
!2155 = !DILocalVariable(name: "s2", arg: 2, scope: !2151, file: !2131, line: 146, type: !12)
!2156 = !DILocalVariable(name: "s21", arg: 3, scope: !2151, file: !2131, line: 146, type: !11)
!2157 = !DILocalVariable(name: "s22", arg: 4, scope: !2151, file: !2131, line: 146, type: !11)
!2158 = !DILocalVariable(name: "s23", arg: 5, scope: !2151, file: !2131, line: 146, type: !11)
!2159 = !DILocalVariable(name: "s24", arg: 6, scope: !2151, file: !2131, line: 146, type: !11)
!2160 = !DILocalVariable(name: "s25", arg: 7, scope: !2151, file: !2131, line: 146, type: !11)
!2161 = !DILocalVariable(name: "s26", arg: 8, scope: !2151, file: !2131, line: 146, type: !11)
!2162 = !DILocalVariable(name: "s27", arg: 9, scope: !2151, file: !2131, line: 146, type: !11)
!2163 = !DILocalVariable(name: "s28", arg: 10, scope: !2151, file: !2131, line: 146, type: !11)
!2164 = !DILocation(line: 0, scope: !2151, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 167, column: 16, scope: !2166, inlinedAt: !2146)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !2131, line: 164, column: 11)
!2167 = distinct !DILexicalBlock(scope: !2149, file: !2131, line: 163, column: 5)
!2168 = !DILocation(line: 148, column: 7, scope: !2169, inlinedAt: !2165)
!2169 = distinct !DILexicalBlock(scope: !2151, file: !2131, line: 148, column: 7)
!2170 = !DILocalVariable(name: "s1", arg: 1, scope: !2171, file: !2131, line: 132, type: !12)
!2171 = distinct !DISubprogram(name: "strcaseeq2", scope: !2131, file: !2131, line: 132, type: !2172, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2174 = !{!2170, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2175 = !DILocalVariable(name: "s2", arg: 2, scope: !2171, file: !2131, line: 132, type: !12)
!2176 = !DILocalVariable(name: "s22", arg: 3, scope: !2171, file: !2131, line: 132, type: !11)
!2177 = !DILocalVariable(name: "s23", arg: 4, scope: !2171, file: !2131, line: 132, type: !11)
!2178 = !DILocalVariable(name: "s24", arg: 5, scope: !2171, file: !2131, line: 132, type: !11)
!2179 = !DILocalVariable(name: "s25", arg: 6, scope: !2171, file: !2131, line: 132, type: !11)
!2180 = !DILocalVariable(name: "s26", arg: 7, scope: !2171, file: !2131, line: 132, type: !11)
!2181 = !DILocalVariable(name: "s27", arg: 8, scope: !2171, file: !2131, line: 132, type: !11)
!2182 = !DILocalVariable(name: "s28", arg: 9, scope: !2171, file: !2131, line: 132, type: !11)
!2183 = !DILocation(line: 0, scope: !2171, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 153, column: 16, scope: !2185, inlinedAt: !2165)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !2131, line: 150, column: 11)
!2186 = distinct !DILexicalBlock(scope: !2169, file: !2131, line: 149, column: 5)
!2187 = !DILocation(line: 134, column: 7, scope: !2188, inlinedAt: !2184)
!2188 = distinct !DILexicalBlock(scope: !2171, file: !2131, line: 134, column: 7)
!2189 = !DILocalVariable(name: "s1", arg: 1, scope: !2190, file: !2131, line: 118, type: !12)
!2190 = distinct !DISubprogram(name: "strcaseeq3", scope: !2131, file: !2131, line: 118, type: !2191, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2193)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2193 = !{!2189, !2194, !2195, !2196, !2197, !2198, !2199, !2200}
!2194 = !DILocalVariable(name: "s2", arg: 2, scope: !2190, file: !2131, line: 118, type: !12)
!2195 = !DILocalVariable(name: "s23", arg: 3, scope: !2190, file: !2131, line: 118, type: !11)
!2196 = !DILocalVariable(name: "s24", arg: 4, scope: !2190, file: !2131, line: 118, type: !11)
!2197 = !DILocalVariable(name: "s25", arg: 5, scope: !2190, file: !2131, line: 118, type: !11)
!2198 = !DILocalVariable(name: "s26", arg: 6, scope: !2190, file: !2131, line: 118, type: !11)
!2199 = !DILocalVariable(name: "s27", arg: 7, scope: !2190, file: !2131, line: 118, type: !11)
!2200 = !DILocalVariable(name: "s28", arg: 8, scope: !2190, file: !2131, line: 118, type: !11)
!2201 = !DILocation(line: 0, scope: !2190, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 139, column: 16, scope: !2203, inlinedAt: !2184)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !2131, line: 136, column: 11)
!2204 = distinct !DILexicalBlock(scope: !2188, file: !2131, line: 135, column: 5)
!2205 = !DILocation(line: 120, column: 7, scope: !2206, inlinedAt: !2202)
!2206 = distinct !DILexicalBlock(scope: !2190, file: !2131, line: 120, column: 7)
!2207 = !DILocation(line: 120, column: 7, scope: !2190, inlinedAt: !2202)
!2208 = !DILocalVariable(name: "s1", arg: 1, scope: !2209, file: !2131, line: 104, type: !12)
!2209 = distinct !DISubprogram(name: "strcaseeq4", scope: !2131, file: !2131, line: 104, type: !2210, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2212 = !{!2208, !2213, !2214, !2215, !2216, !2217, !2218}
!2213 = !DILocalVariable(name: "s2", arg: 2, scope: !2209, file: !2131, line: 104, type: !12)
!2214 = !DILocalVariable(name: "s24", arg: 3, scope: !2209, file: !2131, line: 104, type: !11)
!2215 = !DILocalVariable(name: "s25", arg: 4, scope: !2209, file: !2131, line: 104, type: !11)
!2216 = !DILocalVariable(name: "s26", arg: 5, scope: !2209, file: !2131, line: 104, type: !11)
!2217 = !DILocalVariable(name: "s27", arg: 6, scope: !2209, file: !2131, line: 104, type: !11)
!2218 = !DILocalVariable(name: "s28", arg: 7, scope: !2209, file: !2131, line: 104, type: !11)
!2219 = !DILocation(line: 0, scope: !2209, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 125, column: 16, scope: !2221, inlinedAt: !2202)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2131, line: 122, column: 11)
!2222 = distinct !DILexicalBlock(scope: !2206, file: !2131, line: 121, column: 5)
!2223 = !DILocation(line: 106, column: 7, scope: !2224, inlinedAt: !2220)
!2224 = distinct !DILexicalBlock(scope: !2209, file: !2131, line: 106, column: 7)
!2225 = !DILocation(line: 106, column: 7, scope: !2209, inlinedAt: !2220)
!2226 = !DILocalVariable(name: "s1", arg: 1, scope: !2227, file: !2131, line: 90, type: !12)
!2227 = distinct !DISubprogram(name: "strcaseeq5", scope: !2131, file: !2131, line: 90, type: !2228, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!14, !12, !12, !11, !11, !11, !11}
!2230 = !{!2226, !2231, !2232, !2233, !2234, !2235}
!2231 = !DILocalVariable(name: "s2", arg: 2, scope: !2227, file: !2131, line: 90, type: !12)
!2232 = !DILocalVariable(name: "s25", arg: 3, scope: !2227, file: !2131, line: 90, type: !11)
!2233 = !DILocalVariable(name: "s26", arg: 4, scope: !2227, file: !2131, line: 90, type: !11)
!2234 = !DILocalVariable(name: "s27", arg: 5, scope: !2227, file: !2131, line: 90, type: !11)
!2235 = !DILocalVariable(name: "s28", arg: 6, scope: !2227, file: !2131, line: 90, type: !11)
!2236 = !DILocation(line: 0, scope: !2227, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 111, column: 16, scope: !2238, inlinedAt: !2220)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !2131, line: 108, column: 11)
!2239 = distinct !DILexicalBlock(scope: !2224, file: !2131, line: 107, column: 5)
!2240 = !DILocation(line: 92, column: 7, scope: !2241, inlinedAt: !2237)
!2241 = distinct !DILexicalBlock(scope: !2227, file: !2131, line: 92, column: 7)
!2242 = !DILocation(line: 92, column: 7, scope: !2227, inlinedAt: !2237)
!2243 = !DILocation(line: 235, column: 12, scope: !2147)
!2244 = !DILocation(line: 235, column: 21, scope: !2147)
!2245 = !DILocation(line: 235, column: 5, scope: !2147)
!2246 = !DILocation(line: 0, scope: !2151, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 167, column: 16, scope: !2166, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 236, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2115, file: !239, line: 236, column: 7)
!2250 = !DILocation(line: 148, column: 7, scope: !2169, inlinedAt: !2247)
!2251 = !DILocation(line: 0, scope: !2171, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 153, column: 16, scope: !2185, inlinedAt: !2247)
!2253 = !DILocation(line: 134, column: 7, scope: !2188, inlinedAt: !2252)
!2254 = !DILocation(line: 134, column: 7, scope: !2171, inlinedAt: !2252)
!2255 = !DILocation(line: 0, scope: !2190, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 139, column: 16, scope: !2203, inlinedAt: !2252)
!2257 = !DILocation(line: 120, column: 7, scope: !2206, inlinedAt: !2256)
!2258 = !DILocation(line: 120, column: 7, scope: !2190, inlinedAt: !2256)
!2259 = !DILocation(line: 0, scope: !2209, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 125, column: 16, scope: !2221, inlinedAt: !2256)
!2261 = !DILocation(line: 106, column: 7, scope: !2224, inlinedAt: !2260)
!2262 = !DILocation(line: 106, column: 7, scope: !2209, inlinedAt: !2260)
!2263 = !DILocation(line: 0, scope: !2227, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 111, column: 16, scope: !2238, inlinedAt: !2260)
!2265 = !DILocation(line: 92, column: 7, scope: !2241, inlinedAt: !2264)
!2266 = !DILocation(line: 92, column: 7, scope: !2227, inlinedAt: !2264)
!2267 = !DILocalVariable(name: "s1", arg: 1, scope: !2268, file: !2131, line: 76, type: !12)
!2268 = distinct !DISubprogram(name: "strcaseeq6", scope: !2131, file: !2131, line: 76, type: !2269, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!14, !12, !12, !11, !11, !11}
!2271 = !{!2267, !2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "s2", arg: 2, scope: !2268, file: !2131, line: 76, type: !12)
!2273 = !DILocalVariable(name: "s26", arg: 3, scope: !2268, file: !2131, line: 76, type: !11)
!2274 = !DILocalVariable(name: "s27", arg: 4, scope: !2268, file: !2131, line: 76, type: !11)
!2275 = !DILocalVariable(name: "s28", arg: 5, scope: !2268, file: !2131, line: 76, type: !11)
!2276 = !DILocation(line: 0, scope: !2268, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 97, column: 16, scope: !2278, inlinedAt: !2264)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !2131, line: 94, column: 11)
!2279 = distinct !DILexicalBlock(scope: !2241, file: !2131, line: 93, column: 5)
!2280 = !DILocation(line: 78, column: 7, scope: !2281, inlinedAt: !2277)
!2281 = distinct !DILexicalBlock(scope: !2268, file: !2131, line: 78, column: 7)
!2282 = !DILocation(line: 78, column: 7, scope: !2268, inlinedAt: !2277)
!2283 = !DILocalVariable(name: "s1", arg: 1, scope: !2284, file: !2131, line: 62, type: !12)
!2284 = distinct !DISubprogram(name: "strcaseeq7", scope: !2131, file: !2131, line: 62, type: !2285, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!14, !12, !12, !11, !11}
!2287 = !{!2283, !2288, !2289, !2290}
!2288 = !DILocalVariable(name: "s2", arg: 2, scope: !2284, file: !2131, line: 62, type: !12)
!2289 = !DILocalVariable(name: "s27", arg: 3, scope: !2284, file: !2131, line: 62, type: !11)
!2290 = !DILocalVariable(name: "s28", arg: 4, scope: !2284, file: !2131, line: 62, type: !11)
!2291 = !DILocation(line: 0, scope: !2284, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 83, column: 16, scope: !2293, inlinedAt: !2277)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !2131, line: 80, column: 11)
!2294 = distinct !DILexicalBlock(scope: !2281, file: !2131, line: 79, column: 5)
!2295 = !DILocation(line: 64, column: 7, scope: !2296, inlinedAt: !2292)
!2296 = distinct !DILexicalBlock(scope: !2284, file: !2131, line: 64, column: 7)
!2297 = !DILocation(line: 236, column: 7, scope: !2115)
!2298 = !DILocation(line: 237, column: 12, scope: !2249)
!2299 = !DILocation(line: 237, column: 21, scope: !2249)
!2300 = !DILocation(line: 237, column: 5, scope: !2249)
!2301 = !DILocation(line: 239, column: 13, scope: !2115)
!2302 = !DILocation(line: 239, column: 11, scope: !2115)
!2303 = !DILocation(line: 239, column: 3, scope: !2115)
!2304 = !DILocation(line: 240, column: 1, scope: !2115)
!2305 = distinct !DISubprogram(name: "quotearg_alloc", scope: !239, file: !239, line: 799, type: !2306, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!10, !12, !68, !286}
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !239, line: 799, type: !12)
!2310 = !DILocalVariable(name: "argsize", arg: 2, scope: !2305, file: !239, line: 799, type: !68)
!2311 = !DILocalVariable(name: "o", arg: 3, scope: !2305, file: !239, line: 800, type: !286)
!2312 = !DILocation(line: 0, scope: !2305)
!2313 = !DILocalVariable(name: "arg", arg: 1, scope: !2314, file: !239, line: 812, type: !12)
!2314 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !239, file: !239, line: 812, type: !2315, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!10, !12, !68, !448, !286}
!2317 = !{!2313, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2318 = !DILocalVariable(name: "argsize", arg: 2, scope: !2314, file: !239, line: 812, type: !68)
!2319 = !DILocalVariable(name: "size", arg: 3, scope: !2314, file: !239, line: 812, type: !448)
!2320 = !DILocalVariable(name: "o", arg: 4, scope: !2314, file: !239, line: 813, type: !286)
!2321 = !DILocalVariable(name: "p", scope: !2314, file: !239, line: 815, type: !286)
!2322 = !DILocalVariable(name: "e", scope: !2314, file: !239, line: 816, type: !14)
!2323 = !DILocalVariable(name: "flags", scope: !2314, file: !239, line: 818, type: !14)
!2324 = !DILocalVariable(name: "bufsize", scope: !2314, file: !239, line: 819, type: !68)
!2325 = !DILocalVariable(name: "buf", scope: !2314, file: !239, line: 823, type: !10)
!2326 = !DILocation(line: 0, scope: !2314, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 802, column: 10, scope: !2305)
!2328 = !DILocation(line: 815, column: 37, scope: !2314, inlinedAt: !2327)
!2329 = !DILocation(line: 816, column: 11, scope: !2314, inlinedAt: !2327)
!2330 = !DILocation(line: 818, column: 18, scope: !2314, inlinedAt: !2327)
!2331 = !DILocation(line: 818, column: 24, scope: !2314, inlinedAt: !2327)
!2332 = !DILocation(line: 819, column: 69, scope: !2314, inlinedAt: !2327)
!2333 = !DILocation(line: 820, column: 53, scope: !2314, inlinedAt: !2327)
!2334 = !DILocation(line: 821, column: 49, scope: !2314, inlinedAt: !2327)
!2335 = !DILocation(line: 822, column: 49, scope: !2314, inlinedAt: !2327)
!2336 = !DILocation(line: 819, column: 20, scope: !2314, inlinedAt: !2327)
!2337 = !DILocation(line: 822, column: 62, scope: !2314, inlinedAt: !2327)
!2338 = !DILocalVariable(name: "n", arg: 1, scope: !2339, file: !277, line: 216, type: !68)
!2339 = distinct !DISubprogram(name: "xcharalloc", scope: !277, file: !277, line: 216, type: !2340, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!10, !68}
!2342 = !{!2338}
!2343 = !DILocation(line: 0, scope: !2339, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 823, column: 15, scope: !2314, inlinedAt: !2327)
!2345 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2344)
!2346 = !DILocation(line: 824, column: 60, scope: !2314, inlinedAt: !2327)
!2347 = !DILocation(line: 826, column: 32, scope: !2314, inlinedAt: !2327)
!2348 = !DILocation(line: 826, column: 47, scope: !2314, inlinedAt: !2327)
!2349 = !DILocation(line: 824, column: 3, scope: !2314, inlinedAt: !2327)
!2350 = !DILocation(line: 827, column: 9, scope: !2314, inlinedAt: !2327)
!2351 = !DILocation(line: 802, column: 3, scope: !2305)
!2352 = !DILocation(line: 0, scope: !2314)
!2353 = !DILocation(line: 815, column: 37, scope: !2314)
!2354 = !DILocation(line: 816, column: 11, scope: !2314)
!2355 = !DILocation(line: 818, column: 18, scope: !2314)
!2356 = !DILocation(line: 818, column: 27, scope: !2314)
!2357 = !DILocation(line: 818, column: 24, scope: !2314)
!2358 = !DILocation(line: 819, column: 69, scope: !2314)
!2359 = !DILocation(line: 820, column: 53, scope: !2314)
!2360 = !DILocation(line: 821, column: 49, scope: !2314)
!2361 = !DILocation(line: 822, column: 49, scope: !2314)
!2362 = !DILocation(line: 819, column: 20, scope: !2314)
!2363 = !DILocation(line: 822, column: 62, scope: !2314)
!2364 = !DILocation(line: 0, scope: !2339, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 823, column: 15, scope: !2314)
!2366 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2365)
!2367 = !DILocation(line: 824, column: 60, scope: !2314)
!2368 = !DILocation(line: 826, column: 32, scope: !2314)
!2369 = !DILocation(line: 826, column: 47, scope: !2314)
!2370 = !DILocation(line: 824, column: 3, scope: !2314)
!2371 = !DILocation(line: 827, column: 9, scope: !2314)
!2372 = !DILocation(line: 828, column: 7, scope: !2314)
!2373 = !DILocation(line: 829, column: 11, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2314, file: !239, line: 828, column: 7)
!2375 = !{!1273, !1273, i64 0}
!2376 = !DILocation(line: 829, column: 5, scope: !2374)
!2377 = !DILocation(line: 830, column: 3, scope: !2314)
!2378 = distinct !DISubprogram(name: "quotearg_free", scope: !239, file: !239, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2379)
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "sv", scope: !2378, file: !239, line: 850, type: !361)
!2381 = !DILocalVariable(name: "i", scope: !2378, file: !239, line: 851, type: !14)
!2382 = !DILocation(line: 850, column: 24, scope: !2378)
!2383 = !DILocation(line: 0, scope: !2378)
!2384 = !DILocation(line: 852, column: 19, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !239, line: 852, column: 3)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !239, line: 852, column: 3)
!2387 = !DILocation(line: 852, column: 17, scope: !2385)
!2388 = !DILocation(line: 852, column: 3, scope: !2386)
!2389 = !DILocation(line: 853, column: 17, scope: !2385)
!2390 = !{!2391, !1096, i64 8}
!2391 = !{!"slotvec", !1273, i64 0, !1096, i64 8}
!2392 = !DILocation(line: 853, column: 5, scope: !2385)
!2393 = !DILocation(line: 852, column: 28, scope: !2385)
!2394 = distinct !{!2394, !2388, !2395}
!2395 = !DILocation(line: 853, column: 20, scope: !2386)
!2396 = !DILocation(line: 854, column: 13, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2378, file: !239, line: 854, column: 7)
!2398 = !DILocation(line: 854, column: 17, scope: !2397)
!2399 = !DILocation(line: 854, column: 7, scope: !2378)
!2400 = !DILocation(line: 856, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !239, line: 855, column: 5)
!2402 = !DILocation(line: 857, column: 21, scope: !2401)
!2403 = !{!2391, !1273, i64 0}
!2404 = !DILocation(line: 858, column: 20, scope: !2401)
!2405 = !DILocation(line: 859, column: 5, scope: !2401)
!2406 = !DILocation(line: 860, column: 10, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2378, file: !239, line: 860, column: 7)
!2408 = !DILocation(line: 860, column: 7, scope: !2378)
!2409 = !DILocation(line: 862, column: 13, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !239, line: 861, column: 5)
!2411 = !DILocation(line: 862, column: 7, scope: !2410)
!2412 = !DILocation(line: 863, column: 15, scope: !2410)
!2413 = !DILocation(line: 864, column: 5, scope: !2410)
!2414 = !DILocation(line: 865, column: 10, scope: !2378)
!2415 = !DILocation(line: 866, column: 1, scope: !2378)
!2416 = distinct !DISubprogram(name: "quotearg_n", scope: !239, file: !239, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2417)
!2417 = !{!2418, !2419}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2416, file: !239, line: 931, type: !14)
!2419 = !DILocalVariable(name: "arg", arg: 2, scope: !2416, file: !239, line: 931, type: !12)
!2420 = !DILocation(line: 0, scope: !2416)
!2421 = !DILocation(line: 933, column: 10, scope: !2416)
!2422 = !DILocation(line: 933, column: 3, scope: !2416)
!2423 = distinct !DISubprogram(name: "quotearg_n_options", scope: !239, file: !239, line: 877, type: !2424, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!10, !14, !12, !68, !286}
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2436, !2437, !2439, !2440, !2441}
!2427 = !DILocalVariable(name: "n", arg: 1, scope: !2423, file: !239, line: 877, type: !14)
!2428 = !DILocalVariable(name: "arg", arg: 2, scope: !2423, file: !239, line: 877, type: !12)
!2429 = !DILocalVariable(name: "argsize", arg: 3, scope: !2423, file: !239, line: 877, type: !68)
!2430 = !DILocalVariable(name: "options", arg: 4, scope: !2423, file: !239, line: 878, type: !286)
!2431 = !DILocalVariable(name: "e", scope: !2423, file: !239, line: 880, type: !14)
!2432 = !DILocalVariable(name: "sv", scope: !2423, file: !239, line: 882, type: !361)
!2433 = !DILocalVariable(name: "preallocated", scope: !2434, file: !239, line: 889, type: !129)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !239, line: 888, column: 5)
!2435 = distinct !DILexicalBlock(scope: !2423, file: !239, line: 887, column: 7)
!2436 = !DILocalVariable(name: "nmax", scope: !2434, file: !239, line: 890, type: !14)
!2437 = !DILocalVariable(name: "size", scope: !2438, file: !239, line: 903, type: !68)
!2438 = distinct !DILexicalBlock(scope: !2423, file: !239, line: 902, column: 3)
!2439 = !DILocalVariable(name: "val", scope: !2438, file: !239, line: 904, type: !10)
!2440 = !DILocalVariable(name: "flags", scope: !2438, file: !239, line: 906, type: !14)
!2441 = !DILocalVariable(name: "qsize", scope: !2438, file: !239, line: 907, type: !68)
!2442 = !DILocation(line: 0, scope: !2423)
!2443 = !DILocation(line: 880, column: 11, scope: !2423)
!2444 = !DILocation(line: 882, column: 24, scope: !2423)
!2445 = !DILocation(line: 884, column: 9, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2423, file: !239, line: 884, column: 7)
!2447 = !DILocation(line: 884, column: 7, scope: !2423)
!2448 = !DILocation(line: 885, column: 5, scope: !2446)
!2449 = !DILocation(line: 887, column: 7, scope: !2435)
!2450 = !DILocation(line: 887, column: 14, scope: !2435)
!2451 = !DILocation(line: 887, column: 7, scope: !2423)
!2452 = !DILocation(line: 889, column: 31, scope: !2434)
!2453 = !DILocation(line: 0, scope: !2434)
!2454 = !DILocation(line: 892, column: 16, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2434, file: !239, line: 892, column: 11)
!2456 = !DILocation(line: 892, column: 11, scope: !2434)
!2457 = !DILocation(line: 893, column: 9, scope: !2455)
!2458 = !DILocation(line: 895, column: 32, scope: !2434)
!2459 = !DILocation(line: 895, column: 61, scope: !2434)
!2460 = !DILocation(line: 895, column: 58, scope: !2434)
!2461 = !DILocation(line: 895, column: 66, scope: !2434)
!2462 = !DILocation(line: 895, column: 22, scope: !2434)
!2463 = !DILocation(line: 895, column: 15, scope: !2434)
!2464 = !DILocation(line: 896, column: 11, scope: !2434)
!2465 = !DILocation(line: 897, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2434, file: !239, line: 896, column: 11)
!2467 = !{i64 0, i64 8, !2375, i64 8, i64 8, !1095}
!2468 = !DILocation(line: 897, column: 9, scope: !2466)
!2469 = !DILocation(line: 898, column: 20, scope: !2434)
!2470 = !DILocation(line: 898, column: 18, scope: !2434)
!2471 = !DILocation(line: 898, column: 15, scope: !2434)
!2472 = !DILocation(line: 898, column: 38, scope: !2434)
!2473 = !DILocation(line: 898, column: 31, scope: !2434)
!2474 = !DILocation(line: 898, column: 48, scope: !2434)
!2475 = !DILocation(line: 0, scope: !1872, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 898, column: 7, scope: !2434)
!2477 = !DILocation(line: 71, column: 10, scope: !1872, inlinedAt: !2476)
!2478 = !DILocation(line: 899, column: 14, scope: !2434)
!2479 = !DILocation(line: 900, column: 5, scope: !2434)
!2480 = !DILocation(line: 903, column: 19, scope: !2438)
!2481 = !DILocation(line: 903, column: 25, scope: !2438)
!2482 = !DILocation(line: 0, scope: !2438)
!2483 = !DILocation(line: 904, column: 23, scope: !2438)
!2484 = !DILocation(line: 906, column: 26, scope: !2438)
!2485 = !DILocation(line: 906, column: 32, scope: !2438)
!2486 = !DILocation(line: 908, column: 55, scope: !2438)
!2487 = !DILocation(line: 909, column: 46, scope: !2438)
!2488 = !DILocation(line: 910, column: 55, scope: !2438)
!2489 = !DILocation(line: 911, column: 55, scope: !2438)
!2490 = !DILocation(line: 907, column: 20, scope: !2438)
!2491 = !DILocation(line: 913, column: 14, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2438, file: !239, line: 913, column: 9)
!2493 = !DILocation(line: 913, column: 9, scope: !2438)
!2494 = !DILocation(line: 915, column: 35, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !239, line: 914, column: 7)
!2496 = !DILocation(line: 915, column: 20, scope: !2495)
!2497 = !DILocation(line: 916, column: 17, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !239, line: 916, column: 13)
!2499 = !DILocation(line: 916, column: 13, scope: !2495)
!2500 = !DILocation(line: 917, column: 11, scope: !2498)
!2501 = !DILocation(line: 0, scope: !2339, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 918, column: 27, scope: !2495)
!2503 = !DILocation(line: 218, column: 10, scope: !2339, inlinedAt: !2502)
!2504 = !DILocation(line: 918, column: 19, scope: !2495)
!2505 = !DILocation(line: 919, column: 69, scope: !2495)
!2506 = !DILocation(line: 921, column: 44, scope: !2495)
!2507 = !DILocation(line: 922, column: 44, scope: !2495)
!2508 = !DILocation(line: 919, column: 9, scope: !2495)
!2509 = !DILocation(line: 923, column: 7, scope: !2495)
!2510 = !DILocation(line: 925, column: 11, scope: !2438)
!2511 = !DILocation(line: 926, column: 5, scope: !2438)
!2512 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !239, file: !239, line: 937, type: !2513, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!10, !14, !12, !68}
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "n", arg: 1, scope: !2512, file: !239, line: 937, type: !14)
!2517 = !DILocalVariable(name: "arg", arg: 2, scope: !2512, file: !239, line: 937, type: !12)
!2518 = !DILocalVariable(name: "argsize", arg: 3, scope: !2512, file: !239, line: 937, type: !68)
!2519 = !DILocation(line: 0, scope: !2512)
!2520 = !DILocation(line: 939, column: 10, scope: !2512)
!2521 = !DILocation(line: 939, column: 3, scope: !2512)
!2522 = distinct !DISubprogram(name: "quotearg", scope: !239, file: !239, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2523)
!2523 = !{!2524}
!2524 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !239, line: 943, type: !12)
!2525 = !DILocation(line: 0, scope: !2522)
!2526 = !DILocation(line: 0, scope: !2416, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 945, column: 10, scope: !2522)
!2528 = !DILocation(line: 933, column: 10, scope: !2416, inlinedAt: !2527)
!2529 = !DILocation(line: 945, column: 3, scope: !2522)
!2530 = distinct !DISubprogram(name: "quotearg_mem", scope: !239, file: !239, line: 949, type: !2531, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!10, !12, !68}
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "arg", arg: 1, scope: !2530, file: !239, line: 949, type: !12)
!2535 = !DILocalVariable(name: "argsize", arg: 2, scope: !2530, file: !239, line: 949, type: !68)
!2536 = !DILocation(line: 0, scope: !2530)
!2537 = !DILocation(line: 0, scope: !2512, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 951, column: 10, scope: !2530)
!2539 = !DILocation(line: 939, column: 10, scope: !2512, inlinedAt: !2538)
!2540 = !DILocation(line: 951, column: 3, scope: !2530)
!2541 = distinct !DISubprogram(name: "quotearg_n_style", scope: !239, file: !239, line: 955, type: !2542, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!10, !14, !241, !12}
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2541, file: !239, line: 955, type: !14)
!2546 = !DILocalVariable(name: "s", arg: 2, scope: !2541, file: !239, line: 955, type: !241)
!2547 = !DILocalVariable(name: "arg", arg: 3, scope: !2541, file: !239, line: 955, type: !12)
!2548 = !DILocalVariable(name: "o", scope: !2541, file: !239, line: 957, type: !287)
!2549 = !DILocation(line: 0, scope: !2541)
!2550 = !DILocation(line: 957, column: 3, scope: !2541)
!2551 = !DILocation(line: 957, column: 32, scope: !2541)
!2552 = !DILocalVariable(name: "style", arg: 1, scope: !2553, file: !239, line: 193, type: !241)
!2553 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !239, file: !239, line: 193, type: !2554, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!288, !241}
!2556 = !{!2552, !2557}
!2557 = !DILocalVariable(name: "o", scope: !2553, file: !239, line: 195, type: !288)
!2558 = !DILocation(line: 0, scope: !2553, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 957, column: 36, scope: !2541)
!2560 = !DILocation(line: 195, column: 26, scope: !2553, inlinedAt: !2559)
!2561 = !{!2562}
!2562 = distinct !{!2562, !2563, !"quoting_options_from_style: argument 0"}
!2563 = distinct !{!2563, !"quoting_options_from_style"}
!2564 = !DILocation(line: 196, column: 13, scope: !2565, inlinedAt: !2559)
!2565 = distinct !DILexicalBlock(scope: !2553, file: !239, line: 196, column: 7)
!2566 = !DILocation(line: 196, column: 7, scope: !2553, inlinedAt: !2559)
!2567 = !DILocation(line: 197, column: 5, scope: !2565, inlinedAt: !2559)
!2568 = !DILocation(line: 198, column: 5, scope: !2553, inlinedAt: !2559)
!2569 = !DILocation(line: 198, column: 11, scope: !2553, inlinedAt: !2559)
!2570 = !DILocation(line: 958, column: 10, scope: !2541)
!2571 = !DILocation(line: 959, column: 1, scope: !2541)
!2572 = !DILocation(line: 958, column: 3, scope: !2541)
!2573 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !239, file: !239, line: 962, type: !2574, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!10, !14, !241, !12, !68}
!2576 = !{!2577, !2578, !2579, !2580, !2581}
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2573, file: !239, line: 962, type: !14)
!2578 = !DILocalVariable(name: "s", arg: 2, scope: !2573, file: !239, line: 962, type: !241)
!2579 = !DILocalVariable(name: "arg", arg: 3, scope: !2573, file: !239, line: 963, type: !12)
!2580 = !DILocalVariable(name: "argsize", arg: 4, scope: !2573, file: !239, line: 963, type: !68)
!2581 = !DILocalVariable(name: "o", scope: !2573, file: !239, line: 965, type: !287)
!2582 = !DILocation(line: 0, scope: !2573)
!2583 = !DILocation(line: 965, column: 3, scope: !2573)
!2584 = !DILocation(line: 965, column: 32, scope: !2573)
!2585 = !DILocation(line: 0, scope: !2553, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 965, column: 36, scope: !2573)
!2587 = !DILocation(line: 195, column: 26, scope: !2553, inlinedAt: !2586)
!2588 = !{!2589}
!2589 = distinct !{!2589, !2590, !"quoting_options_from_style: argument 0"}
!2590 = distinct !{!2590, !"quoting_options_from_style"}
!2591 = !DILocation(line: 196, column: 13, scope: !2565, inlinedAt: !2586)
!2592 = !DILocation(line: 196, column: 7, scope: !2553, inlinedAt: !2586)
!2593 = !DILocation(line: 197, column: 5, scope: !2565, inlinedAt: !2586)
!2594 = !DILocation(line: 198, column: 5, scope: !2553, inlinedAt: !2586)
!2595 = !DILocation(line: 198, column: 11, scope: !2553, inlinedAt: !2586)
!2596 = !DILocation(line: 966, column: 10, scope: !2573)
!2597 = !DILocation(line: 967, column: 1, scope: !2573)
!2598 = !DILocation(line: 966, column: 3, scope: !2573)
!2599 = distinct !DISubprogram(name: "quotearg_style", scope: !239, file: !239, line: 970, type: !2600, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!10, !241, !12}
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "s", arg: 1, scope: !2599, file: !239, line: 970, type: !241)
!2604 = !DILocalVariable(name: "arg", arg: 2, scope: !2599, file: !239, line: 970, type: !12)
!2605 = !DILocation(line: 195, column: 26, scope: !2553, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 957, column: 36, scope: !2541, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 972, column: 10, scope: !2599)
!2608 = !DILocation(line: 957, column: 32, scope: !2541, inlinedAt: !2607)
!2609 = !DILocation(line: 0, scope: !2599)
!2610 = !DILocation(line: 0, scope: !2541, inlinedAt: !2607)
!2611 = !DILocation(line: 957, column: 3, scope: !2541, inlinedAt: !2607)
!2612 = !DILocation(line: 0, scope: !2553, inlinedAt: !2606)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 196, column: 13, scope: !2565, inlinedAt: !2606)
!2617 = !DILocation(line: 196, column: 7, scope: !2553, inlinedAt: !2606)
!2618 = !DILocation(line: 197, column: 5, scope: !2565, inlinedAt: !2606)
!2619 = !DILocation(line: 198, column: 5, scope: !2553, inlinedAt: !2606)
!2620 = !DILocation(line: 198, column: 11, scope: !2553, inlinedAt: !2606)
!2621 = !DILocation(line: 958, column: 10, scope: !2541, inlinedAt: !2607)
!2622 = !DILocation(line: 959, column: 1, scope: !2541, inlinedAt: !2607)
!2623 = !DILocation(line: 972, column: 3, scope: !2599)
!2624 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !239, file: !239, line: 976, type: !2625, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!10, !241, !12, !68}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "s", arg: 1, scope: !2624, file: !239, line: 976, type: !241)
!2629 = !DILocalVariable(name: "arg", arg: 2, scope: !2624, file: !239, line: 976, type: !12)
!2630 = !DILocalVariable(name: "argsize", arg: 3, scope: !2624, file: !239, line: 976, type: !68)
!2631 = !DILocation(line: 195, column: 26, scope: !2553, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 965, column: 36, scope: !2573, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 978, column: 10, scope: !2624)
!2634 = !DILocation(line: 965, column: 32, scope: !2573, inlinedAt: !2633)
!2635 = !DILocation(line: 0, scope: !2624)
!2636 = !DILocation(line: 0, scope: !2573, inlinedAt: !2633)
!2637 = !DILocation(line: 965, column: 3, scope: !2573, inlinedAt: !2633)
!2638 = !DILocation(line: 0, scope: !2553, inlinedAt: !2632)
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"quoting_options_from_style: argument 0"}
!2641 = distinct !{!2641, !"quoting_options_from_style"}
!2642 = !DILocation(line: 196, column: 13, scope: !2565, inlinedAt: !2632)
!2643 = !DILocation(line: 196, column: 7, scope: !2553, inlinedAt: !2632)
!2644 = !DILocation(line: 197, column: 5, scope: !2565, inlinedAt: !2632)
!2645 = !DILocation(line: 198, column: 5, scope: !2553, inlinedAt: !2632)
!2646 = !DILocation(line: 198, column: 11, scope: !2553, inlinedAt: !2632)
!2647 = !DILocation(line: 966, column: 10, scope: !2573, inlinedAt: !2633)
!2648 = !DILocation(line: 967, column: 1, scope: !2573, inlinedAt: !2633)
!2649 = !DILocation(line: 978, column: 3, scope: !2624)
!2650 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !239, file: !239, line: 982, type: !2651, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!10, !12, !68, !11}
!2653 = !{!2654, !2655, !2656, !2657}
!2654 = !DILocalVariable(name: "arg", arg: 1, scope: !2650, file: !239, line: 982, type: !12)
!2655 = !DILocalVariable(name: "argsize", arg: 2, scope: !2650, file: !239, line: 982, type: !68)
!2656 = !DILocalVariable(name: "ch", arg: 3, scope: !2650, file: !239, line: 982, type: !11)
!2657 = !DILocalVariable(name: "options", scope: !2650, file: !239, line: 984, type: !288)
!2658 = !DILocation(line: 0, scope: !2650)
!2659 = !DILocation(line: 984, column: 3, scope: !2650)
!2660 = !DILocation(line: 984, column: 26, scope: !2650)
!2661 = !DILocation(line: 985, column: 13, scope: !2650)
!2662 = !{i64 0, i64 4, !1228, i64 4, i64 4, !1171, i64 8, i64 32, !1228, i64 40, i64 8, !1095, i64 48, i64 8, !1095}
!2663 = !DILocation(line: 0, scope: !1486, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 986, column: 3, scope: !2650)
!2665 = !DILocation(line: 156, column: 62, scope: !1486, inlinedAt: !2664)
!2666 = !DILocation(line: 156, column: 57, scope: !1486, inlinedAt: !2664)
!2667 = !DILocation(line: 157, column: 15, scope: !1486, inlinedAt: !2664)
!2668 = !DILocation(line: 158, column: 12, scope: !1486, inlinedAt: !2664)
!2669 = !DILocation(line: 158, column: 15, scope: !1486, inlinedAt: !2664)
!2670 = !DILocation(line: 158, column: 25, scope: !1486, inlinedAt: !2664)
!2671 = !DILocation(line: 159, column: 18, scope: !1486, inlinedAt: !2664)
!2672 = !DILocation(line: 159, column: 23, scope: !1486, inlinedAt: !2664)
!2673 = !DILocation(line: 159, column: 6, scope: !1486, inlinedAt: !2664)
!2674 = !DILocation(line: 987, column: 10, scope: !2650)
!2675 = !DILocation(line: 988, column: 1, scope: !2650)
!2676 = !DILocation(line: 987, column: 3, scope: !2650)
!2677 = distinct !DISubprogram(name: "quotearg_char", scope: !239, file: !239, line: 991, type: !2678, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!10, !12, !11}
!2680 = !{!2681, !2682}
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !239, line: 991, type: !12)
!2682 = !DILocalVariable(name: "ch", arg: 2, scope: !2677, file: !239, line: 991, type: !11)
!2683 = !DILocation(line: 984, column: 26, scope: !2650, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 993, column: 10, scope: !2677)
!2685 = !DILocation(line: 0, scope: !2677)
!2686 = !DILocation(line: 0, scope: !2650, inlinedAt: !2684)
!2687 = !DILocation(line: 984, column: 3, scope: !2650, inlinedAt: !2684)
!2688 = !DILocation(line: 985, column: 13, scope: !2650, inlinedAt: !2684)
!2689 = !DILocation(line: 0, scope: !1486, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 986, column: 3, scope: !2650, inlinedAt: !2684)
!2691 = !DILocation(line: 156, column: 62, scope: !1486, inlinedAt: !2690)
!2692 = !DILocation(line: 156, column: 57, scope: !1486, inlinedAt: !2690)
!2693 = !DILocation(line: 157, column: 15, scope: !1486, inlinedAt: !2690)
!2694 = !DILocation(line: 158, column: 12, scope: !1486, inlinedAt: !2690)
!2695 = !DILocation(line: 158, column: 15, scope: !1486, inlinedAt: !2690)
!2696 = !DILocation(line: 158, column: 25, scope: !1486, inlinedAt: !2690)
!2697 = !DILocation(line: 159, column: 18, scope: !1486, inlinedAt: !2690)
!2698 = !DILocation(line: 159, column: 23, scope: !1486, inlinedAt: !2690)
!2699 = !DILocation(line: 159, column: 6, scope: !1486, inlinedAt: !2690)
!2700 = !DILocation(line: 987, column: 10, scope: !2650, inlinedAt: !2684)
!2701 = !DILocation(line: 988, column: 1, scope: !2650, inlinedAt: !2684)
!2702 = !DILocation(line: 993, column: 3, scope: !2677)
!2703 = distinct !DISubprogram(name: "quotearg_colon", scope: !239, file: !239, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2704)
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !239, line: 997, type: !12)
!2706 = !DILocation(line: 984, column: 26, scope: !2650, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 993, column: 10, scope: !2677, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 999, column: 10, scope: !2703)
!2709 = !DILocation(line: 0, scope: !2703)
!2710 = !DILocation(line: 0, scope: !2677, inlinedAt: !2708)
!2711 = !DILocation(line: 0, scope: !2650, inlinedAt: !2707)
!2712 = !DILocation(line: 984, column: 3, scope: !2650, inlinedAt: !2707)
!2713 = !DILocation(line: 985, column: 13, scope: !2650, inlinedAt: !2707)
!2714 = !DILocation(line: 0, scope: !1486, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 986, column: 3, scope: !2650, inlinedAt: !2707)
!2716 = !DILocation(line: 156, column: 57, scope: !1486, inlinedAt: !2715)
!2717 = !DILocation(line: 158, column: 12, scope: !1486, inlinedAt: !2715)
!2718 = !DILocation(line: 159, column: 6, scope: !1486, inlinedAt: !2715)
!2719 = !DILocation(line: 987, column: 10, scope: !2650, inlinedAt: !2707)
!2720 = !DILocation(line: 988, column: 1, scope: !2650, inlinedAt: !2707)
!2721 = !DILocation(line: 999, column: 3, scope: !2703)
!2722 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !239, file: !239, line: 1003, type: !2531, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2723)
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !239, line: 1003, type: !12)
!2725 = !DILocalVariable(name: "argsize", arg: 2, scope: !2722, file: !239, line: 1003, type: !68)
!2726 = !DILocation(line: 984, column: 26, scope: !2650, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1005, column: 10, scope: !2722)
!2728 = !DILocation(line: 0, scope: !2722)
!2729 = !DILocation(line: 0, scope: !2650, inlinedAt: !2727)
!2730 = !DILocation(line: 984, column: 3, scope: !2650, inlinedAt: !2727)
!2731 = !DILocation(line: 985, column: 13, scope: !2650, inlinedAt: !2727)
!2732 = !DILocation(line: 0, scope: !1486, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 986, column: 3, scope: !2650, inlinedAt: !2727)
!2734 = !DILocation(line: 156, column: 57, scope: !1486, inlinedAt: !2733)
!2735 = !DILocation(line: 158, column: 12, scope: !1486, inlinedAt: !2733)
!2736 = !DILocation(line: 159, column: 6, scope: !1486, inlinedAt: !2733)
!2737 = !DILocation(line: 987, column: 10, scope: !2650, inlinedAt: !2727)
!2738 = !DILocation(line: 988, column: 1, scope: !2650, inlinedAt: !2727)
!2739 = !DILocation(line: 1005, column: 3, scope: !2722)
!2740 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !239, file: !239, line: 1009, type: !2542, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2741)
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !239, line: 1009, type: !14)
!2743 = !DILocalVariable(name: "s", arg: 2, scope: !2740, file: !239, line: 1009, type: !241)
!2744 = !DILocalVariable(name: "arg", arg: 3, scope: !2740, file: !239, line: 1009, type: !12)
!2745 = !DILocalVariable(name: "options", scope: !2740, file: !239, line: 1011, type: !288)
!2746 = !DILocation(line: 195, column: 26, scope: !2553, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1012, column: 13, scope: !2740)
!2748 = !DILocation(line: 0, scope: !2740)
!2749 = !DILocation(line: 1011, column: 3, scope: !2740)
!2750 = !DILocation(line: 1011, column: 26, scope: !2740)
!2751 = !DILocation(line: 1012, column: 13, scope: !2740)
!2752 = !DILocation(line: 0, scope: !2553, inlinedAt: !2747)
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"quoting_options_from_style: argument 0"}
!2755 = distinct !{!2755, !"quoting_options_from_style"}
!2756 = !DILocation(line: 196, column: 13, scope: !2565, inlinedAt: !2747)
!2757 = !DILocation(line: 196, column: 7, scope: !2553, inlinedAt: !2747)
!2758 = !DILocation(line: 197, column: 5, scope: !2565, inlinedAt: !2747)
!2759 = !DILocation(line: 0, scope: !1486, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1013, column: 3, scope: !2740)
!2761 = !DILocation(line: 156, column: 57, scope: !1486, inlinedAt: !2760)
!2762 = !DILocation(line: 158, column: 12, scope: !1486, inlinedAt: !2760)
!2763 = !DILocation(line: 159, column: 6, scope: !1486, inlinedAt: !2760)
!2764 = !DILocation(line: 1014, column: 10, scope: !2740)
!2765 = !DILocation(line: 1015, column: 1, scope: !2740)
!2766 = !DILocation(line: 1014, column: 3, scope: !2740)
!2767 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !239, file: !239, line: 1018, type: !2768, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!10, !14, !12, !12, !12}
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !239, line: 1018, type: !14)
!2772 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2767, file: !239, line: 1018, type: !12)
!2773 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2767, file: !239, line: 1019, type: !12)
!2774 = !DILocalVariable(name: "arg", arg: 4, scope: !2767, file: !239, line: 1019, type: !12)
!2775 = !DILocalVariable(name: "o", scope: !2776, file: !239, line: 1030, type: !288)
!2776 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !239, file: !239, line: 1026, type: !2777, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!10, !14, !12, !12, !12, !68}
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2775}
!2780 = !DILocalVariable(name: "n", arg: 1, scope: !2776, file: !239, line: 1026, type: !14)
!2781 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2776, file: !239, line: 1026, type: !12)
!2782 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2776, file: !239, line: 1027, type: !12)
!2783 = !DILocalVariable(name: "arg", arg: 4, scope: !2776, file: !239, line: 1028, type: !12)
!2784 = !DILocalVariable(name: "argsize", arg: 5, scope: !2776, file: !239, line: 1028, type: !68)
!2785 = !DILocation(line: 1030, column: 26, scope: !2776, inlinedAt: !2786)
!2786 = distinct !DILocation(line: 1021, column: 10, scope: !2767)
!2787 = !DILocation(line: 0, scope: !2767)
!2788 = !DILocation(line: 0, scope: !2776, inlinedAt: !2786)
!2789 = !DILocation(line: 1030, column: 3, scope: !2776, inlinedAt: !2786)
!2790 = !DILocation(line: 1030, column: 30, scope: !2776, inlinedAt: !2786)
!2791 = !DILocation(line: 0, scope: !1526, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1031, column: 3, scope: !2776, inlinedAt: !2786)
!2793 = !DILocation(line: 184, column: 6, scope: !1526, inlinedAt: !2792)
!2794 = !DILocation(line: 184, column: 12, scope: !1526, inlinedAt: !2792)
!2795 = !DILocation(line: 185, column: 8, scope: !1540, inlinedAt: !2792)
!2796 = !DILocation(line: 185, column: 23, scope: !1540, inlinedAt: !2792)
!2797 = !DILocation(line: 185, column: 19, scope: !1540, inlinedAt: !2792)
!2798 = !DILocation(line: 186, column: 5, scope: !1540, inlinedAt: !2792)
!2799 = !DILocation(line: 187, column: 6, scope: !1526, inlinedAt: !2792)
!2800 = !DILocation(line: 187, column: 17, scope: !1526, inlinedAt: !2792)
!2801 = !DILocation(line: 188, column: 6, scope: !1526, inlinedAt: !2792)
!2802 = !DILocation(line: 188, column: 18, scope: !1526, inlinedAt: !2792)
!2803 = !DILocation(line: 1032, column: 10, scope: !2776, inlinedAt: !2786)
!2804 = !DILocation(line: 1033, column: 1, scope: !2776, inlinedAt: !2786)
!2805 = !DILocation(line: 1021, column: 3, scope: !2767)
!2806 = !DILocation(line: 0, scope: !2776)
!2807 = !DILocation(line: 1030, column: 3, scope: !2776)
!2808 = !DILocation(line: 1030, column: 26, scope: !2776)
!2809 = !DILocation(line: 1030, column: 30, scope: !2776)
!2810 = !DILocation(line: 0, scope: !1526, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 1031, column: 3, scope: !2776)
!2812 = !DILocation(line: 184, column: 6, scope: !1526, inlinedAt: !2811)
!2813 = !DILocation(line: 184, column: 12, scope: !1526, inlinedAt: !2811)
!2814 = !DILocation(line: 185, column: 8, scope: !1540, inlinedAt: !2811)
!2815 = !DILocation(line: 185, column: 23, scope: !1540, inlinedAt: !2811)
!2816 = !DILocation(line: 185, column: 19, scope: !1540, inlinedAt: !2811)
!2817 = !DILocation(line: 186, column: 5, scope: !1540, inlinedAt: !2811)
!2818 = !DILocation(line: 187, column: 6, scope: !1526, inlinedAt: !2811)
!2819 = !DILocation(line: 187, column: 17, scope: !1526, inlinedAt: !2811)
!2820 = !DILocation(line: 188, column: 6, scope: !1526, inlinedAt: !2811)
!2821 = !DILocation(line: 188, column: 18, scope: !1526, inlinedAt: !2811)
!2822 = !DILocation(line: 1032, column: 10, scope: !2776)
!2823 = !DILocation(line: 1033, column: 1, scope: !2776)
!2824 = !DILocation(line: 1032, column: 3, scope: !2776)
!2825 = distinct !DISubprogram(name: "quotearg_custom", scope: !239, file: !239, line: 1036, type: !2826, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!10, !12, !12, !12}
!2828 = !{!2829, !2830, !2831}
!2829 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2825, file: !239, line: 1036, type: !12)
!2830 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2825, file: !239, line: 1036, type: !12)
!2831 = !DILocalVariable(name: "arg", arg: 3, scope: !2825, file: !239, line: 1037, type: !12)
!2832 = !DILocation(line: 1030, column: 26, scope: !2776, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 1021, column: 10, scope: !2767, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1039, column: 10, scope: !2825)
!2835 = !DILocation(line: 0, scope: !2825)
!2836 = !DILocation(line: 0, scope: !2767, inlinedAt: !2834)
!2837 = !DILocation(line: 0, scope: !2776, inlinedAt: !2833)
!2838 = !DILocation(line: 1030, column: 3, scope: !2776, inlinedAt: !2833)
!2839 = !DILocation(line: 1030, column: 30, scope: !2776, inlinedAt: !2833)
!2840 = !DILocation(line: 0, scope: !1526, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 1031, column: 3, scope: !2776, inlinedAt: !2833)
!2842 = !DILocation(line: 184, column: 6, scope: !1526, inlinedAt: !2841)
!2843 = !DILocation(line: 184, column: 12, scope: !1526, inlinedAt: !2841)
!2844 = !DILocation(line: 185, column: 8, scope: !1540, inlinedAt: !2841)
!2845 = !DILocation(line: 185, column: 23, scope: !1540, inlinedAt: !2841)
!2846 = !DILocation(line: 185, column: 19, scope: !1540, inlinedAt: !2841)
!2847 = !DILocation(line: 186, column: 5, scope: !1540, inlinedAt: !2841)
!2848 = !DILocation(line: 187, column: 6, scope: !1526, inlinedAt: !2841)
!2849 = !DILocation(line: 187, column: 17, scope: !1526, inlinedAt: !2841)
!2850 = !DILocation(line: 188, column: 6, scope: !1526, inlinedAt: !2841)
!2851 = !DILocation(line: 188, column: 18, scope: !1526, inlinedAt: !2841)
!2852 = !DILocation(line: 1032, column: 10, scope: !2776, inlinedAt: !2833)
!2853 = !DILocation(line: 1033, column: 1, scope: !2776, inlinedAt: !2833)
!2854 = !DILocation(line: 1039, column: 3, scope: !2825)
!2855 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !239, file: !239, line: 1043, type: !2856, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!10, !12, !12, !12, !68}
!2858 = !{!2859, !2860, !2861, !2862}
!2859 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2855, file: !239, line: 1043, type: !12)
!2860 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2855, file: !239, line: 1043, type: !12)
!2861 = !DILocalVariable(name: "arg", arg: 3, scope: !2855, file: !239, line: 1044, type: !12)
!2862 = !DILocalVariable(name: "argsize", arg: 4, scope: !2855, file: !239, line: 1044, type: !68)
!2863 = !DILocation(line: 1030, column: 26, scope: !2776, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 1046, column: 10, scope: !2855)
!2865 = !DILocation(line: 0, scope: !2855)
!2866 = !DILocation(line: 0, scope: !2776, inlinedAt: !2864)
!2867 = !DILocation(line: 1030, column: 3, scope: !2776, inlinedAt: !2864)
!2868 = !DILocation(line: 1030, column: 30, scope: !2776, inlinedAt: !2864)
!2869 = !DILocation(line: 0, scope: !1526, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 1031, column: 3, scope: !2776, inlinedAt: !2864)
!2871 = !DILocation(line: 184, column: 6, scope: !1526, inlinedAt: !2870)
!2872 = !DILocation(line: 184, column: 12, scope: !1526, inlinedAt: !2870)
!2873 = !DILocation(line: 185, column: 8, scope: !1540, inlinedAt: !2870)
!2874 = !DILocation(line: 185, column: 23, scope: !1540, inlinedAt: !2870)
!2875 = !DILocation(line: 185, column: 19, scope: !1540, inlinedAt: !2870)
!2876 = !DILocation(line: 186, column: 5, scope: !1540, inlinedAt: !2870)
!2877 = !DILocation(line: 187, column: 6, scope: !1526, inlinedAt: !2870)
!2878 = !DILocation(line: 187, column: 17, scope: !1526, inlinedAt: !2870)
!2879 = !DILocation(line: 188, column: 6, scope: !1526, inlinedAt: !2870)
!2880 = !DILocation(line: 188, column: 18, scope: !1526, inlinedAt: !2870)
!2881 = !DILocation(line: 1032, column: 10, scope: !2776, inlinedAt: !2864)
!2882 = !DILocation(line: 1033, column: 1, scope: !2776, inlinedAt: !2864)
!2883 = !DILocation(line: 1046, column: 3, scope: !2855)
!2884 = distinct !DISubprogram(name: "quote_n_mem", scope: !239, file: !239, line: 1061, type: !2885, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!12, !14, !12, !68}
!2887 = !{!2888, !2889, !2890}
!2888 = !DILocalVariable(name: "n", arg: 1, scope: !2884, file: !239, line: 1061, type: !14)
!2889 = !DILocalVariable(name: "arg", arg: 2, scope: !2884, file: !239, line: 1061, type: !12)
!2890 = !DILocalVariable(name: "argsize", arg: 3, scope: !2884, file: !239, line: 1061, type: !68)
!2891 = !DILocation(line: 0, scope: !2884)
!2892 = !DILocation(line: 1063, column: 10, scope: !2884)
!2893 = !DILocation(line: 1063, column: 3, scope: !2884)
!2894 = distinct !DISubprogram(name: "quote_mem", scope: !239, file: !239, line: 1067, type: !2895, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!12, !12, !68}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !239, line: 1067, type: !12)
!2899 = !DILocalVariable(name: "argsize", arg: 2, scope: !2894, file: !239, line: 1067, type: !68)
!2900 = !DILocation(line: 0, scope: !2894)
!2901 = !DILocation(line: 0, scope: !2884, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 1069, column: 10, scope: !2894)
!2903 = !DILocation(line: 1063, column: 10, scope: !2884, inlinedAt: !2902)
!2904 = !DILocation(line: 1069, column: 3, scope: !2894)
!2905 = distinct !DISubprogram(name: "quote_n", scope: !239, file: !239, line: 1073, type: !2906, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!12, !14, !12}
!2908 = !{!2909, !2910}
!2909 = !DILocalVariable(name: "n", arg: 1, scope: !2905, file: !239, line: 1073, type: !14)
!2910 = !DILocalVariable(name: "arg", arg: 2, scope: !2905, file: !239, line: 1073, type: !12)
!2911 = !DILocation(line: 0, scope: !2905)
!2912 = !DILocation(line: 0, scope: !2884, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1075, column: 10, scope: !2905)
!2914 = !DILocation(line: 1063, column: 10, scope: !2884, inlinedAt: !2913)
!2915 = !DILocation(line: 1075, column: 3, scope: !2905)
!2916 = distinct !DISubprogram(name: "quote", scope: !239, file: !239, line: 1079, type: !122, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !238, retainedNodes: !2917)
!2917 = !{!2918}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2916, file: !239, line: 1079, type: !12)
!2919 = !DILocation(line: 0, scope: !2916)
!2920 = !DILocation(line: 0, scope: !2905, inlinedAt: !2921)
!2921 = distinct !DILocation(line: 1081, column: 10, scope: !2916)
!2922 = !DILocation(line: 0, scope: !2884, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 1075, column: 10, scope: !2905, inlinedAt: !2921)
!2924 = !DILocation(line: 1063, column: 10, scope: !2884, inlinedAt: !2923)
!2925 = !DILocation(line: 1081, column: 3, scope: !2916)
!2926 = distinct !DISubprogram(name: "version_etc_arn", scope: !400, file: !400, line: 61, type: !2927, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2933)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2929, !12, !12, !12, !2932, !68}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !410)
!2931 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939}
!2934 = !DILocalVariable(name: "stream", arg: 1, scope: !2926, file: !400, line: 61, type: !2929)
!2935 = !DILocalVariable(name: "command_name", arg: 2, scope: !2926, file: !400, line: 62, type: !12)
!2936 = !DILocalVariable(name: "package", arg: 3, scope: !2926, file: !400, line: 62, type: !12)
!2937 = !DILocalVariable(name: "version", arg: 4, scope: !2926, file: !400, line: 63, type: !12)
!2938 = !DILocalVariable(name: "authors", arg: 5, scope: !2926, file: !400, line: 64, type: !2932)
!2939 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2926, file: !400, line: 64, type: !68)
!2940 = !DILocation(line: 0, scope: !2926)
!2941 = !DILocation(line: 66, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2926, file: !400, line: 66, column: 7)
!2943 = !DILocation(line: 66, column: 7, scope: !2926)
!2944 = !DILocation(line: 67, column: 5, scope: !2942)
!2945 = !DILocation(line: 69, column: 5, scope: !2942)
!2946 = !DILocation(line: 83, column: 3, scope: !2926)
!2947 = !DILocation(line: 85, column: 3, scope: !2926)
!2948 = !DILocation(line: 88, column: 3, scope: !2926)
!2949 = !DILocation(line: 95, column: 3, scope: !2926)
!2950 = !DILocation(line: 97, column: 3, scope: !2926)
!2951 = !DILocation(line: 105, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2926, file: !400, line: 98, column: 5)
!2953 = !DILocation(line: 106, column: 7, scope: !2952)
!2954 = !DILocation(line: 109, column: 7, scope: !2952)
!2955 = !DILocation(line: 110, column: 7, scope: !2952)
!2956 = !DILocation(line: 113, column: 7, scope: !2952)
!2957 = !DILocation(line: 115, column: 7, scope: !2952)
!2958 = !DILocation(line: 120, column: 7, scope: !2952)
!2959 = !DILocation(line: 122, column: 7, scope: !2952)
!2960 = !DILocation(line: 127, column: 7, scope: !2952)
!2961 = !DILocation(line: 129, column: 7, scope: !2952)
!2962 = !DILocation(line: 134, column: 7, scope: !2952)
!2963 = !DILocation(line: 137, column: 7, scope: !2952)
!2964 = !DILocation(line: 142, column: 7, scope: !2952)
!2965 = !DILocation(line: 145, column: 7, scope: !2952)
!2966 = !DILocation(line: 150, column: 7, scope: !2952)
!2967 = !DILocation(line: 154, column: 7, scope: !2952)
!2968 = !DILocation(line: 159, column: 7, scope: !2952)
!2969 = !DILocation(line: 163, column: 7, scope: !2952)
!2970 = !DILocation(line: 170, column: 7, scope: !2952)
!2971 = !DILocation(line: 174, column: 7, scope: !2952)
!2972 = !DILocation(line: 176, column: 1, scope: !2926)
!2973 = distinct !DISubprogram(name: "version_etc_ar", scope: !400, file: !400, line: 183, type: !2974, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2929, !12, !12, !12, !2932}
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982}
!2977 = !DILocalVariable(name: "stream", arg: 1, scope: !2973, file: !400, line: 183, type: !2929)
!2978 = !DILocalVariable(name: "command_name", arg: 2, scope: !2973, file: !400, line: 184, type: !12)
!2979 = !DILocalVariable(name: "package", arg: 3, scope: !2973, file: !400, line: 184, type: !12)
!2980 = !DILocalVariable(name: "version", arg: 4, scope: !2973, file: !400, line: 185, type: !12)
!2981 = !DILocalVariable(name: "authors", arg: 5, scope: !2973, file: !400, line: 185, type: !2932)
!2982 = !DILocalVariable(name: "n_authors", scope: !2973, file: !400, line: 187, type: !68)
!2983 = !DILocation(line: 0, scope: !2973)
!2984 = !DILocation(line: 189, column: 8, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2973, file: !400, line: 189, column: 3)
!2986 = !DILocation(line: 0, scope: !2985)
!2987 = !DILocation(line: 189, column: 23, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !400, line: 189, column: 3)
!2989 = !DILocation(line: 189, column: 3, scope: !2985)
!2990 = !DILocation(line: 189, column: 52, scope: !2988)
!2991 = distinct !{!2991, !2989, !2992}
!2992 = !DILocation(line: 190, column: 5, scope: !2985)
!2993 = !DILocation(line: 191, column: 3, scope: !2973)
!2994 = !DILocation(line: 192, column: 1, scope: !2973)
!2995 = distinct !DISubprogram(name: "version_etc_va", scope: !400, file: !400, line: 199, type: !2996, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3005)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !2929, !12, !12, !12, !2998}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !400, line: 192, size: 192, elements: !3000)
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2999, file: !400, line: 192, baseType: !242, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2999, file: !400, line: 192, baseType: !242, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2999, file: !400, line: 192, baseType: !66, size: 64, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2999, file: !400, line: 192, baseType: !66, size: 64, offset: 128)
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011, !3012}
!3006 = !DILocalVariable(name: "stream", arg: 1, scope: !2995, file: !400, line: 199, type: !2929)
!3007 = !DILocalVariable(name: "command_name", arg: 2, scope: !2995, file: !400, line: 200, type: !12)
!3008 = !DILocalVariable(name: "package", arg: 3, scope: !2995, file: !400, line: 200, type: !12)
!3009 = !DILocalVariable(name: "version", arg: 4, scope: !2995, file: !400, line: 201, type: !12)
!3010 = !DILocalVariable(name: "authors", arg: 5, scope: !2995, file: !400, line: 201, type: !2998)
!3011 = !DILocalVariable(name: "n_authors", scope: !2995, file: !400, line: 203, type: !68)
!3012 = !DILocalVariable(name: "authtab", scope: !2995, file: !400, line: 204, type: !3013)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !348)
!3014 = !DILocation(line: 0, scope: !2995)
!3015 = !DILocation(line: 204, column: 3, scope: !2995)
!3016 = !DILocation(line: 204, column: 15, scope: !2995)
!3017 = !DILocation(line: 0, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !400, line: 206, column: 3)
!3019 = distinct !DILexicalBlock(scope: !2995, file: !400, line: 206, column: 3)
!3020 = !DILocation(line: 208, column: 35, scope: !3018)
!3021 = !DILocation(line: 208, column: 14, scope: !3018)
!3022 = !DILocation(line: 208, column: 33, scope: !3018)
!3023 = !DILocation(line: 208, column: 67, scope: !3018)
!3024 = !DILocation(line: 206, column: 3, scope: !3019)
!3025 = !DILocation(line: 0, scope: !3019)
!3026 = !DILocation(line: 211, column: 3, scope: !2995)
!3027 = !DILocation(line: 213, column: 1, scope: !2995)
!3028 = distinct !DISubprogram(name: "version_etc", scope: !400, file: !400, line: 230, type: !3029, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2929, !12, !12, !12, null}
!3031 = !{!3032, !3033, !3034, !3035, !3036}
!3032 = !DILocalVariable(name: "stream", arg: 1, scope: !3028, file: !400, line: 230, type: !2929)
!3033 = !DILocalVariable(name: "command_name", arg: 2, scope: !3028, file: !400, line: 231, type: !12)
!3034 = !DILocalVariable(name: "package", arg: 3, scope: !3028, file: !400, line: 231, type: !12)
!3035 = !DILocalVariable(name: "version", arg: 4, scope: !3028, file: !400, line: 232, type: !12)
!3036 = !DILocalVariable(name: "authors", scope: !3028, file: !400, line: 234, type: !3037)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3038)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3039, line: 32, baseType: !3040)
!3039 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !400, line: 234, baseType: !3041)
!3041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2999, size: 192, elements: !51)
!3042 = !DILocation(line: 0, scope: !3028)
!3043 = !DILocation(line: 234, column: 3, scope: !3028)
!3044 = !DILocation(line: 234, column: 11, scope: !3028)
!3045 = !DILocation(line: 236, column: 3, scope: !3028)
!3046 = !DILocation(line: 237, column: 3, scope: !3028)
!3047 = !DILocation(line: 238, column: 3, scope: !3028)
!3048 = !DILocation(line: 239, column: 1, scope: !3028)
!3049 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !400, file: !400, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !4)
!3050 = !DILocation(line: 244, column: 3, scope: !3049)
!3051 = !DILocation(line: 249, column: 3, scope: !3049)
!3052 = !DILocation(line: 255, column: 3, scope: !3049)
!3053 = !DILocation(line: 260, column: 3, scope: !3049)
!3054 = !DILocation(line: 262, column: 1, scope: !3049)
!3055 = distinct !DISubprogram(name: "xnmalloc", scope: !277, file: !277, line: 99, type: !3056, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!66, !68, !68}
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "n", arg: 1, scope: !3055, file: !277, line: 99, type: !68)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !277, line: 99, type: !68)
!3061 = !DILocation(line: 0, scope: !3055)
!3062 = !DILocation(line: 101, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3055, file: !277, line: 101, column: 7)
!3064 = !DILocation(line: 101, column: 7, scope: !3055)
!3065 = !DILocation(line: 102, column: 5, scope: !3063)
!3066 = !DILocation(line: 103, column: 21, scope: !3055)
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3068, file: !442, line: 39, type: !68)
!3068 = distinct !DISubprogram(name: "xmalloc", scope: !442, file: !442, line: 39, type: !3069, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!66, !68}
!3071 = !{!3067, !3072}
!3072 = !DILocalVariable(name: "p", scope: !3068, file: !442, line: 41, type: !66)
!3073 = !DILocation(line: 0, scope: !3068, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 103, column: 10, scope: !3055)
!3075 = !DILocation(line: 41, column: 13, scope: !3068, inlinedAt: !3074)
!3076 = !DILocation(line: 42, column: 8, scope: !3077, inlinedAt: !3074)
!3077 = distinct !DILexicalBlock(scope: !3068, file: !442, line: 42, column: 7)
!3078 = !DILocation(line: 42, column: 15, scope: !3077, inlinedAt: !3074)
!3079 = !DILocation(line: 42, column: 10, scope: !3077, inlinedAt: !3074)
!3080 = !DILocation(line: 43, column: 5, scope: !3077, inlinedAt: !3074)
!3081 = !DILocation(line: 103, column: 3, scope: !3055)
!3082 = !DILocation(line: 0, scope: !3068)
!3083 = !DILocation(line: 41, column: 13, scope: !3068)
!3084 = !DILocation(line: 42, column: 8, scope: !3077)
!3085 = !DILocation(line: 42, column: 15, scope: !3077)
!3086 = !DILocation(line: 42, column: 10, scope: !3077)
!3087 = !DILocation(line: 43, column: 5, scope: !3077)
!3088 = !DILocation(line: 44, column: 3, scope: !3068)
!3089 = distinct !DISubprogram(name: "xnrealloc", scope: !277, file: !277, line: 112, type: !3090, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!66, !66, !68, !68}
!3092 = !{!3093, !3094, !3095}
!3093 = !DILocalVariable(name: "p", arg: 1, scope: !3089, file: !277, line: 112, type: !66)
!3094 = !DILocalVariable(name: "n", arg: 2, scope: !3089, file: !277, line: 112, type: !68)
!3095 = !DILocalVariable(name: "s", arg: 3, scope: !3089, file: !277, line: 112, type: !68)
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 114, column: 7, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3089, file: !277, line: 114, column: 7)
!3099 = !DILocation(line: 114, column: 7, scope: !3089)
!3100 = !DILocation(line: 115, column: 5, scope: !3098)
!3101 = !DILocation(line: 116, column: 25, scope: !3089)
!3102 = !DILocalVariable(name: "p", arg: 1, scope: !3103, file: !442, line: 51, type: !66)
!3103 = distinct !DISubprogram(name: "xrealloc", scope: !442, file: !442, line: 51, type: !3104, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!66, !66, !68}
!3106 = !{!3102, !3107}
!3107 = !DILocalVariable(name: "n", arg: 2, scope: !3103, file: !442, line: 51, type: !68)
!3108 = !DILocation(line: 0, scope: !3103, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 116, column: 10, scope: !3089)
!3110 = !DILocation(line: 53, column: 8, scope: !3111, inlinedAt: !3109)
!3111 = distinct !DILexicalBlock(scope: !3103, file: !442, line: 53, column: 7)
!3112 = !DILocation(line: 53, column: 13, scope: !3111, inlinedAt: !3109)
!3113 = !DILocation(line: 53, column: 10, scope: !3111, inlinedAt: !3109)
!3114 = !DILocation(line: 57, column: 7, scope: !3115, inlinedAt: !3109)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !442, line: 54, column: 5)
!3116 = !DILocation(line: 58, column: 7, scope: !3115, inlinedAt: !3109)
!3117 = !DILocation(line: 61, column: 7, scope: !3103, inlinedAt: !3109)
!3118 = !DILocation(line: 62, column: 8, scope: !3119, inlinedAt: !3109)
!3119 = distinct !DILexicalBlock(scope: !3103, file: !442, line: 62, column: 7)
!3120 = !DILocation(line: 62, column: 13, scope: !3119, inlinedAt: !3109)
!3121 = !DILocation(line: 62, column: 10, scope: !3119, inlinedAt: !3109)
!3122 = !DILocation(line: 63, column: 5, scope: !3119, inlinedAt: !3109)
!3123 = !DILocation(line: 116, column: 3, scope: !3089)
!3124 = !DILocation(line: 0, scope: !3103)
!3125 = !DILocation(line: 53, column: 8, scope: !3111)
!3126 = !DILocation(line: 53, column: 13, scope: !3111)
!3127 = !DILocation(line: 53, column: 10, scope: !3111)
!3128 = !DILocation(line: 57, column: 7, scope: !3115)
!3129 = !DILocation(line: 58, column: 7, scope: !3115)
!3130 = !DILocation(line: 61, column: 7, scope: !3103)
!3131 = !DILocation(line: 62, column: 8, scope: !3119)
!3132 = !DILocation(line: 62, column: 13, scope: !3119)
!3133 = !DILocation(line: 62, column: 10, scope: !3119)
!3134 = !DILocation(line: 63, column: 5, scope: !3119)
!3135 = !DILocation(line: 65, column: 1, scope: !3103)
!3136 = !DILocation(line: 0, scope: !445)
!3137 = !DILocation(line: 176, column: 14, scope: !445)
!3138 = !DILocation(line: 178, column: 9, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !445, file: !277, line: 178, column: 7)
!3140 = !DILocation(line: 178, column: 7, scope: !445)
!3141 = !DILocation(line: 180, column: 13, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !277, line: 180, column: 11)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !277, line: 179, column: 5)
!3144 = !DILocation(line: 180, column: 11, scope: !3143)
!3145 = !DILocation(line: 188, column: 30, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !277, line: 181, column: 9)
!3147 = !DILocation(line: 189, column: 16, scope: !3146)
!3148 = !DILocation(line: 189, column: 13, scope: !3146)
!3149 = !DILocation(line: 190, column: 9, scope: !3146)
!3150 = !DILocation(line: 191, column: 11, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !277, line: 191, column: 11)
!3152 = !DILocation(line: 191, column: 11, scope: !3143)
!3153 = !DILocation(line: 206, column: 7, scope: !445)
!3154 = !DILocation(line: 207, column: 25, scope: !445)
!3155 = !DILocation(line: 0, scope: !3103, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 207, column: 10, scope: !445)
!3157 = !DILocation(line: 53, column: 10, scope: !3111, inlinedAt: !3156)
!3158 = !DILocation(line: 192, column: 9, scope: !3151)
!3159 = !DILocation(line: 200, column: 69, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !277, line: 200, column: 11)
!3161 = distinct !DILexicalBlock(scope: !3139, file: !277, line: 195, column: 5)
!3162 = !DILocation(line: 201, column: 11, scope: !3160)
!3163 = !DILocation(line: 200, column: 11, scope: !3161)
!3164 = !DILocation(line: 202, column: 9, scope: !3160)
!3165 = !DILocation(line: 203, column: 14, scope: !3161)
!3166 = !DILocation(line: 203, column: 18, scope: !3161)
!3167 = !DILocation(line: 203, column: 9, scope: !3161)
!3168 = !DILocation(line: 53, column: 8, scope: !3111, inlinedAt: !3156)
!3169 = !DILocation(line: 57, column: 7, scope: !3115, inlinedAt: !3156)
!3170 = !DILocation(line: 58, column: 7, scope: !3115, inlinedAt: !3156)
!3171 = !DILocation(line: 61, column: 7, scope: !3103, inlinedAt: !3156)
!3172 = !DILocation(line: 62, column: 8, scope: !3119, inlinedAt: !3156)
!3173 = !DILocation(line: 62, column: 13, scope: !3119, inlinedAt: !3156)
!3174 = !DILocation(line: 62, column: 10, scope: !3119, inlinedAt: !3156)
!3175 = !DILocation(line: 63, column: 5, scope: !3119, inlinedAt: !3156)
!3176 = !DILocation(line: 207, column: 3, scope: !445)
!3177 = distinct !DISubprogram(name: "xcharalloc", scope: !277, file: !277, line: 216, type: !2340, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3178)
!3178 = !{!3179}
!3179 = !DILocalVariable(name: "n", arg: 1, scope: !3177, file: !277, line: 216, type: !68)
!3180 = !DILocation(line: 0, scope: !3177)
!3181 = !DILocation(line: 0, scope: !3068, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 218, column: 10, scope: !3177)
!3183 = !DILocation(line: 41, column: 13, scope: !3068, inlinedAt: !3182)
!3184 = !DILocation(line: 42, column: 8, scope: !3077, inlinedAt: !3182)
!3185 = !DILocation(line: 42, column: 15, scope: !3077, inlinedAt: !3182)
!3186 = !DILocation(line: 42, column: 10, scope: !3077, inlinedAt: !3182)
!3187 = !DILocation(line: 43, column: 5, scope: !3077, inlinedAt: !3182)
!3188 = !DILocation(line: 218, column: 3, scope: !3177)
!3189 = distinct !DISubprogram(name: "x2realloc", scope: !442, file: !442, line: 74, type: !3190, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!66, !66, !448}
!3192 = !{!3193, !3194}
!3193 = !DILocalVariable(name: "p", arg: 1, scope: !3189, file: !442, line: 74, type: !66)
!3194 = !DILocalVariable(name: "pn", arg: 2, scope: !3189, file: !442, line: 74, type: !448)
!3195 = !DILocation(line: 0, scope: !3189)
!3196 = !DILocation(line: 0, scope: !445, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 76, column: 10, scope: !3189)
!3198 = !DILocation(line: 176, column: 14, scope: !445, inlinedAt: !3197)
!3199 = !DILocation(line: 178, column: 9, scope: !3139, inlinedAt: !3197)
!3200 = !DILocation(line: 178, column: 7, scope: !445, inlinedAt: !3197)
!3201 = !DILocation(line: 180, column: 13, scope: !3142, inlinedAt: !3197)
!3202 = !DILocation(line: 180, column: 11, scope: !3143, inlinedAt: !3197)
!3203 = !DILocation(line: 191, column: 11, scope: !3151, inlinedAt: !3197)
!3204 = !DILocation(line: 191, column: 11, scope: !3143, inlinedAt: !3197)
!3205 = !DILocation(line: 206, column: 7, scope: !445, inlinedAt: !3197)
!3206 = !DILocation(line: 0, scope: !3103, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 207, column: 10, scope: !445, inlinedAt: !3197)
!3208 = !DILocation(line: 53, column: 10, scope: !3111, inlinedAt: !3207)
!3209 = !DILocation(line: 192, column: 9, scope: !3151, inlinedAt: !3197)
!3210 = !DILocation(line: 201, column: 11, scope: !3160, inlinedAt: !3197)
!3211 = !DILocation(line: 200, column: 11, scope: !3161, inlinedAt: !3197)
!3212 = !DILocation(line: 202, column: 9, scope: !3160, inlinedAt: !3197)
!3213 = !DILocation(line: 203, column: 14, scope: !3161, inlinedAt: !3197)
!3214 = !DILocation(line: 203, column: 18, scope: !3161, inlinedAt: !3197)
!3215 = !DILocation(line: 203, column: 9, scope: !3161, inlinedAt: !3197)
!3216 = !DILocation(line: 53, column: 8, scope: !3111, inlinedAt: !3207)
!3217 = !DILocation(line: 57, column: 7, scope: !3115, inlinedAt: !3207)
!3218 = !DILocation(line: 58, column: 7, scope: !3115, inlinedAt: !3207)
!3219 = !DILocation(line: 61, column: 7, scope: !3103, inlinedAt: !3207)
!3220 = !DILocation(line: 62, column: 8, scope: !3119, inlinedAt: !3207)
!3221 = !DILocation(line: 62, column: 13, scope: !3119, inlinedAt: !3207)
!3222 = !DILocation(line: 62, column: 10, scope: !3119, inlinedAt: !3207)
!3223 = !DILocation(line: 63, column: 5, scope: !3119, inlinedAt: !3207)
!3224 = !DILocation(line: 76, column: 3, scope: !3189)
!3225 = distinct !DISubprogram(name: "xzalloc", scope: !442, file: !442, line: 84, type: !3069, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3226)
!3226 = !{!3227}
!3227 = !DILocalVariable(name: "n", arg: 1, scope: !3225, file: !442, line: 84, type: !68)
!3228 = !DILocation(line: 0, scope: !3225)
!3229 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !442, line: 93, type: !68)
!3230 = distinct !DISubprogram(name: "xcalloc", scope: !442, file: !442, line: 93, type: !3056, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3231)
!3231 = !{!3229, !3232, !3233}
!3232 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !442, line: 93, type: !68)
!3233 = !DILocalVariable(name: "p", scope: !3230, file: !442, line: 95, type: !66)
!3234 = !DILocation(line: 0, scope: !3230, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 86, column: 10, scope: !3225)
!3236 = !DILocation(line: 100, column: 7, scope: !3237, inlinedAt: !3235)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !442, line: 100, column: 7)
!3238 = !DILocation(line: 101, column: 7, scope: !3237, inlinedAt: !3235)
!3239 = !DILocation(line: 101, column: 18, scope: !3237, inlinedAt: !3235)
!3240 = !DILocation(line: 101, column: 16, scope: !3237, inlinedAt: !3235)
!3241 = !DILocation(line: 100, column: 7, scope: !3230, inlinedAt: !3235)
!3242 = !DILocation(line: 102, column: 5, scope: !3237, inlinedAt: !3235)
!3243 = !DILocation(line: 86, column: 3, scope: !3225)
!3244 = !DILocation(line: 0, scope: !3230)
!3245 = !DILocation(line: 100, column: 7, scope: !3237)
!3246 = !DILocation(line: 101, column: 7, scope: !3237)
!3247 = !DILocation(line: 101, column: 18, scope: !3237)
!3248 = !DILocation(line: 101, column: 16, scope: !3237)
!3249 = !DILocation(line: 100, column: 7, scope: !3230)
!3250 = !DILocation(line: 102, column: 5, scope: !3237)
!3251 = !DILocation(line: 103, column: 3, scope: !3230)
!3252 = distinct !DISubprogram(name: "xmemdup", scope: !442, file: !442, line: 111, type: !3253, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!66, !280, !68}
!3255 = !{!3256, !3257}
!3256 = !DILocalVariable(name: "p", arg: 1, scope: !3252, file: !442, line: 111, type: !280)
!3257 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !442, line: 111, type: !68)
!3258 = !DILocation(line: 0, scope: !3252)
!3259 = !DILocation(line: 0, scope: !3068, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 113, column: 18, scope: !3252)
!3261 = !DILocation(line: 41, column: 13, scope: !3068, inlinedAt: !3260)
!3262 = !DILocation(line: 42, column: 8, scope: !3077, inlinedAt: !3260)
!3263 = !DILocation(line: 42, column: 15, scope: !3077, inlinedAt: !3260)
!3264 = !DILocation(line: 42, column: 10, scope: !3077, inlinedAt: !3260)
!3265 = !DILocation(line: 43, column: 5, scope: !3077, inlinedAt: !3260)
!3266 = !DILocalVariable(name: "__dest", arg: 1, scope: !3267, file: !1873, line: 31, type: !3270)
!3267 = distinct !DISubprogram(name: "memcpy", scope: !1873, file: !1873, line: 31, type: !3268, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3272)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!66, !3270, !3271, !68}
!3270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!3271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !280)
!3272 = !{!3266, !3273, !3274}
!3273 = !DILocalVariable(name: "__src", arg: 2, scope: !3267, file: !1873, line: 31, type: !3271)
!3274 = !DILocalVariable(name: "__len", arg: 3, scope: !3267, file: !1873, line: 31, type: !68)
!3275 = !DILocation(line: 0, scope: !3267, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 113, column: 10, scope: !3252)
!3277 = !DILocation(line: 34, column: 10, scope: !3267, inlinedAt: !3276)
!3278 = !DILocation(line: 113, column: 3, scope: !3252)
!3279 = distinct !DISubprogram(name: "xstrdup", scope: !442, file: !442, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3280)
!3280 = !{!3281}
!3281 = !DILocalVariable(name: "string", arg: 1, scope: !3279, file: !442, line: 119, type: !12)
!3282 = !DILocation(line: 0, scope: !3279)
!3283 = !DILocation(line: 121, column: 27, scope: !3279)
!3284 = !DILocation(line: 121, column: 43, scope: !3279)
!3285 = !DILocation(line: 0, scope: !3252, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 121, column: 10, scope: !3279)
!3287 = !DILocation(line: 0, scope: !3068, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 113, column: 18, scope: !3252, inlinedAt: !3286)
!3289 = !DILocation(line: 41, column: 13, scope: !3068, inlinedAt: !3288)
!3290 = !DILocation(line: 42, column: 8, scope: !3077, inlinedAt: !3288)
!3291 = !DILocation(line: 42, column: 15, scope: !3077, inlinedAt: !3288)
!3292 = !DILocation(line: 42, column: 10, scope: !3077, inlinedAt: !3288)
!3293 = !DILocation(line: 43, column: 5, scope: !3077, inlinedAt: !3288)
!3294 = !DILocation(line: 0, scope: !3267, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 113, column: 10, scope: !3252, inlinedAt: !3286)
!3296 = !DILocation(line: 34, column: 10, scope: !3267, inlinedAt: !3295)
!3297 = !DILocation(line: 121, column: 3, scope: !3279)
!3298 = distinct !DISubprogram(name: "xalloc_die", scope: !463, file: !463, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !462, retainedNodes: !4)
!3299 = !DILocation(line: 34, column: 10, scope: !3298)
!3300 = !DILocation(line: 34, column: 33, scope: !3298)
!3301 = !DILocation(line: 34, column: 3, scope: !3298)
!3302 = !DILocation(line: 40, column: 3, scope: !3298)
!3303 = distinct !DISubprogram(name: "xstrndup", scope: !466, file: !466, line: 30, type: !2531, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DILocalVariable(name: "string", arg: 1, scope: !3303, file: !466, line: 30, type: !12)
!3306 = !DILocalVariable(name: "n", arg: 2, scope: !3303, file: !466, line: 30, type: !68)
!3307 = !DILocalVariable(name: "s", scope: !3303, file: !466, line: 32, type: !10)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 32, column: 13, scope: !3303)
!3310 = !DILocation(line: 33, column: 9, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3303, file: !466, line: 33, column: 7)
!3312 = !DILocation(line: 33, column: 7, scope: !3303)
!3313 = !DILocation(line: 34, column: 5, scope: !3311)
!3314 = !DILocation(line: 35, column: 3, scope: !3303)
!3315 = distinct !DISubprogram(name: "rpl_calloc", scope: !469, file: !469, line: 42, type: !3056, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !468, retainedNodes: !3316)
!3316 = !{!3317, !3318, !3319, !3320}
!3317 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !469, line: 42, type: !68)
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !469, line: 42, type: !68)
!3319 = !DILocalVariable(name: "result", scope: !3315, file: !469, line: 44, type: !66)
!3320 = !DILocalVariable(name: "bytes", scope: !3321, file: !469, line: 56, type: !68)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !469, line: 53, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3315, file: !469, line: 47, column: 7)
!3323 = !DILocation(line: 0, scope: !3315)
!3324 = !DILocation(line: 47, column: 9, scope: !3322)
!3325 = !DILocation(line: 47, column: 19, scope: !3322)
!3326 = !DILocation(line: 47, column: 14, scope: !3322)
!3327 = !DILocation(line: 0, scope: !3321)
!3328 = !DILocation(line: 57, column: 21, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3321, file: !469, line: 57, column: 11)
!3330 = !DILocation(line: 57, column: 11, scope: !3321)
!3331 = !DILocation(line: 59, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !469, line: 58, column: 9)
!3333 = !DILocation(line: 59, column: 17, scope: !3332)
!3334 = !DILocation(line: 65, column: 12, scope: !3315)
!3335 = !DILocation(line: 72, column: 3, scope: !3315)
!3336 = !DILocation(line: 73, column: 1, scope: !3315)
!3337 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !472, file: !472, line: 86, type: !3338, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !471, retainedNodes: !3344)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!68, !3340, !12, !68, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1616, line: 6, baseType: !3343)
!3343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !307, line: 21, baseType: !478)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3345 = !DILocalVariable(name: "pwc", arg: 1, scope: !3337, file: !472, line: 86, type: !3340)
!3346 = !DILocalVariable(name: "s", arg: 2, scope: !3337, file: !472, line: 86, type: !12)
!3347 = !DILocalVariable(name: "n", arg: 3, scope: !3337, file: !472, line: 86, type: !68)
!3348 = !DILocalVariable(name: "ps", arg: 4, scope: !3337, file: !472, line: 86, type: !3341)
!3349 = !DILocalVariable(name: "ret", scope: !3337, file: !472, line: 88, type: !68)
!3350 = !DILocalVariable(name: "wc", scope: !3337, file: !472, line: 89, type: !1620)
!3351 = !DILocalVariable(name: "uc", scope: !3352, file: !472, line: 156, type: !133)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !472, line: 155, column: 5)
!3353 = distinct !DILexicalBlock(scope: !3337, file: !472, line: 154, column: 7)
!3354 = !DILocation(line: 0, scope: !3337)
!3355 = !DILocation(line: 89, column: 3, scope: !3337)
!3356 = !DILocation(line: 105, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3337, file: !472, line: 105, column: 7)
!3358 = !DILocation(line: 105, column: 7, scope: !3337)
!3359 = !DILocation(line: 145, column: 9, scope: !3337)
!3360 = !DILocation(line: 154, column: 19, scope: !3353)
!3361 = !DILocation(line: 154, column: 31, scope: !3353)
!3362 = !DILocation(line: 154, column: 26, scope: !3353)
!3363 = !DILocation(line: 154, column: 41, scope: !3353)
!3364 = !DILocation(line: 154, column: 7, scope: !3337)
!3365 = !DILocation(line: 156, column: 26, scope: !3352)
!3366 = !DILocation(line: 0, scope: !3352)
!3367 = !DILocation(line: 157, column: 14, scope: !3352)
!3368 = !DILocation(line: 157, column: 12, scope: !3352)
!3369 = !DILocation(line: 163, column: 1, scope: !3337)
!3370 = distinct !DISubprogram(name: "close_stream", scope: !491, file: !491, line: 56, type: !3371, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !3375)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!14, !3373}
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !498)
!3375 = !{!3376, !3377, !3379, !3380}
!3376 = !DILocalVariable(name: "stream", arg: 1, scope: !3370, file: !491, line: 56, type: !3373)
!3377 = !DILocalVariable(name: "some_pending", scope: !3370, file: !491, line: 58, type: !3378)
!3378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3379 = !DILocalVariable(name: "prev_fail", scope: !3370, file: !491, line: 59, type: !3378)
!3380 = !DILocalVariable(name: "fclose_fail", scope: !3370, file: !491, line: 60, type: !3378)
!3381 = !DILocation(line: 0, scope: !3370)
!3382 = !DILocation(line: 58, column: 30, scope: !3370)
!3383 = !DILocalVariable(name: "__stream", arg: 1, scope: !3384, file: !1264, line: 135, type: !3373)
!3384 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1264, file: !1264, line: 135, type: !3371, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !3385)
!3385 = !{!3383}
!3386 = !DILocation(line: 0, scope: !3384, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 59, column: 27, scope: !3370)
!3388 = !DILocation(line: 137, column: 10, scope: !3384, inlinedAt: !3387)
!3389 = !{!1272, !1172, i64 0}
!3390 = !DILocation(line: 59, column: 43, scope: !3370)
!3391 = !DILocation(line: 60, column: 29, scope: !3370)
!3392 = !DILocation(line: 60, column: 45, scope: !3370)
!3393 = !DILocation(line: 70, column: 17, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3370, file: !491, line: 70, column: 7)
!3395 = !DILocation(line: 58, column: 50, scope: !3370)
!3396 = !DILocation(line: 70, column: 33, scope: !3394)
!3397 = !DILocation(line: 70, column: 53, scope: !3394)
!3398 = !DILocation(line: 70, column: 59, scope: !3394)
!3399 = !DILocation(line: 70, column: 7, scope: !3370)
!3400 = !DILocation(line: 72, column: 11, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3394, file: !491, line: 71, column: 5)
!3402 = !DILocation(line: 73, column: 9, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3401, file: !491, line: 72, column: 11)
!3404 = !DILocation(line: 73, column: 15, scope: !3403)
!3405 = !DILocation(line: 78, column: 1, scope: !3370)
!3406 = distinct !DISubprogram(name: "hard_locale", scope: !530, file: !530, line: 27, type: !488, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !3407)
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "category", arg: 1, scope: !3406, file: !530, line: 27, type: !14)
!3409 = !DILocalVariable(name: "locale", scope: !3406, file: !530, line: 29, type: !3410)
!3410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3411)
!3411 = !{!3412}
!3412 = !DISubrange(count: 257)
!3413 = !DILocation(line: 0, scope: !3406)
!3414 = !DILocation(line: 29, column: 3, scope: !3406)
!3415 = !DILocation(line: 29, column: 8, scope: !3406)
!3416 = !DILocation(line: 31, column: 7, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3406, file: !530, line: 31, column: 7)
!3418 = !DILocation(line: 31, column: 7, scope: !3406)
!3419 = !DILocation(line: 34, column: 12, scope: !3406)
!3420 = !DILocation(line: 34, column: 38, scope: !3406)
!3421 = !DILocation(line: 34, column: 41, scope: !3406)
!3422 = !DILocation(line: 34, column: 66, scope: !3406)
!3423 = !DILocation(line: 35, column: 1, scope: !3406)
!3424 = distinct !DISubprogram(name: "locale_charset", scope: !537, file: !537, line: 831, type: !330, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !536, retainedNodes: !3425)
!3425 = !{!3426}
!3426 = !DILocalVariable(name: "codeset", scope: !3424, file: !537, line: 833, type: !12)
!3427 = !DILocation(line: 847, column: 13, scope: !3424)
!3428 = !DILocation(line: 0, scope: !3424)
!3429 = !DILocation(line: 911, column: 15, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3424, file: !537, line: 911, column: 7)
!3431 = !DILocation(line: 911, column: 7, scope: !3424)
!3432 = !DILocation(line: 1070, column: 13, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !537, line: 1070, column: 13)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !537, line: 1060, column: 7)
!3435 = distinct !DILexicalBlock(scope: !3424, file: !537, line: 1019, column: 3)
!3436 = !DILocation(line: 1070, column: 24, scope: !3433)
!3437 = !DILocation(line: 1070, column: 13, scope: !3434)
!3438 = !DILocation(line: 1158, column: 3, scope: !3424)
!3439 = distinct !DISubprogram(name: "setlocale_null_r", scope: !930, file: !930, line: 269, type: !3440, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!14, !14, !10, !68}
!3442 = !{!3443, !3444, !3445}
!3443 = !DILocalVariable(name: "category", arg: 1, scope: !3439, file: !930, line: 269, type: !14)
!3444 = !DILocalVariable(name: "buf", arg: 2, scope: !3439, file: !930, line: 269, type: !10)
!3445 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3439, file: !930, line: 269, type: !68)
!3446 = !DILocation(line: 0, scope: !3439)
!3447 = !DILocalVariable(name: "category", arg: 1, scope: !3448, file: !930, line: 91, type: !14)
!3448 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !930, file: !930, line: 91, type: !3440, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !3449)
!3449 = !{!3447, !3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "buf", arg: 2, scope: !3448, file: !930, line: 91, type: !10)
!3451 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3448, file: !930, line: 91, type: !68)
!3452 = !DILocalVariable(name: "result", scope: !3448, file: !930, line: 140, type: !12)
!3453 = !DILocalVariable(name: "length", scope: !3454, file: !930, line: 154, type: !68)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !930, line: 153, column: 5)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !930, line: 142, column: 7)
!3456 = !DILocation(line: 0, scope: !3448, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 274, column: 10, scope: !3439)
!3458 = !DILocalVariable(name: "category", arg: 1, scope: !3459, file: !930, line: 60, type: !14)
!3459 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !930, file: !930, line: 60, type: !3460, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!12, !14}
!3462 = !{!3458, !3463}
!3463 = !DILocalVariable(name: "result", scope: !3459, file: !930, line: 62, type: !12)
!3464 = !DILocation(line: 0, scope: !3459, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 140, column: 24, scope: !3448, inlinedAt: !3457)
!3466 = !DILocation(line: 62, column: 24, scope: !3459, inlinedAt: !3465)
!3467 = !DILocation(line: 142, column: 14, scope: !3455, inlinedAt: !3457)
!3468 = !DILocation(line: 142, column: 7, scope: !3448, inlinedAt: !3457)
!3469 = !DILocation(line: 145, column: 19, scope: !3470, inlinedAt: !3457)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !930, line: 145, column: 11)
!3471 = distinct !DILexicalBlock(scope: !3455, file: !930, line: 143, column: 5)
!3472 = !DILocation(line: 145, column: 11, scope: !3471, inlinedAt: !3457)
!3473 = !DILocation(line: 149, column: 16, scope: !3470, inlinedAt: !3457)
!3474 = !DILocation(line: 149, column: 9, scope: !3470, inlinedAt: !3457)
!3475 = !DILocation(line: 154, column: 23, scope: !3454, inlinedAt: !3457)
!3476 = !DILocation(line: 0, scope: !3454, inlinedAt: !3457)
!3477 = !DILocation(line: 155, column: 18, scope: !3478, inlinedAt: !3457)
!3478 = distinct !DILexicalBlock(scope: !3454, file: !930, line: 155, column: 11)
!3479 = !DILocation(line: 155, column: 11, scope: !3454, inlinedAt: !3457)
!3480 = !DILocation(line: 157, column: 39, scope: !3481, inlinedAt: !3457)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !930, line: 156, column: 9)
!3482 = !DILocalVariable(name: "__dest", arg: 1, scope: !3483, file: !1873, line: 31, type: !3270)
!3483 = distinct !DISubprogram(name: "memcpy", scope: !1873, file: !1873, line: 31, type: !3268, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !3484)
!3484 = !{!3482, !3485, !3486}
!3485 = !DILocalVariable(name: "__src", arg: 2, scope: !3483, file: !1873, line: 31, type: !3271)
!3486 = !DILocalVariable(name: "__len", arg: 3, scope: !3483, file: !1873, line: 31, type: !68)
!3487 = !DILocation(line: 0, scope: !3483, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 157, column: 11, scope: !3481, inlinedAt: !3457)
!3489 = !DILocation(line: 34, column: 10, scope: !3483, inlinedAt: !3488)
!3490 = !DILocation(line: 158, column: 11, scope: !3481, inlinedAt: !3457)
!3491 = !DILocation(line: 162, column: 23, scope: !3492, inlinedAt: !3457)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !930, line: 162, column: 15)
!3493 = distinct !DILexicalBlock(scope: !3478, file: !930, line: 161, column: 9)
!3494 = !DILocation(line: 162, column: 15, scope: !3493, inlinedAt: !3457)
!3495 = !DILocation(line: 167, column: 44, scope: !3496, inlinedAt: !3457)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !930, line: 163, column: 13)
!3497 = !DILocation(line: 0, scope: !3483, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 167, column: 15, scope: !3496, inlinedAt: !3457)
!3499 = !DILocation(line: 34, column: 10, scope: !3483, inlinedAt: !3498)
!3500 = !DILocation(line: 168, column: 15, scope: !3496, inlinedAt: !3457)
!3501 = !DILocation(line: 168, column: 32, scope: !3496, inlinedAt: !3457)
!3502 = !DILocation(line: 169, column: 13, scope: !3496, inlinedAt: !3457)
!3503 = !DILocation(line: 0, scope: !3455, inlinedAt: !3457)
!3504 = !DILocation(line: 274, column: 3, scope: !3439)
!3505 = distinct !DISubprogram(name: "setlocale_null", scope: !930, file: !930, line: 301, type: !3460, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !3506)
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "category", arg: 1, scope: !3505, file: !930, line: 301, type: !14)
!3508 = !DILocation(line: 0, scope: !3505)
!3509 = !DILocation(line: 0, scope: !3459, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 304, column: 10, scope: !3505)
!3511 = !DILocation(line: 62, column: 24, scope: !3459, inlinedAt: !3510)
!3512 = !DILocation(line: 304, column: 3, scope: !3505)
!3513 = distinct !DISubprogram(name: "rpl_fclose", scope: !933, file: !933, line: 58, type: !3514, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !3518)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!14, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !939)
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DILocalVariable(name: "fp", arg: 1, scope: !3513, file: !933, line: 58, type: !3516)
!3520 = !DILocalVariable(name: "saved_errno", scope: !3513, file: !933, line: 60, type: !14)
!3521 = !DILocalVariable(name: "fd", scope: !3513, file: !933, line: 61, type: !14)
!3522 = !DILocalVariable(name: "result", scope: !3513, file: !933, line: 62, type: !14)
!3523 = !DILocation(line: 0, scope: !3513)
!3524 = !DILocation(line: 65, column: 8, scope: !3513)
!3525 = !DILocation(line: 66, column: 10, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3513, file: !933, line: 66, column: 7)
!3527 = !DILocation(line: 66, column: 7, scope: !3513)
!3528 = !DILocation(line: 67, column: 12, scope: !3526)
!3529 = !DILocation(line: 67, column: 5, scope: !3526)
!3530 = !DILocation(line: 72, column: 9, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3513, file: !933, line: 72, column: 7)
!3532 = !DILocation(line: 72, column: 23, scope: !3531)
!3533 = !DILocation(line: 72, column: 33, scope: !3531)
!3534 = !DILocation(line: 72, column: 26, scope: !3531)
!3535 = !DILocation(line: 72, column: 59, scope: !3531)
!3536 = !DILocation(line: 73, column: 7, scope: !3531)
!3537 = !DILocation(line: 73, column: 10, scope: !3531)
!3538 = !DILocation(line: 72, column: 7, scope: !3513)
!3539 = !DILocation(line: 100, column: 12, scope: !3513)
!3540 = !DILocation(line: 105, column: 7, scope: !3513)
!3541 = !DILocation(line: 74, column: 19, scope: !3531)
!3542 = !DILocation(line: 105, column: 19, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3513, file: !933, line: 105, column: 7)
!3544 = !DILocation(line: 107, column: 13, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3543, file: !933, line: 106, column: 5)
!3546 = !DILocation(line: 109, column: 5, scope: !3545)
!3547 = !DILocation(line: 112, column: 1, scope: !3513)
!3548 = distinct !DISubprogram(name: "rpl_fflush", scope: !977, file: !977, line: 129, type: !3549, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3553)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!14, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !983)
!3553 = !{!3554}
!3554 = !DILocalVariable(name: "stream", arg: 1, scope: !3548, file: !977, line: 129, type: !3551)
!3555 = !DILocation(line: 0, scope: !3548)
!3556 = !DILocation(line: 150, column: 14, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3548, file: !977, line: 150, column: 7)
!3558 = !DILocation(line: 150, column: 22, scope: !3557)
!3559 = !DILocation(line: 150, column: 27, scope: !3557)
!3560 = !DILocation(line: 150, column: 7, scope: !3548)
!3561 = !DILocation(line: 151, column: 12, scope: !3557)
!3562 = !DILocation(line: 151, column: 5, scope: !3557)
!3563 = !DILocalVariable(name: "fp", arg: 1, scope: !3564, file: !977, line: 41, type: !3551)
!3564 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !977, file: !977, line: 41, type: !3565, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3551}
!3567 = !{!3563}
!3568 = !DILocation(line: 0, scope: !3564, inlinedAt: !3569)
!3569 = distinct !DILocation(line: 156, column: 3, scope: !3548)
!3570 = !DILocation(line: 43, column: 11, scope: !3571, inlinedAt: !3569)
!3571 = distinct !DILexicalBlock(scope: !3564, file: !977, line: 43, column: 7)
!3572 = !DILocation(line: 43, column: 18, scope: !3571, inlinedAt: !3569)
!3573 = !DILocation(line: 43, column: 7, scope: !3564, inlinedAt: !3569)
!3574 = !DILocation(line: 45, column: 5, scope: !3571, inlinedAt: !3569)
!3575 = !DILocation(line: 158, column: 10, scope: !3548)
!3576 = !DILocation(line: 158, column: 3, scope: !3548)
!3577 = !DILocation(line: 235, column: 1, scope: !3548)
!3578 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1018, file: !1018, line: 28, type: !3579, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !3584)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!14, !3581, !3583, !14}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2931, line: 7, baseType: !1024)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3584 = !{!3585, !3586, !3587, !3588}
!3585 = !DILocalVariable(name: "fp", arg: 1, scope: !3578, file: !1018, line: 28, type: !3581)
!3586 = !DILocalVariable(name: "offset", arg: 2, scope: !3578, file: !1018, line: 28, type: !3583)
!3587 = !DILocalVariable(name: "whence", arg: 3, scope: !3578, file: !1018, line: 28, type: !14)
!3588 = !DILocalVariable(name: "pos", scope: !3589, file: !1018, line: 117, type: !3583)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !1018, line: 113, column: 5)
!3590 = distinct !DILexicalBlock(scope: !3578, file: !1018, line: 52, column: 7)
!3591 = !DILocation(line: 0, scope: !3578)
!3592 = !DILocation(line: 52, column: 11, scope: !3590)
!3593 = !{!1272, !1096, i64 16}
!3594 = !DILocation(line: 52, column: 31, scope: !3590)
!3595 = !{!1272, !1096, i64 8}
!3596 = !DILocation(line: 52, column: 24, scope: !3590)
!3597 = !DILocation(line: 53, column: 7, scope: !3590)
!3598 = !DILocation(line: 53, column: 14, scope: !3590)
!3599 = !DILocation(line: 53, column: 35, scope: !3590)
!3600 = !{!1272, !1096, i64 32}
!3601 = !DILocation(line: 53, column: 28, scope: !3590)
!3602 = !DILocation(line: 54, column: 7, scope: !3590)
!3603 = !DILocation(line: 54, column: 14, scope: !3590)
!3604 = !{!1272, !1096, i64 72}
!3605 = !DILocation(line: 54, column: 28, scope: !3590)
!3606 = !DILocation(line: 52, column: 7, scope: !3578)
!3607 = !DILocation(line: 117, column: 26, scope: !3589)
!3608 = !DILocation(line: 117, column: 19, scope: !3589)
!3609 = !DILocation(line: 0, scope: !3589)
!3610 = !DILocation(line: 118, column: 15, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3589, file: !1018, line: 118, column: 11)
!3612 = !DILocation(line: 118, column: 11, scope: !3589)
!3613 = !DILocation(line: 129, column: 11, scope: !3589)
!3614 = !DILocation(line: 129, column: 18, scope: !3589)
!3615 = !DILocation(line: 130, column: 11, scope: !3589)
!3616 = !DILocation(line: 130, column: 19, scope: !3589)
!3617 = !{!1272, !1273, i64 144}
!3618 = !DILocation(line: 161, column: 7, scope: !3589)
!3619 = !DILocation(line: 163, column: 10, scope: !3578)
!3620 = !DILocation(line: 163, column: 3, scope: !3578)
!3621 = !DILocation(line: 164, column: 1, scope: !3578)
