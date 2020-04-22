; ModuleID = 'coreutils-8.32/src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.item = type { i8*, %struct.item*, %struct.item*, i32, i64, %struct.item*, %struct.successor* }
%struct.successor = type { %struct.item*, %struct.successor* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.tokenbuffer = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1
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
@.str.10 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [26 x i8] c"_Bool tsort(const char *)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"!STREQ (str, s->str)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"!STREQ (str, p->str)\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !0
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !174
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !191
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !193
@.str.36 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), align 8, !dbg !195
@.str.40 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !200
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !243
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !245
@.str.52 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.54, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.55, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !251
@.str.2.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !318
@.str.63 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 16, !dbg !359
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !452
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !458
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !460
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.79 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.80 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.81 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.82 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !467
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !474
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !462
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !476
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.96 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.97 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.99 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.100 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.107 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.108 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.111 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.112 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.113 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.114 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.115 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.116 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.117 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !482
@.str.1.130 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.146 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.149 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.150 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1260 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1263, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %0, metadata !1262, metadata !DIExpression()), !dbg !1284
  %3 = icmp eq i32 %0, 0, !dbg !1285
  br i1 %3, label %9, label %4, !dbg !1286

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1287, !tbaa !1289
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #14, !dbg !1287
  %7 = load i8*, i8** @program_name, align 8, !dbg !1287, !tbaa !1289
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #14, !dbg !1287
  br label %61, !dbg !1287

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 5) #14, !dbg !1293
  %11 = load i8*, i8** @program_name, align 8, !dbg !1293, !tbaa !1289
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #14, !dbg !1293
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 5) #14, !dbg !1294
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1294, !tbaa !1289
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #14, !dbg !1294
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 5) #14, !dbg !1297
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1297, !tbaa !1289
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1297
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #14, !dbg !1298
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1298, !tbaa !1289
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1298
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #14, !dbg !1299
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1299, !tbaa !1289
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1299
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !1267, metadata !DIExpression()) #14, !dbg !1300
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #14, !dbg !1301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #14, !dbg !1280
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !1268, metadata !DIExpression()) #14, !dbg !1300
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1302
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  br label %27, !dbg !1303

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %28) #22, !dbg !1304
  %31 = icmp eq i32 %30, 0, !dbg !1304
  br i1 %31, label %37, label %32, !dbg !1303

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !1305
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !1306
  %35 = load i8*, i8** %34, align 8, !dbg !1306, !tbaa !1307
  %36 = icmp eq i8* %35, null, !dbg !1309
  br i1 %36, label %37, label %27, !dbg !1310, !llvm.loop !1311

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1269, metadata !DIExpression()) #14, !dbg !1300
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !1312
  %40 = load i8*, i8** %39, align 8, !dbg !1312, !tbaa !1314
  %41 = icmp eq i8* %40, null, !dbg !1315
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %40, !dbg !1316
  call void @llvm.dbg.value(metadata i8* %42, metadata !1268, metadata !DIExpression()) #14, !dbg !1300
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #14, !dbg !1317
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !1317
  %45 = tail call i8* @setlocale(i32 5, i8* null) #14, !dbg !1318
  call void @llvm.dbg.value(metadata i8* %45, metadata !1276, metadata !DIExpression()) #14, !dbg !1300
  %46 = icmp eq i8* %45, null, !dbg !1319
  br i1 %46, label %54, label %47, !dbg !1321

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #22, !dbg !1322
  %49 = icmp eq i32 %48, 0, !dbg !1322
  br i1 %49, label %54, label %50, !dbg !1323

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 5) #14, !dbg !1324
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1324, !tbaa !1289
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #14, !dbg !1324
  br label %54, !dbg !1326

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 5) #14, !dbg !1327
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #14, !dbg !1327
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #14, !dbg !1328
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !1328
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1328
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #14, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #14, !dbg !1329
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #23, !dbg !1330
  unreachable, !dbg !1330
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !30 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !40 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !105 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1331 {
  %3 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %3, metadata !1338, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %0, metadata !1335, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8** %1, metadata !1336, metadata !DIExpression()), !dbg !1357
  %4 = load i8*, i8** %1, align 8, !dbg !1358, !tbaa !1289
  tail call void @set_program_name(i8* %4) #14, !dbg !1359
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #14, !dbg !1360
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !1361
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1362
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #14, !dbg !1363
  %9 = load i8*, i8** @Version, align 8, !dbg !1364, !tbaa !1289
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %9, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #14, !dbg !1365
  %10 = load i32, i32* @optind, align 4, !dbg !1366, !tbaa !1368
  %11 = sub nsw i32 %0, %10, !dbg !1370
  %12 = icmp sgt i32 %11, 1, !dbg !1371
  br i1 %12, label %13, label %21, !dbg !1372

13:                                               ; preds = %2
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #14, !dbg !1373
  %15 = load i32, i32* @optind, align 4, !dbg !1375, !tbaa !1368
  %16 = add nsw i32 %15, 1, !dbg !1376
  %17 = sext i32 %16 to i64, !dbg !1377
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17, !dbg !1377
  %19 = load i8*, i8** %18, align 8, !dbg !1377, !tbaa !1289
  %20 = tail call i8* @quote(i8* %19) #14, !dbg !1378
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %20) #14, !dbg !1379
  tail call void @usage(i32 1) #24, !dbg !1380
  unreachable, !dbg !1380

21:                                               ; preds = %2
  %22 = icmp eq i32 %10, %0, !dbg !1381
  br i1 %22, label %27, label %23, !dbg !1382

23:                                               ; preds = %21
  %24 = sext i32 %10 to i64, !dbg !1383
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !1383
  %26 = load i8*, i8** %25, align 8, !dbg !1383, !tbaa !1289
  br label %27, !dbg !1382

27:                                               ; preds = %21, %23
  %28 = phi i8* [ %26, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %21 ], !dbg !1382
  call void @llvm.dbg.value(metadata i8* %28, metadata !1343, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !1347, metadata !DIExpression()) #14, !dbg !1384
  %29 = bitcast %struct.tokenbuffer* %3 to i8*, !dbg !1385
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #14, !dbg !1385
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %28, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #22, !dbg !1386
  %31 = icmp eq i32 %30, 0, !dbg !1386
  call void @llvm.dbg.value(metadata i1 %31, metadata !1348, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata i8* null, metadata !1387, metadata !DIExpression()) #14, !dbg !1393
  %32 = tail call noalias i8* @xmalloc(i64 56) #14, !dbg !1395
  %33 = bitcast i8* %32 to %struct.item*, !dbg !1395
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1392, metadata !DIExpression()) #14, !dbg !1393
  %34 = getelementptr inbounds i8, i8* %32, i64 32, !dbg !1396
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false) #14, !dbg !1397
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1345, metadata !DIExpression()) #14, !dbg !1384
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(28) %32, i8 0, i64 28, i1 false) #14, !dbg !1398
  br i1 %31, label %43, label %35, !dbg !1399

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1401, !tbaa !1289
  %37 = tail call %struct._IO_FILE* @freopen_safer(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %36) #14, !dbg !1402
  %38 = icmp eq %struct._IO_FILE* %37, null, !dbg !1402
  br i1 %38, label %39, label %43, !dbg !1403

39:                                               ; preds = %35
  %40 = tail call i32* @__errno_location() #25, !dbg !1404
  %41 = load i32, i32* %40, align 4, !dbg !1404, !tbaa !1368
  %42 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #14, !dbg !1404
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %42) #14, !dbg !1404
  unreachable, !dbg !1404

43:                                               ; preds = %35, %27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1405, !tbaa !1289
  tail call void @fadvise(%struct._IO_FILE* %44, i32 2) #14, !dbg !1406
  call void @init_tokenbuffer(%struct.tokenbuffer* nonnull %3) #14, !dbg !1407
  %45 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !1408
  %46 = icmp eq i8* %32, null, !dbg !1409
  %47 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !1425
  %48 = bitcast i8* %47 to %struct.item**, !dbg !1425
  %49 = bitcast i8* %47 to i8**, !dbg !1425
  br label %50, !dbg !1427

50:                                               ; preds = %226, %43
  %51 = phi %struct.item* [ null, %43 ], [ %227, %226 ], !dbg !1428
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1347, metadata !DIExpression()) #14, !dbg !1384
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1429, !tbaa !1289
  %53 = call i64 @readtoken(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, %struct.tokenbuffer* nonnull %3) #14, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %53, metadata !1349, metadata !DIExpression()) #14, !dbg !1408
  switch i64 %53, label %55 [
    i64 -1, label %228
    i64 0, label %54
  ], !dbg !1431

54:                                               ; preds = %50
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 461, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #23, !dbg !1432
  unreachable, !dbg !1432

55:                                               ; preds = %50
  %56 = load i8*, i8** %45, align 8, !dbg !1435, !tbaa !1436
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1416, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %56, metadata !1417, metadata !DIExpression()) #14, !dbg !1439
  br i1 %46, label %57, label %58, !dbg !1440

57:                                               ; preds = %55
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #23, !dbg !1441
  unreachable, !dbg !1441

58:                                               ; preds = %55
  %59 = load %struct.item*, %struct.item** %48, align 8, !dbg !1442, !tbaa !1443
  %60 = icmp eq %struct.item* %59, null, !dbg !1445
  br i1 %60, label %66, label %61, !dbg !1446

61:                                               ; preds = %58
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %59, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %59, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %62 = getelementptr inbounds %struct.item, %struct.item* %59, i64 0, i32 0, !dbg !1447
  %63 = load i8*, i8** %62, align 8, !dbg !1447, !tbaa !1449
  %64 = call i32 @strcmp(i8* nonnull dereferenceable(1) %56, i8* nonnull dereferenceable(1) %63) #22, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %64, metadata !1423, metadata !DIExpression()) #14, !dbg !1439
  %65 = icmp eq i32 %64, 0, !dbg !1451
  br i1 %65, label %204, label %77, !dbg !1453

66:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i8* %56, metadata !1387, metadata !DIExpression()) #14, !dbg !1454
  %67 = call noalias i8* @xmalloc(i64 56) #14, !dbg !1456
  %68 = bitcast i8* %67 to %struct.item*, !dbg !1456
  call void @llvm.dbg.value(metadata %struct.item* %68, metadata !1392, metadata !DIExpression()) #14, !dbg !1454
  %69 = icmp eq i8* %56, null, !dbg !1457
  br i1 %69, label %72, label %70, !dbg !1457

70:                                               ; preds = %66
  %71 = call noalias i8* @xstrdup(i8* nonnull %56) #14, !dbg !1458
  br label %72, !dbg !1457

72:                                               ; preds = %70, %66
  %73 = phi i8* [ %71, %70 ], [ null, %66 ], !dbg !1457
  %74 = bitcast i8* %67 to i8**, !dbg !1459
  store i8* %73, i8** %74, align 8, !dbg !1460, !tbaa !1449
  %75 = getelementptr inbounds i8, i8* %67, i64 8, !dbg !1461
  %76 = getelementptr inbounds i8, i8* %67, i64 32, !dbg !1462
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %75, i8 0, i64 20, i1 false) #14, !dbg !1463
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false) #14, !dbg !1464
  store i8* %67, i8** %49, align 8, !dbg !1465, !tbaa !1443
  br label %204, !dbg !1466

77:                                               ; preds = %61, %194
  %78 = phi i32 [ %202, %194 ], [ %64, %61 ]
  %79 = phi %struct.item* [ %199, %194 ], [ %33, %61 ]
  %80 = phi %struct.item* [ %198, %194 ], [ %59, %61 ]
  %81 = phi %struct.item* [ %86, %194 ], [ %59, %61 ]
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %81, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %82 = icmp slt i32 %78, 0, !dbg !1467
  %83 = getelementptr inbounds %struct.item, %struct.item* %81, i64 0, i32 1, !dbg !1469
  %84 = getelementptr inbounds %struct.item, %struct.item* %81, i64 0, i32 2, !dbg !1469
  %85 = select i1 %82, %struct.item** %83, %struct.item** %84, !dbg !1469
  %86 = load %struct.item*, %struct.item** %85, align 8, !dbg !1470, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.item* %86, metadata !1419, metadata !DIExpression()) #14, !dbg !1439
  %87 = icmp eq %struct.item* %86, null, !dbg !1471
  br i1 %87, label %88, label %194, !dbg !1473

88:                                               ; preds = %77
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %80, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %79, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %56, metadata !1387, metadata !DIExpression()) #14, !dbg !1474
  %89 = call noalias i8* @xmalloc(i64 56) #14, !dbg !1477
  %90 = bitcast i8* %89 to %struct.item*, !dbg !1477
  call void @llvm.dbg.value(metadata %struct.item* %90, metadata !1392, metadata !DIExpression()) #14, !dbg !1474
  %91 = icmp eq i8* %56, null, !dbg !1478
  br i1 %91, label %94, label %92, !dbg !1478

92:                                               ; preds = %88
  %93 = call noalias i8* @xstrdup(i8* nonnull %56) #14, !dbg !1479
  br label %94, !dbg !1478

94:                                               ; preds = %92, %88
  %95 = phi i8* [ %93, %92 ], [ null, %88 ], !dbg !1478
  %96 = bitcast i8* %89 to i8**, !dbg !1480
  store i8* %95, i8** %96, align 8, !dbg !1481, !tbaa !1449
  %97 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !1482
  %98 = getelementptr inbounds i8, i8* %89, i64 32, !dbg !1483
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %97, i8 0, i64 20, i1 false) #14, !dbg !1484
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %98, i8 0, i64 24, i1 false) #14, !dbg !1485
  call void @llvm.dbg.value(metadata %struct.item* %90, metadata !1419, metadata !DIExpression()) #14, !dbg !1439
  %99 = select i1 %82, %struct.item** %83, %struct.item** %84, !dbg !1486
  %100 = bitcast %struct.item** %99 to i8**, !dbg !1487
  store i8* %89, i8** %100, align 8, !dbg !1487, !tbaa !1289
  %101 = getelementptr inbounds %struct.item, %struct.item* %80, i64 0, i32 0, !dbg !1489
  %102 = load i8*, i8** %101, align 8, !dbg !1489, !tbaa !1449
  %103 = call i32 @strcmp(i8* nonnull dereferenceable(1) %56, i8* nonnull dereferenceable(1) %102) #22, !dbg !1489
  %104 = icmp eq i32 %103, 0, !dbg !1489
  br i1 %104, label %105, label %106, !dbg !1492

105:                                              ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 168, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #23, !dbg !1489
  unreachable, !dbg !1489

106:                                              ; preds = %94
  %107 = icmp slt i32 %103, 0, !dbg !1493
  %108 = getelementptr inbounds %struct.item, %struct.item* %80, i64 0, i32 1, !dbg !1495
  %109 = getelementptr inbounds %struct.item, %struct.item* %80, i64 0, i32 2, !dbg !1495
  %110 = select i1 %107, %struct.item** %108, %struct.item** %109, !dbg !1495
  %111 = select i1 %107, i32 -1, i32 1, !dbg !1495
  %112 = load %struct.item*, %struct.item** %110, align 8, !dbg !1496, !tbaa !1289
  call void @llvm.dbg.value(metadata i32 %111, metadata !1423, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %112, metadata !1420, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %112, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %113 = icmp eq %struct.item* %112, %90, !dbg !1497
  br i1 %113, label %132, label %114, !dbg !1498

114:                                              ; preds = %106, %128
  %115 = phi %struct.item* [ %130, %128 ], [ %112, %106 ]
  call void @llvm.dbg.value(metadata %struct.item* %115, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %116 = getelementptr inbounds %struct.item, %struct.item* %115, i64 0, i32 0, !dbg !1499
  %117 = load i8*, i8** %116, align 8, !dbg !1499, !tbaa !1449
  %118 = call i32 @strcmp(i8* nonnull dereferenceable(1) %56, i8* nonnull dereferenceable(1) %117) #22, !dbg !1499
  %119 = icmp eq i32 %118, 0, !dbg !1499
  br i1 %119, label %120, label %121, !dbg !1503

120:                                              ; preds = %114
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #23, !dbg !1499
  unreachable, !dbg !1499

121:                                              ; preds = %114
  %122 = icmp slt i32 %118, 0, !dbg !1504
  %123 = getelementptr inbounds %struct.item, %struct.item* %115, i64 0, i32 3, !dbg !1506
  br i1 %122, label %124, label %126, !dbg !1507

124:                                              ; preds = %121
  store i32 -1, i32* %123, align 8, !dbg !1508, !tbaa !1510
  %125 = getelementptr inbounds %struct.item, %struct.item* %115, i64 0, i32 1, !dbg !1511
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  br label %128, !dbg !1512

126:                                              ; preds = %121
  store i32 1, i32* %123, align 8, !dbg !1513, !tbaa !1510
  %127 = getelementptr inbounds %struct.item, %struct.item* %115, i64 0, i32 2, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi %struct.item** [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.item*, %struct.item** %129, align 8, !dbg !1506, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.item* %130, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %131 = icmp eq %struct.item* %130, %90, !dbg !1497
  br i1 %131, label %132, label %114, !dbg !1498, !llvm.loop !1516

132:                                              ; preds = %128, %106
  %133 = getelementptr inbounds %struct.item, %struct.item* %80, i64 0, i32 3, !dbg !1518
  %134 = load i32, i32* %133, align 8, !dbg !1518, !tbaa !1510
  %135 = icmp eq i32 %134, 0, !dbg !1520
  br i1 %135, label %139, label %136, !dbg !1521

136:                                              ; preds = %132
  %137 = sub nsw i32 0, %111, !dbg !1522
  %138 = icmp eq i32 %134, %137, !dbg !1523
  br i1 %138, label %139, label %141, !dbg !1524

139:                                              ; preds = %136, %132
  %140 = add nsw i32 %134, %111, !dbg !1525
  store i32 %140, i32* %133, align 8, !dbg !1525, !tbaa !1510
  br label %204, !dbg !1527

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 3, !dbg !1528
  %143 = load i32, i32* %142, align 8, !dbg !1528, !tbaa !1510
  %144 = icmp eq i32 %143, %111, !dbg !1530
  br i1 %144, label %145, label %154, !dbg !1531

145:                                              ; preds = %141
  call void @llvm.dbg.value(metadata %struct.item* %112, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %146 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 1, !dbg !1532
  %147 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 2, !dbg !1532
  %148 = select i1 %107, %struct.item** %147, %struct.item** %146, !dbg !1532
  %149 = select i1 %107, %struct.item** %108, %struct.item** %109, !dbg !1532
  %150 = select i1 %107, %struct.item** %147, %struct.item** %146, !dbg !1532
  %151 = bitcast %struct.item** %148 to i64*, !dbg !1534
  %152 = load i64, i64* %151, align 8, !dbg !1534, !tbaa !1289
  %153 = bitcast %struct.item** %149 to i64*, !dbg !1534
  store i64 %152, i64* %153, align 8, !dbg !1534, !tbaa !1289
  store %struct.item* %80, %struct.item** %150, align 8, !dbg !1534, !tbaa !1289
  store i32 0, i32* %142, align 8, !dbg !1536, !tbaa !1510
  br label %185, !dbg !1537

154:                                              ; preds = %141
  br i1 %107, label %155, label %163, !dbg !1538

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 2, !dbg !1540
  %157 = load %struct.item*, %struct.item** %156, align 8, !dbg !1540, !tbaa !1443
  call void @llvm.dbg.value(metadata %struct.item* %157, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %158 = getelementptr inbounds %struct.item, %struct.item* %157, i64 0, i32 1, !dbg !1543
  %159 = bitcast %struct.item** %158 to i64*, !dbg !1543
  %160 = load i64, i64* %159, align 8, !dbg !1543, !tbaa !1544
  %161 = bitcast %struct.item** %156 to i64*, !dbg !1545
  store i64 %160, i64* %161, align 8, !dbg !1545, !tbaa !1443
  store %struct.item* %112, %struct.item** %158, align 8, !dbg !1546, !tbaa !1544
  %162 = getelementptr inbounds %struct.item, %struct.item* %157, i64 0, i32 2, !dbg !1547
  br label %171, !dbg !1548

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.item, %struct.item* %112, i64 0, i32 1, !dbg !1549
  %165 = load %struct.item*, %struct.item** %164, align 8, !dbg !1549, !tbaa !1544
  call void @llvm.dbg.value(metadata %struct.item* %165, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %166 = getelementptr inbounds %struct.item, %struct.item* %165, i64 0, i32 2, !dbg !1551
  %167 = bitcast %struct.item** %166 to i64*, !dbg !1551
  %168 = load i64, i64* %167, align 8, !dbg !1551, !tbaa !1443
  %169 = bitcast %struct.item** %164 to i64*, !dbg !1552
  store i64 %168, i64* %169, align 8, !dbg !1552, !tbaa !1544
  store %struct.item* %112, %struct.item** %166, align 8, !dbg !1553, !tbaa !1443
  %170 = getelementptr inbounds %struct.item, %struct.item* %165, i64 0, i32 1, !dbg !1554
  br label %171

171:                                              ; preds = %163, %155
  %172 = phi %struct.item** [ %170, %163 ], [ %162, %155 ]
  %173 = phi %struct.item** [ %109, %163 ], [ %108, %155 ]
  %174 = phi %struct.item* [ %165, %163 ], [ %157, %155 ], !dbg !1555
  %175 = bitcast %struct.item** %172 to i64*, !dbg !1555
  %176 = load i64, i64* %175, align 8, !dbg !1555, !tbaa !1289
  %177 = bitcast %struct.item** %173 to i64*, !dbg !1555
  store i64 %176, i64* %177, align 8, !dbg !1555, !tbaa !1289
  store %struct.item* %80, %struct.item** %172, align 8, !dbg !1555, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.item* %174, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  store i32 0, i32* %133, align 8, !dbg !1556, !tbaa !1510
  store i32 0, i32* %142, align 8, !dbg !1557, !tbaa !1510
  %178 = getelementptr inbounds %struct.item, %struct.item* %174, i64 0, i32 3, !dbg !1558
  %179 = load i32, i32* %178, align 8, !dbg !1558, !tbaa !1510
  %180 = icmp eq i32 %179, %111, !dbg !1560
  br i1 %180, label %181, label %182, !dbg !1561

181:                                              ; preds = %171
  store i32 %137, i32* %133, align 8, !dbg !1562, !tbaa !1510
  br label %185, !dbg !1563

182:                                              ; preds = %171
  %183 = icmp eq i32 %179, %137, !dbg !1564
  br i1 %183, label %184, label %185, !dbg !1566

184:                                              ; preds = %182
  store i32 %111, i32* %142, align 8, !dbg !1567, !tbaa !1510
  br label %185, !dbg !1568

185:                                              ; preds = %181, %182, %184, %145
  %186 = phi i32* [ %133, %145 ], [ %178, %184 ], [ %178, %182 ], [ %178, %181 ]
  %187 = phi %struct.item* [ %112, %145 ], [ %174, %184 ], [ %174, %182 ], [ %174, %181 ], !dbg !1569
  store i32 0, i32* %186, align 8, !dbg !1569, !tbaa !1510
  call void @llvm.dbg.value(metadata %struct.item* %187, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %188 = getelementptr inbounds %struct.item, %struct.item* %79, i64 0, i32 2, !dbg !1570
  %189 = load %struct.item*, %struct.item** %188, align 8, !dbg !1570, !tbaa !1443
  %190 = icmp eq %struct.item* %80, %189, !dbg !1572
  br i1 %190, label %191, label %192, !dbg !1573

191:                                              ; preds = %185
  store %struct.item* %187, %struct.item** %188, align 8, !dbg !1574, !tbaa !1443
  br label %204, !dbg !1575

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.item, %struct.item* %79, i64 0, i32 1, !dbg !1576
  store %struct.item* %187, %struct.item** %193, align 8, !dbg !1577, !tbaa !1544
  br label %204

194:                                              ; preds = %77
  %195 = getelementptr inbounds %struct.item, %struct.item* %86, i64 0, i32 3, !dbg !1578
  %196 = load i32, i32* %195, align 8, !dbg !1578, !tbaa !1510
  %197 = icmp eq i32 %196, 0, !dbg !1580
  %198 = select i1 %197, %struct.item* %80, %struct.item* %86, !dbg !1581
  %199 = select i1 %197, %struct.item* %79, %struct.item* %81, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.item* %199, metadata !1422, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %198, metadata !1421, metadata !DIExpression()) #14, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %86, metadata !1418, metadata !DIExpression()) #14, !dbg !1439
  %200 = getelementptr inbounds %struct.item, %struct.item* %86, i64 0, i32 0, !dbg !1447
  %201 = load i8*, i8** %200, align 8, !dbg !1447, !tbaa !1449
  %202 = call i32 @strcmp(i8* nonnull dereferenceable(1) %56, i8* nonnull dereferenceable(1) %201) #22, !dbg !1450
  call void @llvm.dbg.value(metadata i32 %202, metadata !1423, metadata !DIExpression()) #14, !dbg !1439
  %203 = icmp eq i32 %202, 0, !dbg !1451
  br i1 %203, label %204, label %77, !dbg !1453, !llvm.loop !1582

204:                                              ; preds = %194, %192, %191, %139, %72, %61
  %205 = phi %struct.item* [ %68, %72 ], [ %90, %139 ], [ %90, %192 ], [ %90, %191 ], [ %59, %61 ], [ %86, %194 ], !dbg !1439
  call void @llvm.dbg.value(metadata %struct.item* %205, metadata !1347, metadata !DIExpression()) #14, !dbg !1384
  %206 = icmp eq %struct.item* %51, null, !dbg !1585
  br i1 %206, label %226, label %207, !dbg !1587

207:                                              ; preds = %204
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1588, metadata !DIExpression()) #14, !dbg !1595
  call void @llvm.dbg.value(metadata %struct.item* %205, metadata !1593, metadata !DIExpression()) #14, !dbg !1595
  %208 = getelementptr inbounds %struct.item, %struct.item* %51, i64 0, i32 0, !dbg !1598
  %209 = load i8*, i8** %208, align 8, !dbg !1598, !tbaa !1449
  %210 = getelementptr inbounds %struct.item, %struct.item* %205, i64 0, i32 0, !dbg !1598
  %211 = load i8*, i8** %210, align 8, !dbg !1598, !tbaa !1449
  %212 = call i32 @strcmp(i8* nonnull dereferenceable(1) %209, i8* nonnull dereferenceable(1) %211) #22, !dbg !1598
  %213 = icmp eq i32 %212, 0, !dbg !1598
  br i1 %213, label %226, label %214, !dbg !1600

214:                                              ; preds = %207
  %215 = getelementptr inbounds %struct.item, %struct.item* %205, i64 0, i32 4, !dbg !1601
  %216 = load i64, i64* %215, align 8, !dbg !1603, !tbaa !1604
  %217 = add i64 %216, 1, !dbg !1603
  store i64 %217, i64* %215, align 8, !dbg !1603, !tbaa !1604
  %218 = call noalias i8* @xmalloc(i64 16) #14, !dbg !1605
  call void @llvm.dbg.value(metadata i8* %218, metadata !1594, metadata !DIExpression()) #14, !dbg !1595
  %219 = bitcast i8* %218 to %struct.item**, !dbg !1606
  store %struct.item* %205, %struct.item** %219, align 8, !dbg !1607, !tbaa !1608
  %220 = getelementptr inbounds %struct.item, %struct.item* %51, i64 0, i32 6, !dbg !1610
  %221 = bitcast %struct.successor** %220 to i64*, !dbg !1610
  %222 = load i64, i64* %221, align 8, !dbg !1610, !tbaa !1611
  %223 = getelementptr inbounds i8, i8* %218, i64 8, !dbg !1612
  %224 = bitcast i8* %223 to i64*, !dbg !1613
  store i64 %222, i64* %224, align 8, !dbg !1613, !tbaa !1614
  %225 = bitcast %struct.successor** %220 to i8**, !dbg !1615
  store i8* %218, i8** %225, align 8, !dbg !1615, !tbaa !1611
  br label %226, !dbg !1616

226:                                              ; preds = %214, %207, %204
  %227 = phi %struct.item* [ %205, %204 ], [ null, %207 ], [ null, %214 ]
  br label %50, !dbg !1384

228:                                              ; preds = %50
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %51, metadata !1346, metadata !DIExpression()) #14, !dbg !1384
  %229 = icmp eq %struct.item* %51, null, !dbg !1617
  br i1 %229, label %233, label %230, !dbg !1619

230:                                              ; preds = %228
  %231 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 5) #14, !dbg !1620
  %232 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #14, !dbg !1620
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %231, i8* %232) #14, !dbg !1620
  unreachable, !dbg !1620

233:                                              ; preds = %228
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1621, metadata !DIExpression()) #14, !dbg !1630
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, metadata !1629, metadata !DIExpression()) #14, !dbg !1630
  %234 = load %struct.item*, %struct.item** %48, align 8, !dbg !1632, !tbaa !1443
  %235 = icmp eq %struct.item* %234, null, !dbg !1634
  br i1 %235, label %238, label %236, !dbg !1635

236:                                              ; preds = %233
  %237 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %234, i1 (%struct.item*)* nonnull @count_items) #14, !dbg !1636
  br label %238, !dbg !1636

238:                                              ; preds = %236, %233
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  %239 = load i64, i64* @n_strings, align 8, !dbg !1637, !tbaa !1638
  %240 = icmp eq i64 %239, 0, !dbg !1639
  br i1 %240, label %299, label %241, !dbg !1640

241:                                              ; preds = %238, %296
  %242 = phi i32 [ 0, %296 ], [ 1, %238 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1621, metadata !DIExpression()) #14, !dbg !1641
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, metadata !1629, metadata !DIExpression()) #14, !dbg !1641
  br i1 %235, label %245, label %243, !dbg !1643

243:                                              ; preds = %241
  %244 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %234, i1 (%struct.item*)* nonnull @scan_zeros) #14, !dbg !1644
  br label %245, !dbg !1644

245:                                              ; preds = %243, %241
  %246 = load %struct.item*, %struct.item** @head, align 8, !dbg !1645, !tbaa !1289
  %247 = icmp eq %struct.item* %246, null, !dbg !1646
  br i1 %247, label %248, label %250, !dbg !1646

248:                                              ; preds = %245
  %249 = load i64, i64* @n_strings, align 8, !dbg !1647, !tbaa !1638
  br label %284, !dbg !1646

250:                                              ; preds = %245, %278
  %251 = phi %struct.item* [ %282, %278 ], [ %246, %245 ]
  %252 = getelementptr inbounds %struct.item, %struct.item* %251, i64 0, i32 6, !dbg !1649
  %253 = load %struct.successor*, %struct.successor** %252, align 8, !dbg !1649, !tbaa !1611
  call void @llvm.dbg.value(metadata %struct.successor* %253, metadata !1351, metadata !DIExpression()) #14, !dbg !1650
  %254 = getelementptr inbounds %struct.item, %struct.item* %251, i64 0, i32 0, !dbg !1651
  %255 = load i8*, i8** %254, align 8, !dbg !1651, !tbaa !1449
  %256 = call i32 @puts(i8* nonnull dereferenceable(1) %255) #14, !dbg !1652
  %257 = load %struct.item*, %struct.item** @head, align 8, !dbg !1653, !tbaa !1289
  %258 = getelementptr inbounds %struct.item, %struct.item* %257, i64 0, i32 0, !dbg !1654
  store i8* null, i8** %258, align 8, !dbg !1655, !tbaa !1449
  %259 = load i64, i64* @n_strings, align 8, !dbg !1656, !tbaa !1638
  %260 = add i64 %259, -1, !dbg !1656
  store i64 %260, i64* @n_strings, align 8, !dbg !1656, !tbaa !1638
  call void @llvm.dbg.value(metadata %struct.successor* %253, metadata !1351, metadata !DIExpression()) #14, !dbg !1650
  %261 = icmp eq %struct.successor* %253, null, !dbg !1657
  br i1 %261, label %278, label %262, !dbg !1657

262:                                              ; preds = %250, %274
  %263 = phi %struct.successor* [ %276, %274 ], [ %253, %250 ]
  call void @llvm.dbg.value(metadata %struct.successor* %263, metadata !1351, metadata !DIExpression()) #14, !dbg !1650
  %264 = getelementptr inbounds %struct.successor, %struct.successor* %263, i64 0, i32 0, !dbg !1658
  %265 = load %struct.item*, %struct.item** %264, align 8, !dbg !1658, !tbaa !1608
  %266 = getelementptr inbounds %struct.item, %struct.item* %265, i64 0, i32 4, !dbg !1660
  %267 = load i64, i64* %266, align 8, !dbg !1661, !tbaa !1604
  %268 = add i64 %267, -1, !dbg !1661
  store i64 %268, i64* %266, align 8, !dbg !1661, !tbaa !1604
  %269 = icmp eq i64 %268, 0, !dbg !1662
  br i1 %269, label %270, label %274, !dbg !1664

270:                                              ; preds = %262
  %271 = ptrtoint %struct.item* %265 to i64, !dbg !1664
  %272 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1665, !tbaa !1289
  %273 = getelementptr inbounds %struct.item, %struct.item* %272, i64 0, i32 5, !dbg !1667
  store %struct.item* %265, %struct.item** %273, align 8, !dbg !1668, !tbaa !1669
  store i64 %271, i64* bitcast (%struct.item** @zeros to i64*), align 8, !dbg !1670, !tbaa !1289
  br label %274, !dbg !1671

274:                                              ; preds = %270, %262
  %275 = getelementptr inbounds %struct.successor, %struct.successor* %263, i64 0, i32 1, !dbg !1672
  %276 = load %struct.successor*, %struct.successor** %275, align 8, !dbg !1672, !tbaa !1614
  call void @llvm.dbg.value(metadata %struct.successor* %276, metadata !1351, metadata !DIExpression()) #14, !dbg !1650
  %277 = icmp eq %struct.successor* %276, null, !dbg !1657
  br i1 %277, label %278, label %262, !dbg !1657, !llvm.loop !1673

278:                                              ; preds = %274, %250
  %279 = getelementptr inbounds %struct.item, %struct.item* %257, i64 0, i32 5, !dbg !1675
  %280 = bitcast %struct.item** %279 to i64*, !dbg !1675
  %281 = load i64, i64* %280, align 8, !dbg !1675, !tbaa !1669
  store i64 %281, i64* bitcast (%struct.item** @head to i64*), align 8, !dbg !1676, !tbaa !1289
  %282 = inttoptr i64 %281 to %struct.item*
  %283 = icmp eq i64 %281, 0, !dbg !1646
  br i1 %283, label %284, label %250, !dbg !1646, !llvm.loop !1677

284:                                              ; preds = %278, %248
  %285 = phi i64 [ %249, %248 ], [ %260, %278 ], !dbg !1647
  %286 = icmp eq i64 %285, 0, !dbg !1679
  br i1 %286, label %299, label %287, !dbg !1680

287:                                              ; preds = %284
  %288 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #14, !dbg !1681
  %289 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #14, !dbg !1683
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %288, i8* %289) #14, !dbg !1684
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  br label %290, !dbg !1685

290:                                              ; preds = %293, %287
  call void @llvm.dbg.value(metadata %struct.item* %33, metadata !1621, metadata !DIExpression()) #14, !dbg !1686
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, metadata !1629, metadata !DIExpression()) #14, !dbg !1686
  br i1 %235, label %293, label %291, !dbg !1688

291:                                              ; preds = %290
  %292 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %234, i1 (%struct.item*)* nonnull @detect_loop) #14, !dbg !1689
  br label %293, !dbg !1689

293:                                              ; preds = %291, %290
  %294 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1690, !tbaa !1289
  %295 = icmp eq %struct.item* %294, null, !dbg !1691
  br i1 %295, label %296, label %290, !dbg !1691, !llvm.loop !1692

296:                                              ; preds = %293
  %297 = load i64, i64* @n_strings, align 8, !dbg !1637, !tbaa !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  %298 = icmp eq i64 %297, 0, !dbg !1639
  br i1 %298, label %299, label %241, !dbg !1640, !llvm.loop !1694

299:                                              ; preds = %296, %284, %238
  %300 = phi i32 [ 1, %238 ], [ 0, %296 ], [ %242, %284 ], !dbg !1384
  call void @llvm.dbg.value(metadata i8 undef, metadata !1344, metadata !DIExpression()) #14, !dbg !1384
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1696, !tbaa !1289
  %302 = call i32 @rpl_fclose(%struct._IO_FILE* %301) #14, !dbg !1698
  %303 = icmp eq i32 %302, 0, !dbg !1699
  br i1 %303, label %313, label %304, !dbg !1700

304:                                              ; preds = %299
  %305 = tail call i32* @__errno_location() #25, !dbg !1701
  %306 = load i32, i32* %305, align 4, !dbg !1701, !tbaa !1368
  br i1 %31, label %307, label %309, !dbg !1701

307:                                              ; preds = %304
  %308 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 5) #14, !dbg !1701
  br label %311, !dbg !1701

309:                                              ; preds = %304
  %310 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %28) #14, !dbg !1701
  br label %311, !dbg !1701

311:                                              ; preds = %309, %307
  %312 = phi i8* [ %308, %307 ], [ %310, %309 ], !dbg !1701
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %312) #14, !dbg !1701
  unreachable, !dbg !1701

313:                                              ; preds = %299
  %314 = and i32 %300, 1, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #14, !dbg !1703
  call void @llvm.dbg.value(metadata i1 undef, metadata !1337, metadata !DIExpression()), !dbg !1357
  %315 = xor i32 %314, 1, !dbg !1704
  ret i32 %315, !dbg !1705
}

; Function Attrs: nounwind
declare !dbg !109 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !115 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !135 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal zeroext i1 @count_items(%struct.item* nocapture readnone %0) #10 !dbg !1706 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1708, metadata !DIExpression()), !dbg !1709
  %2 = load i64, i64* @n_strings, align 8, !dbg !1710, !tbaa !1638
  %3 = add i64 %2, 1, !dbg !1710
  store i64 %3, i64* @n_strings, align 8, !dbg !1710, !tbaa !1638
  ret i1 false, !dbg !1711
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @recurse_tree(%struct.item* %0, i1 (%struct.item*)* %1) unnamed_addr #8 !dbg !1712 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1716, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, metadata !1717, metadata !DIExpression()), !dbg !1718
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1719
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1719, !tbaa !1544
  %5 = icmp eq %struct.item* %4, null, !dbg !1721
  br i1 %5, label %6, label %12, !dbg !1722

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1723
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1723, !tbaa !1443
  %9 = icmp eq %struct.item* %8, null, !dbg !1724
  br i1 %9, label %10, label %14, !dbg !1725

10:                                               ; preds = %6
  %11 = tail call zeroext i1 %1(%struct.item* nonnull %0) #14, !dbg !1726, !callees !1727
  br label %23, !dbg !1728

12:                                               ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %4, i1 (%struct.item*)* %1), !dbg !1729
  br i1 %13, label %23, label %14, !dbg !1733

14:                                               ; preds = %6, %12
  %15 = tail call zeroext i1 %1(%struct.item* nonnull %0) #14, !dbg !1734, !callees !1727
  br i1 %15, label %23, label %16, !dbg !1736

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1737
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1737, !tbaa !1443
  %19 = icmp eq %struct.item* %18, null, !dbg !1739
  br i1 %19, label %22, label %20, !dbg !1740

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %18, i1 (%struct.item*)* %1), !dbg !1741
  br i1 %21, label %23, label %22, !dbg !1743

22:                                               ; preds = %16, %20
  br label %23, !dbg !1744

23:                                               ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1718
  ret i1 %24, !dbg !1745
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define internal zeroext i1 @scan_zeros(%struct.item* %0) #10 !dbg !1746 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1748, metadata !DIExpression()), !dbg !1749
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1750
  %3 = load i64, i64* %2, align 8, !dbg !1750, !tbaa !1604
  %4 = icmp eq i64 %3, 0, !dbg !1752
  br i1 %4, label %5, label %15, !dbg !1753

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 0, !dbg !1754
  %7 = load i8*, i8** %6, align 8, !dbg !1754, !tbaa !1449
  %8 = icmp eq i8* %7, null, !dbg !1755
  br i1 %8, label %15, label %9, !dbg !1756

9:                                                ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1757, !tbaa !1289
  %11 = icmp eq %struct.item* %10, null, !dbg !1760
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1761
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 5, !dbg !1761
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1761
  store %struct.item* %0, %struct.item** %14, align 8, !dbg !1762, !tbaa !1289
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1763, !tbaa !1289
  br label %15, !dbg !1764

15:                                               ; preds = %5, %9, %1
  ret i1 false, !dbg !1765
}

; Function Attrs: nofree nounwind
declare !dbg !161 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @detect_loop(%struct.item* %0) #8 !dbg !1766 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1768, metadata !DIExpression()), !dbg !1784
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1785
  %3 = load i64, i64* %2, align 8, !dbg !1785, !tbaa !1604
  %4 = icmp eq i64 %3, 0, !dbg !1786
  br i1 %4, label %71, label %5, !dbg !1787

5:                                                ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1788, !tbaa !1289
  %7 = icmp eq %struct.item* %6, null, !dbg !1789
  br i1 %7, label %8, label %9, !dbg !1790

8:                                                ; preds = %5
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1791, !tbaa !1289
  br label %71, !dbg !1792

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1793
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1769, metadata !DIExpression()), !dbg !1794
  %11 = load %struct.successor*, %struct.successor** %10, align 8, !dbg !1795, !tbaa !1289
  %12 = icmp eq %struct.successor* %11, null, !dbg !1796
  br i1 %12, label %71, label %13, !dbg !1796

13:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1769, metadata !DIExpression()), !dbg !1794
  %14 = getelementptr inbounds %struct.successor, %struct.successor* %11, i64 0, i32 0, !dbg !1797
  %15 = load %struct.item*, %struct.item** %14, align 8, !dbg !1797, !tbaa !1608
  %16 = icmp eq %struct.item* %15, %6, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.successor* %11, metadata !1769, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1794
  br i1 %16, label %28, label %17, !dbg !1799

17:                                               ; preds = %13, %22
  %18 = phi %struct.successor* [ %20, %22 ], [ %11, %13 ]
  %19 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1800
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1769, metadata !DIExpression()), !dbg !1794
  %20 = load %struct.successor*, %struct.successor** %19, align 8, !dbg !1795, !tbaa !1289
  %21 = icmp eq %struct.successor* %20, null, !dbg !1796
  br i1 %21, label %71, label %22, !dbg !1796, !llvm.loop !1801

22:                                               ; preds = %17
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1769, metadata !DIExpression()), !dbg !1794
  %23 = getelementptr inbounds %struct.successor, %struct.successor* %20, i64 0, i32 0, !dbg !1797
  %24 = load %struct.item*, %struct.item** %23, align 8, !dbg !1797, !tbaa !1608
  %25 = icmp eq %struct.item* %24, %6, !dbg !1798
  call void @llvm.dbg.value(metadata %struct.successor* %20, metadata !1769, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1794
  br i1 %25, label %26, label %17, !dbg !1799, !llvm.loop !1801

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1800
  br label %28, !dbg !1803

28:                                               ; preds = %26, %13
  %29 = phi %struct.successor** [ %10, %13 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata %struct.successor** %29, metadata !1769, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %struct.successor** %29, metadata !1769, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %struct.successor** %29, metadata !1769, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata %struct.successor** %29, metadata !1769, metadata !DIExpression()), !dbg !1794
  %30 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1803
  %31 = load %struct.item*, %struct.item** %30, align 8, !dbg !1803, !tbaa !1669
  %32 = icmp eq %struct.item* %31, null, !dbg !1804
  br i1 %32, label %69, label %33, !dbg !1805

33:                                               ; preds = %28, %53
  %34 = phi %struct.item* [ %55, %53 ], [ %6, %28 ]
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 5, !dbg !1806
  %36 = bitcast %struct.item** %35 to i64*, !dbg !1806
  %37 = load i64, i64* %36, align 8, !dbg !1806, !tbaa !1669
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !1775, metadata !DIExpression()), !dbg !1807
  %38 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 0, !dbg !1808
  %39 = load i8*, i8** %38, align 8, !dbg !1808, !tbaa !1449
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %39) #14, !dbg !1809
  %40 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1810, !tbaa !1289
  %41 = icmp eq %struct.item* %40, %0, !dbg !1812
  br i1 %41, label %42, label %53, !dbg !1813

42:                                               ; preds = %33
  %43 = load %struct.successor*, %struct.successor** %29, align 8, !dbg !1814, !tbaa !1289
  %44 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 0, !dbg !1816
  %45 = load %struct.item*, %struct.item** %44, align 8, !dbg !1816, !tbaa !1608
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i64 0, i32 4, !dbg !1817
  %47 = load i64, i64* %46, align 8, !dbg !1818, !tbaa !1604
  %48 = add i64 %47, -1, !dbg !1818
  store i64 %48, i64* %46, align 8, !dbg !1818, !tbaa !1604
  %49 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 1, !dbg !1819
  %50 = bitcast %struct.successor** %49 to i64*, !dbg !1819
  %51 = load i64, i64* %50, align 8, !dbg !1819, !tbaa !1614
  %52 = bitcast %struct.successor** %29 to i64*, !dbg !1820
  store i64 %51, i64* %52, align 8, !dbg !1820, !tbaa !1289
  br label %59

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.item, %struct.item* %40, i64 0, i32 5, !dbg !1821
  store %struct.item* null, %struct.item** %54, align 8, !dbg !1822, !tbaa !1669
  store i64 %37, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1823, !tbaa !1289
  %55 = inttoptr i64 %37 to %struct.item*
  %56 = icmp eq i64 %37, 0, !dbg !1824
  br i1 %56, label %57, label %33, !dbg !1824

57:                                               ; preds = %53
  %58 = inttoptr i64 %37 to %struct.item*
  br label %59, !dbg !1825

59:                                               ; preds = %57, %42
  %60 = phi %struct.item* [ %0, %42 ], [ %58, %57 ], !dbg !1826
  %61 = icmp eq %struct.item* %60, null, !dbg !1825
  br i1 %61, label %71, label %62, !dbg !1825

62:                                               ; preds = %59, %62
  %63 = phi %struct.item* [ %67, %62 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i64 0, i32 5, !dbg !1827
  %65 = bitcast %struct.item** %64 to i64*, !dbg !1827
  %66 = load i64, i64* %65, align 8, !dbg !1827, !tbaa !1669
  call void @llvm.dbg.value(metadata %struct.item* undef, metadata !1782, metadata !DIExpression()), !dbg !1828
  store %struct.item* null, %struct.item** %64, align 8, !dbg !1829, !tbaa !1669
  %67 = inttoptr i64 %66 to %struct.item*
  %68 = icmp eq i64 %66, 0, !dbg !1825
  br i1 %68, label %70, label %62, !dbg !1825, !llvm.loop !1830

69:                                               ; preds = %28
  store %struct.item* %6, %struct.item** %30, align 8, !dbg !1832, !tbaa !1669
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1834, !tbaa !1289
  br label %71, !dbg !1835

70:                                               ; preds = %62
  store i64 0, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1836, !tbaa !1289
  br label %71, !dbg !1825

71:                                               ; preds = %17, %9, %59, %70, %8, %1, %69
  %72 = phi i1 [ false, %69 ], [ false, %1 ], [ false, %8 ], [ true, %70 ], [ true, %59 ], [ false, %9 ], [ false, %17 ], !dbg !1784
  ret i1 %72, !dbg !1837
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1838 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1840, metadata !DIExpression()), !dbg !1841
  store i8* %0, i8** @file_name, align 8, !dbg !1842, !tbaa !1289
  ret void, !dbg !1843
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1844 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1848, metadata !DIExpression()), !dbg !1849
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1850, !tbaa !1851
  ret void, !dbg !1853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1854 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1859, !tbaa !1289
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #14, !dbg !1860
  %3 = icmp eq i32 %2, 0, !dbg !1861
  br i1 %3, label %22, label %4, !dbg !1862

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1863, !tbaa !1851, !range !1864
  %6 = icmp eq i8 %5, 0, !dbg !1863
  br i1 %6, label %11, label %7, !dbg !1865

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1866
  %9 = load i32, i32* %8, align 4, !dbg !1866, !tbaa !1368
  %10 = icmp eq i32 %9, 32, !dbg !1867
  br i1 %10, label %22, label %11, !dbg !1868

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #14, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %12, metadata !1856, metadata !DIExpression()), !dbg !1870
  %13 = load i8*, i8** @file_name, align 8, !dbg !1871, !tbaa !1289
  %14 = icmp eq i8* %13, null, !dbg !1871
  %15 = tail call i32* @__errno_location() #25, !dbg !1873
  %16 = load i32, i32* %15, align 4, !dbg !1873, !tbaa !1368
  br i1 %14, label %19, label %17, !dbg !1874

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #14, !dbg !1875
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.44, i64 0, i64 0), i8* %18, i8* %12) #14, !dbg !1876
  br label %20, !dbg !1876

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.45, i64 0, i64 0), i8* %12) #14, !dbg !1877
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1878, !tbaa !1368
  tail call void @_exit(i32 %21) #23, !dbg !1879
  unreachable, !dbg !1879

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1880, !tbaa !1289
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #14, !dbg !1882
  %25 = icmp eq i32 %24, 0, !dbg !1883
  br i1 %25, label %28, label %26, !dbg !1884

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1885, !tbaa !1368
  tail call void @_exit(i32 %27) #23, !dbg !1886
  unreachable, !dbg !1886

28:                                               ; preds = %22
  ret void, !dbg !1887
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1888 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1894, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %1, metadata !1895, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %2, metadata !1896, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i32 %3, metadata !1897, metadata !DIExpression()), !dbg !1900
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #14, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %5, metadata !1898, metadata !DIExpression()), !dbg !1902
  ret void, !dbg !1903
}

; Function Attrs: nounwind
declare !dbg !494 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1904 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1911, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 %1, metadata !1912, metadata !DIExpression()), !dbg !1913
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1914
  br i1 %3, label %7, label %4, !dbg !1916

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %5, metadata !1894, metadata !DIExpression()) #14, !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !1895, metadata !DIExpression()) #14, !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !1896, metadata !DIExpression()) #14, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %1, metadata !1897, metadata !DIExpression()) #14, !dbg !1918
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #14, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %6, metadata !1898, metadata !DIExpression()) #14, !dbg !1921
  br label %7, !dbg !1922

7:                                                ; preds = %2, %4
  ret void, !dbg !1923
}

; Function Attrs: nofree nounwind
declare !dbg !498 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !1924 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1930, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* %1, metadata !1931, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1932, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1935, metadata !DIExpression()), !dbg !1937
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #14, !dbg !1938
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1939

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #14, !dbg !1940
  %7 = icmp ne i32 %6, 2, !dbg !1943
  %8 = zext i1 %7 to i8, !dbg !1944
  br label %9, !dbg !1944

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1937
  call void @llvm.dbg.value(metadata i8 %10, metadata !1935, metadata !DIExpression()), !dbg !1937
  %11 = tail call i32 @dup2(i32 1, i32 1) #14, !dbg !1945
  %12 = icmp ne i32 %11, 1, !dbg !1947
  %13 = zext i1 %12 to i8, !dbg !1948
  br label %14, !dbg !1948

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1937
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1937
  call void @llvm.dbg.value(metadata i8 %16, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 %15, metadata !1934, metadata !DIExpression()), !dbg !1937
  %17 = tail call i32 @dup2(i32 0, i32 0) #14, !dbg !1949
  %18 = icmp eq i32 %17, 0, !dbg !1951
  call void @llvm.dbg.value(metadata i8 %16, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 %15, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 undef, metadata !1933, metadata !DIExpression()), !dbg !1937
  br i1 %18, label %27, label %19, !dbg !1952

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1954, metadata !DIExpression()) #14, !dbg !1958
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #14, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %20, metadata !1957, metadata !DIExpression()) #14, !dbg !1958
  %21 = icmp eq i32 %20, 0, !dbg !1961
  br i1 %21, label %27, label %22, !dbg !1963

22:                                               ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1964
  br i1 %23, label %24, label %57, !dbg !1967

24:                                               ; preds = %22
  %25 = tail call i32 @close(i32 %20) #14, !dbg !1968
  %26 = tail call i32* @__errno_location() #25, !dbg !1970
  store i32 9, i32* %26, align 4, !dbg !1971, !tbaa !1368
  br label %57, !dbg !1972

27:                                               ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1973
  br i1 %29, label %38, label %30, !dbg !1975

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1954, metadata !DIExpression()) #14, !dbg !1976
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #14, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %31, metadata !1957, metadata !DIExpression()) #14, !dbg !1976
  %32 = icmp eq i32 %31, 1, !dbg !1979
  br i1 %32, label %38, label %33, !dbg !1980

33:                                               ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1981
  br i1 %34, label %35, label %57, !dbg !1982

35:                                               ; preds = %33
  %36 = tail call i32 @close(i32 %31) #14, !dbg !1983
  %37 = tail call i32* @__errno_location() #25, !dbg !1984
  store i32 9, i32* %37, align 4, !dbg !1985, !tbaa !1368
  br label %57, !dbg !1986

38:                                               ; preds = %30, %27
  %39 = phi i8 [ 0, %27 ], [ 1, %30 ]
  %40 = icmp eq i8 %16, 0, !dbg !1987
  br i1 %40, label %49, label %41, !dbg !1989

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !1954, metadata !DIExpression()) #14, !dbg !1990
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #14, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %42, metadata !1957, metadata !DIExpression()) #14, !dbg !1990
  %43 = icmp eq i32 %42, 2, !dbg !1993
  br i1 %43, label %49, label %44, !dbg !1994

44:                                               ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1995
  br i1 %45, label %46, label %54, !dbg !1996

46:                                               ; preds = %44
  %47 = tail call i32 @close(i32 %42) #14, !dbg !1997
  %48 = tail call i32* @__errno_location() #25, !dbg !1998
  store i32 9, i32* %48, align 4, !dbg !1999, !tbaa !1368
  br label %54, !dbg !2000

49:                                               ; preds = %3, %41, %38
  %50 = phi i8 [ 0, %38 ], [ 1, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %39, %38 ], [ %39, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #14, !dbg !2001
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !1932, metadata !DIExpression()), !dbg !1937
  br label %57

54:                                               ; preds = %46, %44
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1932, metadata !DIExpression()), !dbg !1937
  %55 = tail call i32* @__errno_location() #25, !dbg !2002
  %56 = load i32, i32* %55, align 4, !dbg !2002, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %63, metadata !1936, metadata !DIExpression()), !dbg !1937
  br label %65, !dbg !2003

57:                                               ; preds = %33, %35, %22, %24, %49
  %58 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ]
  %59 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ]
  %60 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ]
  %61 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], !dbg !2004
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1932, metadata !DIExpression()), !dbg !1937
  %62 = tail call i32* @__errno_location() #25, !dbg !2002
  %63 = load i32, i32* %62, align 4, !dbg !2002, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %63, metadata !1936, metadata !DIExpression()), !dbg !1937
  %64 = icmp eq i8 %58, 0, !dbg !2005
  br i1 %64, label %72, label %65, !dbg !2003

65:                                               ; preds = %54, %57
  %66 = phi i32 [ %56, %54 ], [ %63, %57 ]
  %67 = phi i32* [ %55, %54 ], [ %62, %57 ]
  %68 = phi %struct._IO_FILE* [ null, %54 ], [ %61, %57 ]
  %69 = phi i1 [ %28, %54 ], [ %60, %57 ]
  %70 = phi i8 [ %39, %54 ], [ %59, %57 ]
  %71 = tail call i32 @close(i32 2) #14, !dbg !2007
  br label %72, !dbg !2007

72:                                               ; preds = %57, %65
  %73 = phi i32 [ %63, %57 ], [ %66, %65 ]
  %74 = phi i32* [ %62, %57 ], [ %67, %65 ]
  %75 = phi %struct._IO_FILE* [ %61, %57 ], [ %68, %65 ]
  %76 = phi i1 [ %60, %57 ], [ %69, %65 ]
  %77 = phi i8 [ %59, %57 ], [ %70, %65 ]
  %78 = icmp eq i8 %77, 0, !dbg !2008
  br i1 %78, label %81, label %79, !dbg !2010

79:                                               ; preds = %72
  %80 = tail call i32 @close(i32 1) #14, !dbg !2011
  br label %81, !dbg !2011

81:                                               ; preds = %72, %79
  br i1 %76, label %82, label %84, !dbg !2012

82:                                               ; preds = %81
  %83 = tail call i32 @close(i32 0) #14, !dbg !2013
  br label %84, !dbg !2013

84:                                               ; preds = %82, %81
  %85 = icmp eq %struct._IO_FILE* %75, null, !dbg !2015
  br i1 %85, label %86, label %87, !dbg !2017

86:                                               ; preds = %84
  store i32 %73, i32* %74, align 4, !dbg !2018, !tbaa !1368
  br label %87, !dbg !2019

87:                                               ; preds = %84, %86
  ret %struct._IO_FILE* %75, !dbg !2020
}

; Function Attrs: nounwind
declare !dbg !571 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !581 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #13

declare !dbg !578 i32 @close(i32) local_unnamed_addr #3

declare !dbg !575 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !2021 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2025, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8** %1, metadata !2026, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %2, metadata !2027, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %3, metadata !2028, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8* %4, metadata !2029, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !2030, metadata !DIExpression()), !dbg !2043
  %8 = load i32, i32* @opterr, align 4, !dbg !2044, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %8, metadata !2032, metadata !DIExpression()), !dbg !2043
  store i32 0, i32* @opterr, align 4, !dbg !2045, !tbaa !1368
  %9 = icmp eq i32 %0, 2, !dbg !2046
  br i1 %9, label %10, label %17, !dbg !2047

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %11, metadata !2031, metadata !DIExpression()), !dbg !2043
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !2049

12:                                               ; preds = %10
  tail call void %5(i32 0) #14, !dbg !2050
  br label %17, !dbg !2051

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #14, !dbg !2052
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !2033, metadata !DIExpression()), !dbg !2053
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !2054
  call void @llvm.va_start(i8* nonnull %14), !dbg !2054
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2055, !tbaa !1289
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #14, !dbg !2056
  call void @exit(i32 0) #23, !dbg !2057
  unreachable, !dbg !2057

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !2058, !tbaa !1368
  store i32 0, i32* @optind, align 4, !dbg !2059, !tbaa !1368
  ret void, !dbg !2060
}

; Function Attrs: nounwind
declare !dbg !256 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !2061 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2063, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8** %1, metadata !2064, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %2, metadata !2065, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %3, metadata !2066, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %4, metadata !2067, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i1 %5, metadata !2068, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !2069, metadata !DIExpression()), !dbg !2078
  %9 = load i32, i32* @opterr, align 4, !dbg !2079, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %9, metadata !2071, metadata !DIExpression()), !dbg !2078
  store i32 1, i32* @opterr, align 4, !dbg !2080, !tbaa !1368
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %10, metadata !2072, metadata !DIExpression()), !dbg !2078
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %11, metadata !2070, metadata !DIExpression()), !dbg !2078
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !2083

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !2084
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #14, !dbg !2084
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !2073, metadata !DIExpression()), !dbg !2085
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !2086
  call void @llvm.va_start(i8* nonnull %13), !dbg !2086
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2087, !tbaa !1289
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #14, !dbg !2088
  call void @exit(i32 0) #23, !dbg !2089
  unreachable, !dbg !2089

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !2090, !tbaa !1368
  br label %18, !dbg !2091

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #14, !dbg !2092
  br label %20, !dbg !2093

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !2093, !tbaa !1368
  ret void, !dbg !2094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2097, metadata !DIExpression()), !dbg !2100
  %2 = icmp eq i8* %0, null, !dbg !2101
  br i1 %2, label %3, label %6, !dbg !2103

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2104, !tbaa !1289
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !2106
  tail call void @abort() #23, !dbg !2107
  unreachable, !dbg !2107

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %7, metadata !2098, metadata !DIExpression()), !dbg !2100
  %8 = icmp eq i8* %7, null, !dbg !2109
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2110
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %10, metadata !2099, metadata !DIExpression()), !dbg !2100
  %11 = ptrtoint i8* %10 to i64, !dbg !2111
  %12 = ptrtoint i8* %0 to i64, !dbg !2111
  %13 = sub i64 %11, %12, !dbg !2111
  %14 = icmp sgt i64 %13, 6, !dbg !2113
  br i1 %14, label %15, label %24, !dbg !2114

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2115
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.64, i64 0, i64 0), i64 7) #22, !dbg !2116
  %18 = icmp eq i32 %17, 0, !dbg !2117
  br i1 %18, label %19, label %24, !dbg !2118

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2097, metadata !DIExpression()), !dbg !2100
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i64 3) #22, !dbg !2119
  %21 = icmp eq i32 %20, 0, !dbg !2122
  br i1 %21, label %22, label %24, !dbg !2123

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %23, metadata !2097, metadata !DIExpression()), !dbg !2100
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2126, !tbaa !1289
  br label %24, !dbg !2127

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2097, metadata !DIExpression()), !dbg !2100
  store i8* %25, i8** @program_name, align 8, !dbg !2128, !tbaa !1289
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2129, !tbaa !1289
  ret void, !dbg !2130
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2131 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2136, metadata !DIExpression()), !dbg !2139
  %2 = tail call i32* @__errno_location() #25, !dbg !2140
  %3 = load i32, i32* %2, align 4, !dbg !2140, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %3, metadata !2137, metadata !DIExpression()), !dbg !2139
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2141
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2141
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2141
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #14, !dbg !2142
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2142
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2138, metadata !DIExpression()), !dbg !2139
  store i32 %3, i32* %2, align 4, !dbg !2143, !tbaa !1368
  ret %struct.quoting_options* %8, !dbg !2144
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !2145 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2149, metadata !DIExpression()), !dbg !2150
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2151
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2151
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2152
  %5 = load i32, i32* %4, align 8, !dbg !2152, !tbaa !2153
  ret i32 %5, !dbg !2155
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !2156 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %1, metadata !2161, metadata !DIExpression()), !dbg !2162
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2163
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2163
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2164
  store i32 %1, i32* %5, align 8, !dbg !2165, !tbaa !2153
  ret void, !dbg !2166
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #10 !dbg !2167 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %1, metadata !2172, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 %2, metadata !2173, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8 %1, metadata !2174, metadata !DIExpression()), !dbg !2179
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2180
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2180
  %6 = lshr i8 %1, 5, !dbg !2181
  %7 = zext i8 %6 to i64, !dbg !2181
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2182
  call void @llvm.dbg.value(metadata i32* %8, metadata !2175, metadata !DIExpression()), !dbg !2179
  %9 = and i8 %1, 31, !dbg !2183
  %10 = zext i8 %9 to i32, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %10, metadata !2177, metadata !DIExpression()), !dbg !2179
  %11 = load i32, i32* %8, align 4, !dbg !2184, !tbaa !1368
  %12 = lshr i32 %11, %10, !dbg !2185
  %13 = and i32 %12, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %13, metadata !2178, metadata !DIExpression()), !dbg !2179
  %14 = and i32 %2, 1, !dbg !2187
  %15 = xor i32 %13, %14, !dbg !2188
  %16 = shl i32 %15, %10, !dbg !2189
  %17 = xor i32 %16, %11, !dbg !2190
  store i32 %17, i32* %8, align 4, !dbg !2190, !tbaa !1368
  ret i32 %13, !dbg !2191
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !2192 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %1, metadata !2197, metadata !DIExpression()), !dbg !2199
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2200
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2196, metadata !DIExpression()), !dbg !2199
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2203
  %6 = load i32, i32* %5, align 4, !dbg !2203, !tbaa !2204
  call void @llvm.dbg.value(metadata i32 %6, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i32 %1, i32* %5, align 4, !dbg !2205, !tbaa !2204
  ret i32 %6, !dbg !2206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2207 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2211, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %2, metadata !2213, metadata !DIExpression()), !dbg !2214
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2215
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2217
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()), !dbg !2214
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2218
  store i32 10, i32* %6, align 8, !dbg !2219, !tbaa !2153
  %7 = icmp ne i8* %1, null, !dbg !2220
  %8 = icmp ne i8* %2, null, !dbg !2222
  %9 = and i1 %7, %8, !dbg !2223
  br i1 %9, label %11, label %10, !dbg !2223

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !2224
  unreachable, !dbg !2224

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2225
  store i8* %1, i8** %12, align 8, !dbg !2226, !tbaa !2227
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2228
  store i8* %2, i8** %13, align 8, !dbg !2229, !tbaa !2230
  ret void, !dbg !2231
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2232 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2236, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %1, metadata !2237, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* %2, metadata !2238, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %3, metadata !2239, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2240, metadata !DIExpression()), !dbg !2244
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2245
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2245
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2241, metadata !DIExpression()), !dbg !2244
  %8 = tail call i32* @__errno_location() #25, !dbg !2246
  %9 = load i32, i32* %8, align 4, !dbg !2246, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %9, metadata !2242, metadata !DIExpression()), !dbg !2244
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2247
  %11 = load i32, i32* %10, align 8, !dbg !2247, !tbaa !2153
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2248
  %13 = load i32, i32* %12, align 4, !dbg !2248, !tbaa !2204
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2249
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2250
  %16 = load i8*, i8** %15, align 8, !dbg !2250, !tbaa !2227
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2251
  %18 = load i8*, i8** %17, align 8, !dbg !2251, !tbaa !2230
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2252
  call void @llvm.dbg.value(metadata i64 %19, metadata !2243, metadata !DIExpression()), !dbg !2244
  store i32 %9, i32* %8, align 4, !dbg !2253, !tbaa !1368
  ret i64 %19, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2255 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %2, metadata !2263, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %3, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %4, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %5, metadata !2266, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32* %6, metadata !2267, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %7, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %8, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* null, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2274, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2275, metadata !DIExpression()), !dbg !2319
  %13 = tail call i64 @__ctype_get_mb_cur_max() #14, !dbg !2320
  %14 = icmp eq i64 %13, 1, !dbg !2321
  call void @llvm.dbg.value(metadata i1 %14, metadata !2276, metadata !DIExpression()), !dbg !2319
  %15 = lshr i32 %5, 1, !dbg !2322
  %16 = trunc i32 %15 to i8, !dbg !2322
  %17 = and i8 %16, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i8 %17, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2280, metadata !DIExpression()), !dbg !2319
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2323
  %19 = and i32 %5, 4, !dbg !2325
  %20 = icmp eq i32 %19, 0, !dbg !2325
  %21 = and i32 %5, 1, !dbg !2328
  %22 = icmp eq i32 %21, 0, !dbg !2328
  %23 = bitcast i64* %10 to i8*, !dbg !2331
  %24 = bitcast i32* %12 to i8*, !dbg !2332
  %25 = icmp eq i32* %6, null, !dbg !2333
  br label %26, !dbg !2335

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2336
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2337
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2338
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2339
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2319
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2340
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2341
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2342
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %38, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %37, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %36, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %35, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %34, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %33, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %32, metadata !2274, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %31, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %30, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %29, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %28, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %27, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2313), !dbg !2343
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
  ], !dbg !2344

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %35, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 5, metadata !2265, metadata !DIExpression()), !dbg !2319
  br label %92, !dbg !2345

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 5, metadata !2265, metadata !DIExpression()), !dbg !2319
  %42 = and i8 %35, 1, !dbg !2347
  %43 = icmp eq i8 %42, 0, !dbg !2347
  br i1 %43, label %44, label %92, !dbg !2345

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2349
  br i1 %45, label %92, label %46, !dbg !2352

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2349, !tbaa !2353
  br label %92, !dbg !2349

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 %27), !dbg !2354
  call void @llvm.dbg.value(metadata i8* %48, metadata !2268, metadata !DIExpression()), !dbg !2319
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 %27), !dbg !2358
  call void @llvm.dbg.value(metadata i8* %49, metadata !2269, metadata !DIExpression()), !dbg !2319
  br label %50, !dbg !2359

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %51, metadata !2268, metadata !DIExpression()), !dbg !2319
  %53 = and i8 %35, 1, !dbg !2360
  %54 = icmp eq i8 %53, 0, !dbg !2360
  br i1 %54, label %55, label %70, !dbg !2362

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2271, metadata !DIExpression()), !dbg !2319
  %56 = load i8, i8* %51, align 1, !dbg !2363, !tbaa !2353
  %57 = icmp eq i8 %56, 0, !dbg !2366
  br i1 %57, label %70, label %58, !dbg !2366

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %61, metadata !2271, metadata !DIExpression()), !dbg !2319
  %62 = icmp ult i64 %61, %39, !dbg !2367
  br i1 %62, label %63, label %65, !dbg !2370

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2367
  store i8 %59, i8* %64, align 1, !dbg !2367, !tbaa !2353
  br label %65, !dbg !2367

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i64 %66, metadata !2271, metadata !DIExpression()), !dbg !2319
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2371
  call void @llvm.dbg.value(metadata i8* %67, metadata !2273, metadata !DIExpression()), !dbg !2319
  %68 = load i8, i8* %67, align 1, !dbg !2363, !tbaa !2353
  %69 = icmp eq i8 %68, 0, !dbg !2366
  br i1 %69, label %70, label %58, !dbg !2366, !llvm.loop !2372

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2374
  call void @llvm.dbg.value(metadata i64 %71, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %52, metadata !2273, metadata !DIExpression()), !dbg !2319
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %72, metadata !2274, metadata !DIExpression()), !dbg !2319
  br label %92, !dbg !2376

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2275, metadata !DIExpression()), !dbg !2319
  br label %74, !dbg !2377

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %75, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2277, metadata !DIExpression()), !dbg !2319
  br label %76, !dbg !2378

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2339
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %78, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %77, metadata !2275, metadata !DIExpression()), !dbg !2319
  %79 = and i8 %78, 1, !dbg !2379
  %80 = icmp eq i8 %79, 0, !dbg !2379
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2381
  br label %82, !dbg !2381

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2319
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2322
  call void @llvm.dbg.value(metadata i8 %84, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %83, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  %85 = and i8 %84, 1, !dbg !2382
  %86 = icmp eq i8 %85, 0, !dbg !2382
  br i1 %86, label %87, label %92, !dbg !2384

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2385
  br i1 %88, label %92, label %89, !dbg !2388

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2385, !tbaa !2353
  br label %92, !dbg !2385

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2277, metadata !DIExpression()), !dbg !2319
  br label %92, !dbg !2389

91:                                               ; preds = %26
  call void @abort() #23, !dbg !2390
  unreachable, !dbg !2390

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2374
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %40 ], !dbg !2319
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2319
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2319
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %100, metadata !2277, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %98, metadata !2274, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %96, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %93, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2270, metadata !DIExpression()), !dbg !2319
  %101 = and i8 %99, 1, !dbg !2391
  %102 = icmp ne i8 %101, 0, !dbg !2391
  %103 = icmp ne i32 %93, 2, !dbg !2391
  %104 = and i1 %103, %102, !dbg !2391
  %105 = icmp ne i64 %98, 0, !dbg !2391
  %106 = and i1 %105, %104, !dbg !2391
  %107 = icmp ugt i64 %98, 1, !dbg !2391
  %108 = and i8 %100, 1, !dbg !2393
  %109 = icmp eq i8 %108, 0, !dbg !2393
  %110 = icmp eq i32 %93, 2, !dbg !2396
  %111 = or i1 %103, %109, !dbg !2398
  %112 = icmp ne i8 %108, 0, !dbg !2400
  %113 = and i1 %110, %112, !dbg !2400
  %114 = xor i1 %102, true, !dbg !2401
  %115 = xor i1 %104, true, !dbg !2333
  %116 = and i1 %109, %115, !dbg !2333
  %117 = or i1 %25, %116, !dbg !2333
  %118 = and i8 %99, %100, !dbg !2402
  %119 = and i8 %118, 1, !dbg !2402
  %120 = icmp ne i8 %119, 0, !dbg !2402
  %121 = and i1 %120, %105, !dbg !2402
  br label %122, !dbg !2404

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2405
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2374
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2336
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2340
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2341
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2342
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %126, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %123, metadata !2270, metadata !DIExpression()), !dbg !2319
  %131 = icmp eq i64 %126, -1, !dbg !2406
  br i1 %131, label %132, label %136, !dbg !2407

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2408
  %134 = load i8, i8* %133, align 1, !dbg !2408, !tbaa !2353
  %135 = icmp eq i8 %134, 0, !dbg !2409
  br i1 %135, label %581, label %138, !dbg !2410

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2411
  br i1 %137, label %581, label %138, !dbg !2410

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2412
  br i1 %106, label %139, label %154, !dbg !2413

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2414
  %141 = and i1 %107, %131, !dbg !2415
  br i1 %141, label %142, label %144, !dbg !2415

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %143, metadata !2264, metadata !DIExpression()), !dbg !2319
  br label %144, !dbg !2417

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2264, metadata !DIExpression()), !dbg !2319
  %146 = icmp ugt i64 %140, %145, !dbg !2418
  br i1 %146, label %154, label %147, !dbg !2419

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2420
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2421
  %150 = icmp ne i32 %149, 0, !dbg !2422
  %151 = or i1 %150, %109, !dbg !2423
  %152 = xor i1 %150, true, !dbg !2423
  %153 = zext i1 %152 to i8, !dbg !2423
  br i1 %151, label %154, label %639, !dbg !2423

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %156, metadata !2286, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %155, metadata !2264, metadata !DIExpression()), !dbg !2319
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2424
  %158 = load i8, i8* %157, align 1, !dbg !2424, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %158, metadata !2281, metadata !DIExpression()), !dbg !2412
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
  ], !dbg !2425

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2426

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2427

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2287, metadata !DIExpression()), !dbg !2412
  %162 = and i8 %127, 1, !dbg !2430
  %163 = icmp eq i8 %162, 0, !dbg !2430
  %164 = and i1 %110, %163, !dbg !2430
  br i1 %164, label %165, label %181, !dbg !2430

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2432
  br i1 %166, label %167, label %169, !dbg !2436

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2432
  store i8 39, i8* %168, align 1, !dbg !2432, !tbaa !2353
  br label %169, !dbg !2432

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %170, metadata !2271, metadata !DIExpression()), !dbg !2319
  %171 = icmp ult i64 %170, %130, !dbg !2437
  br i1 %171, label %172, label %174, !dbg !2440

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2437
  store i8 36, i8* %173, align 1, !dbg !2437, !tbaa !2353
  br label %174, !dbg !2437

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %175, metadata !2271, metadata !DIExpression()), !dbg !2319
  %176 = icmp ult i64 %175, %130, !dbg !2441
  br i1 %176, label %177, label %179, !dbg !2444

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2441
  store i8 39, i8* %178, align 1, !dbg !2441, !tbaa !2353
  br label %179, !dbg !2441

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2444
  call void @llvm.dbg.value(metadata i64 %180, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %181, !dbg !2445

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2319
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %183, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %182, metadata !2271, metadata !DIExpression()), !dbg !2319
  %184 = icmp ult i64 %182, %130, !dbg !2446
  br i1 %184, label %185, label %187, !dbg !2449

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2446
  store i8 92, i8* %186, align 1, !dbg !2446, !tbaa !2353
  br label %187, !dbg !2446

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %188, metadata !2271, metadata !DIExpression()), !dbg !2319
  br i1 %103, label %189, label %463, !dbg !2450

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2452
  %191 = icmp ult i64 %190, %155, !dbg !2453
  br i1 %191, label %192, label %463, !dbg !2454

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2455
  %194 = load i8, i8* %193, align 1, !dbg !2455, !tbaa !2353
  %195 = add i8 %194, -48, !dbg !2456
  %196 = icmp ult i8 %195, 10, !dbg !2456
  br i1 %196, label %197, label %463, !dbg !2456

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2457
  br i1 %198, label %199, label %201, !dbg !2461

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2457
  store i8 48, i8* %200, align 1, !dbg !2457, !tbaa !2353
  br label %201, !dbg !2457

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %202, metadata !2271, metadata !DIExpression()), !dbg !2319
  %203 = icmp ult i64 %202, %130, !dbg !2462
  br i1 %203, label %204, label %206, !dbg !2465

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2462
  store i8 48, i8* %205, align 1, !dbg !2462, !tbaa !2353
  br label %206, !dbg !2462

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %207, metadata !2271, metadata !DIExpression()), !dbg !2319
  br label %463, !dbg !2466

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2467

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2468

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2469

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2470

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2471
  %214 = icmp ult i64 %213, %155, !dbg !2472
  br i1 %214, label %215, label %463, !dbg !2473

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2474
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2475
  %218 = load i8, i8* %217, align 1, !dbg !2475, !tbaa !2353
  %219 = icmp eq i8 %218, 63, !dbg !2476
  br i1 %219, label %220, label %463, !dbg !2477

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2478
  %222 = load i8, i8* %221, align 1, !dbg !2478, !tbaa !2353
  %223 = sext i8 %222 to i32, !dbg !2478
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
  ], !dbg !2479

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2480

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i64 %213, metadata !2270, metadata !DIExpression()), !dbg !2319
  %226 = icmp ult i64 %124, %130, !dbg !2482
  br i1 %226, label %227, label %229, !dbg !2485

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2482
  store i8 63, i8* %228, align 1, !dbg !2482, !tbaa !2353
  br label %229, !dbg !2482

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %230, metadata !2271, metadata !DIExpression()), !dbg !2319
  %231 = icmp ult i64 %230, %130, !dbg !2486
  br i1 %231, label %232, label %234, !dbg !2489

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2486
  store i8 34, i8* %233, align 1, !dbg !2486, !tbaa !2353
  br label %234, !dbg !2486

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %235, metadata !2271, metadata !DIExpression()), !dbg !2319
  %236 = icmp ult i64 %235, %130, !dbg !2490
  br i1 %236, label %237, label %239, !dbg !2493

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2490
  store i8 34, i8* %238, align 1, !dbg !2490, !tbaa !2353
  br label %239, !dbg !2490

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2493
  call void @llvm.dbg.value(metadata i64 %240, metadata !2271, metadata !DIExpression()), !dbg !2319
  %241 = icmp ult i64 %240, %130, !dbg !2494
  br i1 %241, label %242, label %244, !dbg !2497

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2494
  store i8 63, i8* %243, align 1, !dbg !2494, !tbaa !2353
  br label %244, !dbg !2494

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %245, metadata !2271, metadata !DIExpression()), !dbg !2319
  br label %463, !dbg !2498

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2285, metadata !DIExpression()), !dbg !2412
  br label %256, !dbg !2499

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2285, metadata !DIExpression()), !dbg !2412
  br label %256, !dbg !2500

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2285, metadata !DIExpression()), !dbg !2412
  br label %254, !dbg !2501

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2285, metadata !DIExpression()), !dbg !2412
  br label %254, !dbg !2502

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2285, metadata !DIExpression()), !dbg !2412
  br label %256, !dbg !2503

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2285, metadata !DIExpression()), !dbg !2412
  br i1 %110, label %252, label %253, !dbg !2504

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2505

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2508

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2509
  call void @llvm.dbg.value(metadata i8 %255, metadata !2285, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2314), !dbg !2510
  br i1 %111, label %256, label %625, !dbg !2511

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2509
  call void @llvm.dbg.value(metadata i8 %257, metadata !2285, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.label(metadata !2315), !dbg !2513
  br i1 %102, label %488, label %463, !dbg !2514

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2515

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2516, !tbaa !2353
  %261 = icmp eq i8 %260, 0, !dbg !2517
  br i1 %261, label %262, label %463, !dbg !2518

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2519
  br i1 %263, label %264, label %463, !dbg !2521

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2288, metadata !DIExpression()), !dbg !2412
  br label %265, !dbg !2522

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %266, metadata !2288, metadata !DIExpression()), !dbg !2412
  br i1 %111, label %463, label %625, !dbg !2523

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2288, metadata !DIExpression()), !dbg !2412
  br i1 %110, label %268, label %463, !dbg !2524

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2525

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2527
  %271 = icmp ne i64 %125, 0, !dbg !2529
  %272 = or i1 %271, %270, !dbg !2530
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2530
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %274, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %273, metadata !2272, metadata !DIExpression()), !dbg !2319
  %275 = icmp ult i64 %124, %274, !dbg !2531
  br i1 %275, label %276, label %278, !dbg !2534

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2531
  store i8 39, i8* %277, align 1, !dbg !2531, !tbaa !2353
  br label %278, !dbg !2531

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %279, metadata !2271, metadata !DIExpression()), !dbg !2319
  %280 = icmp ult i64 %279, %274, !dbg !2535
  br i1 %280, label %281, label %283, !dbg !2538

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2535
  store i8 92, i8* %282, align 1, !dbg !2535, !tbaa !2353
  br label %283, !dbg !2535

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %284, metadata !2271, metadata !DIExpression()), !dbg !2319
  %285 = icmp ult i64 %284, %274, !dbg !2539
  br i1 %285, label %286, label %288, !dbg !2542

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2539
  store i8 39, i8* %287, align 1, !dbg !2539, !tbaa !2353
  br label %288, !dbg !2539

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %289, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %463, !dbg !2543

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2544

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2289, metadata !DIExpression()), !dbg !2545
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2546
  %293 = load i16*, i16** %292, align 8, !dbg !2546, !tbaa !1289
  %294 = zext i8 %158 to i64, !dbg !2546
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2546
  %296 = load i16, i16* %295, align 2, !dbg !2546, !tbaa !2548
  %297 = lshr i16 %296, 14, !dbg !2550
  %298 = trunc i16 %297 to i8, !dbg !2550
  %299 = and i8 %298, 1, !dbg !2550
  call void @llvm.dbg.value(metadata i8 %299, metadata !2292, metadata !DIExpression()), !dbg !2545
  br label %355, !dbg !2551

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2552
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2293, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %23, metadata !2554, metadata !DIExpression()) #14, !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()) #14, !dbg !2562
  call void @llvm.dbg.value(metadata i64 8, metadata !2561, metadata !DIExpression()) #14, !dbg !2562
  store i64 0, i64* %10, align 8, !dbg !2564
  call void @llvm.dbg.value(metadata i64 0, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 1, metadata !2292, metadata !DIExpression()), !dbg !2545
  %301 = icmp eq i64 %155, -1, !dbg !2565
  br i1 %301, label %302, label %304, !dbg !2567

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2568
  call void @llvm.dbg.value(metadata i64 %303, metadata !2264, metadata !DIExpression()), !dbg !2319
  br label %304, !dbg !2569

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2412
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  br label %306, !dbg !2570

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2571
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2572
  call void @llvm.dbg.value(metadata i8 %308, metadata !2292, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2573
  %309 = add i64 %307, %123, !dbg !2574
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2575
  %311 = sub i64 %305, %309, !dbg !2576
  call void @llvm.dbg.value(metadata i32* %12, metadata !2299, metadata !DIExpression(DW_OP_deref)), !dbg !2332
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #14, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %312, metadata !2302, metadata !DIExpression()), !dbg !2332
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2578

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  %314 = icmp ugt i64 %305, %309, !dbg !2579
  br i1 %314, label %315, label %340, !dbg !2581

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2582
  br label %317, !dbg !2582

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2289, metadata !DIExpression()), !dbg !2545
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2583
  %321 = load i8, i8* %320, align 1, !dbg !2583, !tbaa !2353
  %322 = icmp eq i8 %321, 0, !dbg !2581
  br i1 %322, label %340, label %323, !dbg !2582

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %324, metadata !2289, metadata !DIExpression()), !dbg !2545
  %325 = add i64 %324, %123, !dbg !2585
  %326 = icmp ult i64 %325, %305, !dbg !2579
  br i1 %326, label %317, label %340, !dbg !2581, !llvm.loop !2586

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2587
  %329 = and i1 %113, %328, !dbg !2590
  call void @llvm.dbg.value(metadata i64 1, metadata !2303, metadata !DIExpression()), !dbg !2591
  br i1 %329, label %330, label %343, !dbg !2590

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2303, metadata !DIExpression()), !dbg !2591
  %332 = add i64 %331, %309, !dbg !2592
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2593
  %334 = load i8, i8* %333, align 1, !dbg !2593, !tbaa !2353
  %335 = sext i8 %334 to i32, !dbg !2593
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2594

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %337, metadata !2303, metadata !DIExpression()), !dbg !2591
  %338 = icmp eq i64 %337, %312, !dbg !2587
  br i1 %338, label %343, label %330, !dbg !2596, !llvm.loop !2597

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %308, metadata !2292, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %307, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %308, metadata !2292, metadata !DIExpression()), !dbg !2545
  br label %340, !dbg !2599

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2599
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2600, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %344, metadata !2299, metadata !DIExpression()), !dbg !2332
  %345 = call i32 @iswprint(i32 %344) #14, !dbg !2602
  %346 = icmp eq i32 %345, 0, !dbg !2602
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2603
  call void @llvm.dbg.value(metadata i8 %347, metadata !2292, metadata !DIExpression()), !dbg !2545
  %348 = add i64 %312, %307, !dbg !2604
  call void @llvm.dbg.value(metadata i64 %348, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %347, metadata !2292, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %348, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2599
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2605
  %350 = icmp eq i32 %349, 0, !dbg !2606
  br i1 %350, label %306, label %351, !dbg !2607, !llvm.loop !2608

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2610
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 2, metadata !2265, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %99, metadata !2275, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %305, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2599
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2610
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2412
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2611
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2611
  call void @llvm.dbg.value(metadata i8 %358, metadata !2292, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %357, metadata !2289, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %356, metadata !2264, metadata !DIExpression()), !dbg !2319
  %359 = and i8 %358, 1, !dbg !2612
  %360 = icmp ne i8 %359, 0, !dbg !2612
  call void @llvm.dbg.value(metadata i8 %359, metadata !2288, metadata !DIExpression()), !dbg !2412
  %361 = icmp ult i64 %357, 2, !dbg !2613
  %362 = or i1 %360, %114, !dbg !2614
  %363 = and i1 %361, %362, !dbg !2615
  br i1 %363, label %463, label %364, !dbg !2615

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2616
  call void @llvm.dbg.value(metadata i64 %365, metadata !2310, metadata !DIExpression()), !dbg !2617
  br label %366, !dbg !2618

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2405
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2319
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2340
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2412
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2412
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2619
  call void @llvm.dbg.value(metadata i8 %372, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %371, metadata !2286, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %370, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %369, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %368, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %367, metadata !2270, metadata !DIExpression()), !dbg !2319
  br i1 %362, label %419, label %373, !dbg !2620

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2625

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2287, metadata !DIExpression()), !dbg !2412
  %375 = and i8 %369, 1, !dbg !2628
  %376 = icmp eq i8 %375, 0, !dbg !2628
  %377 = and i1 %110, %376, !dbg !2628
  br i1 %377, label %378, label %394, !dbg !2628

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2630
  br i1 %379, label %380, label %382, !dbg !2634

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2630
  store i8 39, i8* %381, align 1, !dbg !2630, !tbaa !2353
  br label %382, !dbg !2630

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %383, metadata !2271, metadata !DIExpression()), !dbg !2319
  %384 = icmp ult i64 %383, %130, !dbg !2635
  br i1 %384, label %385, label %387, !dbg !2638

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2635
  store i8 36, i8* %386, align 1, !dbg !2635, !tbaa !2353
  br label %387, !dbg !2635

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2638
  call void @llvm.dbg.value(metadata i64 %388, metadata !2271, metadata !DIExpression()), !dbg !2319
  %389 = icmp ult i64 %388, %130, !dbg !2639
  br i1 %389, label %390, label %392, !dbg !2642

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2639
  store i8 39, i8* %391, align 1, !dbg !2639, !tbaa !2353
  br label %392, !dbg !2639

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2642
  call void @llvm.dbg.value(metadata i64 %393, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %394, !dbg !2643

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2319
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %396, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %395, metadata !2271, metadata !DIExpression()), !dbg !2319
  %397 = icmp ult i64 %395, %130, !dbg !2644
  br i1 %397, label %398, label %400, !dbg !2647

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2644
  store i8 92, i8* %399, align 1, !dbg !2644, !tbaa !2353
  br label %400, !dbg !2644

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %401, metadata !2271, metadata !DIExpression()), !dbg !2319
  %402 = icmp ult i64 %401, %130, !dbg !2648
  br i1 %402, label %403, label %407, !dbg !2651

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2648
  %405 = or i8 %404, 48, !dbg !2648
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2648
  store i8 %405, i8* %406, align 1, !dbg !2648, !tbaa !2353
  br label %407, !dbg !2648

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %408, metadata !2271, metadata !DIExpression()), !dbg !2319
  %409 = icmp ult i64 %408, %130, !dbg !2652
  br i1 %409, label %410, label %415, !dbg !2655

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2652
  %412 = and i8 %411, 7, !dbg !2652
  %413 = or i8 %412, 48, !dbg !2652
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2652
  store i8 %413, i8* %414, align 1, !dbg !2652, !tbaa !2353
  br label %415, !dbg !2652

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %416, metadata !2271, metadata !DIExpression()), !dbg !2319
  %417 = and i8 %370, 7, !dbg !2656
  %418 = or i8 %417, 48, !dbg !2657
  call void @llvm.dbg.value(metadata i8 %418, metadata !2281, metadata !DIExpression()), !dbg !2412
  br label %428, !dbg !2658

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2659
  %421 = icmp eq i8 %420, 0, !dbg !2659
  br i1 %421, label %428, label %422, !dbg !2661

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2662
  br i1 %423, label %424, label %426, !dbg !2666

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2662
  store i8 92, i8* %425, align 1, !dbg !2662, !tbaa !2353
  br label %426, !dbg !2662

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %427, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2286, metadata !DIExpression()), !dbg !2412
  br label %428, !dbg !2667

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2319
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2340
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2412
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2412
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2412
  call void @llvm.dbg.value(metadata i8 %433, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %432, metadata !2286, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %431, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %430, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %429, metadata !2271, metadata !DIExpression()), !dbg !2319
  %434 = add i64 %367, 1, !dbg !2668
  %435 = icmp ugt i64 %365, %434, !dbg !2670
  br i1 %435, label %436, label %526, !dbg !2671

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2672
  %438 = icmp ne i8 %437, 0, !dbg !2672
  %439 = and i8 %433, 1, !dbg !2672
  %440 = icmp eq i8 %439, 0, !dbg !2672
  %441 = and i1 %438, %440, !dbg !2672
  br i1 %441, label %442, label %453, !dbg !2672

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2675
  br i1 %443, label %444, label %446, !dbg !2679

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2675
  store i8 39, i8* %445, align 1, !dbg !2675, !tbaa !2353
  br label %446, !dbg !2675

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %447, metadata !2271, metadata !DIExpression()), !dbg !2319
  %448 = icmp ult i64 %447, %130, !dbg !2680
  br i1 %448, label %449, label %451, !dbg !2683

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2680
  store i8 39, i8* %450, align 1, !dbg !2680, !tbaa !2353
  br label %451, !dbg !2680

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %452, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %453, !dbg !2684

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2685
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %455, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %454, metadata !2271, metadata !DIExpression()), !dbg !2319
  %456 = icmp ult i64 %454, %130, !dbg !2686
  br i1 %456, label %457, label %459, !dbg !2689

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2686
  store i8 %431, i8* %458, align 1, !dbg !2686, !tbaa !2353
  br label %459, !dbg !2686

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %460, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %434, metadata !2270, metadata !DIExpression()), !dbg !2319
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2690
  %462 = load i8, i8* %461, align 1, !dbg !2690, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %462, metadata !2281, metadata !DIExpression()), !dbg !2412
  br label %366, !dbg !2691, !llvm.loop !2692

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2405
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2319
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2336
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2695
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2319
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2319
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2412
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2412
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2412
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %472, metadata !2288, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %471, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %156, metadata !2286, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %470, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %469, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %468, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %467, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %466, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %465, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %464, metadata !2270, metadata !DIExpression()), !dbg !2319
  br i1 %117, label %486, label %474, !dbg !2696

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2697
  %476 = zext i8 %475 to i64, !dbg !2697
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2698
  %478 = load i32, i32* %477, align 4, !dbg !2698, !tbaa !1368
  %479 = and i8 %470, 31, !dbg !2699
  %480 = zext i8 %479 to i32, !dbg !2699
  %481 = shl nuw i32 1, %480, !dbg !2700
  %482 = and i32 %478, %481, !dbg !2700
  %483 = icmp eq i32 %482, 0, !dbg !2700
  %484 = icmp eq i8 %156, 0, !dbg !2701
  %485 = and i1 %484, %483, !dbg !2702
  br i1 %485, label %526, label %488, !dbg !2702

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2701
  br i1 %487, label %526, label %488, !dbg !2703

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2704
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2319
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2336
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2695
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2340
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2341
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2412
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2412
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %496, metadata !2288, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %495, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %494, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %493, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %492, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %491, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %490, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %489, metadata !2270, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2316), !dbg !2705
  br i1 %109, label %498, label %629, !dbg !2706

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2287, metadata !DIExpression()), !dbg !2412
  %499 = and i8 %493, 1, !dbg !2708
  %500 = icmp eq i8 %499, 0, !dbg !2708
  %501 = and i1 %110, %500, !dbg !2708
  br i1 %501, label %502, label %518, !dbg !2708

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2710
  br i1 %503, label %504, label %506, !dbg !2714

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2710
  store i8 39, i8* %505, align 1, !dbg !2710, !tbaa !2353
  br label %506, !dbg !2710

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %507, metadata !2271, metadata !DIExpression()), !dbg !2319
  %508 = icmp ult i64 %507, %497, !dbg !2715
  br i1 %508, label %509, label %511, !dbg !2718

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2715
  store i8 36, i8* %510, align 1, !dbg !2715, !tbaa !2353
  br label %511, !dbg !2715

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %512, metadata !2271, metadata !DIExpression()), !dbg !2319
  %513 = icmp ult i64 %512, %497, !dbg !2719
  br i1 %513, label %514, label %516, !dbg !2722

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2719
  store i8 39, i8* %515, align 1, !dbg !2719, !tbaa !2353
  br label %516, !dbg !2719

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %517, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 1, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %518, !dbg !2723

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2412
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %520, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %519, metadata !2271, metadata !DIExpression()), !dbg !2319
  %521 = icmp ult i64 %519, %497, !dbg !2724
  br i1 %521, label %522, label %524, !dbg !2727

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2724
  store i8 92, i8* %523, align 1, !dbg !2724, !tbaa !2353
  br label %524, !dbg !2724

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %525, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %536, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %535, metadata !2288, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %534, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %533, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %532, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %531, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %530, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %529, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %528, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %527, metadata !2270, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2317), !dbg !2728
  br label %553, !dbg !2729

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2704
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2319
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2336
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2695
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2340
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2341
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2732
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2412
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2412
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %535, metadata !2288, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %534, metadata !2287, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %533, metadata !2281, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 %532, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %531, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %530, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %529, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %528, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %527, metadata !2270, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2317), !dbg !2728
  %537 = and i8 %531, 1, !dbg !2729
  %538 = icmp ne i8 %537, 0, !dbg !2729
  %539 = and i8 %534, 1, !dbg !2729
  %540 = icmp eq i8 %539, 0, !dbg !2729
  %541 = and i1 %538, %540, !dbg !2729
  br i1 %541, label %542, label %553, !dbg !2729

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2733
  br i1 %543, label %544, label %546, !dbg !2737

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2733
  store i8 39, i8* %545, align 1, !dbg !2733, !tbaa !2353
  br label %546, !dbg !2733

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2737
  call void @llvm.dbg.value(metadata i64 %547, metadata !2271, metadata !DIExpression()), !dbg !2319
  %548 = icmp ult i64 %547, %536, !dbg !2738
  br i1 %548, label %549, label %551, !dbg !2741

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2738
  store i8 39, i8* %550, align 1, !dbg !2738, !tbaa !2353
  br label %551, !dbg !2738

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %552, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2319
  br label %553, !dbg !2742

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2412
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2319
  call void @llvm.dbg.value(metadata i8 %562, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %561, metadata !2271, metadata !DIExpression()), !dbg !2319
  %563 = icmp ult i64 %561, %554, !dbg !2743
  br i1 %563, label %564, label %566, !dbg !2746

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2743
  store i8 %556, i8* %565, align 1, !dbg !2743, !tbaa !2353
  br label %566, !dbg !2743

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %567, metadata !2271, metadata !DIExpression()), !dbg !2319
  %568 = and i8 %555, 1, !dbg !2747
  %569 = icmp eq i8 %568, 0, !dbg !2747
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2749
  call void @llvm.dbg.value(metadata i8 %570, metadata !2280, metadata !DIExpression()), !dbg !2319
  br label %571, !dbg !2750

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2704
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2319
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2336
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2695
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2340
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2319
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2342
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %578, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %577, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %576, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %575, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %574, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %573, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %572, metadata !2270, metadata !DIExpression()), !dbg !2319
  %580 = add i64 %572, 1, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %580, metadata !2270, metadata !DIExpression()), !dbg !2319
  br label %122, !dbg !2752, !llvm.loop !2753

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %127, metadata !2278, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %128, metadata !2279, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8 %129, metadata !2280, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  %583 = icmp eq i64 %124, 0, !dbg !2755
  %584 = and i1 %110, %583, !dbg !2757
  %585 = xor i1 %584, true, !dbg !2757
  %586 = or i1 %109, %585, !dbg !2757
  br i1 %586, label %587, label %629, !dbg !2757

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2758
  %589 = xor i1 %588, true, !dbg !2758
  %590 = and i8 %128, 1, !dbg !2760
  %591 = icmp eq i8 %590, 0, !dbg !2760
  %592 = or i1 %591, %589, !dbg !2758
  br i1 %592, label %602, label %593, !dbg !2758

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2761
  %595 = icmp eq i8 %594, 0, !dbg !2761
  br i1 %595, label %598, label %596, !dbg !2764

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %94, metadata !2268, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %95, metadata !2269, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %125, metadata !2272, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %582, metadata !2264, metadata !DIExpression()), !dbg !2319
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2765
  br label %645, !dbg !2766

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2767
  %600 = icmp ne i64 %125, 0, !dbg !2769
  %601 = and i1 %600, %599, !dbg !2770
  br i1 %601, label %26, label %602, !dbg !2770

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %130, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  %603 = icmp ne i8* %97, null, !dbg !2771
  %604 = and i1 %603, %109, !dbg !2773
  br i1 %604, label %605, label %620, !dbg !2773

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %124, metadata !2271, metadata !DIExpression()), !dbg !2319
  %606 = load i8, i8* %97, align 1, !dbg !2774, !tbaa !2353
  %607 = icmp eq i8 %606, 0, !dbg !2777
  br i1 %607, label %620, label %608, !dbg !2777

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2273, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %611, metadata !2271, metadata !DIExpression()), !dbg !2319
  %612 = icmp ult i64 %611, %130, !dbg !2778
  br i1 %612, label %613, label %615, !dbg !2781

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2778
  store i8 %609, i8* %614, align 1, !dbg !2778, !tbaa !2353
  br label %615, !dbg !2778

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %616, metadata !2271, metadata !DIExpression()), !dbg !2319
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %617, metadata !2273, metadata !DIExpression()), !dbg !2319
  %618 = load i8, i8* %617, align 1, !dbg !2774, !tbaa !2353
  %619 = icmp eq i8 %618, 0, !dbg !2777
  br i1 %619, label %620, label %608, !dbg !2777, !llvm.loop !2783

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2374
  call void @llvm.dbg.value(metadata i64 %621, metadata !2271, metadata !DIExpression()), !dbg !2319
  %622 = icmp ult i64 %621, %130, !dbg !2785
  br i1 %622, label %623, label %645, !dbg !2787

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2788
  store i8 0, i8* %624, align 1, !dbg !2789, !tbaa !2353
  br label %645, !dbg !2788

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %630, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2318), !dbg !2790
  %627 = icmp eq i8 %101, 0, !dbg !2791
  %628 = select i1 %627, i32 2, i32 4, !dbg !2791
  br label %635, !dbg !2791

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2262, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %630, metadata !2264, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.label(metadata !2318), !dbg !2790
  %632 = icmp eq i32 %93, 2, !dbg !2793
  %633 = icmp eq i8 %101, 0, !dbg !2791
  %634 = select i1 %633, i32 2, i32 4, !dbg !2791
  br i1 %632, label %635, label %639, !dbg !2791

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2791

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2265, metadata !DIExpression()), !dbg !2319
  %643 = and i32 %5, -3, !dbg !2794
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2795
  br label %645, !dbg !2796

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2797
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2798 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()), !dbg !2806
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #14, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %3, metadata !2804, metadata !DIExpression()), !dbg !2806
  %4 = icmp eq i8* %3, %0, !dbg !2808
  br i1 %4, label %5, label %71, !dbg !2810

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #14, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %6, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %6, metadata !2812, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* undef, metadata !2818, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 85, metadata !2819, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 84, metadata !2820, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 70, metadata !2821, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 45, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 56, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8 0, metadata !2827, metadata !DIExpression()), !dbg !2828
  %7 = load i8, i8* %6, align 1, !dbg !2831, !tbaa !2353
  %8 = and i8 %7, -33, !dbg !2831
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2831

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2833, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* undef, metadata !2838, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 84, metadata !2839, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 70, metadata !2840, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 45, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 56, metadata !2842, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 0, metadata !2843, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 0, metadata !2844, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8 0, metadata !2846, metadata !DIExpression()), !dbg !2847
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2851
  %11 = load i8, i8* %10, align 1, !dbg !2851, !tbaa !2353
  %12 = and i8 %11, -33, !dbg !2851
  %13 = icmp eq i8 %12, 84, !dbg !2851
  br i1 %13, label %14, label %68, !dbg !2851

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2853, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* undef, metadata !2858, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 70, metadata !2859, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 45, metadata !2860, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 56, metadata !2861, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2862, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2863, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2864, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8 0, metadata !2865, metadata !DIExpression()), !dbg !2866
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2870
  %16 = load i8, i8* %15, align 1, !dbg !2870, !tbaa !2353
  %17 = and i8 %16, -33, !dbg !2870
  %18 = icmp eq i8 %17, 70, !dbg !2870
  br i1 %18, label %19, label %68, !dbg !2870

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2872, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* undef, metadata !2877, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 45, metadata !2878, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 56, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2880, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2884
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2888
  %21 = load i8, i8* %20, align 1, !dbg !2888, !tbaa !2353
  %22 = icmp eq i8 %21, 45, !dbg !2888
  br i1 %22, label %23, label %68, !dbg !2890

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2891, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* undef, metadata !2896, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 56, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2902
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2906
  %25 = load i8, i8* %24, align 1, !dbg !2906, !tbaa !2353
  %26 = icmp eq i8 %25, 56, !dbg !2906
  br i1 %26, label %27, label %68, !dbg !2908

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2909, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* undef, metadata !2914, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 0, metadata !2915, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 0, metadata !2916, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 0, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2919
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2923
  %29 = load i8, i8* %28, align 1, !dbg !2923, !tbaa !2353
  %30 = icmp eq i8 %29, 0, !dbg !2923
  br i1 %30, label %31, label %68, !dbg !2925

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2926, !tbaa !2353
  %33 = icmp eq i8 %32, 96, !dbg !2927
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.80, i64 0, i64 0), !dbg !2926
  br label %71, !dbg !2928

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2833, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8* undef, metadata !2838, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 66, metadata !2839, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 49, metadata !2840, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 56, metadata !2841, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 48, metadata !2842, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 51, metadata !2843, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 48, metadata !2844, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 0, metadata !2845, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 0, metadata !2846, metadata !DIExpression()), !dbg !2929
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2933
  %37 = load i8, i8* %36, align 1, !dbg !2933, !tbaa !2353
  %38 = and i8 %37, -33, !dbg !2933
  %39 = icmp eq i8 %38, 66, !dbg !2933
  br i1 %39, label %40, label %68, !dbg !2933

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2853, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* undef, metadata !2858, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 49, metadata !2859, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 56, metadata !2860, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 48, metadata !2861, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 51, metadata !2862, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 48, metadata !2863, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 0, metadata !2864, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8 0, metadata !2865, metadata !DIExpression()), !dbg !2934
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2936
  %42 = load i8, i8* %41, align 1, !dbg !2936, !tbaa !2353
  %43 = icmp eq i8 %42, 49, !dbg !2936
  br i1 %43, label %44, label %68, !dbg !2937

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2872, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* undef, metadata !2877, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 56, metadata !2878, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 48, metadata !2879, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 51, metadata !2880, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 48, metadata !2881, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2882, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2938
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2940
  %46 = load i8, i8* %45, align 1, !dbg !2940, !tbaa !2353
  %47 = icmp eq i8 %46, 56, !dbg !2940
  br i1 %47, label %48, label %68, !dbg !2941

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2891, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* undef, metadata !2896, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 48, metadata !2897, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 51, metadata !2898, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 48, metadata !2899, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 0, metadata !2900, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8 0, metadata !2901, metadata !DIExpression()), !dbg !2942
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2944
  %50 = load i8, i8* %49, align 1, !dbg !2944, !tbaa !2353
  %51 = icmp eq i8 %50, 48, !dbg !2944
  br i1 %51, label %52, label %68, !dbg !2945

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2909, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8* undef, metadata !2914, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 51, metadata !2915, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 48, metadata !2916, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2917, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i8 0, metadata !2918, metadata !DIExpression()), !dbg !2946
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2948
  %54 = load i8, i8* %53, align 1, !dbg !2948, !tbaa !2353
  %55 = icmp eq i8 %54, 51, !dbg !2948
  br i1 %55, label %56, label %68, !dbg !2949

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2950, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8* undef, metadata !2955, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 48, metadata !2956, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 0, metadata !2957, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i8 0, metadata !2958, metadata !DIExpression()), !dbg !2959
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2963
  %58 = load i8, i8* %57, align 1, !dbg !2963, !tbaa !2353
  %59 = icmp eq i8 %58, 48, !dbg !2963
  br i1 %59, label %60, label %68, !dbg !2965

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2966, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8* undef, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 0, metadata !2972, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i8 0, metadata !2973, metadata !DIExpression()), !dbg !2974
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2978
  %62 = load i8, i8* %61, align 1, !dbg !2978, !tbaa !2353
  %63 = icmp eq i8 %62, 0, !dbg !2978
  br i1 %63, label %64, label %68, !dbg !2980

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2981, !tbaa !2353
  %66 = icmp eq i8 %65, 96, !dbg !2982
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.82, i64 0, i64 0), !dbg !2981
  br label %71, !dbg !2983

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2984
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !2985
  br label %71, !dbg !2986

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2806
  ret i8* %72, !dbg !2987
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #17

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !429 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !433 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2988 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %1, metadata !2993, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()) #14, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()) #14, !dbg !3009
  call void @llvm.dbg.value(metadata i64* null, metadata !3002, metadata !DIExpression()) #14, !dbg !3009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3003, metadata !DIExpression()) #14, !dbg !3009
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3011
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3004, metadata !DIExpression()) #14, !dbg !3009
  %6 = tail call i32* @__errno_location() #25, !dbg !3012
  %7 = load i32, i32* %6, align 4, !dbg !3012, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %7, metadata !3005, metadata !DIExpression()) #14, !dbg !3009
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3013
  %9 = load i32, i32* %8, align 4, !dbg !3013, !tbaa !2204
  %10 = or i32 %9, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %10, metadata !3006, metadata !DIExpression()) #14, !dbg !3009
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3015
  %12 = load i32, i32* %11, align 8, !dbg !3015, !tbaa !2153
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3016
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3017
  %15 = load i8*, i8** %14, align 8, !dbg !3017, !tbaa !2227
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3018
  %17 = load i8*, i8** %16, align 8, !dbg !3018, !tbaa !2230
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #14, !dbg !3019
  %19 = add i64 %18, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %19, metadata !3007, metadata !DIExpression()) #14, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %19, metadata !3021, metadata !DIExpression()) #14, !dbg !3026
  %20 = tail call noalias i8* @xmalloc(i64 %19) #14, !dbg !3028
  call void @llvm.dbg.value(metadata i8* %20, metadata !3008, metadata !DIExpression()) #14, !dbg !3009
  %21 = load i32, i32* %11, align 8, !dbg !3029, !tbaa !2153
  %22 = load i8*, i8** %14, align 8, !dbg !3030, !tbaa !2227
  %23 = load i8*, i8** %16, align 8, !dbg !3031, !tbaa !2230
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #14, !dbg !3032
  store i32 %7, i32* %6, align 4, !dbg !3033, !tbaa !1368
  ret i8* %20, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2997 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2996, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64* %2, metadata !3002, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3003, metadata !DIExpression()), !dbg !3035
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3036
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3036
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3004, metadata !DIExpression()), !dbg !3035
  %7 = tail call i32* @__errno_location() #25, !dbg !3037
  %8 = load i32, i32* %7, align 4, !dbg !3037, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %8, metadata !3005, metadata !DIExpression()), !dbg !3035
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3038
  %10 = load i32, i32* %9, align 4, !dbg !3038, !tbaa !2204
  %11 = icmp ne i64* %2, null, !dbg !3039
  %12 = xor i1 %11, true, !dbg !3039
  %13 = zext i1 %12 to i32, !dbg !3039
  %14 = or i32 %10, %13, !dbg !3040
  call void @llvm.dbg.value(metadata i32 %14, metadata !3006, metadata !DIExpression()), !dbg !3035
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3041
  %16 = load i32, i32* %15, align 8, !dbg !3041, !tbaa !2153
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3042
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3043
  %19 = load i8*, i8** %18, align 8, !dbg !3043, !tbaa !2227
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3044
  %21 = load i8*, i8** %20, align 8, !dbg !3044, !tbaa !2230
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3045
  %23 = add i64 %22, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %23, metadata !3007, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %23, metadata !3021, metadata !DIExpression()) #14, !dbg !3047
  %24 = tail call noalias i8* @xmalloc(i64 %23) #14, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %24, metadata !3008, metadata !DIExpression()), !dbg !3035
  %25 = load i32, i32* %15, align 8, !dbg !3050, !tbaa !2153
  %26 = load i8*, i8** %18, align 8, !dbg !3051, !tbaa !2227
  %27 = load i8*, i8** %20, align 8, !dbg !3052, !tbaa !2230
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3053
  store i32 %8, i32* %7, align 4, !dbg !3054, !tbaa !1368
  br i1 %11, label %29, label %30, !dbg !3055

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3056, !tbaa !1638
  br label %30, !dbg !3058

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3060 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !3064, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, metadata !3062, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 1, metadata !3063, metadata !DIExpression()), !dbg !3065
  %2 = load i32, i32* @nslots, align 4, !dbg !3066, !tbaa !1368
  %3 = icmp sgt i32 %2, 1, !dbg !3069
  br i1 %3, label %4, label %12, !dbg !3070

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3063, metadata !DIExpression()), !dbg !3065
  %6 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %5, i32 1, !dbg !3071
  %7 = load i8*, i8** %6, align 8, !dbg !3071, !tbaa !3072
  tail call void @free(i8* %7) #14, !dbg !3074
  %8 = add nuw nsw i64 %5, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %8, metadata !3063, metadata !DIExpression()), !dbg !3065
  %9 = load i32, i32* @nslots, align 4, !dbg !3066, !tbaa !1368
  %10 = sext i32 %9 to i64, !dbg !3069
  %11 = icmp slt i64 %8, %10, !dbg !3069
  br i1 %11, label %4, label %12, !dbg !3070, !llvm.loop !3076

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !3078
  %14 = load i8*, i8** %13, align 8, !dbg !3078, !tbaa !3072
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3080
  br i1 %15, label %17, label %16, !dbg !3081

16:                                               ; preds = %12
  tail call void @free(i8* %14) #14, !dbg !3082
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !3084, !tbaa !3085
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !3086, !tbaa !3072
  br label %17, !dbg !3087

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !3088
  br i1 %18, label %21, label %19, !dbg !3090

19:                                               ; preds = %17
  %20 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !3091
  tail call void @free(i8* %20) #14, !dbg !3093
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !3094, !tbaa !1289
  br label %21, !dbg !3095

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3096, !tbaa !1368
  ret void, !dbg !3097
}

; Function Attrs: nounwind
declare !dbg !406 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3098 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3100, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8* %1, metadata !3101, metadata !DIExpression()), !dbg !3102
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3103
  ret i8* %3, !dbg !3104
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3109, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8* %1, metadata !3110, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %2, metadata !3111, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3112, metadata !DIExpression()), !dbg !3124
  %5 = tail call i32* @__errno_location() #25, !dbg !3125
  %6 = load i32, i32* %5, align 4, !dbg !3125, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %6, metadata !3113, metadata !DIExpression()), !dbg !3124
  %7 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !3126, !tbaa !1289
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3114, metadata !DIExpression()), !dbg !3124
  %8 = icmp slt i32 %0, 0, !dbg !3127
  br i1 %8, label %9, label %10, !dbg !3129

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3130
  unreachable, !dbg !3130

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3131, !tbaa !1368
  %12 = icmp sgt i32 %11, %0, !dbg !3132
  br i1 %12, label %34, label %13, !dbg !3133

13:                                               ; preds = %10
  %14 = icmp eq %struct.tokenbuffer* %7, @slotvec0, !dbg !3134
  call void @llvm.dbg.value(metadata i1 %14, metadata !3115, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3118, metadata !DIExpression()), !dbg !3135
  %15 = icmp eq i32 %0, 2147483647, !dbg !3136
  br i1 %15, label %16, label %17, !dbg !3138

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3139
  unreachable, !dbg !3139

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.tokenbuffer* null, %struct.tokenbuffer* %7, !dbg !3140
  %19 = bitcast %struct.tokenbuffer* %18 to i8*, !dbg !3140
  %20 = add nuw nsw i32 %0, 1, !dbg !3141
  %21 = sext i32 %20 to i64, !dbg !3142
  %22 = shl nuw nsw i64 %21, 4, !dbg !3143
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #14, !dbg !3144
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, metadata !3114, metadata !DIExpression()), !dbg !3124
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !3145, !tbaa !1289
  br i1 %14, label %25, label %26, !dbg !3146

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i1 false), !dbg !3147, !tbaa.struct !3149
  br label %26, !dbg !3150

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3151, !tbaa !1368
  %28 = sext i32 %27 to i64, !dbg !3152
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !3152
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !3153
  %31 = sub nsw i32 %20, %27, !dbg !3154
  %32 = sext i32 %31 to i64, !dbg !3155
  %33 = shl nsw i64 %32, 4, !dbg !3156
  call void @llvm.dbg.value(metadata i8* %30, metadata !2554, metadata !DIExpression()) #14, !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()) #14, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %33, metadata !2561, metadata !DIExpression()) #14, !dbg !3157
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #14, !dbg !3159
  store i32 %20, i32* @nslots, align 4, !dbg !3160, !tbaa !1368
  br label %34, !dbg !3161

34:                                               ; preds = %10, %26
  %35 = phi %struct.tokenbuffer* [ %24, %26 ], [ %7, %10 ], !dbg !3124
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %35, metadata !3114, metadata !DIExpression()), !dbg !3124
  %36 = zext i32 %0 to i64, !dbg !3162
  %37 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 0, !dbg !3163
  %38 = load i64, i64* %37, align 8, !dbg !3163, !tbaa !3085
  call void @llvm.dbg.value(metadata i64 %38, metadata !3119, metadata !DIExpression()), !dbg !3164
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 1, !dbg !3165
  %40 = load i8*, i8** %39, align 8, !dbg !3165, !tbaa !3072
  call void @llvm.dbg.value(metadata i8* %40, metadata !3121, metadata !DIExpression()), !dbg !3164
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3166
  %42 = load i32, i32* %41, align 4, !dbg !3166, !tbaa !2204
  %43 = or i32 %42, 1, !dbg !3167
  call void @llvm.dbg.value(metadata i32 %43, metadata !3122, metadata !DIExpression()), !dbg !3164
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3168
  %45 = load i32, i32* %44, align 8, !dbg !3168, !tbaa !2153
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3169
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3170
  %48 = load i8*, i8** %47, align 8, !dbg !3170, !tbaa !2227
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3171
  %50 = load i8*, i8** %49, align 8, !dbg !3171, !tbaa !2230
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %51, metadata !3123, metadata !DIExpression()), !dbg !3164
  %52 = icmp ugt i64 %38, %51, !dbg !3173
  br i1 %52, label %63, label %53, !dbg !3175

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %54, metadata !3119, metadata !DIExpression()), !dbg !3164
  store i64 %54, i64* %37, align 8, !dbg !3178, !tbaa !3085
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3179
  br i1 %55, label %57, label %56, !dbg !3181

56:                                               ; preds = %53
  tail call void @free(i8* %40) #14, !dbg !3182
  br label %57, !dbg !3182

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3021, metadata !DIExpression()) #14, !dbg !3183
  %58 = tail call noalias i8* @xmalloc(i64 %54) #14, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %58, metadata !3121, metadata !DIExpression()), !dbg !3164
  store i8* %58, i8** %39, align 8, !dbg !3186, !tbaa !3072
  %59 = load i32, i32* %44, align 8, !dbg !3187, !tbaa !2153
  %60 = load i8*, i8** %47, align 8, !dbg !3188, !tbaa !2227
  %61 = load i8*, i8** %49, align 8, !dbg !3189, !tbaa !2230
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3190
  br label %63, !dbg !3191

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3164
  call void @llvm.dbg.value(metadata i8* %64, metadata !3121, metadata !DIExpression()), !dbg !3164
  store i32 %6, i32* %5, align 4, !dbg !3192, !tbaa !1368
  ret i8* %64, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %2, metadata !3200, metadata !DIExpression()), !dbg !3201
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3202
  ret i8* %4, !dbg !3203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3100, metadata !DIExpression()) #14, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3101, metadata !DIExpression()) #14, !dbg !3208
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !3210
  ret i8* %2, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3212 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()) #14, !dbg !3219
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()) #14, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %1, metadata !3200, metadata !DIExpression()) #14, !dbg !3219
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !3221
  ret i8* %3, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3223 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3225, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3227, metadata !DIExpression()), !dbg !3229
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3230
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i32 %1, metadata !3232, metadata !DIExpression()) #14, !dbg !3238
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3237, metadata !DIExpression()) #14, !dbg !3240
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !3240, !alias.scope !3241
  %6 = icmp eq i32 %1, 10, !dbg !3244
  br i1 %6, label %7, label %8, !dbg !3246

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3247, !noalias !3241
  unreachable, !dbg !3247

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3248
  store i32 %1, i32* %9, align 8, !dbg !3249, !tbaa !2153, !alias.scope !3241
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3251
  ret i8* %10, !dbg !3252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3253 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i32 %1, metadata !3258, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8* %2, metadata !3259, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %3, metadata !3260, metadata !DIExpression()), !dbg !3262
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3263
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3261, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 %1, metadata !3232, metadata !DIExpression()) #14, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3237, metadata !DIExpression()) #14, !dbg !3267
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #14, !dbg !3267, !alias.scope !3268
  %7 = icmp eq i32 %1, 10, !dbg !3271
  br i1 %7, label %8, label %9, !dbg !3272

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !3273, !noalias !3268
  unreachable, !dbg !3273

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3274
  store i32 %1, i32* %10, align 8, !dbg !3275, !tbaa !2153, !alias.scope !3268
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3277
  ret i8* %11, !dbg !3278
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3279 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3237, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3228, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3284, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 0, metadata !3225, metadata !DIExpression()) #14, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %0, metadata !3226, metadata !DIExpression()) #14, !dbg !3290
  call void @llvm.dbg.value(metadata i8* %1, metadata !3227, metadata !DIExpression()) #14, !dbg !3290
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %0, metadata !3232, metadata !DIExpression()) #14, !dbg !3292
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14, !dbg !3285, !alias.scope !3293
  %5 = icmp eq i32 %0, 10, !dbg !3296
  br i1 %5, label %6, label %7, !dbg !3297

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !3298, !noalias !3293
  unreachable, !dbg !3298

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3299
  store i32 %0, i32* %8, align 8, !dbg !3300, !tbaa !2153, !alias.scope !3293
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !3301
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3302
  ret i8* %9, !dbg !3303
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3304 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3237, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3261, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %0, metadata !3308, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3309, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %2, metadata !3310, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 0, metadata !3257, metadata !DIExpression()) #14, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %0, metadata !3258, metadata !DIExpression()) #14, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()) #14, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %2, metadata !3260, metadata !DIExpression()) #14, !dbg !3316
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3317
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %0, metadata !3232, metadata !DIExpression()) #14, !dbg !3318
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !3311, !alias.scope !3319
  %6 = icmp eq i32 %0, 10, !dbg !3322
  br i1 %6, label %7, label %8, !dbg !3323

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3324, !noalias !3319
  unreachable, !dbg !3324

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3325
  store i32 %0, i32* %9, align 8, !dbg !3326, !tbaa !2153, !alias.scope !3319
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #14, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3328
  ret i8* %10, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3330 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %2, metadata !3336, metadata !DIExpression()), !dbg !3338
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3339
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3341, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2171, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %2, metadata !2172, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i8 %2, metadata !2174, metadata !DIExpression()), !dbg !3343
  %6 = lshr i8 %2, 5, !dbg !3345
  %7 = zext i8 %6 to i64, !dbg !3345
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3346
  call void @llvm.dbg.value(metadata i32* %8, metadata !2175, metadata !DIExpression()), !dbg !3343
  %9 = and i8 %2, 31, !dbg !3347
  %10 = zext i8 %9 to i32, !dbg !3347
  call void @llvm.dbg.value(metadata i32 %10, metadata !2177, metadata !DIExpression()), !dbg !3343
  %11 = load i32, i32* %8, align 4, !dbg !3348, !tbaa !1368
  %12 = lshr i32 %11, %10, !dbg !3349
  %13 = and i32 %12, 1, !dbg !3350
  call void @llvm.dbg.value(metadata i32 %13, metadata !2178, metadata !DIExpression()), !dbg !3343
  %14 = xor i32 %13, 1, !dbg !3351
  %15 = shl i32 %14, %10, !dbg !3352
  %16 = xor i32 %15, %11, !dbg !3353
  store i32 %16, i32* %8, align 4, !dbg !3353, !tbaa !1368
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3355
  ret i8* %17, !dbg !3356
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3357 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3337, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8 %1, metadata !3362, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #14, !dbg !3366
  call void @llvm.dbg.value(metadata i64 -1, metadata !3335, metadata !DIExpression()) #14, !dbg !3366
  call void @llvm.dbg.value(metadata i8 %1, metadata !3336, metadata !DIExpression()) #14, !dbg !3366
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3368, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2171, metadata !DIExpression()) #14, !dbg !3369
  call void @llvm.dbg.value(metadata i8 %1, metadata !2172, metadata !DIExpression()) #14, !dbg !3369
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()) #14, !dbg !3369
  call void @llvm.dbg.value(metadata i8 %1, metadata !2174, metadata !DIExpression()) #14, !dbg !3369
  %5 = lshr i8 %1, 5, !dbg !3371
  %6 = zext i8 %5 to i64, !dbg !3371
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3372
  call void @llvm.dbg.value(metadata i32* %7, metadata !2175, metadata !DIExpression()) #14, !dbg !3369
  %8 = and i8 %1, 31, !dbg !3373
  %9 = zext i8 %8 to i32, !dbg !3373
  call void @llvm.dbg.value(metadata i32 %9, metadata !2177, metadata !DIExpression()) #14, !dbg !3369
  %10 = load i32, i32* %7, align 4, !dbg !3374, !tbaa !1368
  %11 = lshr i32 %10, %9, !dbg !3375
  %12 = and i32 %11, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i32 %12, metadata !2178, metadata !DIExpression()) #14, !dbg !3369
  %13 = xor i32 %12, 1, !dbg !3377
  %14 = shl i32 %13, %9, !dbg !3378
  %15 = xor i32 %14, %10, !dbg !3379
  store i32 %15, i32* %7, align 4, !dbg !3379, !tbaa !1368
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !3380
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3381
  ret i8* %16, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3383 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3337, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %0, metadata !3385, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()) #14, !dbg !3390
  call void @llvm.dbg.value(metadata i8 58, metadata !3362, metadata !DIExpression()) #14, !dbg !3390
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #14, !dbg !3391
  call void @llvm.dbg.value(metadata i64 -1, metadata !3335, metadata !DIExpression()) #14, !dbg !3391
  call void @llvm.dbg.value(metadata i8 58, metadata !3336, metadata !DIExpression()) #14, !dbg !3391
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3392
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #14, !dbg !3392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3393, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2171, metadata !DIExpression()) #14, !dbg !3394
  call void @llvm.dbg.value(metadata i8 58, metadata !2172, metadata !DIExpression()) #14, !dbg !3394
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()) #14, !dbg !3394
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()) #14, !dbg !3394
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3396
  call void @llvm.dbg.value(metadata i32* %4, metadata !2175, metadata !DIExpression()) #14, !dbg !3394
  call void @llvm.dbg.value(metadata i32 26, metadata !2177, metadata !DIExpression()) #14, !dbg !3394
  %5 = load i32, i32* %4, align 4, !dbg !3397, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %5, metadata !2178, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !3394
  %6 = or i32 %5, 67108864, !dbg !3398
  store i32 %6, i32* %4, align 4, !dbg !3398, !tbaa !1368
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #14, !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #14, !dbg !3400
  ret i8* %7, !dbg !3401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3402 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3337, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i8* %0, metadata !3404, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i64 %1, metadata !3405, metadata !DIExpression()), !dbg !3408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3334, metadata !DIExpression()) #14, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3335, metadata !DIExpression()) #14, !dbg !3409
  call void @llvm.dbg.value(metadata i8 58, metadata !3336, metadata !DIExpression()) #14, !dbg !3409
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3410
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3411, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2171, metadata !DIExpression()) #14, !dbg !3412
  call void @llvm.dbg.value(metadata i8 58, metadata !2172, metadata !DIExpression()) #14, !dbg !3412
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()) #14, !dbg !3412
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()) #14, !dbg !3412
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3414
  call void @llvm.dbg.value(metadata i32* %5, metadata !2175, metadata !DIExpression()) #14, !dbg !3412
  call void @llvm.dbg.value(metadata i32 26, metadata !2177, metadata !DIExpression()) #14, !dbg !3412
  %6 = load i32, i32* %5, align 4, !dbg !3415, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %6, metadata !2178, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !3412
  %7 = or i32 %6, 67108864, !dbg !3416
  store i32 %7, i32* %5, align 4, !dbg !3416, !tbaa !1368
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #14, !dbg !3417
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !3418
  ret i8* %8, !dbg !3419
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3420 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3237, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3426
  call void @llvm.dbg.value(metadata i32 %0, metadata !3422, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 %1, metadata !3423, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8* %2, metadata !3424, metadata !DIExpression()), !dbg !3428
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3429
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3425, metadata !DIExpression()), !dbg !3430
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3431
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3431
  call void @llvm.dbg.value(metadata i32 %1, metadata !3232, metadata !DIExpression()) #14, !dbg !3432
  call void @llvm.dbg.value(metadata i32 0, metadata !3237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3432
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3426, !alias.scope !3433
  %8 = icmp eq i32 %1, 10, !dbg !3436
  br i1 %8, label %9, label %10, !dbg !3437

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !3438, !noalias !3433
  unreachable, !dbg !3438

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3237, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3432
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3431
  store i32 %1, i32* %11, align 8, !dbg !3431, !tbaa.struct !3342
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3431
  %13 = bitcast i32* %12 to i8*, !dbg !3431
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3431, !tbaa.struct !3342
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2171, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8 58, metadata !2172, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 1, metadata !2173, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i8 58, metadata !2174, metadata !DIExpression()), !dbg !3439
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3441
  call void @llvm.dbg.value(metadata i32* %14, metadata !2175, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 26, metadata !2177, metadata !DIExpression()), !dbg !3439
  %15 = load i32, i32* %14, align 4, !dbg !3442, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %15, metadata !2178, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3439
  %16 = or i32 %15, 67108864, !dbg !3443
  store i32 %16, i32* %14, align 4, !dbg !3443, !tbaa !1368
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3445
  ret i8* %17, !dbg !3446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3447 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3455, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %0, metadata !3451, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %1, metadata !3452, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %2, metadata !3453, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %3, metadata !3454, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()) #14, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %1, metadata !3461, metadata !DIExpression()) #14, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %2, metadata !3462, metadata !DIExpression()) #14, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %3, metadata !3463, metadata !DIExpression()) #14, !dbg !3468
  call void @llvm.dbg.value(metadata i64 -1, metadata !3464, metadata !DIExpression()) #14, !dbg !3468
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3469
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3469
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3470, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #14, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()) #14, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %2, metadata !2213, metadata !DIExpression()) #14, !dbg !3471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #14, !dbg !3471
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3473
  store i32 10, i32* %7, align 8, !dbg !3474, !tbaa !2153
  %8 = icmp ne i8* %1, null, !dbg !3475
  %9 = icmp ne i8* %2, null, !dbg !3476
  %10 = and i1 %8, %9, !dbg !3477
  br i1 %10, label %12, label %11, !dbg !3477

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3478
  unreachable, !dbg !3478

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3479
  store i8* %1, i8** %13, align 8, !dbg !3480, !tbaa !2227
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3481
  store i8* %2, i8** %14, align 8, !dbg !3482, !tbaa !2230
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #14, !dbg !3483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3484
  ret i8* %15, !dbg !3485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3456 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3460, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %1, metadata !3461, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %2, metadata !3462, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8* %3, metadata !3463, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %4, metadata !3464, metadata !DIExpression()), !dbg !3486
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3487
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3455, metadata !DIExpression()), !dbg !3488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3489, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2211, metadata !DIExpression()) #14, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()) #14, !dbg !3490
  call void @llvm.dbg.value(metadata i8* %2, metadata !2213, metadata !DIExpression()) #14, !dbg !3490
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2211, metadata !DIExpression()) #14, !dbg !3490
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3492
  store i32 10, i32* %8, align 8, !dbg !3493, !tbaa !2153
  %9 = icmp ne i8* %1, null, !dbg !3494
  %10 = icmp ne i8* %2, null, !dbg !3495
  %11 = and i1 %9, %10, !dbg !3496
  br i1 %11, label %13, label %12, !dbg !3496

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !3497
  unreachable, !dbg !3497

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3498
  store i8* %1, i8** %14, align 8, !dbg !3499, !tbaa !2227
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3500
  store i8* %2, i8** %15, align 8, !dbg !3501, !tbaa !2230
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3502
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #14, !dbg !3503
  ret i8* %16, !dbg !3504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3505 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3455, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3509, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %1, metadata !3510, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %2, metadata !3511, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()) #14, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %0, metadata !3452, metadata !DIExpression()) #14, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %1, metadata !3453, metadata !DIExpression()) #14, !dbg !3516
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()) #14, !dbg !3516
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()) #14, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %0, metadata !3461, metadata !DIExpression()) #14, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %1, metadata !3462, metadata !DIExpression()) #14, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %2, metadata !3463, metadata !DIExpression()) #14, !dbg !3517
  call void @llvm.dbg.value(metadata i64 -1, metadata !3464, metadata !DIExpression()) #14, !dbg !3517
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3519, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2211, metadata !DIExpression()) #14, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #14, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %1, metadata !2213, metadata !DIExpression()) #14, !dbg !3520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2211, metadata !DIExpression()) #14, !dbg !3520
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3522
  store i32 10, i32* %6, align 8, !dbg !3523, !tbaa !2153
  %7 = icmp ne i8* %0, null, !dbg !3524
  %8 = icmp ne i8* %1, null, !dbg !3525
  %9 = and i1 %7, %8, !dbg !3526
  br i1 %9, label %11, label %10, !dbg !3526

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3527
  unreachable, !dbg !3527

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3528
  store i8* %0, i8** %12, align 8, !dbg !3529, !tbaa !2227
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3530
  store i8* %1, i8** %13, align 8, !dbg !3531, !tbaa !2230
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #14, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !3533
  ret i8* %14, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3535 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3455, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %0, metadata !3539, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %1, metadata !3540, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %2, metadata !3541, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %3, metadata !3542, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()) #14, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3461, metadata !DIExpression()) #14, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %1, metadata !3462, metadata !DIExpression()) #14, !dbg !3546
  call void @llvm.dbg.value(metadata i8* %2, metadata !3463, metadata !DIExpression()) #14, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %3, metadata !3464, metadata !DIExpression()) #14, !dbg !3546
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !3548, !tbaa.struct !3342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #14, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !2212, metadata !DIExpression()) #14, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %1, metadata !2213, metadata !DIExpression()) #14, !dbg !3549
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2211, metadata !DIExpression()) #14, !dbg !3549
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3551
  store i32 10, i32* %7, align 8, !dbg !3552, !tbaa !2153
  %8 = icmp ne i8* %0, null, !dbg !3553
  %9 = icmp ne i8* %1, null, !dbg !3554
  %10 = and i1 %8, %9, !dbg !3555
  br i1 %10, label %12, label %11, !dbg !3555

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3556
  unreachable, !dbg !3556

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3557
  store i8* %0, i8** %13, align 8, !dbg !3558, !tbaa !2227
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3559
  store i8* %1, i8** %14, align 8, !dbg !3560, !tbaa !2230
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #14, !dbg !3561
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3562
  ret i8* %15, !dbg !3563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8* %1, metadata !3569, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i64 %2, metadata !3570, metadata !DIExpression()), !dbg !3571
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3572
  ret i8* %4, !dbg !3573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i64 %1, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 0, metadata !3568, metadata !DIExpression()) #14, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %0, metadata !3569, metadata !DIExpression()) #14, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %1, metadata !3570, metadata !DIExpression()) #14, !dbg !3581
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3583
  ret i8* %3, !dbg !3584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3589, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i8* %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()) #14, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %1, metadata !3569, metadata !DIExpression()) #14, !dbg !3592
  call void @llvm.dbg.value(metadata i64 -1, metadata !3570, metadata !DIExpression()) #14, !dbg !3592
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3594
  ret i8* %3, !dbg !3595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3596 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()) #14, !dbg !3600
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()) #14, !dbg !3600
  call void @llvm.dbg.value(metadata i32 0, metadata !3568, metadata !DIExpression()) #14, !dbg !3602
  call void @llvm.dbg.value(metadata i8* %0, metadata !3569, metadata !DIExpression()) #14, !dbg !3602
  call void @llvm.dbg.value(metadata i64 -1, metadata !3570, metadata !DIExpression()) #14, !dbg !3602
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3604
  ret i8* %2, !dbg !3605
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @init_tokenbuffer(%struct.tokenbuffer* nocapture %0) local_unnamed_addr #11 !dbg !3606 {
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, metadata !3616, metadata !DIExpression()), !dbg !3617
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3618
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !3619
  ret void, !dbg !3618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtoken(%struct._IO_FILE* %0, i8* nocapture readonly %1, i64 %2, %struct.tokenbuffer* nocapture %3) local_unnamed_addr #8 !dbg !3620 {
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3658, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %1, metadata !3659, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %2, metadata !3660, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !3661, metadata !DIExpression()), !dbg !3673
  %6 = bitcast [4 x i64]* %5 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #14, !dbg !3674
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3666, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata i8* %6, metadata !3676, metadata !DIExpression()) #14, !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3679, metadata !DIExpression()) #14, !dbg !3681
  call void @llvm.dbg.value(metadata i64 32, metadata !3680, metadata !DIExpression()) #14, !dbg !3681
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false) #14, !dbg !3683
  call void @llvm.dbg.value(metadata i64 0, metadata !3664, metadata !DIExpression()), !dbg !3673
  %7 = icmp eq i64 %2, 0, !dbg !3684
  br i1 %7, label %51, label %8, !dbg !3685

8:                                                ; preds = %4
  %9 = and i64 %2, 1, !dbg !3685
  %10 = icmp eq i64 %2, 1, !dbg !3685
  br i1 %10, label %38, label %11, !dbg !3685

11:                                               ; preds = %8
  %12 = sub i64 %2, %9, !dbg !3685
  br label %13, !dbg !3685

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %35, %13 ]
  %15 = phi i64 [ %12, %11 ], [ %36, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3664, metadata !DIExpression()), !dbg !3673
  %16 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !3686
  %17 = load i8, i8* %16, align 1, !dbg !3686, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %17, metadata !3669, metadata !DIExpression()), !dbg !3687
  %18 = zext i8 %17 to i64, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %18, metadata !3689, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 1, metadata !3696, metadata !DIExpression()), !dbg !3697
  %19 = and i64 %18, 63, !dbg !3699
  %20 = shl nuw i64 1, %19, !dbg !3700
  %21 = lshr i64 %18, 6, !dbg !3701
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %21, !dbg !3702
  %23 = load i64, i64* %22, align 8, !dbg !3703, !tbaa !1638
  %24 = or i64 %20, %23, !dbg !3703
  store i64 %24, i64* %22, align 8, !dbg !3703, !tbaa !1638
  %25 = or i64 %14, 1, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %25, metadata !3664, metadata !DIExpression()), !dbg !3673
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !3686
  %27 = load i8, i8* %26, align 1, !dbg !3686, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %27, metadata !3669, metadata !DIExpression()), !dbg !3687
  %28 = zext i8 %27 to i64, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %28, metadata !3689, metadata !DIExpression()), !dbg !3697
  %29 = and i64 %28, 63, !dbg !3699
  %30 = shl nuw i64 1, %29, !dbg !3700
  %31 = lshr i64 %28, 6, !dbg !3701
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %31, !dbg !3702
  %33 = load i64, i64* %32, align 8, !dbg !3703, !tbaa !1638
  %34 = or i64 %30, %33, !dbg !3703
  store i64 %34, i64* %32, align 8, !dbg !3703, !tbaa !1638
  %35 = add nuw i64 %14, 2, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %35, metadata !3664, metadata !DIExpression()), !dbg !3673
  %36 = add i64 %15, -2, !dbg !3685
  %37 = icmp eq i64 %36, 0, !dbg !3685
  br i1 %37, label %38, label %13, !dbg !3685, !llvm.loop !3705

38:                                               ; preds = %13, %8
  %39 = phi i64 [ 0, %8 ], [ %35, %13 ]
  %40 = icmp eq i64 %9, 0, !dbg !3685
  br i1 %40, label %51, label %41, !dbg !3685

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i64 %39, metadata !3664, metadata !DIExpression()), !dbg !3673
  %42 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !3686
  %43 = load i8, i8* %42, align 1, !dbg !3686, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %43, metadata !3669, metadata !DIExpression()), !dbg !3687
  %44 = zext i8 %43 to i64, !dbg !3688
  call void @llvm.dbg.value(metadata i64 %44, metadata !3689, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 1, metadata !3696, metadata !DIExpression()), !dbg !3697
  %45 = and i64 %44, 63, !dbg !3699
  %46 = shl nuw i64 1, %45, !dbg !3700
  %47 = lshr i64 %44, 6, !dbg !3701
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47, !dbg !3702
  %49 = load i64, i64* %48, align 8, !dbg !3703, !tbaa !1638
  %50 = or i64 %46, %49, !dbg !3703
  store i64 %50, i64* %48, align 8, !dbg !3703, !tbaa !1638
  call void @llvm.dbg.value(metadata i64 %39, metadata !3664, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3673
  br label %51, !dbg !3707

51:                                               ; preds = %41, %38, %4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3713, metadata !DIExpression()) #14, !dbg !3716
  %52 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3707
  %53 = load i8*, i8** %52, align 8, !dbg !3707, !tbaa !3717
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3707
  %55 = load i8*, i8** %54, align 8, !dbg !3707, !tbaa !3719
  %56 = icmp ult i8* %53, %55, !dbg !3707
  br i1 %56, label %57, label %61, !dbg !3707, !prof !3720, !misexpect !3721

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3707
  store i8* %58, i8** %52, align 8, !dbg !3707, !tbaa !3717
  %59 = load i8, i8* %53, align 1, !dbg !3707, !tbaa !2353
  %60 = zext i8 %59 to i32, !dbg !3707
  call void @llvm.dbg.value(metadata i32 %62, metadata !3663, metadata !DIExpression()), !dbg !3673
  br label %64, !dbg !3722

61:                                               ; preds = %51
  %62 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #14, !dbg !3707
  call void @llvm.dbg.value(metadata i32 %62, metadata !3663, metadata !DIExpression()), !dbg !3673
  %63 = icmp sgt i32 %62, -1, !dbg !3724
  br i1 %63, label %64, label %150, !dbg !3722

64:                                               ; preds = %57, %61
  %65 = phi i32 [ %62, %61 ], [ %60, %57 ]
  br label %66, !dbg !3725

66:                                               ; preds = %64, %86
  %67 = phi i32 [ %87, %86 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  %68 = zext i32 %67 to i64, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %68, metadata !3727, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3734, metadata !DIExpression()), !dbg !3735
  %69 = lshr i64 %68, 6, !dbg !3737
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %69, !dbg !3738
  %71 = load i64, i64* %70, align 8, !dbg !3738, !tbaa !1638
  %72 = and i64 %68, 63, !dbg !3739
  %73 = shl nuw i64 1, %72, !dbg !3738
  %74 = and i64 %71, %73, !dbg !3738
  %75 = icmp eq i64 %74, 0, !dbg !3738
  br i1 %75, label %89, label %76, !dbg !3725

76:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3713, metadata !DIExpression()) #14, !dbg !3740
  %77 = load i8*, i8** %52, align 8, !dbg !3742, !tbaa !3717
  %78 = load i8*, i8** %54, align 8, !dbg !3742, !tbaa !3719
  %79 = icmp ult i8* %77, %78, !dbg !3742
  br i1 %79, label %82, label %80, !dbg !3742, !prof !3720, !misexpect !3721

80:                                               ; preds = %76
  %81 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #14, !dbg !3742
  br label %86, !dbg !3742

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !3742
  store i8* %83, i8** %52, align 8, !dbg !3742, !tbaa !3717
  %84 = load i8, i8* %77, align 1, !dbg !3742, !tbaa !2353
  %85 = zext i8 %84 to i32, !dbg !3742
  br label %86, !dbg !3742

86:                                               ; preds = %80, %82
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !3742
  call void @llvm.dbg.value(metadata i32 %87, metadata !3663, metadata !DIExpression()), !dbg !3673
  %88 = icmp sgt i32 %87, -1, !dbg !3724
  br i1 %88, label %66, label %150, !dbg !3722, !llvm.loop !3743

89:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  %90 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3745
  call void @llvm.dbg.value(metadata i8* undef, metadata !3662, metadata !DIExpression()), !dbg !3673
  %91 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3746
  call void @llvm.dbg.value(metadata i64 undef, metadata !3665, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 0, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %67, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* undef, metadata !3662, metadata !DIExpression()), !dbg !3673
  %92 = load i64, i64* %91, align 8, !dbg !3746, !tbaa !3747
  call void @llvm.dbg.value(metadata i64 %92, metadata !3665, metadata !DIExpression()), !dbg !3673
  %93 = load i8*, i8** %90, align 8, !dbg !3745, !tbaa !1436
  call void @llvm.dbg.value(metadata i8* %93, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %93, metadata !3662, metadata !DIExpression()), !dbg !3673
  br label %94, !dbg !3748

94:                                               ; preds = %89, %143
  %95 = phi i1 [ %145, %143 ], [ false, %89 ]
  %96 = phi i64 [ %132, %143 ], [ 0, %89 ]
  %97 = phi i32 [ %144, %143 ], [ %67, %89 ]
  %98 = phi i8* [ %120, %143 ], [ %93, %89 ]
  %99 = phi i64 [ %119, %143 ], [ %92, %89 ]
  call void @llvm.dbg.value(metadata i64 %96, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %97, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %98, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %99, metadata !3665, metadata !DIExpression()), !dbg !3673
  %100 = icmp eq i64 %96, %99, !dbg !3750
  br i1 %100, label %101, label %118, !dbg !3754

101:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %98, metadata !596, metadata !DIExpression()) #14, !dbg !3755
  call void @llvm.dbg.value(metadata i64 1, metadata !598, metadata !DIExpression()) #14, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %99, metadata !599, metadata !DIExpression()) #14, !dbg !3755
  %102 = icmp eq i8* %98, null, !dbg !3757
  br i1 %102, label %103, label %108, !dbg !3759

103:                                              ; preds = %101
  %104 = icmp eq i64 %96, 0, !dbg !3760
  br i1 %104, label %115, label %105, !dbg !3763

105:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 %99, metadata !599, metadata !DIExpression()) #14, !dbg !3755
  %106 = icmp slt i64 %96, 0, !dbg !3764
  br i1 %106, label %107, label %115, !dbg !3766

107:                                              ; preds = %105
  tail call void @xalloc_die() #23, !dbg !3767
  unreachable, !dbg !3767

108:                                              ; preds = %101
  %109 = icmp ult i64 %96, 6148914691236517204, !dbg !3768
  br i1 %109, label %111, label %110, !dbg !3771

110:                                              ; preds = %108
  tail call void @xalloc_die() #23, !dbg !3772
  unreachable, !dbg !3772

111:                                              ; preds = %108
  %112 = lshr i64 %96, 1, !dbg !3773
  %113 = add nuw nsw i64 %96, 1, !dbg !3774
  %114 = add nuw nsw i64 %113, %112, !dbg !3775
  call void @llvm.dbg.value(metadata i64 %114, metadata !599, metadata !DIExpression()) #14, !dbg !3755
  br label %115

115:                                              ; preds = %103, %105, %111
  %116 = phi i64 [ %114, %111 ], [ %96, %105 ], [ 128, %103 ], !dbg !3755
  call void @llvm.dbg.value(metadata i64 %116, metadata !599, metadata !DIExpression()) #14, !dbg !3755
  %117 = tail call i8* @xrealloc(i8* %98, i64 %116) #14, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %117, metadata !3662, metadata !DIExpression()), !dbg !3673
  br label %118, !dbg !3777

118:                                              ; preds = %115, %94
  %119 = phi i64 [ %116, %115 ], [ %99, %94 ], !dbg !3673
  %120 = phi i8* [ %117, %115 ], [ %98, %94 ], !dbg !3673
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  br i1 %95, label %148, label %121, !dbg !3778

121:                                              ; preds = %118
  %122 = zext i32 %97 to i64, !dbg !3779
  call void @llvm.dbg.value(metadata i64 %122, metadata !3727, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3734, metadata !DIExpression()), !dbg !3781
  %123 = lshr i64 %122, 6, !dbg !3783
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %123, !dbg !3784
  %125 = load i64, i64* %124, align 8, !dbg !3784, !tbaa !1638
  %126 = and i64 %122, 63, !dbg !3785
  %127 = shl nuw i64 1, %126, !dbg !3784
  %128 = and i64 %125, %127, !dbg !3784
  %129 = icmp eq i64 %128, 0, !dbg !3784
  br i1 %129, label %130, label %148, !dbg !3786

130:                                              ; preds = %121
  %131 = trunc i32 %97 to i8, !dbg !3787
  %132 = add i64 %96, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %132, metadata !3664, metadata !DIExpression()), !dbg !3673
  %133 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3789
  store i8 %131, i8* %133, align 1, !dbg !3790, !tbaa !2353
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3713, metadata !DIExpression()) #14, !dbg !3791
  %134 = load i8*, i8** %52, align 8, !dbg !3793, !tbaa !3717
  %135 = load i8*, i8** %54, align 8, !dbg !3793, !tbaa !3719
  %136 = icmp ult i8* %134, %135, !dbg !3793
  br i1 %136, label %139, label %137, !dbg !3793, !prof !3720, !misexpect !3721

137:                                              ; preds = %130
  %138 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #14, !dbg !3793
  br label %143, !dbg !3793

139:                                              ; preds = %130
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3793
  store i8* %140, i8** %52, align 8, !dbg !3793, !tbaa !3717
  %141 = load i8, i8* %134, align 1, !dbg !3793, !tbaa !2353
  %142 = zext i8 %141 to i32, !dbg !3793
  br label %143, !dbg !3793

143:                                              ; preds = %137, %139
  %144 = phi i32 [ %138, %137 ], [ %142, %139 ], !dbg !3793
  call void @llvm.dbg.value(metadata i64 %132, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 %144, metadata !3663, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  %145 = icmp slt i32 %144, 0, !dbg !3794
  %146 = icmp eq i64 %132, 0, !dbg !3796
  %147 = and i1 %145, %146, !dbg !3797
  br i1 %147, label %150, label %94, !dbg !3797, !llvm.loop !3798

148:                                              ; preds = %121, %118
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %96, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %96, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %120, metadata !3662, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %96, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i64 %96, metadata !3664, metadata !DIExpression()), !dbg !3673
  %149 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3800
  store i8 0, i8* %149, align 1, !dbg !3800, !tbaa !2353
  store i8* %120, i8** %90, align 8, !dbg !3801, !tbaa !1436
  call void @llvm.dbg.value(metadata i64 %119, metadata !3665, metadata !DIExpression()), !dbg !3673
  store i64 %119, i64* %91, align 8, !dbg !3802, !tbaa !3747
  br label %150, !dbg !3803

150:                                              ; preds = %86, %143, %61, %148
  %151 = phi i64 [ %96, %148 ], [ -1, %61 ], [ -1, %143 ], [ -1, %86 ], !dbg !3673
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #14, !dbg !3804
  ret i64 %151, !dbg !3804
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtokens(%struct._IO_FILE* %0, i64 %1, i8* nocapture readonly %2, i64 %3, i8*** nocapture %4, i64** %5) local_unnamed_addr #8 !dbg !3805 {
  %7 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3811, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %1, metadata !3812, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8* %2, metadata !3813, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %3, metadata !3814, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8*** %4, metadata !3815, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64** %5, metadata !3816, metadata !DIExpression()), !dbg !3828
  %8 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #14, !dbg !3829
  call void @llvm.dbg.declare(metadata %struct.tokenbuffer* %7, metadata !3817, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3818, metadata !DIExpression()), !dbg !3828
  %9 = icmp eq i64 %1, 0, !dbg !3831
  %10 = add i64 %1, 1, !dbg !3833
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %11, metadata !3812, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %11, metadata !3821, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %11, metadata !3834, metadata !DIExpression()) #14, !dbg !3840
  call void @llvm.dbg.value(metadata i64 8, metadata !3839, metadata !DIExpression()) #14, !dbg !3840
  %12 = icmp ugt i64 %11, 1152921504606846975, !dbg !3842
  br i1 %12, label %13, label %14, !dbg !3844

13:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3845
  unreachable, !dbg !3845

14:                                               ; preds = %6
  %15 = shl nuw nsw i64 %11, 3, !dbg !3846
  %16 = tail call noalias i8* @xmalloc(i64 %15) #14, !dbg !3847
  %17 = bitcast i8* %16 to i8**, !dbg !3848
  call void @llvm.dbg.value(metadata i8** %17, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %11, metadata !3821, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %11, metadata !3834, metadata !DIExpression()) #14, !dbg !3849
  call void @llvm.dbg.value(metadata i64 8, metadata !3839, metadata !DIExpression()) #14, !dbg !3849
  %18 = tail call noalias i8* @xmalloc(i64 %15) #14, !dbg !3851
  %19 = bitcast i8* %18 to i64*, !dbg !3852
  call void @llvm.dbg.value(metadata i64* %19, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 0, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3616, metadata !DIExpression()) #14, !dbg !3853
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false) #14, !dbg !3855
  %20 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %7, i64 0, i32 1, !dbg !3856
  br label %21, !dbg !3857

21:                                               ; preds = %63, %14
  %22 = phi i64 [ %11, %14 ], [ %55, %63 ], !dbg !3858
  %23 = phi i64* [ %19, %14 ], [ %56, %63 ], !dbg !3828
  %24 = phi i64 [ 0, %14 ], [ %68, %63 ], !dbg !3859
  %25 = phi i8** [ %17, %14 ], [ %57, %63 ], !dbg !3828
  call void @llvm.dbg.value(metadata i8** %25, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %23, metadata !3820, metadata !DIExpression()), !dbg !3828
  %26 = call i64 @readtoken(%struct._IO_FILE* %0, i8* %2, i64 %3, %struct.tokenbuffer* nonnull %7), !dbg !3860
  call void @llvm.dbg.value(metadata i64 %26, metadata !3827, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i64 %22, metadata !3821, metadata !DIExpression()), !dbg !3828
  %27 = icmp ult i64 %24, %22, !dbg !3861
  br i1 %27, label %54, label %28, !dbg !3863

28:                                               ; preds = %21
  %29 = bitcast i8** %25 to i8*, !dbg !3864
  call void @llvm.dbg.value(metadata i8* %29, metadata !596, metadata !DIExpression()) #14, !dbg !3866
  call void @llvm.dbg.value(metadata i64 8, metadata !598, metadata !DIExpression()) #14, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %22, metadata !599, metadata !DIExpression()) #14, !dbg !3866
  %30 = icmp eq i8** %25, null, !dbg !3868
  br i1 %30, label %31, label %36, !dbg !3869

31:                                               ; preds = %28
  %32 = icmp eq i64 %22, 0, !dbg !3870
  br i1 %32, label %46, label %33, !dbg !3871

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %22, metadata !599, metadata !DIExpression()) #14, !dbg !3866
  %34 = icmp ugt i64 %22, 1152921504606846975, !dbg !3872
  br i1 %34, label %35, label %43, !dbg !3873

35:                                               ; preds = %33
  tail call void @xalloc_die() #23, !dbg !3874
  unreachable, !dbg !3874

36:                                               ; preds = %28
  %37 = icmp ult i64 %22, 768614336404564650, !dbg !3875
  br i1 %37, label %39, label %38, !dbg !3876

38:                                               ; preds = %36
  tail call void @xalloc_die() #23, !dbg !3877
  unreachable, !dbg !3877

39:                                               ; preds = %36
  %40 = lshr i64 %22, 1, !dbg !3878
  %41 = add nuw nsw i64 %22, 1, !dbg !3879
  %42 = add nuw nsw i64 %41, %40, !dbg !3880
  call void @llvm.dbg.value(metadata i64 %42, metadata !599, metadata !DIExpression()) #14, !dbg !3866
  br label %43

43:                                               ; preds = %33, %39
  %44 = phi i64 [ %42, %39 ], [ %22, %33 ], !dbg !3866
  call void @llvm.dbg.value(metadata i64 %44, metadata !599, metadata !DIExpression()) #14, !dbg !3866
  %45 = shl nuw nsw i64 %44, 3, !dbg !3881
  call void @llvm.dbg.value(metadata i8* %49, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %44, metadata !3821, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %23, metadata !3882, metadata !DIExpression()) #14, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %44, metadata !3887, metadata !DIExpression()) #14, !dbg !3889
  call void @llvm.dbg.value(metadata i64 8, metadata !3888, metadata !DIExpression()) #14, !dbg !3889
  br label %46, !dbg !3891

46:                                               ; preds = %31, %43
  %47 = phi i64 [ %45, %43 ], [ 128, %31 ]
  %48 = phi i64 [ %44, %43 ], [ 16, %31 ]
  %49 = tail call i8* @xrealloc(i8* %29, i64 %47) #14, !dbg !3892
  %50 = bitcast i8* %49 to i8**, !dbg !3893
  %51 = bitcast i64* %23 to i8*, !dbg !3894
  %52 = tail call i8* @xrealloc(i8* %51, i64 %47) #14, !dbg !3895
  %53 = bitcast i8* %52 to i64*, !dbg !3896
  call void @llvm.dbg.value(metadata i64* %53, metadata !3820, metadata !DIExpression()), !dbg !3828
  br label %54, !dbg !3897

54:                                               ; preds = %21, %46
  %55 = phi i64 [ %22, %21 ], [ %48, %46 ], !dbg !3828
  %56 = phi i64* [ %23, %21 ], [ %53, %46 ], !dbg !3828
  %57 = phi i8** [ %25, %21 ], [ %50, %46 ], !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  %58 = icmp eq i64 %26, -1, !dbg !3898
  br i1 %58, label %69, label %59, !dbg !3900

59:                                               ; preds = %54
  %60 = add nuw i64 %26, 1, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %60, metadata !3834, metadata !DIExpression()) #14, !dbg !3902
  call void @llvm.dbg.value(metadata i64 1, metadata !3839, metadata !DIExpression()) #14, !dbg !3902
  %61 = icmp ugt i64 %26, 9223372036854775806, !dbg !3904
  br i1 %61, label %62, label %63, !dbg !3905

62:                                               ; preds = %59
  tail call void @xalloc_die() #23, !dbg !3906
  unreachable, !dbg !3906

63:                                               ; preds = %59
  %64 = tail call noalias i8* @xmalloc(i64 %60) #14, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %64, metadata !3823, metadata !DIExpression()), !dbg !3856
  %65 = getelementptr inbounds i64, i64* %56, i64 %24, !dbg !3908
  store i64 %26, i64* %65, align 8, !dbg !3909, !tbaa !1638
  %66 = load i8*, i8** %20, align 8, !dbg !3910, !tbaa !1436
  call void @llvm.dbg.value(metadata i8* %64, metadata !3911, metadata !DIExpression()) #14, !dbg !3920
  call void @llvm.dbg.value(metadata i8* %66, metadata !3918, metadata !DIExpression()) #14, !dbg !3920
  call void @llvm.dbg.value(metadata i64 %60, metadata !3919, metadata !DIExpression()) #14, !dbg !3920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %64, i8* nonnull align 1 %66, i64 %60, i1 false) #14, !dbg !3922
  %67 = getelementptr inbounds i8*, i8** %57, i64 %24, !dbg !3923
  store i8* %64, i8** %67, align 8, !dbg !3924, !tbaa !1289
  %68 = add i64 %24, 1, !dbg !3925
  call void @llvm.dbg.value(metadata i64 %68, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %68, metadata !3822, metadata !DIExpression()), !dbg !3828
  br label %21

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64* %56, metadata !3820, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i8** %57, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %24, metadata !3822, metadata !DIExpression()), !dbg !3828
  %70 = getelementptr inbounds i8*, i8** %57, i64 %24, !dbg !3926
  store i8* null, i8** %70, align 8, !dbg !3928, !tbaa !1289
  %71 = getelementptr inbounds i64, i64* %56, i64 %24, !dbg !3929
  store i64 0, i64* %71, align 8, !dbg !3930, !tbaa !1638
  call void @llvm.dbg.value(metadata i64 %68, metadata !3822, metadata !DIExpression()), !dbg !3828
  %72 = load i8*, i8** %20, align 8, !dbg !3931, !tbaa !1436
  tail call void @free(i8* %72) #14, !dbg !3932
  store i8** %57, i8*** %4, align 8, !dbg !3933, !tbaa !1289
  %73 = icmp eq i64** %5, null, !dbg !3934
  br i1 %73, label %75, label %74, !dbg !3936

74:                                               ; preds = %69
  store i64* %56, i64** %5, align 8, !dbg !3937, !tbaa !1289
  br label %77, !dbg !3938

75:                                               ; preds = %69
  %76 = bitcast i64* %56 to i8*, !dbg !3939
  tail call void @free(i8* %76) #14, !dbg !3940
  br label %77

77:                                               ; preds = %75, %74
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #14, !dbg !3941
  ret i64 %24, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3943 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3950, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %1, metadata !3951, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %2, metadata !3952, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %3, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8** %4, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %5, metadata !3955, metadata !DIExpression()), !dbg !3956
  %7 = icmp eq i8* %1, null, !dbg !3957
  br i1 %7, label %10, label %8, !dbg !3959

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #14, !dbg !3960
  br label %12, !dbg !3960

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #14, !dbg !3961
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #14, !dbg !3962
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #14, !dbg !3962
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3963
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #14, !dbg !3964
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.98, i64 0, i64 0)) #14, !dbg !3964
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3965
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
  ], !dbg !3966

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #14, !dbg !3967
  %21 = load i8*, i8** %4, align 8, !dbg !3967, !tbaa !1289
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #14, !dbg !3967
  br label %147, !dbg !3969

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #14, !dbg !3970
  %25 = load i8*, i8** %4, align 8, !dbg !3970, !tbaa !1289
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3970
  %27 = load i8*, i8** %26, align 8, !dbg !3970, !tbaa !1289
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #14, !dbg !3970
  br label %147, !dbg !3971

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #14, !dbg !3972
  %31 = load i8*, i8** %4, align 8, !dbg !3972, !tbaa !1289
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3972
  %33 = load i8*, i8** %32, align 8, !dbg !3972, !tbaa !1289
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3972
  %35 = load i8*, i8** %34, align 8, !dbg !3972, !tbaa !1289
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #14, !dbg !3972
  br label %147, !dbg !3973

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #14, !dbg !3974
  %39 = load i8*, i8** %4, align 8, !dbg !3974, !tbaa !1289
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3974
  %41 = load i8*, i8** %40, align 8, !dbg !3974, !tbaa !1289
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3974
  %43 = load i8*, i8** %42, align 8, !dbg !3974, !tbaa !1289
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3974
  %45 = load i8*, i8** %44, align 8, !dbg !3974, !tbaa !1289
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #14, !dbg !3974
  br label %147, !dbg !3975

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #14, !dbg !3976
  %49 = load i8*, i8** %4, align 8, !dbg !3976, !tbaa !1289
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3976
  %51 = load i8*, i8** %50, align 8, !dbg !3976, !tbaa !1289
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3976
  %53 = load i8*, i8** %52, align 8, !dbg !3976, !tbaa !1289
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3976
  %55 = load i8*, i8** %54, align 8, !dbg !3976, !tbaa !1289
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3976
  %57 = load i8*, i8** %56, align 8, !dbg !3976, !tbaa !1289
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #14, !dbg !3976
  br label %147, !dbg !3977

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #14, !dbg !3978
  %61 = load i8*, i8** %4, align 8, !dbg !3978, !tbaa !1289
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3978
  %63 = load i8*, i8** %62, align 8, !dbg !3978, !tbaa !1289
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3978
  %65 = load i8*, i8** %64, align 8, !dbg !3978, !tbaa !1289
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3978
  %67 = load i8*, i8** %66, align 8, !dbg !3978, !tbaa !1289
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3978
  %69 = load i8*, i8** %68, align 8, !dbg !3978, !tbaa !1289
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3978
  %71 = load i8*, i8** %70, align 8, !dbg !3978, !tbaa !1289
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #14, !dbg !3978
  br label %147, !dbg !3979

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #14, !dbg !3980
  %75 = load i8*, i8** %4, align 8, !dbg !3980, !tbaa !1289
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3980
  %77 = load i8*, i8** %76, align 8, !dbg !3980, !tbaa !1289
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3980
  %79 = load i8*, i8** %78, align 8, !dbg !3980, !tbaa !1289
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3980
  %81 = load i8*, i8** %80, align 8, !dbg !3980, !tbaa !1289
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3980
  %83 = load i8*, i8** %82, align 8, !dbg !3980, !tbaa !1289
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3980
  %85 = load i8*, i8** %84, align 8, !dbg !3980, !tbaa !1289
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3980
  %87 = load i8*, i8** %86, align 8, !dbg !3980, !tbaa !1289
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #14, !dbg !3980
  br label %147, !dbg !3981

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #14, !dbg !3982
  %91 = load i8*, i8** %4, align 8, !dbg !3982, !tbaa !1289
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3982
  %93 = load i8*, i8** %92, align 8, !dbg !3982, !tbaa !1289
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3982
  %95 = load i8*, i8** %94, align 8, !dbg !3982, !tbaa !1289
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3982
  %97 = load i8*, i8** %96, align 8, !dbg !3982, !tbaa !1289
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3982
  %99 = load i8*, i8** %98, align 8, !dbg !3982, !tbaa !1289
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3982
  %101 = load i8*, i8** %100, align 8, !dbg !3982, !tbaa !1289
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3982
  %103 = load i8*, i8** %102, align 8, !dbg !3982, !tbaa !1289
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3982
  %105 = load i8*, i8** %104, align 8, !dbg !3982, !tbaa !1289
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #14, !dbg !3982
  br label %147, !dbg !3983

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.107, i64 0, i64 0), i32 5) #14, !dbg !3984
  %109 = load i8*, i8** %4, align 8, !dbg !3984, !tbaa !1289
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3984
  %111 = load i8*, i8** %110, align 8, !dbg !3984, !tbaa !1289
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3984
  %113 = load i8*, i8** %112, align 8, !dbg !3984, !tbaa !1289
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3984
  %115 = load i8*, i8** %114, align 8, !dbg !3984, !tbaa !1289
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3984
  %117 = load i8*, i8** %116, align 8, !dbg !3984, !tbaa !1289
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3984
  %119 = load i8*, i8** %118, align 8, !dbg !3984, !tbaa !1289
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3984
  %121 = load i8*, i8** %120, align 8, !dbg !3984, !tbaa !1289
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3984
  %123 = load i8*, i8** %122, align 8, !dbg !3984, !tbaa !1289
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3984
  %125 = load i8*, i8** %124, align 8, !dbg !3984, !tbaa !1289
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #14, !dbg !3984
  br label %147, !dbg !3985

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.108, i64 0, i64 0), i32 5) #14, !dbg !3986
  %129 = load i8*, i8** %4, align 8, !dbg !3986, !tbaa !1289
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3986
  %131 = load i8*, i8** %130, align 8, !dbg !3986, !tbaa !1289
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3986
  %133 = load i8*, i8** %132, align 8, !dbg !3986, !tbaa !1289
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3986
  %135 = load i8*, i8** %134, align 8, !dbg !3986, !tbaa !1289
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3986
  %137 = load i8*, i8** %136, align 8, !dbg !3986, !tbaa !1289
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3986
  %139 = load i8*, i8** %138, align 8, !dbg !3986, !tbaa !1289
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3986
  %141 = load i8*, i8** %140, align 8, !dbg !3986, !tbaa !1289
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3986
  %143 = load i8*, i8** %142, align 8, !dbg !3986, !tbaa !1289
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3986
  %145 = load i8*, i8** %144, align 8, !dbg !3986, !tbaa !1289
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #14, !dbg !3986
  br label %147, !dbg !3987

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3989 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %1, metadata !3994, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %2, metadata !3995, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %3, metadata !3996, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8** %4, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 0, metadata !3998, metadata !DIExpression()), !dbg !3999
  br label %6, !dbg !4000

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4002
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4003
  %9 = load i8*, i8** %8, align 8, !dbg !4003, !tbaa !1289
  %10 = icmp eq i8* %9, null, !dbg !4005
  %11 = add i64 %7, 1, !dbg !4006
  call void @llvm.dbg.value(metadata i64 %11, metadata !3998, metadata !DIExpression()), !dbg !3999
  br i1 %10, label %12, label %6, !dbg !4005, !llvm.loop !4007

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %7, metadata !3998, metadata !DIExpression()), !dbg !3999
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4009
  ret void, !dbg !4010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !4011 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %1, metadata !4023, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %2, metadata !4024, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %3, metadata !4025, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4026, metadata !DIExpression()), !dbg !4030
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4031
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !4031
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4028, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 0, metadata !4027, metadata !DIExpression()), !dbg !4030
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !4033
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !4033
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !4033
  %11 = load i32, i32* %8, align 8, !dbg !4036
  %12 = icmp ult i32 %11, 41, !dbg !4036
  br i1 %12, label %13, label %18, !dbg !4036

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !4036
  %15 = zext i32 %11 to i64, !dbg !4036
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4036
  %17 = add nuw nsw i32 %11, 8, !dbg !4036
  store i32 %17, i32* %8, align 8, !dbg !4036
  br label %21, !dbg !4036

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !4036
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4036
  store i8* %20, i8** %9, align 8, !dbg !4036
  br label %21, !dbg !4036

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4036
  %25 = load i8*, i8** %24, align 8, !dbg !4036
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4037
  store i8* %25, i8** %26, align 16, !dbg !4038, !tbaa !1289
  %27 = icmp eq i8* %25, null, !dbg !4039
  br i1 %27, label %30, label %28, !dbg !4040

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4027, metadata !DIExpression()), !dbg !4030
  %29 = icmp ult i32 %22, 41, !dbg !4036
  br i1 %29, label %35, label %32, !dbg !4036

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4041
  call void @llvm.dbg.value(metadata i64 %31, metadata !4027, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %31, metadata !4027, metadata !DIExpression()), !dbg !4030
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4042
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !4043
  ret void, !dbg !4043

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !4036
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4036
  store i8* %34, i8** %9, align 8, !dbg !4036
  br label %40, !dbg !4036

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !4036
  %37 = zext i32 %22 to i64, !dbg !4036
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4036
  %39 = add nuw nsw i32 %22, 8, !dbg !4036
  store i32 %39, i32* %8, align 8, !dbg !4036
  br label %40, !dbg !4036

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4036
  %44 = load i8*, i8** %43, align 8, !dbg !4036
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4037
  store i8* %44, i8** %45, align 8, !dbg !4038, !tbaa !1289
  %46 = icmp eq i8* %44, null, !dbg !4039
  br i1 %46, label %30, label %47, !dbg !4040

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4027, metadata !DIExpression()), !dbg !4030
  %48 = icmp ult i32 %41, 41, !dbg !4036
  br i1 %48, label %52, label %49, !dbg !4036

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !4036
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4036
  store i8* %51, i8** %9, align 8, !dbg !4036
  br label %57, !dbg !4036

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !4036
  %54 = zext i32 %41 to i64, !dbg !4036
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4036
  %56 = add nuw nsw i32 %41, 8, !dbg !4036
  store i32 %56, i32* %8, align 8, !dbg !4036
  br label %57, !dbg !4036

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4036
  %61 = load i8*, i8** %60, align 8, !dbg !4036
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4037
  store i8* %61, i8** %62, align 16, !dbg !4038, !tbaa !1289
  %63 = icmp eq i8* %61, null, !dbg !4039
  br i1 %63, label %30, label %64, !dbg !4040

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4027, metadata !DIExpression()), !dbg !4030
  %65 = icmp ult i32 %58, 41, !dbg !4036
  br i1 %65, label %69, label %66, !dbg !4036

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !4036
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4036
  store i8* %68, i8** %9, align 8, !dbg !4036
  br label %74, !dbg !4036

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !4036
  %71 = zext i32 %58 to i64, !dbg !4036
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4036
  %73 = add nuw nsw i32 %58, 8, !dbg !4036
  store i32 %73, i32* %8, align 8, !dbg !4036
  br label %74, !dbg !4036

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4036
  %78 = load i8*, i8** %77, align 8, !dbg !4036
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4037
  store i8* %78, i8** %79, align 8, !dbg !4038, !tbaa !1289
  %80 = icmp eq i8* %78, null, !dbg !4039
  br i1 %80, label %30, label %81, !dbg !4040

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4027, metadata !DIExpression()), !dbg !4030
  %82 = icmp ult i32 %75, 41, !dbg !4036
  br i1 %82, label %86, label %83, !dbg !4036

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !4036
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4036
  store i8* %85, i8** %9, align 8, !dbg !4036
  br label %91, !dbg !4036

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !4036
  %88 = zext i32 %75 to i64, !dbg !4036
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4036
  %90 = add nuw nsw i32 %75, 8, !dbg !4036
  store i32 %90, i32* %8, align 8, !dbg !4036
  br label %91, !dbg !4036

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4036
  %95 = load i8*, i8** %94, align 8, !dbg !4036
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4037
  store i8* %95, i8** %96, align 16, !dbg !4038, !tbaa !1289
  %97 = icmp eq i8* %95, null, !dbg !4039
  br i1 %97, label %30, label %98, !dbg !4040

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4027, metadata !DIExpression()), !dbg !4030
  %99 = icmp ult i32 %92, 41, !dbg !4036
  br i1 %99, label %103, label %100, !dbg !4036

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !4036
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4036
  store i8* %102, i8** %9, align 8, !dbg !4036
  br label %108, !dbg !4036

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !4036
  %105 = zext i32 %92 to i64, !dbg !4036
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4036
  %107 = add nuw nsw i32 %92, 8, !dbg !4036
  store i32 %107, i32* %8, align 8, !dbg !4036
  br label %108, !dbg !4036

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4036
  %111 = load i8*, i8** %110, align 8, !dbg !4036
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4037
  store i8* %111, i8** %112, align 8, !dbg !4038, !tbaa !1289
  %113 = icmp eq i8* %111, null, !dbg !4039
  br i1 %113, label %30, label %114, !dbg !4040

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4027, metadata !DIExpression()), !dbg !4030
  %115 = load i8*, i8** %9, align 8, !dbg !4036
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4036
  store i8* %116, i8** %9, align 8, !dbg !4036
  %117 = bitcast i8* %115 to i8**, !dbg !4036
  %118 = load i8*, i8** %117, align 8, !dbg !4036
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4037
  store i8* %118, i8** %119, align 16, !dbg !4038, !tbaa !1289
  %120 = icmp eq i8* %118, null, !dbg !4039
  br i1 %120, label %30, label %121, !dbg !4040

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4027, metadata !DIExpression()), !dbg !4030
  %122 = load i8*, i8** %9, align 8, !dbg !4036
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4036
  store i8* %123, i8** %9, align 8, !dbg !4036
  %124 = bitcast i8* %122 to i8**, !dbg !4036
  %125 = load i8*, i8** %124, align 8, !dbg !4036
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4037
  store i8* %125, i8** %126, align 8, !dbg !4038, !tbaa !1289
  %127 = icmp eq i8* %125, null, !dbg !4039
  br i1 %127, label %30, label %128, !dbg !4040

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4027, metadata !DIExpression()), !dbg !4030
  %129 = load i8*, i8** %9, align 8, !dbg !4036
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4036
  store i8* %130, i8** %9, align 8, !dbg !4036
  %131 = bitcast i8* %129 to i8**, !dbg !4036
  %132 = load i8*, i8** %131, align 8, !dbg !4036
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4037
  store i8* %132, i8** %133, align 16, !dbg !4038, !tbaa !1289
  %134 = icmp eq i8* %132, null, !dbg !4039
  br i1 %134, label %30, label %135, !dbg !4040

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4027, metadata !DIExpression()), !dbg !4030
  %136 = load i8*, i8** %9, align 8, !dbg !4036
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4036
  store i8* %137, i8** %9, align 8, !dbg !4036
  %138 = bitcast i8* %136 to i8**, !dbg !4036
  %139 = load i8*, i8** %138, align 8, !dbg !4036
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4037
  store i8* %139, i8** %140, align 8, !dbg !4038, !tbaa !1289
  %141 = icmp eq i8* %139, null, !dbg !4039
  %142 = select i1 %141, i64 9, i64 10, !dbg !4040
  br label %30, !dbg !4040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !4044 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4048, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8* %1, metadata !4049, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8* %2, metadata !4050, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata i8* %3, metadata !4051, metadata !DIExpression()), !dbg !4057
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4058
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #14, !dbg !4058
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4052, metadata !DIExpression()), !dbg !4059
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4060
  call void @llvm.va_start(i8* nonnull %6), !dbg !4060
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4061
  call void @llvm.va_end(i8* nonnull %6), !dbg !4062
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #14, !dbg !4063
  ret void, !dbg !4063
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !4064 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4065, !tbaa !1289
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.96, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !4065
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #14, !dbg !4066
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.112, i64 0, i64 0)) #14, !dbg !4066
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.113, i64 0, i64 0), i32 5) #14, !dbg !4067
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.114, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.115, i64 0, i64 0)) #14, !dbg !4067
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.116, i64 0, i64 0), i32 5) #14, !dbg !4068
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.117, i64 0, i64 0)) #14, !dbg !4068
  ret void, !dbg !4069
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !4070 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i64 %1, metadata !4073, metadata !DIExpression()), !dbg !4074
  %3 = udiv i64 9223372036854775807, %1, !dbg !4075
  %4 = icmp ult i64 %3, %0, !dbg !4075
  br i1 %4, label %5, label %6, !dbg !4077

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4078
  unreachable, !dbg !4078

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4079
  call void @llvm.dbg.value(metadata i64 %7, metadata !4080, metadata !DIExpression()) #14, !dbg !4086
  %8 = tail call noalias i8* @malloc(i64 %7) #14, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %8, metadata !4085, metadata !DIExpression()) #14, !dbg !4086
  %9 = icmp eq i8* %8, null, !dbg !4089
  %10 = icmp ne i64 %7, 0, !dbg !4091
  %11 = and i1 %10, %9, !dbg !4092
  br i1 %11, label %12, label %13, !dbg !4092

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !4093
  unreachable, !dbg !4093

13:                                               ; preds = %6
  ret i8* %8, !dbg !4094
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !4081 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4080, metadata !DIExpression()), !dbg !4095
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !4096
  call void @llvm.dbg.value(metadata i8* %2, metadata !4085, metadata !DIExpression()), !dbg !4095
  %3 = icmp eq i8* %2, null, !dbg !4097
  %4 = icmp ne i64 %0, 0, !dbg !4098
  %5 = and i1 %4, %3, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4099

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4100
  unreachable, !dbg !4100

7:                                                ; preds = %1
  ret i8* %2, !dbg !4101
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #20 !dbg !4102 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4104, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %1, metadata !4105, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i64 %2, metadata !4106, metadata !DIExpression()), !dbg !4107
  %4 = udiv i64 9223372036854775807, %2, !dbg !4108
  %5 = icmp ult i64 %4, %1, !dbg !4108
  br i1 %5, label %6, label %7, !dbg !4110

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !4111
  unreachable, !dbg !4111

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4112
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #14, !dbg !4119
  call void @llvm.dbg.value(metadata i64 %8, metadata !4118, metadata !DIExpression()) #14, !dbg !4119
  %9 = icmp eq i64 %8, 0, !dbg !4121
  %10 = icmp ne i8* %0, null, !dbg !4123
  %11 = and i1 %10, %9, !dbg !4124
  br i1 %11, label %12, label %13, !dbg !4124

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #14, !dbg !4125
  br label %19, !dbg !4127

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #14, !dbg !4128
  call void @llvm.dbg.value(metadata i8* %14, metadata !4113, metadata !DIExpression()) #14, !dbg !4119
  %15 = icmp eq i8* %14, null, !dbg !4129
  %16 = icmp ne i64 %8, 0, !dbg !4131
  %17 = and i1 %16, %15, !dbg !4132
  br i1 %17, label %18, label %19, !dbg !4132

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4133
  unreachable, !dbg !4133

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4119
  ret i8* %20, !dbg !4134
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %1, metadata !4118, metadata !DIExpression()), !dbg !4135
  %3 = icmp eq i64 %1, 0, !dbg !4136
  %4 = icmp ne i8* %0, null, !dbg !4137
  %5 = and i1 %4, %3, !dbg !4138
  br i1 %5, label %6, label %7, !dbg !4138

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #14, !dbg !4139
  br label %13, !dbg !4140

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #14, !dbg !4141
  call void @llvm.dbg.value(metadata i8* %8, metadata !4113, metadata !DIExpression()), !dbg !4135
  %9 = icmp eq i8* %8, null, !dbg !4142
  %10 = icmp ne i64 %1, 0, !dbg !4143
  %11 = and i1 %10, %9, !dbg !4144
  br i1 %11, label %12, label %13, !dbg !4144

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4145
  unreachable, !dbg !4145

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4135
  ret i8* %14, !dbg !4146
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #20 !dbg !651 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !653, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64* %1, metadata !654, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %2, metadata !655, metadata !DIExpression()), !dbg !4147
  %4 = load i64, i64* %1, align 8, !dbg !4148, !tbaa !1638
  call void @llvm.dbg.value(metadata i64 %4, metadata !656, metadata !DIExpression()), !dbg !4147
  %5 = icmp eq i8* %0, null, !dbg !4149
  br i1 %5, label %6, label %20, !dbg !4151

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4152
  br i1 %7, label %8, label %13, !dbg !4155

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4156
  call void @llvm.dbg.value(metadata i64 %9, metadata !656, metadata !DIExpression()), !dbg !4147
  %10 = icmp ugt i64 %2, 128, !dbg !4158
  %11 = zext i1 %10 to i64, !dbg !4158
  %12 = add nuw nsw i64 %9, %11, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %12, metadata !656, metadata !DIExpression()), !dbg !4147
  br label %13, !dbg !4160

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4147
  call void @llvm.dbg.value(metadata i64 %14, metadata !656, metadata !DIExpression()), !dbg !4147
  %15 = udiv i64 9223372036854775807, %2, !dbg !4161
  %16 = icmp ult i64 %15, %14, !dbg !4161
  br i1 %16, label %19, label %17, !dbg !4163

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !656, metadata !DIExpression()), !dbg !4147
  store i64 %14, i64* %1, align 8, !dbg !4164, !tbaa !1638
  %18 = mul i64 %14, %2, !dbg !4165
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #14, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %28, metadata !4118, metadata !DIExpression()) #14, !dbg !4166
  br label %31, !dbg !4168

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !4169
  unreachable, !dbg !4169

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4170
  %22 = icmp ugt i64 %21, %4, !dbg !4173
  br i1 %22, label %24, label %23, !dbg !4174

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !4175
  unreachable, !dbg !4175

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4176
  %26 = add nuw i64 %4, 1, !dbg !4177
  %27 = add i64 %26, %25, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %27, metadata !656, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i64 %27, metadata !656, metadata !DIExpression()), !dbg !4147
  store i64 %27, i64* %1, align 8, !dbg !4164, !tbaa !1638
  %28 = mul i64 %27, %2, !dbg !4165
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #14, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %28, metadata !4118, metadata !DIExpression()) #14, !dbg !4166
  %29 = icmp eq i64 %28, 0, !dbg !4179
  br i1 %29, label %30, label %31, !dbg !4168

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #14, !dbg !4180
  br label %38, !dbg !4181

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #14, !dbg !4182
  call void @llvm.dbg.value(metadata i8* %33, metadata !4113, metadata !DIExpression()) #14, !dbg !4166
  %34 = icmp eq i8* %33, null, !dbg !4183
  %35 = icmp ne i64 %32, 0, !dbg !4184
  %36 = and i1 %35, %34, !dbg !4185
  br i1 %36, label %37, label %38, !dbg !4185

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !4186
  unreachable, !dbg !4186

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4166
  ret i8* %39, !dbg !4187
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #20 !dbg !4188 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4190, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i64 %0, metadata !4080, metadata !DIExpression()) #14, !dbg !4192
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %2, metadata !4085, metadata !DIExpression()) #14, !dbg !4192
  %3 = icmp eq i8* %2, null, !dbg !4195
  %4 = icmp ne i64 %0, 0, !dbg !4196
  %5 = and i1 %4, %3, !dbg !4197
  br i1 %5, label %6, label %7, !dbg !4197

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4198
  unreachable, !dbg !4198

7:                                                ; preds = %1
  ret i8* %2, !dbg !4199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !4200 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4204, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i64* %1, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i8* %0, metadata !653, metadata !DIExpression()) #14, !dbg !4207
  call void @llvm.dbg.value(metadata i64* %1, metadata !654, metadata !DIExpression()) #14, !dbg !4207
  call void @llvm.dbg.value(metadata i64 1, metadata !655, metadata !DIExpression()) #14, !dbg !4207
  %3 = load i64, i64* %1, align 8, !dbg !4209, !tbaa !1638
  call void @llvm.dbg.value(metadata i64 %3, metadata !656, metadata !DIExpression()) #14, !dbg !4207
  %4 = icmp eq i8* %0, null, !dbg !4210
  br i1 %4, label %5, label %12, !dbg !4211

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4212
  br i1 %6, label %9, label %7, !dbg !4213

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !656, metadata !DIExpression()) #14, !dbg !4207
  %8 = icmp slt i64 %3, 0, !dbg !4214
  br i1 %8, label %11, label %9, !dbg !4215

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !656, metadata !DIExpression()) #14, !dbg !4207
  store i64 %10, i64* %1, align 8, !dbg !4216, !tbaa !1638
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #14, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %18, metadata !4118, metadata !DIExpression()) #14, !dbg !4217
  br label %21, !dbg !4219

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !4220
  unreachable, !dbg !4220

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4221
  br i1 %13, label %15, label %14, !dbg !4222

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !4223
  unreachable, !dbg !4223

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4224
  %17 = add nuw nsw i64 %3, 1, !dbg !4225
  %18 = add nuw nsw i64 %17, %16, !dbg !4226
  call void @llvm.dbg.value(metadata i64 %18, metadata !656, metadata !DIExpression()) #14, !dbg !4207
  call void @llvm.dbg.value(metadata i64 %18, metadata !656, metadata !DIExpression()) #14, !dbg !4207
  store i64 %18, i64* %1, align 8, !dbg !4216, !tbaa !1638
  call void @llvm.dbg.value(metadata i8* %0, metadata !4113, metadata !DIExpression()) #14, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %18, metadata !4118, metadata !DIExpression()) #14, !dbg !4217
  %19 = icmp eq i64 %18, 0, !dbg !4227
  br i1 %19, label %20, label %21, !dbg !4219

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #14, !dbg !4228
  br label %28, !dbg !4229

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #14, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %23, metadata !4113, metadata !DIExpression()) #14, !dbg !4217
  %24 = icmp eq i8* %23, null, !dbg !4231
  %25 = icmp ne i64 %22, 0, !dbg !4232
  %26 = and i1 %25, %24, !dbg !4233
  br i1 %26, label %27, label %28, !dbg !4233

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !4234
  unreachable, !dbg !4234

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4217
  ret i8* %29, !dbg !4235
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !4236 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %0, metadata !4240, metadata !DIExpression()) #14, !dbg !4245
  call void @llvm.dbg.value(metadata i64 1, metadata !4243, metadata !DIExpression()) #14, !dbg !4245
  %2 = icmp slt i64 %0, 0, !dbg !4247
  br i1 %2, label %6, label %3, !dbg !4249

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #14, !dbg !4250
  call void @llvm.dbg.value(metadata i8* %4, metadata !4244, metadata !DIExpression()) #14, !dbg !4245
  %5 = icmp eq i8* %4, null, !dbg !4251
  br i1 %5, label %6, label %7, !dbg !4252

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !4253
  unreachable, !dbg !4253

7:                                                ; preds = %3
  ret i8* %4, !dbg !4254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !4241 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4240, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %1, metadata !4243, metadata !DIExpression()), !dbg !4255
  %3 = udiv i64 9223372036854775807, %1, !dbg !4256
  %4 = icmp ult i64 %3, %0, !dbg !4256
  br i1 %4, label %8, label %5, !dbg !4257

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #14, !dbg !4258
  call void @llvm.dbg.value(metadata i8* %6, metadata !4244, metadata !DIExpression()), !dbg !4255
  %7 = icmp eq i8* %6, null, !dbg !4259
  br i1 %7, label %8, label %9, !dbg !4260

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !4261
  unreachable, !dbg !4261

9:                                                ; preds = %5
  ret i8* %6, !dbg !4262
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !4263 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4267, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()) #14, !dbg !4270
  %3 = tail call noalias i8* @malloc(i64 %1) #14, !dbg !4272
  call void @llvm.dbg.value(metadata i8* %3, metadata !4085, metadata !DIExpression()) #14, !dbg !4270
  %4 = icmp eq i8* %3, null, !dbg !4273
  %5 = icmp ne i64 %1, 0, !dbg !4274
  %6 = and i1 %5, %4, !dbg !4275
  br i1 %6, label %7, label %8, !dbg !4275

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !4276
  unreachable, !dbg !4276

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4277, metadata !DIExpression()) #14, !dbg !4282
  call void @llvm.dbg.value(metadata i8* %0, metadata !4280, metadata !DIExpression()) #14, !dbg !4282
  call void @llvm.dbg.value(metadata i64 %1, metadata !4281, metadata !DIExpression()) #14, !dbg !4282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #14, !dbg !4284
  ret i8* %3, !dbg !4285
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !4286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4288, metadata !DIExpression()), !dbg !4289
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !4290
  %3 = add i64 %2, 1, !dbg !4291
  call void @llvm.dbg.value(metadata i8* %0, metadata !4267, metadata !DIExpression()) #14, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %3, metadata !4268, metadata !DIExpression()) #14, !dbg !4292
  call void @llvm.dbg.value(metadata i64 %3, metadata !4080, metadata !DIExpression()) #14, !dbg !4294
  %4 = tail call noalias i8* @malloc(i64 %3) #14, !dbg !4296
  call void @llvm.dbg.value(metadata i8* %4, metadata !4085, metadata !DIExpression()) #14, !dbg !4294
  %5 = icmp eq i8* %4, null, !dbg !4297
  %6 = icmp ne i64 %3, 0, !dbg !4298
  %7 = and i1 %6, %5, !dbg !4299
  br i1 %7, label %8, label %9, !dbg !4299

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !4300
  unreachable, !dbg !4300

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4277, metadata !DIExpression()) #14, !dbg !4301
  call void @llvm.dbg.value(metadata i8* %0, metadata !4280, metadata !DIExpression()) #14, !dbg !4301
  call void @llvm.dbg.value(metadata i64 %3, metadata !4281, metadata !DIExpression()) #14, !dbg !4301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #14, !dbg !4303
  ret i8* %4, !dbg !4304
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4305 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4306, !tbaa !1368
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.130, i64 0, i64 0), i32 5) #14, !dbg !4307
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i64 0, i64 0), i8* %2) #14, !dbg !4308
  tail call void @abort() #23, !dbg !4309
  unreachable, !dbg !4309
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !4310 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4312, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %1, metadata !4313, metadata !DIExpression()), !dbg !4318
  %3 = icmp eq i64 %0, 0, !dbg !4319
  %4 = icmp eq i64 %1, 0, !dbg !4320
  %5 = or i1 %3, %4, !dbg !4321
  br i1 %5, label %11, label %6, !dbg !4321

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !4315, metadata !DIExpression()), !dbg !4322
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !4323
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !4323
  br i1 %8, label %9, label %11, !dbg !4325

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !4326
  store i32 12, i32* %10, align 4, !dbg !4328, !tbaa !1368
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !4312, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %12, metadata !4313, metadata !DIExpression()), !dbg !4318
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #14, !dbg !4329
  call void @llvm.dbg.value(metadata i8* %14, metadata !4314, metadata !DIExpression()), !dbg !4318
  br label %15, !dbg !4330

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !4318
  ret i8* %16, !dbg !4331
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4332 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4338, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 0, metadata !4339, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 0, metadata !4341, metadata !DIExpression()), !dbg !4342
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %2, metadata !4340, metadata !DIExpression()), !dbg !4342
  %3 = icmp slt i32 %2, 0, !dbg !4344
  br i1 %3, label %4, label %6, !dbg !4346

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4347
  br label %24, !dbg !4348

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !4349
  %8 = icmp eq i32 %7, 0, !dbg !4349
  br i1 %8, label %13, label %9, !dbg !4351

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4352
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #14, !dbg !4353
  %12 = icmp eq i64 %11, -1, !dbg !4354
  br i1 %12, label %16, label %13, !dbg !4355

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #14, !dbg !4356
  %15 = icmp eq i32 %14, 0, !dbg !4356
  br i1 %15, label %16, label %18, !dbg !4357

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4339, metadata !DIExpression()), !dbg !4342
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4358
  call void @llvm.dbg.value(metadata i32 %21, metadata !4341, metadata !DIExpression()), !dbg !4342
  br label %24, !dbg !4359

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !4360
  %20 = load i32, i32* %19, align 4, !dbg !4360, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 %20, metadata !4339, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.value(metadata i32 %20, metadata !4339, metadata !DIExpression()), !dbg !4342
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4358
  call void @llvm.dbg.value(metadata i32 %21, metadata !4341, metadata !DIExpression()), !dbg !4342
  %22 = icmp eq i32 %20, 0, !dbg !4361
  br i1 %22, label %24, label %23, !dbg !4359

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4363, !tbaa !1368
  call void @llvm.dbg.value(metadata i32 -1, metadata !4341, metadata !DIExpression()), !dbg !4342
  br label %24, !dbg !4365

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4342
  ret i32 %25, !dbg !4366
}

; Function Attrs: nofree nounwind
declare !dbg !707 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !708 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4367 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4373, metadata !DIExpression()), !dbg !4374
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4375
  br i1 %2, label %6, label %3, !dbg !4377

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !4378
  %5 = icmp eq i32 %4, 0, !dbg !4378
  br i1 %5, label %6, label %8, !dbg !4379

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4380
  br label %17, !dbg !4381

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4382, metadata !DIExpression()) #14, !dbg !4387
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4389
  %10 = load i32, i32* %9, align 8, !dbg !4389, !tbaa !4391
  %11 = and i32 %10, 256, !dbg !4392
  %12 = icmp eq i32 %11, 0, !dbg !4392
  br i1 %12, label %15, label %13, !dbg !4393

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #14, !dbg !4394
  br label %15, !dbg !4394

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4395
  br label %17, !dbg !4396

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4374
  ret i32 %18, !dbg !4397
}

; Function Attrs: nofree nounwind
declare !dbg !715 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4398 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4404, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %1, metadata !4405, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i32 %2, metadata !4406, metadata !DIExpression()), !dbg !4410
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4411
  %5 = load i8*, i8** %4, align 8, !dbg !4411, !tbaa !3719
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4412
  %7 = load i8*, i8** %6, align 8, !dbg !4412, !tbaa !3717
  %8 = icmp eq i8* %5, %7, !dbg !4413
  br i1 %8, label %9, label %28, !dbg !4414

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4415
  %11 = load i8*, i8** %10, align 8, !dbg !4415, !tbaa !4416
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4417
  %13 = load i8*, i8** %12, align 8, !dbg !4417, !tbaa !4418
  %14 = icmp eq i8* %11, %13, !dbg !4419
  br i1 %14, label %15, label %28, !dbg !4420

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4421
  %17 = load i8*, i8** %16, align 8, !dbg !4421, !tbaa !4422
  %18 = icmp eq i8* %17, null, !dbg !4423
  br i1 %18, label %19, label %28, !dbg !4424

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !4425
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #14, !dbg !4426
  call void @llvm.dbg.value(metadata i64 %21, metadata !4407, metadata !DIExpression()), !dbg !4427
  %22 = icmp eq i64 %21, -1, !dbg !4428
  br i1 %22, label %30, label %23, !dbg !4430

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4431
  %25 = load i32, i32* %24, align 8, !dbg !4432, !tbaa !4391
  %26 = and i32 %25, -17, !dbg !4432
  store i32 %26, i32* %24, align 8, !dbg !4432, !tbaa !4391
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4433
  store i64 %21, i64* %27, align 8, !dbg !4434, !tbaa !4435
  br label %30, !dbg !4436

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4437
  br label %30, !dbg !4438

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4410
  ret i32 %31, !dbg !4439
}

; Function Attrs: nofree nounwind
declare !dbg !791 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4440 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4448, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i8* %1, metadata !4449, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 %2, metadata !4450, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4451, metadata !DIExpression()), !dbg !4457
  %6 = bitcast i32* %5 to i8*, !dbg !4458
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4458
  %7 = icmp eq i32* %0, null, !dbg !4459
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4461
  call void @llvm.dbg.value(metadata i32* %8, metadata !4448, metadata !DIExpression()), !dbg !4457
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #14, !dbg !4462
  call void @llvm.dbg.value(metadata i64 %9, metadata !4452, metadata !DIExpression()), !dbg !4457
  %10 = icmp ugt i64 %9, -3, !dbg !4463
  %11 = icmp ne i64 %2, 0, !dbg !4464
  %12 = and i1 %11, %10, !dbg !4465
  br i1 %12, label %13, label %18, !dbg !4465

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #14, !dbg !4466
  br i1 %14, label %18, label %15, !dbg !4467

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4468, !tbaa !2353
  call void @llvm.dbg.value(metadata i8 %16, metadata !4454, metadata !DIExpression()), !dbg !4469
  %17 = zext i8 %16 to i32, !dbg !4470
  store i32 %17, i32* %8, align 4, !dbg !4471, !tbaa !1368
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4457
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !4472
  ret i64 %19, !dbg !4472
}

; Function Attrs: nounwind
declare !dbg !797 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4473 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4479, metadata !DIExpression()), !dbg !4484
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #14, !dbg !4485
  call void @llvm.dbg.value(metadata i1 undef, metadata !4480, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4486, metadata !DIExpression()), !dbg !4489
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4491
  %4 = load i32, i32* %3, align 8, !dbg !4491, !tbaa !4391
  %5 = and i32 %4, 32, !dbg !4491
  %6 = icmp eq i32 %5, 0, !dbg !4492
  call void @llvm.dbg.value(metadata i1 %6, metadata !4482, metadata !DIExpression()), !dbg !4484
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #14, !dbg !4493
  %8 = icmp ne i32 %7, 0, !dbg !4494
  call void @llvm.dbg.value(metadata i1 %8, metadata !4483, metadata !DIExpression()), !dbg !4484
  br i1 %6, label %9, label %19, !dbg !4495

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4497
  call void @llvm.dbg.value(metadata i1 %10, metadata !4480, metadata !DIExpression()), !dbg !4484
  %11 = xor i1 %8, true, !dbg !4498
  %12 = or i1 %10, %11, !dbg !4498
  %13 = sext i1 %8 to i32, !dbg !4498
  br i1 %12, label %22, label %14, !dbg !4498

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !4499
  %16 = load i32, i32* %15, align 4, !dbg !4499, !tbaa !1368
  %17 = icmp ne i32 %16, 9, !dbg !4500
  %18 = sext i1 %17 to i32, !dbg !4501
  br label %22, !dbg !4501

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4502

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !4504
  store i32 0, i32* %21, align 4, !dbg !4506, !tbaa !1368
  br label %22, !dbg !4504

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4484
  ret i32 %23, !dbg !4507
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4508 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4510, metadata !DIExpression()), !dbg !4515
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4516
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #14, !dbg !4516
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4511, metadata !DIExpression()), !dbg !4517
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #14, !dbg !4518
  %5 = icmp eq i32 %4, 0, !dbg !4518
  br i1 %5, label %6, label %13, !dbg !4520

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4521
  %8 = load i16, i16* %7, align 16, !dbg !4521
  %9 = icmp eq i16 %8, 67, !dbg !4521
  br i1 %9, label %13, label %10, !dbg !4522

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.146, i64 0, i64 0), i64 6), !dbg !4523
  %12 = icmp ne i32 %11, 0, !dbg !4524
  br label %13, !dbg !4522

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4515
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #14, !dbg !4525
  ret i1 %14, !dbg !4525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4526 {
  %1 = tail call i8* @nl_langinfo(i32 14) #14, !dbg !4529
  call void @llvm.dbg.value(metadata i8* %1, metadata !4528, metadata !DIExpression()), !dbg !4530
  %2 = icmp eq i8* %1, null, !dbg !4531
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.149, i64 0, i64 0), i8* %1, !dbg !4533
  call void @llvm.dbg.value(metadata i8* %3, metadata !4528, metadata !DIExpression()), !dbg !4530
  %4 = load i8, i8* %3, align 1, !dbg !4534, !tbaa !2353
  %5 = icmp eq i8 %4, 0, !dbg !4538
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.150, i64 0, i64 0), i8* %3, !dbg !4539
  call void @llvm.dbg.value(metadata i8* %6, metadata !4528, metadata !DIExpression()), !dbg !4530
  ret i8* %6, !dbg !4540
}

; Function Attrs: nounwind
declare !dbg !1248 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4545, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i8* %1, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %2, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 %0, metadata !4549, metadata !DIExpression()) #14, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %1, metadata !4552, metadata !DIExpression()) #14, !dbg !4558
  call void @llvm.dbg.value(metadata i64 %2, metadata !4553, metadata !DIExpression()) #14, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %0, metadata !4560, metadata !DIExpression()) #14, !dbg !4566
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !4568
  call void @llvm.dbg.value(metadata i8* %4, metadata !4565, metadata !DIExpression()) #14, !dbg !4566
  call void @llvm.dbg.value(metadata i8* %4, metadata !4554, metadata !DIExpression()) #14, !dbg !4558
  %5 = icmp eq i8* %4, null, !dbg !4569
  br i1 %5, label %6, label %9, !dbg !4570

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4571
  br i1 %7, label %19, label %8, !dbg !4574

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4575, !tbaa !2353
  br label %19, !dbg !4576

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !4577
  call void @llvm.dbg.value(metadata i64 %10, metadata !4555, metadata !DIExpression()) #14, !dbg !4578
  %11 = icmp ult i64 %10, %2, !dbg !4579
  br i1 %11, label %12, label %14, !dbg !4581

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4582
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()) #14, !dbg !4589
  call void @llvm.dbg.value(metadata i8* %4, metadata !4587, metadata !DIExpression()) #14, !dbg !4589
  call void @llvm.dbg.value(metadata i64 %13, metadata !4588, metadata !DIExpression()) #14, !dbg !4589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #14, !dbg !4591
  br label %19, !dbg !4592

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4593
  br i1 %15, label %19, label %16, !dbg !4596

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4597
  call void @llvm.dbg.value(metadata i8* %1, metadata !4584, metadata !DIExpression()) #14, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %4, metadata !4587, metadata !DIExpression()) #14, !dbg !4599
  call void @llvm.dbg.value(metadata i64 %17, metadata !4588, metadata !DIExpression()) #14, !dbg !4599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #14, !dbg !4601
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4602
  store i8 0, i8* %18, align 1, !dbg !4603, !tbaa !2353
  br label %19, !dbg !4604

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4605
  ret i32 %20, !dbg !4606
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4607 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i32 %0, metadata !4560, metadata !DIExpression()) #14, !dbg !4611
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %2, metadata !4565, metadata !DIExpression()) #14, !dbg !4611
  ret i8* %2, !dbg !4614
}

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
attributes #10 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !197, !202, !247, !490, !533, !253, !320, !361, !584, !605, !484, !647, !663, !666, !669, !712, !753, !794, !813, !851, !858, !1251}
!llvm.ident = !{!1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254, !1254}
!llvm.module.flags = !{!1255, !1256, !1257, !1258, !1259}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n_strings", scope: !2, file: !3, line: 73, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !173, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tsort.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !40, !101, !105, !109, !112, !115, !36, !91, !122, !131, !135, !139, !143, !146, !149, !158, !93, !161, !164, !168, !172}
!30 = !DISubprogram(name: "dcgettext", scope: !31, file: !31, line: 51, type: !32, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!31 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !36, !36, !38}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{}
!40 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!42 = !DISubroutineType(types: !43)
!43 = !{!38, !36, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !92, !96, !97}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !38, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !44, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !44, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 37, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!102 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !36}
!105 = !DISubprogram(name: "setlocale", scope: !106, file: !106, line: 122, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!106 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!107 = !DISubroutineType(types: !108)
!108 = !{!34, !38, !36}
!109 = !DISubprogram(name: "bindtextdomain", scope: !31, file: !31, line: 86, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !36, !36}
!112 = !DISubprogram(name: "textdomain", scope: !31, file: !31, line: 82, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!113 = !DISubroutineType(types: !114)
!114 = !{!34, !36}
!115 = !DISubprogram(name: "atexit", scope: !116, file: !116, line: 595, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!116 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!117 = !DISubroutineType(types: !118)
!118 = !{!38, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !123, file: !123, line: 33, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!123 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!124 = !DISubroutineType(types: !125)
!125 = !{null, !38, !126, !36, !36, !36, !127, !128, null}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!127 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !38}
!131 = !DISubprogram(name: "quote", scope: !132, file: !132, line: 44, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!132 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!133 = !DISubroutineType(types: !134)
!134 = !{!36, !36}
!135 = !DISubprogram(name: "error", scope: !136, file: !136, line: 52, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!136 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!137 = !DISubroutineType(types: !138)
!138 = !{null, !38, !38, !36, null}
!139 = !DISubprogram(name: "freopen_safer", scope: !140, file: !140, line: 27, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!140 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!141 = !DISubroutineType(types: !142)
!142 = !{!44, !36, !36, !44}
!143 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!144 = !DISubroutineType(types: !145)
!145 = !{!34, !38, !5, !36}
!146 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !44, !20}
!149 = !DISubprogram(name: "init_tokenbuffer", scope: !150, file: !150, line: 33, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!150 = !DIFile(filename: "./lib/readtokens.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !150, line: 26, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !154, file: !150, line: 28, baseType: !93, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !154, file: !150, line: 29, baseType: !34, size: 64, offset: 64)
!158 = !DISubprogram(name: "readtoken", scope: !150, file: !150, line: 36, type: !159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!159 = !DISubroutineType(types: !160)
!160 = !{!95, !44, !36, !95, !153}
!161 = !DISubprogram(name: "puts", scope: !41, file: !41, line: 632, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!162 = !DISubroutineType(types: !163)
!163 = !{!38, !36}
!164 = !DISubprogram(name: "rpl_fclose", scope: !165, file: !165, line: 672, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!165 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{!38, !44}
!168 = !DISubprogram(name: "xmalloc", scope: !169, file: !169, line: 53, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!169 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!170 = !DISubroutineType(types: !171)
!171 = !{!91, !95}
!172 = !DISubprogram(name: "xstrdup", scope: !169, file: !169, line: 64, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!173 = !{!0, !174, !191, !193}
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 64, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 53, size: 448, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !177, file: !3, line: 55, baseType: !36, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !177, file: !3, line: 56, baseType: !176, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !177, file: !3, line: 56, baseType: !176, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !177, file: !3, line: 57, baseType: !38, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !177, file: !3, line: 58, baseType: !93, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !177, file: !3, line: 59, baseType: !176, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !177, file: !3, line: 60, baseType: !186, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 46, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !187, file: !3, line: 48, baseType: !176, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !3, line: 49, baseType: !186, size: 64, offset: 64)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "zeros", scope: !2, file: !3, line: 67, type: !176, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "loop", scope: !2, file: !3, line: 70, type: !176, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "Version", scope: !197, file: !198, line: 2, type: !36, isLocal: false, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !199, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = !{!195}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "file_name", scope: !202, file: !203, line: 46, type: !36, isLocal: true, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !204, globals: !242, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !{!205, !30, !241, !135}
!205 = !DISubprogram(name: "close_stream", scope: !206, file: !206, line: 2, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!206 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = !DISubroutineType(types: !208)
!208 = !{!38, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !210, file: !46, line: 51, baseType: !38, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !210, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !210, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !210, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !210, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !210, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !210, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !210, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !210, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !210, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !210, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !210, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !210, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !210, file: !46, line: 70, baseType: !209, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !210, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !210, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !210, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !210, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !210, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !210, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !210, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !210, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !210, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !210, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !210, file: !46, line: 93, baseType: !209, size: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !210, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !210, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !210, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !210, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!241 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!242 = !{!200, !243}
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !202, file: !203, line: 56, type: !127, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "exit_failure", scope: !247, file: !248, line: 24, type: !250, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !249, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !{!245}
!250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "long_options", scope: !253, file: !254, line: 34, type: !315, isLocal: true, isDefinition: true)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !255, globals: !314, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!256, !271}
!256 = !DISubprogram(name: "getopt_long", scope: !257, file: !257, line: 66, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!257 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!258 = !DISubroutineType(types: !259)
!259 = !{!38, !38, !260, !36, !262, !269}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !257, line: 50, size: 256, elements: !265)
!265 = !{!266, !267, !268, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !257, line: 52, baseType: !36, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !264, file: !257, line: 55, baseType: !38, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !264, file: !257, line: 56, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !264, file: !257, line: 57, baseType: !38, size: 32, offset: 192)
!271 = !DISubprogram(name: "version_etc_va", scope: !272, file: !272, line: 63, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!272 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275, !36, !36, !36, !307}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !276, file: !46, line: 51, baseType: !38, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !276, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !276, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !276, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !276, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !276, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !276, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !276, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !276, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !276, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !276, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !276, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !276, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !276, file: !46, line: 70, baseType: !275, size: 64, offset: 832)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !276, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !276, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !276, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !276, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !276, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !276, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !276, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !276, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !276, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !276, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !276, file: !46, line: 93, baseType: !275, size: 64, offset: 1344)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !276, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !276, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !276, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !276, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !254, line: 72, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !308, file: !254, line: 72, baseType: !7, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !308, file: !254, line: 72, baseType: !7, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !308, file: !254, line: 72, baseType: !91, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !308, file: !254, line: 72, baseType: !91, size: 64, offset: 128)
!314 = !{!251}
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 768, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 3)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "program_name", scope: !320, file: !321, line: 33, type: !36, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !322, globals: !358, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !{!91, !323, !34}
!323 = !DISubprogram(name: "fputs", scope: !41, file: !41, line: 626, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!324 = !DISubroutineType(types: !325)
!325 = !{!38, !36, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !327, file: !46, line: 51, baseType: !38, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !327, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !327, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !327, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !327, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !327, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !327, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !327, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !327, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !327, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !327, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !327, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !327, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !327, file: !46, line: 70, baseType: !326, size: 64, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !327, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !327, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !327, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !327, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !327, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !327, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !327, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !327, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !327, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !327, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !327, file: !46, line: 93, baseType: !326, size: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !327, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !327, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !327, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !327, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!358 = !{!318}
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !361, file: !362, line: 85, type: !478, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !384, globals: !451, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!363 = !{!5, !364, !369}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !365)
!365 = !{!366, !367, !368}
!366 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!368 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!369 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !370, line: 46, baseType: !7, size: 32, elements: !371)
!370 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!372 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!373 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!374 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!375 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!376 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!377 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!378 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!379 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!380 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!381 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!382 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!384 = !{!385, !390, !406, !409, !38, !71, !412, !93, !429, !433, !30, !439, !443, !34, !168, !447, !448}
!385 = !DISubprogram(name: "xmemdup", scope: !169, file: !169, line: 62, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!386 = !DISubroutineType(types: !387)
!387 = !{!91, !388, !95}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!390 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!391 = !DISubroutineType(types: !392)
!392 = !{!34, !36, !95, !393, !394}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !362, line: 65, size: 448, elements: !397)
!397 = !{!398, !399, !400, !404, !405}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !396, file: !362, line: 68, baseType: !5, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !362, line: 71, baseType: !38, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !396, file: !362, line: 75, baseType: !401, size: 256, offset: 64)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 8)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !396, file: !362, line: 78, baseType: !36, size: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !396, file: !362, line: 81, baseType: !36, size: 64, offset: 384)
!406 = !DISubprogram(name: "free", scope: !116, file: !116, line: 565, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !91}
!409 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!410 = !DISubroutineType(types: !411)
!411 = !{!34, !38, !36, !36, !36, !95}
!412 = !DISubprogram(name: "rpl_mbrtowc", scope: !413, file: !413, line: 717, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!413 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!414 = !DISubroutineType(types: !415)
!415 = !{!95, !269, !36, !95, !416}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 13, size: 64, elements: !419)
!418 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !417, file: !418, line: 15, baseType: !38, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !417, file: !418, line: 20, baseType: !422, size: 32, offset: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !418, line: 16, size: 32, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !422, file: !418, line: 18, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !422, file: !418, line: 19, baseType: !426, size: 32)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DISubprogram(name: "iswprint", scope: !430, file: !430, line: 120, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!430 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!431 = !DISubroutineType(types: !432)
!432 = !{!38, !7}
!433 = !DISubprogram(name: "mbsinit", scope: !434, file: !434, line: 292, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!434 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!435 = !DISubroutineType(types: !436)
!436 = !{!38, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!439 = !DISubprogram(name: "locale_charset", scope: !440, file: !440, line: 35, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!440 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!441 = !DISubroutineType(types: !442)
!442 = !{!36}
!443 = !DISubprogram(name: "c_strcasecmp", scope: !444, file: !444, line: 42, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!444 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!445 = !DISubroutineType(types: !446)
!446 = !{!38, !36, !36}
!447 = !DISubprogram(name: "xalloc_die", scope: !169, file: !169, line: 51, type: !120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !39)
!448 = !DISubprogram(name: "xrealloc", scope: !169, file: !169, line: 59, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!449 = !DISubroutineType(types: !450)
!450 = !{!91, !91, !95}
!451 = !{!359, !452, !458, !460, !462, !467, !474, !476}
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !361, file: !362, line: 101, type: !454, isLocal: false, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 320, elements: !456)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!456 = !{!457}
!457 = !DISubrange(count: 10)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !361, file: !362, line: 1052, type: !396, isLocal: false, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !361, file: !362, line: 116, type: !396, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "slot0", scope: !361, file: !362, line: 842, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 256)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "slotvec", scope: !361, file: !362, line: 845, type: !469, isLocal: true, isDefinition: true)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !362, line: 834, size: 128, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !470, file: !362, line: 836, baseType: !93, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !470, file: !362, line: 837, baseType: !34, size: 64, offset: 64)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "nslots", scope: !361, file: !362, line: 843, type: !38, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "slotvec0", scope: !361, file: !362, line: 844, type: !470, isLocal: true, isDefinition: true)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 704, elements: !480)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!480 = !{!481}
!481 = !DISubrange(count: 11)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !484, file: !485, line: 26, type: !487, isLocal: false, isDefinition: true)
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !486, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!486 = !{!482}
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 47)
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !492, retainedTypes: !493, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!492 = !{!20}
!493 = !{!494, !498}
!494 = !DISubprogram(name: "posix_fadvise", scope: !495, file: !495, line: 288, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!495 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!496 = !DISubroutineType(types: !497)
!497 = !{!38, !38, !69, !69, !38}
!498 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!499 = !DISubroutineType(types: !500)
!500 = !{!38, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !502, file: !46, line: 51, baseType: !38, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !502, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !502, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !502, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !502, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !502, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !502, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !502, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !502, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !502, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !502, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !502, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !502, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !502, file: !46, line: 70, baseType: !501, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !502, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !502, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !502, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !502, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !502, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !502, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !502, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !502, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !502, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !502, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !502, file: !46, line: 93, baseType: !501, size: 64, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !502, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !502, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !502, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !502, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!533 = distinct !DICompileUnit(language: DW_LANG_C99, file: !534, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !535, splitDebugInlining: false, nameTableKind: None)
!534 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!535 = !{!536, !571, !575, !578, !581}
!536 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!537 = !DISubroutineType(types: !538)
!538 = !{!38, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !540, file: !46, line: 51, baseType: !38, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !540, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !540, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !540, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !540, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !540, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !540, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !540, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !540, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !540, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !540, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !540, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !540, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !540, file: !46, line: 70, baseType: !539, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !540, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !540, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !540, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !540, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !540, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !540, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !540, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !540, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !540, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !540, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !540, file: !46, line: 93, baseType: !539, size: 64, offset: 1344)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !540, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !540, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !540, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !540, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!571 = !DISubprogram(name: "dup2", scope: !572, file: !572, line: 534, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!572 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!573 = !DISubroutineType(types: !574)
!574 = !{!38, !38, !38}
!575 = !DISubprogram(name: "freopen", scope: !41, file: !41, line: 252, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!576 = !DISubroutineType(types: !577)
!577 = !{!539, !36, !36, !539}
!578 = !DISubprogram(name: "close", scope: !572, file: !572, line: 353, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!579 = !DISubroutineType(types: !580)
!580 = !{!38, !38}
!581 = !DISubprogram(name: "open", scope: !495, file: !495, line: 196, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!582 = !DISubroutineType(types: !583)
!583 = !{!38, !36, !38, null}
!584 = distinct !DICompileUnit(language: DW_LANG_C99, file: !585, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !586, retainedTypes: !602, splitDebugInlining: false, nameTableKind: None)
!585 = !DIFile(filename: "lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!586 = !{!587, !590}
!587 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !585, line: 51, baseType: !7, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIEnumerator(name: "bits_per_word", value: 64, isUnsigned: true)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !591, file: !169, line: 186, baseType: !7, size: 32, elements: !600)
!591 = distinct !DISubprogram(name: "x2nrealloc", scope: !169, file: !169, line: 174, type: !592, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !595)
!592 = !DISubroutineType(types: !593)
!593 = !{!91, !91, !594, !93}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!595 = !{!596, !597, !598, !599}
!596 = !DILocalVariable(name: "p", arg: 1, scope: !591, file: !169, line: 174, type: !91)
!597 = !DILocalVariable(name: "pn", arg: 2, scope: !591, file: !169, line: 174, type: !594)
!598 = !DILocalVariable(name: "s", arg: 3, scope: !591, file: !169, line: 174, type: !93)
!599 = !DILocalVariable(name: "n", scope: !591, file: !169, line: 176, type: !93)
!600 = !{!601}
!601 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!602 = !{!93, !406, !91, !603, !447, !448, !168}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !607, retainedTypes: !611, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !{!608}
!608 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !606, line: 40, baseType: !7, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!611 = !{!30, !612, !91}
!612 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!613 = !DISubroutineType(types: !614)
!614 = !{!38, !36, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !616, file: !46, line: 51, baseType: !38, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !616, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !616, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !616, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !616, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !616, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !616, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !616, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !616, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !616, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !616, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !616, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !616, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !616, file: !46, line: 70, baseType: !615, size: 64, offset: 832)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !616, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !616, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !616, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !616, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !616, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !616, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !616, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !616, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !616, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !616, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !616, file: !46, line: 93, baseType: !615, size: 64, offset: 1344)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !616, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !616, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !616, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !616, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!647 = distinct !DICompileUnit(language: DW_LANG_C99, file: !648, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !649, retainedTypes: !657, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!649 = !{!650}
!650 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !651, file: !169, line: 186, baseType: !7, size: 32, elements: !600)
!651 = distinct !DISubprogram(name: "x2nrealloc", scope: !169, file: !169, line: 174, type: !592, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DILocalVariable(name: "p", arg: 1, scope: !651, file: !169, line: 174, type: !91)
!654 = !DILocalVariable(name: "pn", arg: 2, scope: !651, file: !169, line: 174, type: !594)
!655 = !DILocalVariable(name: "s", arg: 3, scope: !651, file: !169, line: 174, type: !93)
!656 = !DILocalVariable(name: "n", scope: !651, file: !169, line: 176, type: !93)
!657 = !{!93, !447, !168, !448, !34, !406, !91, !658, !661}
!658 = !DISubprogram(name: "xcalloc", scope: !169, file: !169, line: 57, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!659 = !DISubroutineType(types: !660)
!660 = !{!91, !95, !95}
!661 = !DISubprogram(name: "rpl_calloc", scope: !662, file: !662, line: 688, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!662 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = distinct !DICompileUnit(language: DW_LANG_C99, file: !664, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !665, splitDebugInlining: false, nameTableKind: None)
!664 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!665 = !{!30, !135}
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!668 = !{!91}
!669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !670, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !671, splitDebugInlining: false, nameTableKind: None)
!670 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!671 = !{!672, !707, !708, !711}
!672 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!673 = !DISubroutineType(types: !674)
!674 = !{!38, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !676, file: !46, line: 51, baseType: !38, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !676, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !676, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !676, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !676, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !676, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !676, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !676, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !676, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !676, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !676, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !676, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !676, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !676, file: !46, line: 70, baseType: !675, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !676, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !676, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !676, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !676, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !676, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !676, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !676, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !676, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !676, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !676, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !676, file: !46, line: 93, baseType: !675, size: 64, offset: 1344)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !676, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !676, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !676, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !676, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!707 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 213, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!708 = !DISubprogram(name: "lseek", scope: !572, file: !572, line: 334, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!709 = !DISubroutineType(types: !710)
!710 = !{!69, !38, !69, !38}
!711 = !DISubprogram(name: "rpl_fflush", scope: !165, file: !165, line: 718, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!712 = distinct !DICompileUnit(language: DW_LANG_C99, file: !713, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!714 = !{!91, !715, !750}
!715 = !DISubprogram(name: "fflush", scope: !41, file: !41, line: 218, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!716 = !DISubroutineType(types: !717)
!717 = !{!38, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !719, file: !46, line: 51, baseType: !38, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !719, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !719, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !719, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !719, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !719, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !719, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !719, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !719, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !719, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !719, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !719, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !719, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !719, file: !46, line: 70, baseType: !718, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !719, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !719, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !719, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !719, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !719, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !719, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !719, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !719, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !719, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !719, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !719, file: !46, line: 93, baseType: !718, size: 64, offset: 1344)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !719, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !719, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !719, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !719, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!750 = !DISubprogram(name: "rpl_fseeko", scope: !165, file: !165, line: 1034, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!751 = !DISubroutineType(types: !752)
!752 = !{!38, !718, !69, !38}
!753 = distinct !DICompileUnit(language: DW_LANG_C99, file: !754, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!755 = !{!91, !756, !708, !791}
!756 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!757 = !DISubroutineType(types: !758)
!758 = !{!38, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !760, file: !46, line: 51, baseType: !38, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !760, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !760, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !760, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !760, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !760, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !760, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !760, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !760, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !760, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !760, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !760, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !760, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !760, file: !46, line: 70, baseType: !759, size: 64, offset: 832)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !760, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !760, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !760, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !760, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !760, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !760, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !760, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !760, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !760, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !760, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !760, file: !46, line: 93, baseType: !759, size: 64, offset: 1344)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !760, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !760, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !760, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !760, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!791 = !DISubprogram(name: "fseeko", scope: !41, file: !41, line: 707, type: !792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!792 = !DISubroutineType(types: !793)
!793 = !{!38, !759, !69, !38}
!794 = distinct !DICompileUnit(language: DW_LANG_C99, file: !795, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !796, splitDebugInlining: false, nameTableKind: None)
!795 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!796 = !{!797, !93, !809}
!797 = !DISubprogram(name: "mbrtowc", scope: !434, file: !434, line: 296, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!798 = !DISubroutineType(types: !799)
!799 = !{!95, !269, !36, !95, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 13, size: 64, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !801, file: !418, line: 15, baseType: !38, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !801, file: !418, line: 20, baseType: !805, size: 32, offset: 32)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !418, line: 16, size: 32, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !805, file: !418, line: 18, baseType: !7, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !805, file: !418, line: 19, baseType: !426, size: 32)
!809 = !DISubprogram(name: "hard_locale", scope: !810, file: !810, line: 26, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!810 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!811 = !DISubroutineType(types: !812)
!812 = !{!127, !38}
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !815, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!815 = !{!816}
!816 = !DISubprogram(name: "rpl_fclose", scope: !165, file: !165, line: 672, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!817 = !DISubroutineType(types: !818)
!818 = !{!38, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !820, file: !46, line: 51, baseType: !38, size: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !820, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !820, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !820, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !820, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !820, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !820, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !820, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !820, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !820, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !820, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !820, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !820, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !820, file: !46, line: 70, baseType: !819, size: 64, offset: 832)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !820, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !820, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !820, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !820, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !820, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !820, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !820, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !820, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !820, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !820, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !820, file: !46, line: 93, baseType: !819, size: 64, offset: 1344)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !820, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !820, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !820, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !820, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!851 = distinct !DICompileUnit(language: DW_LANG_C99, file: !852, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !853, splitDebugInlining: false, nameTableKind: None)
!852 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!853 = !{!854}
!854 = !DISubprogram(name: "setlocale_null_r", scope: !855, file: !855, line: 64, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!855 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!856 = !DISubroutineType(types: !857)
!857 = !{!38, !38, !34, !95}
!858 = distinct !DICompileUnit(language: DW_LANG_C99, file: !859, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !860, retainedTypes: !1247, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!860 = !{!861}
!861 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !862, line: 41, baseType: !7, size: 32, elements: !863)
!862 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!864 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!865 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!866 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!867 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!868 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!869 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!870 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!871 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!872 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!873 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!874 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!875 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!876 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!877 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!878 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!879 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!880 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!881 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!882 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!883 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!884 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!885 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!886 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!887 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!888 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!889 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!890 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!891 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!892 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!893 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!894 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!895 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!896 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!897 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!898 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!899 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!900 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!901 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!902 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!903 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!904 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!905 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!906 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!907 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!908 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!909 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!910 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!911 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!912 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!913 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!972 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!975 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!976 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!977 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!978 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!979 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!980 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!981 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!982 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!983 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!984 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!985 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!986 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1059 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1132 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1133 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1134 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1135 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1136 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1137 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1138 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1139 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1140 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1141 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1142 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1143 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1144 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1145 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1146 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1148 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1149 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1150 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1151 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1152 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1153 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1179 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1180 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1181 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1182 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1183 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1184 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1185 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1186 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1187 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1188 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1189 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1190 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1191 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1215 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1216 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1217 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1218 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1219 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1224 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1225 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1226 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1227 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1247 = !{!1248, !91}
!1248 = !DISubprogram(name: "nl_langinfo", scope: !862, file: !862, line: 661, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!34, !38}
!1251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1252, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !1253, splitDebugInlining: false, nameTableKind: None)
!1252 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1253 = !{!91, !105}
!1254 = !{!"clang version 10.0.0 "}
!1255 = !{i32 7, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = !{i32 1, !"wchar_size", i32 4}
!1258 = !{i32 7, !"PIC Level", i32 2}
!1259 = !{i32 7, !"PIE Level", i32 2}
!1260 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 76, type: !129, scopeLine: 77, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "status", arg: 1, scope: !1260, file: !3, line: 76, type: !38)
!1263 = !DILocalVariable(name: "infomap", scope: !1264, file: !1265, line: 636, type: !1277)
!1264 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1265, file: !1265, line: 634, type: !103, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1265 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1266 = !{!1267, !1263, !1268, !1269, !1276}
!1267 = !DILocalVariable(name: "program", arg: 1, scope: !1264, file: !1265, line: 634, type: !36)
!1268 = !DILocalVariable(name: "node", scope: !1264, file: !1265, line: 646, type: !36)
!1269 = !DILocalVariable(name: "map_prog", scope: !1264, file: !1265, line: 647, type: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1264, file: !1265, line: 636, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1272, file: !1265, line: 636, baseType: !36, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1272, file: !1265, line: 636, baseType: !36, size: 64, offset: 64)
!1276 = !DILocalVariable(name: "lc_messages", scope: !1264, file: !1265, line: 659, type: !36)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 896, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 7)
!1280 = !DILocation(line: 636, column: 67, scope: !1264, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 94, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 81, column: 5)
!1283 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 78, column: 7)
!1284 = !DILocation(line: 0, scope: !1260)
!1285 = !DILocation(line: 78, column: 14, scope: !1283)
!1286 = !DILocation(line: 78, column: 7, scope: !1260)
!1287 = !DILocation(line: 79, column: 5, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 79, column: 5)
!1289 = !{!1290, !1290, i64 0}
!1290 = !{!"any pointer", !1291, i64 0}
!1291 = !{!"omnipotent char", !1292, i64 0}
!1292 = !{!"Simple C/C++ TBAA"}
!1293 = !DILocation(line: 82, column: 7, scope: !1282)
!1294 = !DILocation(line: 583, column: 3, scope: !1295, inlinedAt: !1296)
!1295 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1265, file: !1265, line: 581, type: !120, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!1296 = distinct !DILocation(line: 87, column: 7, scope: !1282)
!1297 = !DILocation(line: 89, column: 7, scope: !1282)
!1298 = !DILocation(line: 92, column: 7, scope: !1282)
!1299 = !DILocation(line: 93, column: 7, scope: !1282)
!1300 = !DILocation(line: 0, scope: !1264, inlinedAt: !1281)
!1301 = !DILocation(line: 636, column: 3, scope: !1264, inlinedAt: !1281)
!1302 = !DILocation(line: 647, column: 36, scope: !1264, inlinedAt: !1281)
!1303 = !DILocation(line: 649, column: 3, scope: !1264, inlinedAt: !1281)
!1304 = !DILocation(line: 649, column: 33, scope: !1264, inlinedAt: !1281)
!1305 = !DILocation(line: 650, column: 13, scope: !1264, inlinedAt: !1281)
!1306 = !DILocation(line: 649, column: 20, scope: !1264, inlinedAt: !1281)
!1307 = !{!1308, !1290, i64 0}
!1308 = !{!"infomap", !1290, i64 0, !1290, i64 8}
!1309 = !DILocation(line: 649, column: 10, scope: !1264, inlinedAt: !1281)
!1310 = !DILocation(line: 649, column: 28, scope: !1264, inlinedAt: !1281)
!1311 = distinct !{!1311, !1303, !1305}
!1312 = !DILocation(line: 652, column: 17, scope: !1313, inlinedAt: !1281)
!1313 = distinct !DILexicalBlock(scope: !1264, file: !1265, line: 652, column: 7)
!1314 = !{!1308, !1290, i64 8}
!1315 = !DILocation(line: 652, column: 7, scope: !1313, inlinedAt: !1281)
!1316 = !DILocation(line: 652, column: 7, scope: !1264, inlinedAt: !1281)
!1317 = !DILocation(line: 655, column: 3, scope: !1264, inlinedAt: !1281)
!1318 = !DILocation(line: 659, column: 29, scope: !1264, inlinedAt: !1281)
!1319 = !DILocation(line: 660, column: 7, scope: !1320, inlinedAt: !1281)
!1320 = distinct !DILexicalBlock(scope: !1264, file: !1265, line: 660, column: 7)
!1321 = !DILocation(line: 660, column: 19, scope: !1320, inlinedAt: !1281)
!1322 = !DILocation(line: 660, column: 22, scope: !1320, inlinedAt: !1281)
!1323 = !DILocation(line: 660, column: 7, scope: !1264, inlinedAt: !1281)
!1324 = !DILocation(line: 666, column: 7, scope: !1325, inlinedAt: !1281)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !1265, line: 661, column: 5)
!1326 = !DILocation(line: 668, column: 5, scope: !1325, inlinedAt: !1281)
!1327 = !DILocation(line: 669, column: 3, scope: !1264, inlinedAt: !1281)
!1328 = !DILocation(line: 671, column: 3, scope: !1264, inlinedAt: !1281)
!1329 = !DILocation(line: 673, column: 1, scope: !1264, inlinedAt: !1281)
!1330 = !DILocation(line: 97, column: 3, scope: !1260)
!1331 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 541, type: !1332, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!38, !38, !126}
!1334 = !{!1335, !1336, !1337}
!1335 = !DILocalVariable(name: "argc", arg: 1, scope: !1331, file: !3, line: 541, type: !38)
!1336 = !DILocalVariable(name: "argv", arg: 2, scope: !1331, file: !3, line: 541, type: !126)
!1337 = !DILocalVariable(name: "ok", scope: !1331, file: !3, line: 543, type: !127)
!1338 = !DILocalVariable(name: "tokenbuffer", scope: !1339, file: !3, line: 441, type: !1354)
!1339 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 435, type: !1340, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!127, !36}
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1338, !1348, !1349, !1351}
!1343 = !DILocalVariable(name: "file", arg: 1, scope: !1339, file: !3, line: 435, type: !36)
!1344 = !DILocalVariable(name: "ok", scope: !1339, file: !3, line: 437, type: !127)
!1345 = !DILocalVariable(name: "root", scope: !1339, file: !3, line: 438, type: !176)
!1346 = !DILocalVariable(name: "j", scope: !1339, file: !3, line: 439, type: !176)
!1347 = !DILocalVariable(name: "k", scope: !1339, file: !3, line: 440, type: !176)
!1348 = !DILocalVariable(name: "is_stdin", scope: !1339, file: !3, line: 442, type: !127)
!1349 = !DILocalVariable(name: "len", scope: !1350, file: !3, line: 457, type: !93)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 455, column: 5)
!1351 = !DILocalVariable(name: "p", scope: !1352, file: !3, line: 488, type: !186)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 487, column: 9)
!1353 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 482, column: 5)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !150, line: 31, baseType: !154)
!1355 = !DILocation(line: 441, column: 16, scope: !1339, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 563, column: 8, scope: !1331)
!1357 = !DILocation(line: 0, scope: !1331)
!1358 = !DILocation(line: 546, column: 21, scope: !1331)
!1359 = !DILocation(line: 546, column: 3, scope: !1331)
!1360 = !DILocation(line: 547, column: 3, scope: !1331)
!1361 = !DILocation(line: 548, column: 3, scope: !1331)
!1362 = !DILocation(line: 549, column: 3, scope: !1331)
!1363 = !DILocation(line: 551, column: 3, scope: !1331)
!1364 = !DILocation(line: 554, column: 36, scope: !1331)
!1365 = !DILocation(line: 553, column: 3, scope: !1331)
!1366 = !DILocation(line: 557, column: 18, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 557, column: 7)
!1368 = !{!1369, !1369, i64 0}
!1369 = !{!"int", !1291, i64 0}
!1370 = !DILocation(line: 557, column: 16, scope: !1367)
!1371 = !DILocation(line: 557, column: 9, scope: !1367)
!1372 = !DILocation(line: 557, column: 7, scope: !1331)
!1373 = !DILocation(line: 559, column: 20, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 558, column: 5)
!1375 = !DILocation(line: 559, column: 55, scope: !1374)
!1376 = !DILocation(line: 559, column: 62, scope: !1374)
!1377 = !DILocation(line: 559, column: 50, scope: !1374)
!1378 = !DILocation(line: 559, column: 43, scope: !1374)
!1379 = !DILocation(line: 559, column: 7, scope: !1374)
!1380 = !DILocation(line: 560, column: 7, scope: !1374)
!1381 = !DILocation(line: 563, column: 22, scope: !1331)
!1382 = !DILocation(line: 563, column: 15, scope: !1331)
!1383 = !DILocation(line: 563, column: 38, scope: !1331)
!1384 = !DILocation(line: 0, scope: !1339, inlinedAt: !1356)
!1385 = !DILocation(line: 441, column: 3, scope: !1339, inlinedAt: !1356)
!1386 = !DILocation(line: 442, column: 19, scope: !1339, inlinedAt: !1356)
!1387 = !DILocalVariable(name: "str", arg: 1, scope: !1388, file: !3, line: 102, type: !36)
!1388 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 102, type: !1389, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!176, !36}
!1391 = !{!1387, !1392}
!1392 = !DILocalVariable(name: "k", scope: !1388, file: !3, line: 104, type: !176)
!1393 = !DILocation(line: 0, scope: !1388, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 445, column: 10, scope: !1339, inlinedAt: !1356)
!1395 = !DILocation(line: 104, column: 20, scope: !1388, inlinedAt: !1394)
!1396 = !DILocation(line: 111, column: 6, scope: !1388, inlinedAt: !1394)
!1397 = !DILocation(line: 111, column: 12, scope: !1388, inlinedAt: !1394)
!1398 = !DILocation(line: 107, column: 11, scope: !1388, inlinedAt: !1394)
!1399 = !DILocation(line: 447, column: 17, scope: !1400, inlinedAt: !1356)
!1400 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 447, column: 7)
!1401 = !DILocation(line: 447, column: 42, scope: !1400, inlinedAt: !1356)
!1402 = !DILocation(line: 447, column: 22, scope: !1400, inlinedAt: !1356)
!1403 = !DILocation(line: 447, column: 7, scope: !1339, inlinedAt: !1356)
!1404 = !DILocation(line: 448, column: 5, scope: !1400, inlinedAt: !1356)
!1405 = !DILocation(line: 450, column: 12, scope: !1339, inlinedAt: !1356)
!1406 = !DILocation(line: 450, column: 3, scope: !1339, inlinedAt: !1356)
!1407 = !DILocation(line: 452, column: 3, scope: !1339, inlinedAt: !1356)
!1408 = !DILocation(line: 0, scope: !1350, inlinedAt: !1356)
!1409 = !DILocation(line: 0, scope: !1410, inlinedAt: !1424)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 132, column: 3)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 132, column: 3)
!1412 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 127, type: !1413, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!176, !176, !36}
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1416 = !DILocalVariable(name: "root", arg: 1, scope: !1412, file: !3, line: 127, type: !176)
!1417 = !DILocalVariable(name: "str", arg: 2, scope: !1412, file: !3, line: 127, type: !36)
!1418 = !DILocalVariable(name: "p", scope: !1412, file: !3, line: 129, type: !176)
!1419 = !DILocalVariable(name: "q", scope: !1412, file: !3, line: 129, type: !176)
!1420 = !DILocalVariable(name: "r", scope: !1412, file: !3, line: 129, type: !176)
!1421 = !DILocalVariable(name: "s", scope: !1412, file: !3, line: 129, type: !176)
!1422 = !DILocalVariable(name: "t", scope: !1412, file: !3, line: 129, type: !176)
!1423 = !DILocalVariable(name: "a", scope: !1412, file: !3, line: 130, type: !38)
!1424 = distinct !DILocation(line: 463, column: 11, scope: !1350, inlinedAt: !1356)
!1425 = !DILocation(line: 0, scope: !1426, inlinedAt: !1424)
!1426 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 136, column: 7)
!1427 = !DILocation(line: 454, column: 3, scope: !1339, inlinedAt: !1356)
!1428 = !DILocation(line: 440, column: 16, scope: !1339, inlinedAt: !1356)
!1429 = !DILocation(line: 457, column: 31, scope: !1350, inlinedAt: !1356)
!1430 = !DILocation(line: 457, column: 20, scope: !1350, inlinedAt: !1356)
!1431 = !DILocation(line: 458, column: 11, scope: !1350, inlinedAt: !1356)
!1432 = !DILocation(line: 461, column: 7, scope: !1433, inlinedAt: !1356)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 461, column: 7)
!1434 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 461, column: 7)
!1435 = !DILocation(line: 463, column: 42, scope: !1350, inlinedAt: !1356)
!1436 = !{!1437, !1290, i64 8}
!1437 = !{!"tokenbuffer", !1438, i64 0, !1290, i64 8}
!1438 = !{!"long", !1291, i64 0}
!1439 = !DILocation(line: 0, scope: !1412, inlinedAt: !1424)
!1440 = !DILocation(line: 132, column: 3, scope: !1411, inlinedAt: !1424)
!1441 = !DILocation(line: 132, column: 3, scope: !1410, inlinedAt: !1424)
!1442 = !DILocation(line: 136, column: 13, scope: !1426, inlinedAt: !1424)
!1443 = !{!1444, !1290, i64 16}
!1444 = !{!"item", !1290, i64 0, !1290, i64 8, !1290, i64 16, !1369, i64 24, !1438, i64 32, !1290, i64 40, !1290, i64 48}
!1445 = !DILocation(line: 136, column: 19, scope: !1426, inlinedAt: !1424)
!1446 = !DILocation(line: 136, column: 7, scope: !1412, inlinedAt: !1424)
!1447 = !DILocation(line: 146, column: 27, scope: !1448, inlinedAt: !1424)
!1448 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 144, column: 5)
!1449 = !{!1444, !1290, i64 0}
!1450 = !DILocation(line: 146, column: 11, scope: !1448, inlinedAt: !1424)
!1451 = !DILocation(line: 147, column: 13, scope: !1452, inlinedAt: !1424)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 147, column: 11)
!1453 = !DILocation(line: 147, column: 11, scope: !1448, inlinedAt: !1424)
!1454 = !DILocation(line: 0, scope: !1388, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 137, column: 27, scope: !1426, inlinedAt: !1424)
!1456 = !DILocation(line: 104, column: 20, scope: !1388, inlinedAt: !1455)
!1457 = !DILocation(line: 106, column: 13, scope: !1388, inlinedAt: !1455)
!1458 = !DILocation(line: 106, column: 19, scope: !1388, inlinedAt: !1455)
!1459 = !DILocation(line: 106, column: 6, scope: !1388, inlinedAt: !1455)
!1460 = !DILocation(line: 106, column: 10, scope: !1388, inlinedAt: !1455)
!1461 = !DILocation(line: 107, column: 6, scope: !1388, inlinedAt: !1455)
!1462 = !DILocation(line: 111, column: 6, scope: !1388, inlinedAt: !1455)
!1463 = !DILocation(line: 107, column: 11, scope: !1388, inlinedAt: !1455)
!1464 = !DILocation(line: 111, column: 12, scope: !1388, inlinedAt: !1455)
!1465 = !DILocation(line: 137, column: 25, scope: !1426, inlinedAt: !1424)
!1466 = !DILocation(line: 137, column: 5, scope: !1426, inlinedAt: !1424)
!1467 = !DILocation(line: 151, column: 13, scope: !1468, inlinedAt: !1424)
!1468 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 151, column: 11)
!1469 = !DILocation(line: 151, column: 11, scope: !1448, inlinedAt: !1424)
!1470 = !DILocation(line: 0, scope: !1468, inlinedAt: !1424)
!1471 = !DILocation(line: 156, column: 13, scope: !1472, inlinedAt: !1424)
!1472 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 156, column: 11)
!1473 = !DILocation(line: 156, column: 11, scope: !1448, inlinedAt: !1424)
!1474 = !DILocation(line: 0, scope: !1388, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 159, column: 15, scope: !1476, inlinedAt: !1424)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 157, column: 9)
!1477 = !DILocation(line: 104, column: 20, scope: !1388, inlinedAt: !1475)
!1478 = !DILocation(line: 106, column: 13, scope: !1388, inlinedAt: !1475)
!1479 = !DILocation(line: 106, column: 19, scope: !1388, inlinedAt: !1475)
!1480 = !DILocation(line: 106, column: 6, scope: !1388, inlinedAt: !1475)
!1481 = !DILocation(line: 106, column: 10, scope: !1388, inlinedAt: !1475)
!1482 = !DILocation(line: 107, column: 6, scope: !1388, inlinedAt: !1475)
!1483 = !DILocation(line: 111, column: 6, scope: !1388, inlinedAt: !1475)
!1484 = !DILocation(line: 107, column: 11, scope: !1388, inlinedAt: !1475)
!1485 = !DILocation(line: 111, column: 12, scope: !1388, inlinedAt: !1475)
!1486 = !DILocation(line: 162, column: 15, scope: !1476, inlinedAt: !1424)
!1487 = !DILocation(line: 0, scope: !1488, inlinedAt: !1424)
!1488 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 162, column: 15)
!1489 = !DILocation(line: 168, column: 11, scope: !1490, inlinedAt: !1424)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 168, column: 11)
!1491 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 168, column: 11)
!1492 = !DILocation(line: 168, column: 11, scope: !1491, inlinedAt: !1424)
!1493 = !DILocation(line: 169, column: 36, scope: !1494, inlinedAt: !1424)
!1494 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 169, column: 15)
!1495 = !DILocation(line: 169, column: 15, scope: !1476, inlinedAt: !1424)
!1496 = !DILocation(line: 0, scope: !1494, inlinedAt: !1424)
!1497 = !DILocation(line: 180, column: 20, scope: !1476, inlinedAt: !1424)
!1498 = !DILocation(line: 180, column: 11, scope: !1476, inlinedAt: !1424)
!1499 = !DILocation(line: 182, column: 15, scope: !1500, inlinedAt: !1424)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 182, column: 15)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 182, column: 15)
!1502 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 181, column: 13)
!1503 = !DILocation(line: 182, column: 15, scope: !1501, inlinedAt: !1424)
!1504 = !DILocation(line: 183, column: 40, scope: !1505, inlinedAt: !1424)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 183, column: 19)
!1506 = !DILocation(line: 0, scope: !1505, inlinedAt: !1424)
!1507 = !DILocation(line: 183, column: 19, scope: !1502, inlinedAt: !1424)
!1508 = !DILocation(line: 185, column: 30, scope: !1509, inlinedAt: !1424)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 184, column: 17)
!1510 = !{!1444, !1369, i64 24}
!1511 = !DILocation(line: 186, column: 26, scope: !1509, inlinedAt: !1424)
!1512 = !DILocation(line: 187, column: 17, scope: !1509, inlinedAt: !1424)
!1513 = !DILocation(line: 190, column: 30, scope: !1514, inlinedAt: !1424)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 189, column: 17)
!1515 = !DILocation(line: 191, column: 26, scope: !1514, inlinedAt: !1424)
!1516 = distinct !{!1516, !1498, !1517}
!1517 = !DILocation(line: 193, column: 13, scope: !1476, inlinedAt: !1424)
!1518 = !DILocation(line: 196, column: 18, scope: !1519, inlinedAt: !1424)
!1519 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 196, column: 15)
!1520 = !DILocation(line: 196, column: 26, scope: !1519, inlinedAt: !1424)
!1521 = !DILocation(line: 196, column: 31, scope: !1519, inlinedAt: !1424)
!1522 = !DILocation(line: 196, column: 48, scope: !1519, inlinedAt: !1424)
!1523 = !DILocation(line: 196, column: 45, scope: !1519, inlinedAt: !1424)
!1524 = !DILocation(line: 196, column: 15, scope: !1476, inlinedAt: !1424)
!1525 = !DILocation(line: 198, column: 26, scope: !1526, inlinedAt: !1424)
!1526 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 197, column: 13)
!1527 = !DILocation(line: 199, column: 15, scope: !1526, inlinedAt: !1424)
!1528 = !DILocation(line: 202, column: 18, scope: !1529, inlinedAt: !1424)
!1529 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 202, column: 15)
!1530 = !DILocation(line: 202, column: 26, scope: !1529, inlinedAt: !1424)
!1531 = !DILocation(line: 202, column: 15, scope: !1476, inlinedAt: !1424)
!1532 = !DILocation(line: 206, column: 19, scope: !1533, inlinedAt: !1424)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 203, column: 13)
!1534 = !DILocation(line: 0, scope: !1535, inlinedAt: !1424)
!1535 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 206, column: 19)
!1536 = !DILocation(line: 216, column: 39, scope: !1533, inlinedAt: !1424)
!1537 = !DILocation(line: 217, column: 13, scope: !1533, inlinedAt: !1424)
!1538 = !DILocation(line: 221, column: 19, scope: !1539, inlinedAt: !1424)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 219, column: 13)
!1540 = !DILocation(line: 223, column: 26, scope: !1541, inlinedAt: !1424)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 222, column: 17)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 221, column: 19)
!1543 = !DILocation(line: 224, column: 33, scope: !1541, inlinedAt: !1424)
!1544 = !{!1444, !1290, i64 8}
!1545 = !DILocation(line: 224, column: 28, scope: !1541, inlinedAt: !1424)
!1546 = !DILocation(line: 225, column: 27, scope: !1541, inlinedAt: !1424)
!1547 = !DILocation(line: 226, column: 32, scope: !1541, inlinedAt: !1424)
!1548 = !DILocation(line: 228, column: 17, scope: !1541, inlinedAt: !1424)
!1549 = !DILocation(line: 231, column: 26, scope: !1550, inlinedAt: !1424)
!1550 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 230, column: 17)
!1551 = !DILocation(line: 232, column: 32, scope: !1550, inlinedAt: !1424)
!1552 = !DILocation(line: 232, column: 27, scope: !1550, inlinedAt: !1424)
!1553 = !DILocation(line: 233, column: 28, scope: !1550, inlinedAt: !1424)
!1554 = !DILocation(line: 234, column: 33, scope: !1550, inlinedAt: !1424)
!1555 = !DILocation(line: 0, scope: !1542, inlinedAt: !1424)
!1556 = !DILocation(line: 238, column: 26, scope: !1539, inlinedAt: !1424)
!1557 = !DILocation(line: 239, column: 26, scope: !1539, inlinedAt: !1424)
!1558 = !DILocation(line: 240, column: 22, scope: !1559, inlinedAt: !1424)
!1559 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 240, column: 19)
!1560 = !DILocation(line: 240, column: 30, scope: !1559, inlinedAt: !1424)
!1561 = !DILocation(line: 240, column: 19, scope: !1539, inlinedAt: !1424)
!1562 = !DILocation(line: 241, column: 28, scope: !1559, inlinedAt: !1424)
!1563 = !DILocation(line: 241, column: 17, scope: !1559, inlinedAt: !1424)
!1564 = !DILocation(line: 242, column: 35, scope: !1565, inlinedAt: !1424)
!1565 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 242, column: 24)
!1566 = !DILocation(line: 242, column: 24, scope: !1559, inlinedAt: !1424)
!1567 = !DILocation(line: 243, column: 28, scope: !1565, inlinedAt: !1424)
!1568 = !DILocation(line: 243, column: 17, scope: !1565, inlinedAt: !1424)
!1569 = !DILocation(line: 0, scope: !1529, inlinedAt: !1424)
!1570 = !DILocation(line: 248, column: 23, scope: !1571, inlinedAt: !1424)
!1571 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 248, column: 15)
!1572 = !DILocation(line: 248, column: 17, scope: !1571, inlinedAt: !1424)
!1573 = !DILocation(line: 248, column: 15, scope: !1476, inlinedAt: !1424)
!1574 = !DILocation(line: 249, column: 22, scope: !1571, inlinedAt: !1424)
!1575 = !DILocation(line: 249, column: 13, scope: !1571, inlinedAt: !1424)
!1576 = !DILocation(line: 251, column: 16, scope: !1571, inlinedAt: !1424)
!1577 = !DILocation(line: 251, column: 21, scope: !1571, inlinedAt: !1424)
!1578 = !DILocation(line: 257, column: 14, scope: !1579, inlinedAt: !1424)
!1579 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 257, column: 11)
!1580 = !DILocation(line: 257, column: 11, scope: !1579, inlinedAt: !1424)
!1581 = !DILocation(line: 257, column: 11, scope: !1448, inlinedAt: !1424)
!1582 = distinct !{!1582, !1583, !1584}
!1583 = !DILocation(line: 143, column: 3, scope: !1412, inlinedAt: !1424)
!1584 = !DILocation(line: 264, column: 5, scope: !1412, inlinedAt: !1424)
!1585 = !DILocation(line: 464, column: 11, scope: !1586, inlinedAt: !1356)
!1586 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 464, column: 11)
!1587 = !DILocation(line: 464, column: 11, scope: !1350, inlinedAt: !1356)
!1588 = !DILocalVariable(name: "j", arg: 1, scope: !1589, file: !3, line: 272, type: !176)
!1589 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 272, type: !1590, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !176, !176}
!1592 = !{!1588, !1593, !1594}
!1593 = !DILocalVariable(name: "k", arg: 2, scope: !1589, file: !3, line: 272, type: !176)
!1594 = !DILocalVariable(name: "p", scope: !1589, file: !3, line: 274, type: !186)
!1595 = !DILocation(line: 0, scope: !1589, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 467, column: 11, scope: !1597, inlinedAt: !1356)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 465, column: 9)
!1598 = !DILocation(line: 276, column: 8, scope: !1599, inlinedAt: !1596)
!1599 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 276, column: 7)
!1600 = !DILocation(line: 276, column: 7, scope: !1589, inlinedAt: !1596)
!1601 = !DILocation(line: 278, column: 10, scope: !1602, inlinedAt: !1596)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 277, column: 5)
!1603 = !DILocation(line: 278, column: 15, scope: !1602, inlinedAt: !1596)
!1604 = !{!1444, !1438, i64 32}
!1605 = !DILocation(line: 279, column: 11, scope: !1602, inlinedAt: !1596)
!1606 = !DILocation(line: 280, column: 10, scope: !1602, inlinedAt: !1596)
!1607 = !DILocation(line: 280, column: 14, scope: !1602, inlinedAt: !1596)
!1608 = !{!1609, !1290, i64 0}
!1609 = !{!"successor", !1290, i64 0, !1290, i64 8}
!1610 = !DILocation(line: 281, column: 20, scope: !1602, inlinedAt: !1596)
!1611 = !{!1444, !1290, i64 48}
!1612 = !DILocation(line: 281, column: 10, scope: !1602, inlinedAt: !1596)
!1613 = !DILocation(line: 281, column: 15, scope: !1602, inlinedAt: !1596)
!1614 = !{!1609, !1290, i64 8}
!1615 = !DILocation(line: 282, column: 14, scope: !1602, inlinedAt: !1596)
!1616 = !DILocation(line: 283, column: 5, scope: !1602, inlinedAt: !1596)
!1617 = !DILocation(line: 474, column: 9, scope: !1618, inlinedAt: !1356)
!1618 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 474, column: 7)
!1619 = !DILocation(line: 474, column: 7, scope: !1339, inlinedAt: !1356)
!1620 = !DILocation(line: 475, column: 5, scope: !1618, inlinedAt: !1356)
!1621 = !DILocalVariable(name: "root", arg: 1, scope: !1622, file: !3, line: 426, type: !176)
!1622 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 426, type: !1623, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !176, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!127, !176}
!1628 = !{!1621, !1629}
!1629 = !DILocalVariable(name: "action", arg: 2, scope: !1622, file: !3, line: 426, type: !1625)
!1630 = !DILocation(line: 0, scope: !1622, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 479, column: 3, scope: !1339, inlinedAt: !1356)
!1632 = !DILocation(line: 428, column: 13, scope: !1633, inlinedAt: !1631)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 428, column: 7)
!1634 = !DILocation(line: 428, column: 7, scope: !1633, inlinedAt: !1631)
!1635 = !DILocation(line: 428, column: 7, scope: !1622, inlinedAt: !1631)
!1636 = !DILocation(line: 429, column: 5, scope: !1633, inlinedAt: !1631)
!1637 = !DILocation(line: 481, column: 10, scope: !1339, inlinedAt: !1356)
!1638 = !{!1438, !1438, i64 0}
!1639 = !DILocation(line: 481, column: 20, scope: !1339, inlinedAt: !1356)
!1640 = !DILocation(line: 481, column: 3, scope: !1339, inlinedAt: !1356)
!1641 = !DILocation(line: 0, scope: !1622, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 484, column: 7, scope: !1353, inlinedAt: !1356)
!1643 = !DILocation(line: 428, column: 7, scope: !1622, inlinedAt: !1642)
!1644 = !DILocation(line: 429, column: 5, scope: !1633, inlinedAt: !1642)
!1645 = !DILocation(line: 486, column: 14, scope: !1353, inlinedAt: !1356)
!1646 = !DILocation(line: 486, column: 7, scope: !1353, inlinedAt: !1356)
!1647 = !DILocation(line: 518, column: 11, scope: !1648, inlinedAt: !1356)
!1648 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 518, column: 11)
!1649 = !DILocation(line: 488, column: 39, scope: !1352, inlinedAt: !1356)
!1650 = !DILocation(line: 0, scope: !1352, inlinedAt: !1356)
!1651 = !DILocation(line: 491, column: 23, scope: !1352, inlinedAt: !1356)
!1652 = !DILocation(line: 491, column: 11, scope: !1352, inlinedAt: !1356)
!1653 = !DILocation(line: 497, column: 11, scope: !1352, inlinedAt: !1356)
!1654 = !DILocation(line: 497, column: 17, scope: !1352, inlinedAt: !1356)
!1655 = !DILocation(line: 497, column: 21, scope: !1352, inlinedAt: !1356)
!1656 = !DILocation(line: 498, column: 20, scope: !1352, inlinedAt: !1356)
!1657 = !DILocation(line: 501, column: 11, scope: !1352, inlinedAt: !1356)
!1658 = !DILocation(line: 503, column: 18, scope: !1659, inlinedAt: !1356)
!1659 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 502, column: 13)
!1660 = !DILocation(line: 503, column: 23, scope: !1659, inlinedAt: !1356)
!1661 = !DILocation(line: 503, column: 28, scope: !1659, inlinedAt: !1356)
!1662 = !DILocation(line: 504, column: 33, scope: !1663, inlinedAt: !1356)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 504, column: 19)
!1664 = !DILocation(line: 504, column: 19, scope: !1659, inlinedAt: !1356)
!1665 = !DILocation(line: 506, column: 19, scope: !1666, inlinedAt: !1356)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 505, column: 17)
!1667 = !DILocation(line: 506, column: 26, scope: !1666, inlinedAt: !1356)
!1668 = !DILocation(line: 506, column: 32, scope: !1666, inlinedAt: !1356)
!1669 = !{!1444, !1290, i64 40}
!1670 = !DILocation(line: 507, column: 25, scope: !1666, inlinedAt: !1356)
!1671 = !DILocation(line: 508, column: 17, scope: !1666, inlinedAt: !1356)
!1672 = !DILocation(line: 510, column: 22, scope: !1659, inlinedAt: !1356)
!1673 = distinct !{!1673, !1657, !1674}
!1674 = !DILocation(line: 511, column: 13, scope: !1352, inlinedAt: !1356)
!1675 = !DILocation(line: 514, column: 24, scope: !1352, inlinedAt: !1356)
!1676 = !DILocation(line: 514, column: 16, scope: !1352, inlinedAt: !1356)
!1677 = distinct !{!1677, !1646, !1678}
!1678 = !DILocation(line: 515, column: 9, scope: !1353, inlinedAt: !1356)
!1679 = !DILocation(line: 518, column: 21, scope: !1648, inlinedAt: !1356)
!1680 = !DILocation(line: 518, column: 11, scope: !1353, inlinedAt: !1356)
!1681 = !DILocation(line: 521, column: 24, scope: !1682, inlinedAt: !1356)
!1682 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 519, column: 9)
!1683 = !DILocation(line: 521, column: 57, scope: !1682, inlinedAt: !1356)
!1684 = !DILocation(line: 521, column: 11, scope: !1682, inlinedAt: !1356)
!1685 = !DILocation(line: 525, column: 11, scope: !1682, inlinedAt: !1356)
!1686 = !DILocation(line: 0, scope: !1622, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 526, column: 13, scope: !1682, inlinedAt: !1356)
!1688 = !DILocation(line: 428, column: 7, scope: !1622, inlinedAt: !1687)
!1689 = !DILocation(line: 429, column: 5, scope: !1633, inlinedAt: !1687)
!1690 = !DILocation(line: 527, column: 18, scope: !1682, inlinedAt: !1356)
!1691 = !DILocation(line: 526, column: 13, scope: !1682, inlinedAt: !1356)
!1692 = distinct !{!1692, !1685, !1693}
!1693 = !DILocation(line: 527, column: 22, scope: !1682, inlinedAt: !1356)
!1694 = distinct !{!1694, !1640, !1695}
!1695 = !DILocation(line: 529, column: 5, scope: !1339, inlinedAt: !1356)
!1696 = !DILocation(line: 533, column: 15, scope: !1697, inlinedAt: !1356)
!1697 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 533, column: 7)
!1698 = !DILocation(line: 533, column: 7, scope: !1697, inlinedAt: !1356)
!1699 = !DILocation(line: 533, column: 22, scope: !1697, inlinedAt: !1356)
!1700 = !DILocation(line: 533, column: 7, scope: !1339, inlinedAt: !1356)
!1701 = !DILocation(line: 534, column: 5, scope: !1697, inlinedAt: !1356)
!1702 = !DILocation(line: 537, column: 10, scope: !1339, inlinedAt: !1356)
!1703 = !DILocation(line: 538, column: 1, scope: !1339, inlinedAt: !1356)
!1704 = !DILocation(line: 565, column: 10, scope: !1331)
!1705 = !DILocation(line: 565, column: 3, scope: !1331)
!1706 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 287, type: !1626, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "unused", arg: 1, scope: !1706, file: !3, line: 287, type: !176)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 289, column: 12, scope: !1706)
!1711 = !DILocation(line: 290, column: 3, scope: !1706)
!1712 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 403, type: !1713, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!127, !176, !1625}
!1715 = !{!1716, !1717}
!1716 = !DILocalVariable(name: "root", arg: 1, scope: !1712, file: !3, line: 403, type: !176)
!1717 = !DILocalVariable(name: "action", arg: 2, scope: !1712, file: !3, line: 403, type: !1625)
!1718 = !DILocation(line: 0, scope: !1712)
!1719 = !DILocation(line: 405, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 405, column: 7)
!1721 = !DILocation(line: 405, column: 18, scope: !1720)
!1722 = !DILocation(line: 405, column: 26, scope: !1720)
!1723 = !DILocation(line: 405, column: 35, scope: !1720)
!1724 = !DILocation(line: 405, column: 41, scope: !1720)
!1725 = !DILocation(line: 405, column: 7, scope: !1712)
!1726 = !DILocation(line: 406, column: 12, scope: !1720)
!1727 = !{i1 (%struct.item*)* @count_items, i1 (%struct.item*)* @detect_loop, i1 (%struct.item*)* @scan_zeros}
!1728 = !DILocation(line: 406, column: 5, scope: !1720)
!1729 = !DILocation(line: 410, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 410, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 409, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 408, column: 5)
!1733 = !DILocation(line: 410, column: 13, scope: !1731)
!1734 = !DILocation(line: 412, column: 11, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 412, column: 11)
!1736 = !DILocation(line: 412, column: 11, scope: !1732)
!1737 = !DILocation(line: 414, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 414, column: 11)
!1739 = !DILocation(line: 414, column: 23, scope: !1738)
!1740 = !DILocation(line: 414, column: 11, scope: !1732)
!1741 = !DILocation(line: 415, column: 13, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 415, column: 13)
!1743 = !DILocation(line: 415, column: 13, scope: !1738)
!1744 = !DILocation(line: 419, column: 3, scope: !1712)
!1745 = !DILocation(line: 420, column: 1, scope: !1712)
!1746 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 294, type: !1626, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1747)
!1747 = !{!1748}
!1748 = !DILocalVariable(name: "k", arg: 1, scope: !1746, file: !3, line: 294, type: !176)
!1749 = !DILocation(line: 0, scope: !1746)
!1750 = !DILocation(line: 297, column: 10, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 297, column: 7)
!1752 = !DILocation(line: 297, column: 16, scope: !1751)
!1753 = !DILocation(line: 297, column: 21, scope: !1751)
!1754 = !DILocation(line: 297, column: 27, scope: !1751)
!1755 = !DILocation(line: 297, column: 24, scope: !1751)
!1756 = !DILocation(line: 297, column: 7, scope: !1746)
!1757 = !DILocation(line: 299, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 299, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 298, column: 5)
!1760 = !DILocation(line: 299, column: 16, scope: !1758)
!1761 = !DILocation(line: 299, column: 11, scope: !1759)
!1762 = !DILocation(line: 0, scope: !1758)
!1763 = !DILocation(line: 304, column: 13, scope: !1759)
!1764 = !DILocation(line: 305, column: 5, scope: !1759)
!1765 = !DILocation(line: 307, column: 3, scope: !1746)
!1766 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 329, type: !1626, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1767 = !{!1768, !1769, !1775, !1782}
!1768 = !DILocalVariable(name: "k", arg: 1, scope: !1766, file: !3, line: 329, type: !176)
!1769 = !DILocalVariable(name: "p", scope: !1770, file: !3, line: 341, type: !1774)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 340, column: 9)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 336, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 332, column: 5)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 331, column: 7)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1775 = !DILocalVariable(name: "tmp", scope: !1776, file: !3, line: 352, type: !176)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 351, column: 25)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 348, column: 21)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 347, column: 23)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 346, column: 17)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 345, column: 19)
!1781 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 344, column: 13)
!1782 = !DILocalVariable(name: "tmp", scope: !1783, file: !3, line: 373, type: !176)
!1783 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 372, column: 25)
!1784 = !DILocation(line: 0, scope: !1766)
!1785 = !DILocation(line: 331, column: 10, scope: !1773)
!1786 = !DILocation(line: 331, column: 16, scope: !1773)
!1787 = !DILocation(line: 331, column: 7, scope: !1766)
!1788 = !DILocation(line: 336, column: 11, scope: !1771)
!1789 = !DILocation(line: 336, column: 16, scope: !1771)
!1790 = !DILocation(line: 336, column: 11, scope: !1772)
!1791 = !DILocation(line: 338, column: 14, scope: !1771)
!1792 = !DILocation(line: 338, column: 9, scope: !1771)
!1793 = !DILocation(line: 341, column: 38, scope: !1770)
!1794 = !DILocation(line: 0, scope: !1770)
!1795 = !DILocation(line: 343, column: 18, scope: !1770)
!1796 = !DILocation(line: 343, column: 11, scope: !1770)
!1797 = !DILocation(line: 345, column: 25, scope: !1780)
!1798 = !DILocation(line: 345, column: 29, scope: !1780)
!1799 = !DILocation(line: 345, column: 19, scope: !1781)
!1800 = !DILocation(line: 391, column: 26, scope: !1781)
!1801 = distinct !{!1801, !1796, !1802}
!1802 = !DILocation(line: 392, column: 13, scope: !1770)
!1803 = !DILocation(line: 347, column: 26, scope: !1778)
!1804 = !DILocation(line: 347, column: 23, scope: !1778)
!1805 = !DILocation(line: 347, column: 23, scope: !1779)
!1806 = !DILocation(line: 352, column: 52, scope: !1776)
!1807 = !DILocation(line: 0, scope: !1776)
!1808 = !DILocation(line: 354, column: 53, scope: !1776)
!1809 = !DILocation(line: 354, column: 27, scope: !1776)
!1810 = !DILocation(line: 357, column: 31, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 357, column: 31)
!1812 = !DILocation(line: 357, column: 36, scope: !1811)
!1813 = !DILocation(line: 357, column: 31, scope: !1776)
!1814 = !DILocation(line: 360, column: 32, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 358, column: 29)
!1816 = !DILocation(line: 360, column: 37, scope: !1815)
!1817 = !DILocation(line: 360, column: 42, scope: !1815)
!1818 = !DILocation(line: 360, column: 47, scope: !1815)
!1819 = !DILocation(line: 361, column: 42, scope: !1815)
!1820 = !DILocation(line: 361, column: 34, scope: !1815)
!1821 = !DILocation(line: 367, column: 33, scope: !1776)
!1822 = !DILocation(line: 367, column: 39, scope: !1776)
!1823 = !DILocation(line: 368, column: 32, scope: !1776)
!1824 = !DILocation(line: 350, column: 23, scope: !1777)
!1825 = !DILocation(line: 371, column: 23, scope: !1777)
!1826 = !DILocation(line: 371, column: 30, scope: !1777)
!1827 = !DILocation(line: 373, column: 52, scope: !1783)
!1828 = !DILocation(line: 0, scope: !1783)
!1829 = !DILocation(line: 375, column: 39, scope: !1783)
!1830 = distinct !{!1830, !1825, !1831}
!1831 = !DILocation(line: 377, column: 25, scope: !1777)
!1832 = !DILocation(line: 385, column: 32, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 384, column: 21)
!1834 = !DILocation(line: 386, column: 28, scope: !1833)
!1835 = !DILocation(line: 387, column: 23, scope: !1833)
!1836 = !DILocation(line: 376, column: 32, scope: !1783)
!1837 = !DILocation(line: 397, column: 1, scope: !1766)
!1838 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !203, file: !203, line: 51, type: !103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1839)
!1839 = !{!1840}
!1840 = !DILocalVariable(name: "file", arg: 1, scope: !1838, file: !203, line: 51, type: !36)
!1841 = !DILocation(line: 0, scope: !1838)
!1842 = !DILocation(line: 53, column: 13, scope: !1838)
!1843 = !DILocation(line: 54, column: 1, scope: !1838)
!1844 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !203, file: !203, line: 88, type: !1845, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !127}
!1847 = !{!1848}
!1848 = !DILocalVariable(name: "ignore", arg: 1, scope: !1844, file: !203, line: 88, type: !127)
!1849 = !DILocation(line: 0, scope: !1844)
!1850 = !DILocation(line: 90, column: 16, scope: !1844)
!1851 = !{!1852, !1852, i64 0}
!1852 = !{!"_Bool", !1291, i64 0}
!1853 = !DILocation(line: 91, column: 1, scope: !1844)
!1854 = distinct !DISubprogram(name: "close_stdout", scope: !203, file: !203, line: 117, type: !120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "write_error", scope: !1857, file: !203, line: 122, type: !36)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !203, line: 121, column: 5)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !203, line: 119, column: 7)
!1859 = !DILocation(line: 119, column: 21, scope: !1858)
!1860 = !DILocation(line: 119, column: 7, scope: !1858)
!1861 = !DILocation(line: 119, column: 29, scope: !1858)
!1862 = !DILocation(line: 120, column: 7, scope: !1858)
!1863 = !DILocation(line: 120, column: 12, scope: !1858)
!1864 = !{i8 0, i8 2}
!1865 = !DILocation(line: 120, column: 25, scope: !1858)
!1866 = !DILocation(line: 120, column: 28, scope: !1858)
!1867 = !DILocation(line: 120, column: 34, scope: !1858)
!1868 = !DILocation(line: 119, column: 7, scope: !1854)
!1869 = !DILocation(line: 122, column: 33, scope: !1857)
!1870 = !DILocation(line: 0, scope: !1857)
!1871 = !DILocation(line: 123, column: 11, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1857, file: !203, line: 123, column: 11)
!1873 = !DILocation(line: 0, scope: !1872)
!1874 = !DILocation(line: 123, column: 11, scope: !1857)
!1875 = !DILocation(line: 124, column: 36, scope: !1872)
!1876 = !DILocation(line: 124, column: 9, scope: !1872)
!1877 = !DILocation(line: 127, column: 9, scope: !1872)
!1878 = !DILocation(line: 129, column: 14, scope: !1857)
!1879 = !DILocation(line: 129, column: 7, scope: !1857)
!1880 = !DILocation(line: 134, column: 42, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1854, file: !203, line: 134, column: 7)
!1882 = !DILocation(line: 134, column: 28, scope: !1881)
!1883 = !DILocation(line: 134, column: 50, scope: !1881)
!1884 = !DILocation(line: 134, column: 7, scope: !1854)
!1885 = !DILocation(line: 135, column: 12, scope: !1881)
!1886 = !DILocation(line: 135, column: 5, scope: !1881)
!1887 = !DILocation(line: 136, column: 1, scope: !1854)
!1888 = distinct !DISubprogram(name: "fdadvise", scope: !491, file: !491, line: 31, type: !1889, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !1893)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !38, !1891, !1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !41, line: 63, baseType: !67)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1893 = !{!1894, !1895, !1896, !1897, !1898}
!1894 = !DILocalVariable(name: "fd", arg: 1, scope: !1888, file: !491, line: 31, type: !38)
!1895 = !DILocalVariable(name: "offset", arg: 2, scope: !1888, file: !491, line: 31, type: !1891)
!1896 = !DILocalVariable(name: "len", arg: 3, scope: !1888, file: !491, line: 31, type: !1891)
!1897 = !DILocalVariable(name: "advice", arg: 4, scope: !1888, file: !491, line: 31, type: !1892)
!1898 = !DILocalVariable(name: "__x", scope: !1899, file: !491, line: 34, type: !38)
!1899 = distinct !DILexicalBlock(scope: !1888, file: !491, line: 34, column: 3)
!1900 = !DILocation(line: 0, scope: !1888)
!1901 = !DILocation(line: 34, column: 3, scope: !1899)
!1902 = !DILocation(line: 0, scope: !1899)
!1903 = !DILocation(line: 36, column: 1, scope: !1888)
!1904 = distinct !DISubprogram(name: "fadvise", scope: !491, file: !491, line: 39, type: !1905, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !1910)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1907, !1892}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !502)
!1909 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1910 = !{!1911, !1912}
!1911 = !DILocalVariable(name: "fp", arg: 1, scope: !1904, file: !491, line: 39, type: !1907)
!1912 = !DILocalVariable(name: "advice", arg: 2, scope: !1904, file: !491, line: 39, type: !1892)
!1913 = !DILocation(line: 0, scope: !1904)
!1914 = !DILocation(line: 41, column: 7, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1904, file: !491, line: 41, column: 7)
!1916 = !DILocation(line: 41, column: 7, scope: !1904)
!1917 = !DILocation(line: 42, column: 15, scope: !1915)
!1918 = !DILocation(line: 0, scope: !1888, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 42, column: 5, scope: !1915)
!1920 = !DILocation(line: 34, column: 3, scope: !1899, inlinedAt: !1919)
!1921 = !DILocation(line: 0, scope: !1899, inlinedAt: !1919)
!1922 = !DILocation(line: 42, column: 5, scope: !1915)
!1923 = !DILocation(line: 43, column: 1, scope: !1904)
!1924 = distinct !DISubprogram(name: "freopen_safer", scope: !534, file: !534, line: 62, type: !1925, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !533, retainedNodes: !1929)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1927, !36, !36, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !540)
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936}
!1930 = !DILocalVariable(name: "name", arg: 1, scope: !1924, file: !534, line: 62, type: !36)
!1931 = !DILocalVariable(name: "mode", arg: 2, scope: !1924, file: !534, line: 62, type: !36)
!1932 = !DILocalVariable(name: "f", arg: 3, scope: !1924, file: !534, line: 62, type: !1927)
!1933 = !DILocalVariable(name: "protect_in", scope: !1924, file: !534, line: 70, type: !127)
!1934 = !DILocalVariable(name: "protect_out", scope: !1924, file: !534, line: 71, type: !127)
!1935 = !DILocalVariable(name: "protect_err", scope: !1924, file: !534, line: 72, type: !127)
!1936 = !DILocalVariable(name: "saved_errno", scope: !1924, file: !534, line: 73, type: !38)
!1937 = !DILocation(line: 0, scope: !1924)
!1938 = !DILocation(line: 75, column: 11, scope: !1924)
!1939 = !DILocation(line: 75, column: 3, scope: !1924)
!1940 = !DILocation(line: 78, column: 11, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !534, line: 78, column: 11)
!1942 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 76, column: 5)
!1943 = !DILocation(line: 78, column: 47, scope: !1941)
!1944 = !DILocation(line: 78, column: 11, scope: !1942)
!1945 = !DILocation(line: 82, column: 11, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !534, line: 82, column: 11)
!1947 = !DILocation(line: 82, column: 47, scope: !1946)
!1948 = !DILocation(line: 82, column: 11, scope: !1942)
!1949 = !DILocation(line: 86, column: 11, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1942, file: !534, line: 86, column: 11)
!1951 = !DILocation(line: 86, column: 45, scope: !1950)
!1952 = !DILocation(line: 93, column: 18, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 93, column: 7)
!1954 = !DILocalVariable(name: "fd", arg: 1, scope: !1955, file: !534, line: 40, type: !38)
!1955 = distinct !DISubprogram(name: "protect_fd", scope: !534, file: !534, line: 40, type: !811, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !533, retainedNodes: !1956)
!1956 = !{!1954, !1957}
!1957 = !DILocalVariable(name: "value", scope: !1955, file: !534, line: 42, type: !38)
!1958 = !DILocation(line: 0, scope: !1955, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 93, column: 22, scope: !1953)
!1960 = !DILocation(line: 42, column: 15, scope: !1955, inlinedAt: !1959)
!1961 = !DILocation(line: 43, column: 13, scope: !1962, inlinedAt: !1959)
!1962 = distinct !DILexicalBlock(scope: !1955, file: !534, line: 43, column: 7)
!1963 = !DILocation(line: 43, column: 7, scope: !1955, inlinedAt: !1959)
!1964 = !DILocation(line: 45, column: 13, scope: !1965, inlinedAt: !1959)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !534, line: 45, column: 11)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !534, line: 44, column: 5)
!1967 = !DILocation(line: 45, column: 11, scope: !1966, inlinedAt: !1959)
!1968 = !DILocation(line: 47, column: 11, scope: !1969, inlinedAt: !1959)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !534, line: 46, column: 9)
!1970 = !DILocation(line: 48, column: 11, scope: !1969, inlinedAt: !1959)
!1971 = !DILocation(line: 48, column: 17, scope: !1969, inlinedAt: !1959)
!1972 = !DILocation(line: 49, column: 9, scope: !1969, inlinedAt: !1959)
!1973 = !DILocation(line: 95, column: 12, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1953, file: !534, line: 95, column: 12)
!1975 = !DILocation(line: 95, column: 24, scope: !1974)
!1976 = !DILocation(line: 0, scope: !1955, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 95, column: 28, scope: !1974)
!1978 = !DILocation(line: 42, column: 15, scope: !1955, inlinedAt: !1977)
!1979 = !DILocation(line: 43, column: 13, scope: !1962, inlinedAt: !1977)
!1980 = !DILocation(line: 43, column: 7, scope: !1955, inlinedAt: !1977)
!1981 = !DILocation(line: 45, column: 13, scope: !1965, inlinedAt: !1977)
!1982 = !DILocation(line: 45, column: 11, scope: !1966, inlinedAt: !1977)
!1983 = !DILocation(line: 47, column: 11, scope: !1969, inlinedAt: !1977)
!1984 = !DILocation(line: 48, column: 11, scope: !1969, inlinedAt: !1977)
!1985 = !DILocation(line: 48, column: 17, scope: !1969, inlinedAt: !1977)
!1986 = !DILocation(line: 49, column: 9, scope: !1969, inlinedAt: !1977)
!1987 = !DILocation(line: 97, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1974, file: !534, line: 97, column: 12)
!1989 = !DILocation(line: 97, column: 24, scope: !1988)
!1990 = !DILocation(line: 0, scope: !1955, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 97, column: 28, scope: !1988)
!1992 = !DILocation(line: 42, column: 15, scope: !1955, inlinedAt: !1991)
!1993 = !DILocation(line: 43, column: 13, scope: !1962, inlinedAt: !1991)
!1994 = !DILocation(line: 43, column: 7, scope: !1955, inlinedAt: !1991)
!1995 = !DILocation(line: 45, column: 13, scope: !1965, inlinedAt: !1991)
!1996 = !DILocation(line: 45, column: 11, scope: !1966, inlinedAt: !1991)
!1997 = !DILocation(line: 47, column: 11, scope: !1969, inlinedAt: !1991)
!1998 = !DILocation(line: 48, column: 11, scope: !1969, inlinedAt: !1991)
!1999 = !DILocation(line: 48, column: 17, scope: !1969, inlinedAt: !1991)
!2000 = !DILocation(line: 49, column: 9, scope: !1969, inlinedAt: !1991)
!2001 = !DILocation(line: 100, column: 9, scope: !1988)
!2002 = !DILocation(line: 101, column: 17, scope: !1924)
!2003 = !DILocation(line: 102, column: 7, scope: !1924)
!2004 = !DILocation(line: 0, scope: !1953)
!2005 = !DILocation(line: 102, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 102, column: 7)
!2007 = !DILocation(line: 103, column: 5, scope: !2006)
!2008 = !DILocation(line: 104, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 104, column: 7)
!2010 = !DILocation(line: 104, column: 7, scope: !1924)
!2011 = !DILocation(line: 105, column: 5, scope: !2009)
!2012 = !DILocation(line: 106, column: 7, scope: !1924)
!2013 = !DILocation(line: 107, column: 5, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 106, column: 7)
!2015 = !DILocation(line: 108, column: 8, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1924, file: !534, line: 108, column: 7)
!2017 = !DILocation(line: 108, column: 7, scope: !1924)
!2018 = !DILocation(line: 109, column: 11, scope: !2016)
!2019 = !DILocation(line: 109, column: 5, scope: !2016)
!2020 = !DILocation(line: 110, column: 3, scope: !1924)
!2021 = distinct !DISubprogram(name: "parse_long_options", scope: !254, file: !254, line: 45, type: !2022, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !38, !126, !36, !36, !36, !128, null}
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!2025 = !DILocalVariable(name: "argc", arg: 1, scope: !2021, file: !254, line: 45, type: !38)
!2026 = !DILocalVariable(name: "argv", arg: 2, scope: !2021, file: !254, line: 46, type: !126)
!2027 = !DILocalVariable(name: "command_name", arg: 3, scope: !2021, file: !254, line: 47, type: !36)
!2028 = !DILocalVariable(name: "package", arg: 4, scope: !2021, file: !254, line: 48, type: !36)
!2029 = !DILocalVariable(name: "version", arg: 5, scope: !2021, file: !254, line: 49, type: !36)
!2030 = !DILocalVariable(name: "usage_func", arg: 6, scope: !2021, file: !254, line: 50, type: !128)
!2031 = !DILocalVariable(name: "c", scope: !2021, file: !254, line: 53, type: !38)
!2032 = !DILocalVariable(name: "saved_opterr", scope: !2021, file: !254, line: 54, type: !38)
!2033 = !DILocalVariable(name: "authors", scope: !2034, file: !254, line: 72, type: !2038)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !254, line: 71, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !254, line: 65, column: 9)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !254, line: 63, column: 5)
!2037 = distinct !DILexicalBlock(scope: !2021, file: !254, line: 61, column: 7)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2040, line: 32, baseType: !2041)
!2040 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !254, line: 72, baseType: !2042)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 192, elements: !76)
!2043 = !DILocation(line: 0, scope: !2021)
!2044 = !DILocation(line: 56, column: 18, scope: !2021)
!2045 = !DILocation(line: 59, column: 10, scope: !2021)
!2046 = !DILocation(line: 61, column: 12, scope: !2037)
!2047 = !DILocation(line: 62, column: 7, scope: !2037)
!2048 = !DILocation(line: 62, column: 15, scope: !2037)
!2049 = !DILocation(line: 61, column: 7, scope: !2021)
!2050 = !DILocation(line: 67, column: 11, scope: !2035)
!2051 = !DILocation(line: 68, column: 11, scope: !2035)
!2052 = !DILocation(line: 72, column: 13, scope: !2034)
!2053 = !DILocation(line: 72, column: 21, scope: !2034)
!2054 = !DILocation(line: 73, column: 13, scope: !2034)
!2055 = !DILocation(line: 74, column: 29, scope: !2034)
!2056 = !DILocation(line: 74, column: 13, scope: !2034)
!2057 = !DILocation(line: 75, column: 13, scope: !2034)
!2058 = !DILocation(line: 85, column: 10, scope: !2021)
!2059 = !DILocation(line: 89, column: 10, scope: !2021)
!2060 = !DILocation(line: 90, column: 1, scope: !2021)
!2061 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !254, file: !254, line: 98, type: !124, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !253, retainedNodes: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!2063 = !DILocalVariable(name: "argc", arg: 1, scope: !2061, file: !254, line: 98, type: !38)
!2064 = !DILocalVariable(name: "argv", arg: 2, scope: !2061, file: !254, line: 99, type: !126)
!2065 = !DILocalVariable(name: "command_name", arg: 3, scope: !2061, file: !254, line: 100, type: !36)
!2066 = !DILocalVariable(name: "package", arg: 4, scope: !2061, file: !254, line: 101, type: !36)
!2067 = !DILocalVariable(name: "version", arg: 5, scope: !2061, file: !254, line: 102, type: !36)
!2068 = !DILocalVariable(name: "scan_all", arg: 6, scope: !2061, file: !254, line: 103, type: !127)
!2069 = !DILocalVariable(name: "usage_func", arg: 7, scope: !2061, file: !254, line: 104, type: !128)
!2070 = !DILocalVariable(name: "c", scope: !2061, file: !254, line: 107, type: !38)
!2071 = !DILocalVariable(name: "saved_opterr", scope: !2061, file: !254, line: 108, type: !38)
!2072 = !DILocalVariable(name: "optstring", scope: !2061, file: !254, line: 113, type: !36)
!2073 = !DILocalVariable(name: "authors", scope: !2074, file: !254, line: 125, type: !2038)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !254, line: 124, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !254, line: 118, column: 9)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !254, line: 116, column: 5)
!2077 = distinct !DILexicalBlock(scope: !2061, file: !254, line: 115, column: 7)
!2078 = !DILocation(line: 0, scope: !2061)
!2079 = !DILocation(line: 108, column: 22, scope: !2061)
!2080 = !DILocation(line: 111, column: 10, scope: !2061)
!2081 = !DILocation(line: 113, column: 27, scope: !2061)
!2082 = !DILocation(line: 115, column: 12, scope: !2077)
!2083 = !DILocation(line: 115, column: 7, scope: !2061)
!2084 = !DILocation(line: 125, column: 13, scope: !2074)
!2085 = !DILocation(line: 125, column: 21, scope: !2074)
!2086 = !DILocation(line: 126, column: 13, scope: !2074)
!2087 = !DILocation(line: 127, column: 29, scope: !2074)
!2088 = !DILocation(line: 127, column: 13, scope: !2074)
!2089 = !DILocation(line: 128, column: 13, scope: !2074)
!2090 = !DILocation(line: 132, column: 26, scope: !2075)
!2091 = !DILocation(line: 133, column: 11, scope: !2075)
!2092 = !DILocation(line: 0, scope: !2075)
!2093 = !DILocation(line: 138, column: 10, scope: !2061)
!2094 = !DILocation(line: 139, column: 1, scope: !2061)
!2095 = distinct !DISubprogram(name: "set_program_name", scope: !321, file: !321, line: 39, type: !103, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DILocalVariable(name: "argv0", arg: 1, scope: !2095, file: !321, line: 39, type: !36)
!2098 = !DILocalVariable(name: "slash", scope: !2095, file: !321, line: 46, type: !36)
!2099 = !DILocalVariable(name: "base", scope: !2095, file: !321, line: 47, type: !36)
!2100 = !DILocation(line: 0, scope: !2095)
!2101 = !DILocation(line: 51, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2095, file: !321, line: 51, column: 7)
!2103 = !DILocation(line: 51, column: 7, scope: !2095)
!2104 = !DILocation(line: 55, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !321, line: 52, column: 5)
!2106 = !DILocation(line: 54, column: 7, scope: !2105)
!2107 = !DILocation(line: 56, column: 7, scope: !2105)
!2108 = !DILocation(line: 59, column: 11, scope: !2095)
!2109 = !DILocation(line: 60, column: 17, scope: !2095)
!2110 = !DILocation(line: 60, column: 11, scope: !2095)
!2111 = !DILocation(line: 61, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2095, file: !321, line: 61, column: 7)
!2113 = !DILocation(line: 61, column: 20, scope: !2112)
!2114 = !DILocation(line: 61, column: 25, scope: !2112)
!2115 = !DILocation(line: 61, column: 42, scope: !2112)
!2116 = !DILocation(line: 61, column: 28, scope: !2112)
!2117 = !DILocation(line: 61, column: 61, scope: !2112)
!2118 = !DILocation(line: 61, column: 7, scope: !2095)
!2119 = !DILocation(line: 64, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !321, line: 64, column: 11)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !321, line: 62, column: 5)
!2122 = !DILocation(line: 64, column: 36, scope: !2120)
!2123 = !DILocation(line: 64, column: 11, scope: !2121)
!2124 = !DILocation(line: 66, column: 24, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2120, file: !321, line: 65, column: 9)
!2126 = !DILocation(line: 70, column: 41, scope: !2125)
!2127 = !DILocation(line: 72, column: 9, scope: !2125)
!2128 = !DILocation(line: 84, column: 16, scope: !2095)
!2129 = !DILocation(line: 90, column: 27, scope: !2095)
!2130 = !DILocation(line: 92, column: 1, scope: !2095)
!2131 = distinct !DISubprogram(name: "clone_quoting_options", scope: !362, file: !362, line: 122, type: !2132, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2135)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!2134, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "o", arg: 1, scope: !2131, file: !362, line: 122, type: !2134)
!2137 = !DILocalVariable(name: "e", scope: !2131, file: !362, line: 124, type: !38)
!2138 = !DILocalVariable(name: "p", scope: !2131, file: !362, line: 125, type: !2134)
!2139 = !DILocation(line: 0, scope: !2131)
!2140 = !DILocation(line: 124, column: 11, scope: !2131)
!2141 = !DILocation(line: 125, column: 40, scope: !2131)
!2142 = !DILocation(line: 125, column: 31, scope: !2131)
!2143 = !DILocation(line: 127, column: 9, scope: !2131)
!2144 = !DILocation(line: 128, column: 3, scope: !2131)
!2145 = distinct !DISubprogram(name: "get_quoting_style", scope: !362, file: !362, line: 133, type: !2146, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2148)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!5, !394}
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "o", arg: 1, scope: !2145, file: !362, line: 133, type: !394)
!2150 = !DILocation(line: 0, scope: !2145)
!2151 = !DILocation(line: 135, column: 11, scope: !2145)
!2152 = !DILocation(line: 135, column: 46, scope: !2145)
!2153 = !{!2154, !1291, i64 0}
!2154 = !{!"quoting_options", !1291, i64 0, !1369, i64 4, !1291, i64 8, !1290, i64 40, !1290, i64 48}
!2155 = !DILocation(line: 135, column: 3, scope: !2145)
!2156 = distinct !DISubprogram(name: "set_quoting_style", scope: !362, file: !362, line: 141, type: !2157, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2134, !5}
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "o", arg: 1, scope: !2156, file: !362, line: 141, type: !2134)
!2161 = !DILocalVariable(name: "s", arg: 2, scope: !2156, file: !362, line: 141, type: !5)
!2162 = !DILocation(line: 0, scope: !2156)
!2163 = !DILocation(line: 143, column: 4, scope: !2156)
!2164 = !DILocation(line: 143, column: 39, scope: !2156)
!2165 = !DILocation(line: 143, column: 45, scope: !2156)
!2166 = !DILocation(line: 144, column: 1, scope: !2156)
!2167 = distinct !DISubprogram(name: "set_char_quoting", scope: !362, file: !362, line: 152, type: !2168, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!38, !2134, !35, !38}
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2177, !2178}
!2171 = !DILocalVariable(name: "o", arg: 1, scope: !2167, file: !362, line: 152, type: !2134)
!2172 = !DILocalVariable(name: "c", arg: 2, scope: !2167, file: !362, line: 152, type: !35)
!2173 = !DILocalVariable(name: "i", arg: 3, scope: !2167, file: !362, line: 152, type: !38)
!2174 = !DILocalVariable(name: "uc", scope: !2167, file: !362, line: 154, type: !604)
!2175 = !DILocalVariable(name: "p", scope: !2167, file: !362, line: 155, type: !2176)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2177 = !DILocalVariable(name: "shift", scope: !2167, file: !362, line: 157, type: !38)
!2178 = !DILocalVariable(name: "r", scope: !2167, file: !362, line: 158, type: !38)
!2179 = !DILocation(line: 0, scope: !2167)
!2180 = !DILocation(line: 156, column: 6, scope: !2167)
!2181 = !DILocation(line: 156, column: 62, scope: !2167)
!2182 = !DILocation(line: 156, column: 57, scope: !2167)
!2183 = !DILocation(line: 157, column: 15, scope: !2167)
!2184 = !DILocation(line: 158, column: 12, scope: !2167)
!2185 = !DILocation(line: 158, column: 15, scope: !2167)
!2186 = !DILocation(line: 158, column: 25, scope: !2167)
!2187 = !DILocation(line: 159, column: 13, scope: !2167)
!2188 = !DILocation(line: 159, column: 18, scope: !2167)
!2189 = !DILocation(line: 159, column: 23, scope: !2167)
!2190 = !DILocation(line: 159, column: 6, scope: !2167)
!2191 = !DILocation(line: 160, column: 3, scope: !2167)
!2192 = distinct !DISubprogram(name: "set_quoting_flags", scope: !362, file: !362, line: 168, type: !2193, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!38, !2134, !38}
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "o", arg: 1, scope: !2192, file: !362, line: 168, type: !2134)
!2197 = !DILocalVariable(name: "i", arg: 2, scope: !2192, file: !362, line: 168, type: !38)
!2198 = !DILocalVariable(name: "r", scope: !2192, file: !362, line: 170, type: !38)
!2199 = !DILocation(line: 0, scope: !2192)
!2200 = !DILocation(line: 171, column: 8, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !362, line: 171, column: 7)
!2202 = !DILocation(line: 171, column: 7, scope: !2192)
!2203 = !DILocation(line: 173, column: 10, scope: !2192)
!2204 = !{!2154, !1369, i64 4}
!2205 = !DILocation(line: 174, column: 12, scope: !2192)
!2206 = !DILocation(line: 175, column: 3, scope: !2192)
!2207 = distinct !DISubprogram(name: "set_custom_quoting", scope: !362, file: !362, line: 179, type: !2208, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2134, !36, !36}
!2210 = !{!2211, !2212, !2213}
!2211 = !DILocalVariable(name: "o", arg: 1, scope: !2207, file: !362, line: 179, type: !2134)
!2212 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2207, file: !362, line: 180, type: !36)
!2213 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2207, file: !362, line: 180, type: !36)
!2214 = !DILocation(line: 0, scope: !2207)
!2215 = !DILocation(line: 182, column: 8, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2207, file: !362, line: 182, column: 7)
!2217 = !DILocation(line: 182, column: 7, scope: !2207)
!2218 = !DILocation(line: 184, column: 6, scope: !2207)
!2219 = !DILocation(line: 184, column: 12, scope: !2207)
!2220 = !DILocation(line: 185, column: 8, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2207, file: !362, line: 185, column: 7)
!2222 = !DILocation(line: 185, column: 23, scope: !2221)
!2223 = !DILocation(line: 185, column: 19, scope: !2221)
!2224 = !DILocation(line: 186, column: 5, scope: !2221)
!2225 = !DILocation(line: 187, column: 6, scope: !2207)
!2226 = !DILocation(line: 187, column: 17, scope: !2207)
!2227 = !{!2154, !1290, i64 40}
!2228 = !DILocation(line: 188, column: 6, scope: !2207)
!2229 = !DILocation(line: 188, column: 18, scope: !2207)
!2230 = !{!2154, !1290, i64 48}
!2231 = !DILocation(line: 189, column: 1, scope: !2207)
!2232 = distinct !DISubprogram(name: "quotearg_buffer", scope: !362, file: !362, line: 784, type: !2233, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!93, !34, !93, !36, !93, !394}
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243}
!2236 = !DILocalVariable(name: "buffer", arg: 1, scope: !2232, file: !362, line: 784, type: !34)
!2237 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2232, file: !362, line: 784, type: !93)
!2238 = !DILocalVariable(name: "arg", arg: 3, scope: !2232, file: !362, line: 785, type: !36)
!2239 = !DILocalVariable(name: "argsize", arg: 4, scope: !2232, file: !362, line: 785, type: !93)
!2240 = !DILocalVariable(name: "o", arg: 5, scope: !2232, file: !362, line: 786, type: !394)
!2241 = !DILocalVariable(name: "p", scope: !2232, file: !362, line: 788, type: !394)
!2242 = !DILocalVariable(name: "e", scope: !2232, file: !362, line: 789, type: !38)
!2243 = !DILocalVariable(name: "r", scope: !2232, file: !362, line: 790, type: !93)
!2244 = !DILocation(line: 0, scope: !2232)
!2245 = !DILocation(line: 788, column: 37, scope: !2232)
!2246 = !DILocation(line: 789, column: 11, scope: !2232)
!2247 = !DILocation(line: 791, column: 43, scope: !2232)
!2248 = !DILocation(line: 791, column: 53, scope: !2232)
!2249 = !DILocation(line: 791, column: 60, scope: !2232)
!2250 = !DILocation(line: 792, column: 43, scope: !2232)
!2251 = !DILocation(line: 792, column: 58, scope: !2232)
!2252 = !DILocation(line: 790, column: 14, scope: !2232)
!2253 = !DILocation(line: 793, column: 9, scope: !2232)
!2254 = !DILocation(line: 794, column: 3, scope: !2232)
!2255 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !362, file: !362, line: 256, type: !2256, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2260)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!93, !34, !93, !36, !93, !5, !38, !2258, !36, !36}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2285, !2286, !2287, !2288, !2289, !2292, !2293, !2299, !2302, !2303, !2310, !2313, !2314, !2315, !2316, !2317, !2318}
!2261 = !DILocalVariable(name: "buffer", arg: 1, scope: !2255, file: !362, line: 256, type: !34)
!2262 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2255, file: !362, line: 256, type: !93)
!2263 = !DILocalVariable(name: "arg", arg: 3, scope: !2255, file: !362, line: 257, type: !36)
!2264 = !DILocalVariable(name: "argsize", arg: 4, scope: !2255, file: !362, line: 257, type: !93)
!2265 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2255, file: !362, line: 258, type: !5)
!2266 = !DILocalVariable(name: "flags", arg: 6, scope: !2255, file: !362, line: 258, type: !38)
!2267 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2255, file: !362, line: 259, type: !2258)
!2268 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2255, file: !362, line: 260, type: !36)
!2269 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2255, file: !362, line: 261, type: !36)
!2270 = !DILocalVariable(name: "i", scope: !2255, file: !362, line: 263, type: !93)
!2271 = !DILocalVariable(name: "len", scope: !2255, file: !362, line: 264, type: !93)
!2272 = !DILocalVariable(name: "orig_buffersize", scope: !2255, file: !362, line: 265, type: !93)
!2273 = !DILocalVariable(name: "quote_string", scope: !2255, file: !362, line: 266, type: !36)
!2274 = !DILocalVariable(name: "quote_string_len", scope: !2255, file: !362, line: 267, type: !93)
!2275 = !DILocalVariable(name: "backslash_escapes", scope: !2255, file: !362, line: 268, type: !127)
!2276 = !DILocalVariable(name: "unibyte_locale", scope: !2255, file: !362, line: 269, type: !127)
!2277 = !DILocalVariable(name: "elide_outer_quotes", scope: !2255, file: !362, line: 270, type: !127)
!2278 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2255, file: !362, line: 271, type: !127)
!2279 = !DILocalVariable(name: "encountered_single_quote", scope: !2255, file: !362, line: 272, type: !127)
!2280 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2255, file: !362, line: 273, type: !127)
!2281 = !DILocalVariable(name: "c", scope: !2282, file: !362, line: 402, type: !604)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !362, line: 401, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !362, line: 400, column: 3)
!2284 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 400, column: 3)
!2285 = !DILocalVariable(name: "esc", scope: !2282, file: !362, line: 403, type: !604)
!2286 = !DILocalVariable(name: "is_right_quote", scope: !2282, file: !362, line: 404, type: !127)
!2287 = !DILocalVariable(name: "escaping", scope: !2282, file: !362, line: 405, type: !127)
!2288 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2282, file: !362, line: 406, type: !127)
!2289 = !DILocalVariable(name: "m", scope: !2290, file: !362, line: 610, type: !93)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 608, column: 11)
!2291 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 426, column: 9)
!2292 = !DILocalVariable(name: "printable", scope: !2290, file: !362, line: 612, type: !127)
!2293 = !DILocalVariable(name: "mbstate", scope: !2294, file: !362, line: 621, type: !2296)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !362, line: 620, column: 15)
!2295 = distinct !DILexicalBlock(scope: !2290, file: !362, line: 614, column: 17)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2297, line: 6, baseType: !2298)
!2297 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !418, line: 21, baseType: !417)
!2299 = !DILocalVariable(name: "w", scope: !2300, file: !362, line: 631, type: !2301)
!2300 = distinct !DILexicalBlock(scope: !2294, file: !362, line: 630, column: 19)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !38)
!2302 = !DILocalVariable(name: "bytes", scope: !2300, file: !362, line: 632, type: !93)
!2303 = !DILocalVariable(name: "j", scope: !2304, file: !362, line: 657, type: !93)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !362, line: 656, column: 27)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !362, line: 654, column: 29)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !362, line: 649, column: 23)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !362, line: 641, column: 30)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !362, line: 636, column: 30)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !362, line: 634, column: 25)
!2310 = !DILocalVariable(name: "ilim", scope: !2311, file: !362, line: 684, type: !93)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !362, line: 681, column: 15)
!2312 = distinct !DILexicalBlock(scope: !2290, file: !362, line: 680, column: 17)
!2313 = !DILabel(scope: !2255, name: "process_input", file: !362, line: 314)
!2314 = !DILabel(scope: !2291, name: "c_and_shell_escape", file: !362, line: 512)
!2315 = !DILabel(scope: !2291, name: "c_escape", file: !362, line: 517)
!2316 = !DILabel(scope: !2282, name: "store_escape", file: !362, line: 719)
!2317 = !DILabel(scope: !2282, name: "store_c", file: !362, line: 722)
!2318 = !DILabel(scope: !2255, name: "force_outer_quoting_style", file: !362, line: 763)
!2319 = !DILocation(line: 0, scope: !2255)
!2320 = !DILocation(line: 269, column: 25, scope: !2255)
!2321 = !DILocation(line: 269, column: 36, scope: !2255)
!2322 = !DILocation(line: 270, column: 8, scope: !2255)
!2323 = !DILocation(line: 0, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 526, column: 15)
!2325 = !DILocation(line: 0, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !362, line: 462, column: 19)
!2327 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 455, column: 13)
!2328 = !DILocation(line: 0, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !362, line: 449, column: 20)
!2330 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 428, column: 15)
!2331 = !DILocation(line: 0, scope: !2294)
!2332 = !DILocation(line: 0, scope: !2300)
!2333 = !DILocation(line: 0, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 712, column: 11)
!2335 = !DILocation(line: 273, column: 3, scope: !2255)
!2336 = !DILocation(line: 265, column: 10, scope: !2255)
!2337 = !DILocation(line: 266, column: 15, scope: !2255)
!2338 = !DILocation(line: 267, column: 10, scope: !2255)
!2339 = !DILocation(line: 268, column: 8, scope: !2255)
!2340 = !DILocation(line: 271, column: 8, scope: !2255)
!2341 = !DILocation(line: 272, column: 8, scope: !2255)
!2342 = !DILocation(line: 273, column: 8, scope: !2255)
!2343 = !DILocation(line: 314, column: 2, scope: !2255)
!2344 = !DILocation(line: 316, column: 3, scope: !2255)
!2345 = !DILocation(line: 323, column: 11, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 317, column: 5)
!2347 = !DILocation(line: 323, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2346, file: !362, line: 323, column: 11)
!2349 = !DILocation(line: 324, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !362, line: 324, column: 9)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !362, line: 324, column: 9)
!2352 = !DILocation(line: 324, column: 9, scope: !2351)
!2353 = !{!1291, !1291, i64 0}
!2354 = !DILocation(line: 362, column: 26, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !362, line: 340, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !362, line: 339, column: 13)
!2357 = distinct !DILexicalBlock(scope: !2346, file: !362, line: 338, column: 7)
!2358 = !DILocation(line: 363, column: 27, scope: !2355)
!2359 = !DILocation(line: 364, column: 11, scope: !2355)
!2360 = !DILocation(line: 365, column: 14, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !362, line: 365, column: 13)
!2362 = !DILocation(line: 365, column: 13, scope: !2357)
!2363 = !DILocation(line: 366, column: 43, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !362, line: 366, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !362, line: 366, column: 11)
!2366 = !DILocation(line: 366, column: 11, scope: !2365)
!2367 = !DILocation(line: 367, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !362, line: 367, column: 13)
!2369 = distinct !DILexicalBlock(scope: !2364, file: !362, line: 367, column: 13)
!2370 = !DILocation(line: 367, column: 13, scope: !2369)
!2371 = !DILocation(line: 366, column: 70, scope: !2364)
!2372 = distinct !{!2372, !2366, !2373}
!2373 = !DILocation(line: 367, column: 13, scope: !2365)
!2374 = !DILocation(line: 264, column: 10, scope: !2255)
!2375 = !DILocation(line: 370, column: 28, scope: !2357)
!2376 = !DILocation(line: 372, column: 7, scope: !2346)
!2377 = !DILocation(line: 376, column: 7, scope: !2346)
!2378 = !DILocation(line: 379, column: 7, scope: !2346)
!2379 = !DILocation(line: 381, column: 12, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2346, file: !362, line: 381, column: 11)
!2381 = !DILocation(line: 381, column: 11, scope: !2346)
!2382 = !DILocation(line: 386, column: 12, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2346, file: !362, line: 386, column: 11)
!2384 = !DILocation(line: 386, column: 11, scope: !2346)
!2385 = !DILocation(line: 387, column: 9, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !362, line: 387, column: 9)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !362, line: 387, column: 9)
!2388 = !DILocation(line: 387, column: 9, scope: !2387)
!2389 = !DILocation(line: 394, column: 7, scope: !2346)
!2390 = !DILocation(line: 397, column: 7, scope: !2346)
!2391 = !DILocation(line: 0, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 408, column: 11)
!2393 = !DILocation(line: 0, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !362, line: 419, column: 15)
!2395 = distinct !DILexicalBlock(scope: !2392, file: !362, line: 418, column: 9)
!2396 = !DILocation(line: 0, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 556, column: 15)
!2398 = !DILocation(line: 0, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 548, column: 15)
!2400 = !DILocation(line: 0, scope: !2305)
!2401 = !DILocation(line: 0, scope: !2312)
!2402 = !DILocation(line: 0, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 509, column: 15)
!2404 = !DILocation(line: 400, column: 8, scope: !2284)
!2405 = !DILocation(line: 0, scope: !2284)
!2406 = !DILocation(line: 400, column: 27, scope: !2283)
!2407 = !DILocation(line: 400, column: 19, scope: !2283)
!2408 = !DILocation(line: 400, column: 41, scope: !2283)
!2409 = !DILocation(line: 400, column: 48, scope: !2283)
!2410 = !DILocation(line: 400, column: 3, scope: !2284)
!2411 = !DILocation(line: 400, column: 60, scope: !2283)
!2412 = !DILocation(line: 0, scope: !2282)
!2413 = !DILocation(line: 409, column: 11, scope: !2392)
!2414 = !DILocation(line: 411, column: 17, scope: !2392)
!2415 = !DILocation(line: 412, column: 39, scope: !2392)
!2416 = !DILocation(line: 416, column: 32, scope: !2392)
!2417 = !DILocation(line: 412, column: 19, scope: !2392)
!2418 = !DILocation(line: 412, column: 15, scope: !2392)
!2419 = !DILocation(line: 417, column: 11, scope: !2392)
!2420 = !DILocation(line: 417, column: 26, scope: !2392)
!2421 = !DILocation(line: 417, column: 14, scope: !2392)
!2422 = !DILocation(line: 417, column: 63, scope: !2392)
!2423 = !DILocation(line: 408, column: 11, scope: !2282)
!2424 = !DILocation(line: 424, column: 11, scope: !2282)
!2425 = !DILocation(line: 425, column: 7, scope: !2282)
!2426 = !DILocation(line: 428, column: 15, scope: !2291)
!2427 = !DILocation(line: 430, column: 15, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !362, line: 430, column: 15)
!2429 = distinct !DILexicalBlock(scope: !2330, file: !362, line: 429, column: 13)
!2430 = !DILocation(line: 430, column: 15, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2428, file: !362, line: 430, column: 15)
!2432 = !DILocation(line: 430, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !362, line: 430, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !362, line: 430, column: 15)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !362, line: 430, column: 15)
!2436 = !DILocation(line: 430, column: 15, scope: !2434)
!2437 = !DILocation(line: 430, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !362, line: 430, column: 15)
!2439 = distinct !DILexicalBlock(scope: !2435, file: !362, line: 430, column: 15)
!2440 = !DILocation(line: 430, column: 15, scope: !2439)
!2441 = !DILocation(line: 430, column: 15, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !362, line: 430, column: 15)
!2443 = distinct !DILexicalBlock(scope: !2435, file: !362, line: 430, column: 15)
!2444 = !DILocation(line: 430, column: 15, scope: !2443)
!2445 = !DILocation(line: 430, column: 15, scope: !2435)
!2446 = !DILocation(line: 430, column: 15, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !362, line: 430, column: 15)
!2448 = distinct !DILexicalBlock(scope: !2428, file: !362, line: 430, column: 15)
!2449 = !DILocation(line: 430, column: 15, scope: !2448)
!2450 = !DILocation(line: 438, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2429, file: !362, line: 437, column: 19)
!2452 = !DILocation(line: 438, column: 24, scope: !2451)
!2453 = !DILocation(line: 438, column: 28, scope: !2451)
!2454 = !DILocation(line: 438, column: 38, scope: !2451)
!2455 = !DILocation(line: 438, column: 48, scope: !2451)
!2456 = !DILocation(line: 438, column: 59, scope: !2451)
!2457 = !DILocation(line: 440, column: 19, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !362, line: 440, column: 19)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !362, line: 440, column: 19)
!2460 = distinct !DILexicalBlock(scope: !2451, file: !362, line: 439, column: 17)
!2461 = !DILocation(line: 440, column: 19, scope: !2459)
!2462 = !DILocation(line: 441, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !362, line: 441, column: 19)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !362, line: 441, column: 19)
!2465 = !DILocation(line: 441, column: 19, scope: !2464)
!2466 = !DILocation(line: 442, column: 17, scope: !2460)
!2467 = !DILocation(line: 449, column: 20, scope: !2330)
!2468 = !DILocation(line: 454, column: 11, scope: !2291)
!2469 = !DILocation(line: 457, column: 19, scope: !2327)
!2470 = !DILocation(line: 463, column: 19, scope: !2326)
!2471 = !DILocation(line: 463, column: 24, scope: !2326)
!2472 = !DILocation(line: 463, column: 28, scope: !2326)
!2473 = !DILocation(line: 463, column: 38, scope: !2326)
!2474 = !DILocation(line: 463, column: 47, scope: !2326)
!2475 = !DILocation(line: 463, column: 41, scope: !2326)
!2476 = !DILocation(line: 463, column: 52, scope: !2326)
!2477 = !DILocation(line: 462, column: 19, scope: !2327)
!2478 = !DILocation(line: 464, column: 25, scope: !2326)
!2479 = !DILocation(line: 464, column: 17, scope: !2326)
!2480 = !DILocation(line: 471, column: 25, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2326, file: !362, line: 465, column: 19)
!2482 = !DILocation(line: 475, column: 21, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !362, line: 475, column: 21)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 475, column: 21)
!2485 = !DILocation(line: 475, column: 21, scope: !2484)
!2486 = !DILocation(line: 476, column: 21, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !362, line: 476, column: 21)
!2488 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 476, column: 21)
!2489 = !DILocation(line: 476, column: 21, scope: !2488)
!2490 = !DILocation(line: 477, column: 21, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !362, line: 477, column: 21)
!2492 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 477, column: 21)
!2493 = !DILocation(line: 477, column: 21, scope: !2492)
!2494 = !DILocation(line: 478, column: 21, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !362, line: 478, column: 21)
!2496 = distinct !DILexicalBlock(scope: !2481, file: !362, line: 478, column: 21)
!2497 = !DILocation(line: 478, column: 21, scope: !2496)
!2498 = !DILocation(line: 479, column: 21, scope: !2481)
!2499 = !DILocation(line: 492, column: 31, scope: !2291)
!2500 = !DILocation(line: 493, column: 31, scope: !2291)
!2501 = !DILocation(line: 495, column: 31, scope: !2291)
!2502 = !DILocation(line: 496, column: 31, scope: !2291)
!2503 = !DILocation(line: 497, column: 31, scope: !2291)
!2504 = !DILocation(line: 500, column: 15, scope: !2291)
!2505 = !DILocation(line: 502, column: 19, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !362, line: 501, column: 13)
!2507 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 500, column: 15)
!2508 = !DILocation(line: 509, column: 33, scope: !2403)
!2509 = !DILocation(line: 0, scope: !2291)
!2510 = !DILocation(line: 512, column: 9, scope: !2291)
!2511 = !DILocation(line: 514, column: 15, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 513, column: 15)
!2513 = !DILocation(line: 517, column: 9, scope: !2291)
!2514 = !DILocation(line: 518, column: 15, scope: !2291)
!2515 = !DILocation(line: 526, column: 15, scope: !2291)
!2516 = !DILocation(line: 526, column: 40, scope: !2324)
!2517 = !DILocation(line: 526, column: 47, scope: !2324)
!2518 = !DILocation(line: 526, column: 18, scope: !2324)
!2519 = !DILocation(line: 530, column: 17, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2291, file: !362, line: 530, column: 15)
!2521 = !DILocation(line: 530, column: 15, scope: !2291)
!2522 = !DILocation(line: 535, column: 11, scope: !2291)
!2523 = !DILocation(line: 549, column: 15, scope: !2399)
!2524 = !DILocation(line: 556, column: 15, scope: !2291)
!2525 = !DILocation(line: 558, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2397, file: !362, line: 557, column: 13)
!2527 = !DILocation(line: 561, column: 19, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2526, file: !362, line: 561, column: 19)
!2529 = !DILocation(line: 561, column: 35, scope: !2528)
!2530 = !DILocation(line: 561, column: 30, scope: !2528)
!2531 = !DILocation(line: 570, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !362, line: 570, column: 15)
!2533 = distinct !DILexicalBlock(scope: !2526, file: !362, line: 570, column: 15)
!2534 = !DILocation(line: 570, column: 15, scope: !2533)
!2535 = !DILocation(line: 571, column: 15, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !362, line: 571, column: 15)
!2537 = distinct !DILexicalBlock(scope: !2526, file: !362, line: 571, column: 15)
!2538 = !DILocation(line: 571, column: 15, scope: !2537)
!2539 = !DILocation(line: 572, column: 15, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !362, line: 572, column: 15)
!2541 = distinct !DILexicalBlock(scope: !2526, file: !362, line: 572, column: 15)
!2542 = !DILocation(line: 572, column: 15, scope: !2541)
!2543 = !DILocation(line: 574, column: 13, scope: !2526)
!2544 = !DILocation(line: 614, column: 17, scope: !2290)
!2545 = !DILocation(line: 0, scope: !2290)
!2546 = !DILocation(line: 617, column: 29, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2295, file: !362, line: 615, column: 15)
!2548 = !{!2549, !2549, i64 0}
!2549 = !{!"short", !1291, i64 0}
!2550 = !DILocation(line: 617, column: 27, scope: !2547)
!2551 = !DILocation(line: 618, column: 15, scope: !2547)
!2552 = !DILocation(line: 621, column: 17, scope: !2294)
!2553 = !DILocation(line: 621, column: 27, scope: !2294)
!2554 = !DILocalVariable(name: "__dest", arg: 1, scope: !2555, file: !2556, line: 59, type: !91)
!2555 = distinct !DISubprogram(name: "memset", scope: !2556, file: !2556, line: 59, type: !2557, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2559)
!2556 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!91, !91, !38, !93}
!2559 = !{!2554, !2560, !2561}
!2560 = !DILocalVariable(name: "__ch", arg: 2, scope: !2555, file: !2556, line: 59, type: !38)
!2561 = !DILocalVariable(name: "__len", arg: 3, scope: !2555, file: !2556, line: 59, type: !93)
!2562 = !DILocation(line: 0, scope: !2555, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 622, column: 17, scope: !2294)
!2564 = !DILocation(line: 71, column: 10, scope: !2555, inlinedAt: !2563)
!2565 = !DILocation(line: 626, column: 29, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2294, file: !362, line: 626, column: 21)
!2567 = !DILocation(line: 626, column: 21, scope: !2294)
!2568 = !DILocation(line: 627, column: 29, scope: !2566)
!2569 = !DILocation(line: 627, column: 19, scope: !2566)
!2570 = !DILocation(line: 629, column: 17, scope: !2294)
!2571 = !DILocation(line: 624, column: 19, scope: !2294)
!2572 = !DILocation(line: 625, column: 27, scope: !2294)
!2573 = !DILocation(line: 631, column: 21, scope: !2300)
!2574 = !DILocation(line: 632, column: 56, scope: !2300)
!2575 = !DILocation(line: 632, column: 50, scope: !2300)
!2576 = !DILocation(line: 633, column: 53, scope: !2300)
!2577 = !DILocation(line: 632, column: 36, scope: !2300)
!2578 = !DILocation(line: 634, column: 25, scope: !2300)
!2579 = !DILocation(line: 644, column: 38, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2307, file: !362, line: 642, column: 23)
!2581 = !DILocation(line: 644, column: 48, scope: !2580)
!2582 = !DILocation(line: 644, column: 25, scope: !2580)
!2583 = !DILocation(line: 644, column: 51, scope: !2580)
!2584 = !DILocation(line: 645, column: 28, scope: !2580)
!2585 = !DILocation(line: 644, column: 34, scope: !2580)
!2586 = distinct !{!2586, !2582, !2584}
!2587 = !DILocation(line: 658, column: 43, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !362, line: 658, column: 29)
!2589 = distinct !DILexicalBlock(scope: !2304, file: !362, line: 658, column: 29)
!2590 = !DILocation(line: 655, column: 29, scope: !2305)
!2591 = !DILocation(line: 0, scope: !2304)
!2592 = !DILocation(line: 659, column: 49, scope: !2588)
!2593 = !DILocation(line: 659, column: 39, scope: !2588)
!2594 = !DILocation(line: 659, column: 31, scope: !2588)
!2595 = !DILocation(line: 658, column: 53, scope: !2588)
!2596 = !DILocation(line: 658, column: 29, scope: !2589)
!2597 = distinct !{!2597, !2596, !2598}
!2598 = !DILocation(line: 667, column: 33, scope: !2589)
!2599 = !DILocation(line: 674, column: 19, scope: !2294)
!2600 = !DILocation(line: 670, column: 41, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2306, file: !362, line: 670, column: 29)
!2602 = !DILocation(line: 670, column: 31, scope: !2601)
!2603 = !DILocation(line: 670, column: 29, scope: !2306)
!2604 = !DILocation(line: 672, column: 27, scope: !2306)
!2605 = !DILocation(line: 675, column: 26, scope: !2294)
!2606 = !DILocation(line: 675, column: 24, scope: !2294)
!2607 = !DILocation(line: 674, column: 19, scope: !2300)
!2608 = distinct !{!2608, !2570, !2609}
!2609 = !DILocation(line: 675, column: 44, scope: !2294)
!2610 = !DILocation(line: 676, column: 15, scope: !2295)
!2611 = !DILocation(line: 0, scope: !2295)
!2612 = !DILocation(line: 678, column: 40, scope: !2290)
!2613 = !DILocation(line: 680, column: 19, scope: !2312)
!2614 = !DILocation(line: 680, column: 45, scope: !2312)
!2615 = !DILocation(line: 680, column: 23, scope: !2312)
!2616 = !DILocation(line: 684, column: 33, scope: !2311)
!2617 = !DILocation(line: 0, scope: !2311)
!2618 = !DILocation(line: 686, column: 17, scope: !2311)
!2619 = !DILocation(line: 405, column: 12, scope: !2282)
!2620 = !DILocation(line: 688, column: 43, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !362, line: 688, column: 25)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !362, line: 687, column: 19)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !362, line: 686, column: 17)
!2624 = distinct !DILexicalBlock(scope: !2311, file: !362, line: 686, column: 17)
!2625 = !DILocation(line: 690, column: 25, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !362, line: 690, column: 25)
!2627 = distinct !DILexicalBlock(scope: !2621, file: !362, line: 689, column: 23)
!2628 = !DILocation(line: 690, column: 25, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !362, line: 690, column: 25)
!2630 = !DILocation(line: 690, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !362, line: 690, column: 25)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !362, line: 690, column: 25)
!2633 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 690, column: 25)
!2634 = !DILocation(line: 690, column: 25, scope: !2632)
!2635 = !DILocation(line: 690, column: 25, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !362, line: 690, column: 25)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !362, line: 690, column: 25)
!2638 = !DILocation(line: 690, column: 25, scope: !2637)
!2639 = !DILocation(line: 690, column: 25, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !362, line: 690, column: 25)
!2641 = distinct !DILexicalBlock(scope: !2633, file: !362, line: 690, column: 25)
!2642 = !DILocation(line: 690, column: 25, scope: !2641)
!2643 = !DILocation(line: 690, column: 25, scope: !2633)
!2644 = !DILocation(line: 690, column: 25, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !362, line: 690, column: 25)
!2646 = distinct !DILexicalBlock(scope: !2626, file: !362, line: 690, column: 25)
!2647 = !DILocation(line: 690, column: 25, scope: !2646)
!2648 = !DILocation(line: 691, column: 25, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !362, line: 691, column: 25)
!2650 = distinct !DILexicalBlock(scope: !2627, file: !362, line: 691, column: 25)
!2651 = !DILocation(line: 691, column: 25, scope: !2650)
!2652 = !DILocation(line: 692, column: 25, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !362, line: 692, column: 25)
!2654 = distinct !DILexicalBlock(scope: !2627, file: !362, line: 692, column: 25)
!2655 = !DILocation(line: 692, column: 25, scope: !2654)
!2656 = !DILocation(line: 693, column: 38, scope: !2627)
!2657 = !DILocation(line: 693, column: 33, scope: !2627)
!2658 = !DILocation(line: 694, column: 23, scope: !2627)
!2659 = !DILocation(line: 695, column: 30, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2621, file: !362, line: 695, column: 30)
!2661 = !DILocation(line: 695, column: 30, scope: !2621)
!2662 = !DILocation(line: 697, column: 25, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !362, line: 697, column: 25)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !362, line: 697, column: 25)
!2665 = distinct !DILexicalBlock(scope: !2660, file: !362, line: 696, column: 23)
!2666 = !DILocation(line: 697, column: 25, scope: !2664)
!2667 = !DILocation(line: 699, column: 23, scope: !2665)
!2668 = !DILocation(line: 700, column: 35, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2622, file: !362, line: 700, column: 25)
!2670 = !DILocation(line: 700, column: 30, scope: !2669)
!2671 = !DILocation(line: 700, column: 25, scope: !2622)
!2672 = !DILocation(line: 702, column: 21, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !362, line: 702, column: 21)
!2674 = distinct !DILexicalBlock(scope: !2622, file: !362, line: 702, column: 21)
!2675 = !DILocation(line: 702, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !362, line: 702, column: 21)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !362, line: 702, column: 21)
!2678 = distinct !DILexicalBlock(scope: !2673, file: !362, line: 702, column: 21)
!2679 = !DILocation(line: 702, column: 21, scope: !2677)
!2680 = !DILocation(line: 702, column: 21, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !362, line: 702, column: 21)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !362, line: 702, column: 21)
!2683 = !DILocation(line: 702, column: 21, scope: !2682)
!2684 = !DILocation(line: 702, column: 21, scope: !2678)
!2685 = !DILocation(line: 0, scope: !2622)
!2686 = !DILocation(line: 703, column: 21, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !362, line: 703, column: 21)
!2688 = distinct !DILexicalBlock(scope: !2622, file: !362, line: 703, column: 21)
!2689 = !DILocation(line: 703, column: 21, scope: !2688)
!2690 = !DILocation(line: 704, column: 25, scope: !2622)
!2691 = !DILocation(line: 686, column: 17, scope: !2623)
!2692 = distinct !{!2692, !2693, !2694}
!2693 = !DILocation(line: 686, column: 17, scope: !2624)
!2694 = !DILocation(line: 705, column: 19, scope: !2624)
!2695 = !DILocation(line: 416, column: 30, scope: !2392)
!2696 = !DILocation(line: 712, column: 34, scope: !2334)
!2697 = !DILocation(line: 715, column: 35, scope: !2334)
!2698 = !DILocation(line: 715, column: 17, scope: !2334)
!2699 = !DILocation(line: 715, column: 47, scope: !2334)
!2700 = !DILocation(line: 715, column: 65, scope: !2334)
!2701 = !DILocation(line: 716, column: 15, scope: !2334)
!2702 = !DILocation(line: 716, column: 11, scope: !2334)
!2703 = !DILocation(line: 712, column: 11, scope: !2282)
!2704 = !DILocation(line: 400, column: 10, scope: !2284)
!2705 = !DILocation(line: 719, column: 5, scope: !2282)
!2706 = !DILocation(line: 720, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 720, column: 7)
!2708 = !DILocation(line: 720, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !362, line: 720, column: 7)
!2710 = !DILocation(line: 720, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !362, line: 720, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !362, line: 720, column: 7)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !362, line: 720, column: 7)
!2714 = !DILocation(line: 720, column: 7, scope: !2712)
!2715 = !DILocation(line: 720, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !362, line: 720, column: 7)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !362, line: 720, column: 7)
!2718 = !DILocation(line: 720, column: 7, scope: !2717)
!2719 = !DILocation(line: 720, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !362, line: 720, column: 7)
!2721 = distinct !DILexicalBlock(scope: !2713, file: !362, line: 720, column: 7)
!2722 = !DILocation(line: 720, column: 7, scope: !2721)
!2723 = !DILocation(line: 720, column: 7, scope: !2713)
!2724 = !DILocation(line: 720, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !362, line: 720, column: 7)
!2726 = distinct !DILexicalBlock(scope: !2707, file: !362, line: 720, column: 7)
!2727 = !DILocation(line: 720, column: 7, scope: !2726)
!2728 = !DILocation(line: 722, column: 5, scope: !2282)
!2729 = !DILocation(line: 723, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !362, line: 723, column: 7)
!2731 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 723, column: 7)
!2732 = !DILocation(line: 424, column: 9, scope: !2282)
!2733 = !DILocation(line: 723, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !362, line: 723, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !362, line: 723, column: 7)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !362, line: 723, column: 7)
!2737 = !DILocation(line: 723, column: 7, scope: !2735)
!2738 = !DILocation(line: 723, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !362, line: 723, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2736, file: !362, line: 723, column: 7)
!2741 = !DILocation(line: 723, column: 7, scope: !2740)
!2742 = !DILocation(line: 723, column: 7, scope: !2736)
!2743 = !DILocation(line: 724, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !362, line: 724, column: 7)
!2745 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 724, column: 7)
!2746 = !DILocation(line: 724, column: 7, scope: !2745)
!2747 = !DILocation(line: 726, column: 13, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2282, file: !362, line: 726, column: 11)
!2749 = !DILocation(line: 726, column: 11, scope: !2282)
!2750 = !DILocation(line: 728, column: 5, scope: !2283)
!2751 = !DILocation(line: 400, column: 75, scope: !2283)
!2752 = !DILocation(line: 400, column: 3, scope: !2283)
!2753 = distinct !{!2753, !2410, !2754}
!2754 = !DILocation(line: 728, column: 5, scope: !2284)
!2755 = !DILocation(line: 730, column: 11, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 730, column: 7)
!2757 = !DILocation(line: 730, column: 16, scope: !2756)
!2758 = !DILocation(line: 738, column: 51, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 738, column: 7)
!2760 = !DILocation(line: 739, column: 10, scope: !2759)
!2761 = !DILocation(line: 741, column: 11, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !362, line: 741, column: 11)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !362, line: 740, column: 5)
!2764 = !DILocation(line: 741, column: 11, scope: !2763)
!2765 = !DILocation(line: 742, column: 16, scope: !2762)
!2766 = !DILocation(line: 742, column: 9, scope: !2762)
!2767 = !DILocation(line: 746, column: 18, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2762, file: !362, line: 746, column: 16)
!2769 = !DILocation(line: 746, column: 32, scope: !2768)
!2770 = !DILocation(line: 746, column: 29, scope: !2768)
!2771 = !DILocation(line: 755, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 755, column: 7)
!2773 = !DILocation(line: 755, column: 20, scope: !2772)
!2774 = !DILocation(line: 756, column: 12, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !362, line: 756, column: 5)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !362, line: 756, column: 5)
!2777 = !DILocation(line: 756, column: 5, scope: !2776)
!2778 = !DILocation(line: 757, column: 7, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !362, line: 757, column: 7)
!2780 = distinct !DILexicalBlock(scope: !2775, file: !362, line: 757, column: 7)
!2781 = !DILocation(line: 757, column: 7, scope: !2780)
!2782 = !DILocation(line: 756, column: 39, scope: !2775)
!2783 = distinct !{!2783, !2777, !2784}
!2784 = !DILocation(line: 757, column: 7, scope: !2776)
!2785 = !DILocation(line: 759, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 759, column: 7)
!2787 = !DILocation(line: 759, column: 7, scope: !2255)
!2788 = !DILocation(line: 760, column: 5, scope: !2786)
!2789 = !DILocation(line: 760, column: 17, scope: !2786)
!2790 = !DILocation(line: 763, column: 2, scope: !2255)
!2791 = !DILocation(line: 766, column: 51, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2255, file: !362, line: 766, column: 7)
!2793 = !DILocation(line: 766, column: 21, scope: !2792)
!2794 = !DILocation(line: 770, column: 42, scope: !2255)
!2795 = !DILocation(line: 768, column: 10, scope: !2255)
!2796 = !DILocation(line: 768, column: 3, scope: !2255)
!2797 = !DILocation(line: 772, column: 1, scope: !2255)
!2798 = distinct !DISubprogram(name: "gettext_quote", scope: !362, file: !362, line: 207, type: !2799, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!36, !36, !5}
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "msgid", arg: 1, scope: !2798, file: !362, line: 207, type: !36)
!2803 = !DILocalVariable(name: "s", arg: 2, scope: !2798, file: !362, line: 207, type: !5)
!2804 = !DILocalVariable(name: "translation", scope: !2798, file: !362, line: 209, type: !36)
!2805 = !DILocalVariable(name: "locale_code", scope: !2798, file: !362, line: 210, type: !36)
!2806 = !DILocation(line: 0, scope: !2798)
!2807 = !DILocation(line: 209, column: 29, scope: !2798)
!2808 = !DILocation(line: 212, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2798, file: !362, line: 212, column: 7)
!2810 = !DILocation(line: 212, column: 7, scope: !2798)
!2811 = !DILocation(line: 233, column: 17, scope: !2798)
!2812 = !DILocalVariable(name: "s1", arg: 1, scope: !2813, file: !2814, line: 160, type: !36)
!2813 = distinct !DISubprogram(name: "strcaseeq0", scope: !2814, file: !2814, line: 160, type: !2815, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2817)
!2814 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2817 = !{!2812, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!2818 = !DILocalVariable(name: "s2", arg: 2, scope: !2813, file: !2814, line: 160, type: !36)
!2819 = !DILocalVariable(name: "s20", arg: 3, scope: !2813, file: !2814, line: 160, type: !35)
!2820 = !DILocalVariable(name: "s21", arg: 4, scope: !2813, file: !2814, line: 160, type: !35)
!2821 = !DILocalVariable(name: "s22", arg: 5, scope: !2813, file: !2814, line: 160, type: !35)
!2822 = !DILocalVariable(name: "s23", arg: 6, scope: !2813, file: !2814, line: 160, type: !35)
!2823 = !DILocalVariable(name: "s24", arg: 7, scope: !2813, file: !2814, line: 160, type: !35)
!2824 = !DILocalVariable(name: "s25", arg: 8, scope: !2813, file: !2814, line: 160, type: !35)
!2825 = !DILocalVariable(name: "s26", arg: 9, scope: !2813, file: !2814, line: 160, type: !35)
!2826 = !DILocalVariable(name: "s27", arg: 10, scope: !2813, file: !2814, line: 160, type: !35)
!2827 = !DILocalVariable(name: "s28", arg: 11, scope: !2813, file: !2814, line: 160, type: !35)
!2828 = !DILocation(line: 0, scope: !2813, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 234, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2798, file: !362, line: 234, column: 7)
!2831 = !DILocation(line: 162, column: 7, scope: !2832, inlinedAt: !2829)
!2832 = distinct !DILexicalBlock(scope: !2813, file: !2814, line: 162, column: 7)
!2833 = !DILocalVariable(name: "s1", arg: 1, scope: !2834, file: !2814, line: 146, type: !36)
!2834 = distinct !DISubprogram(name: "strcaseeq1", scope: !2814, file: !2814, line: 146, type: !2835, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35}
!2837 = !{!2833, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2838 = !DILocalVariable(name: "s2", arg: 2, scope: !2834, file: !2814, line: 146, type: !36)
!2839 = !DILocalVariable(name: "s21", arg: 3, scope: !2834, file: !2814, line: 146, type: !35)
!2840 = !DILocalVariable(name: "s22", arg: 4, scope: !2834, file: !2814, line: 146, type: !35)
!2841 = !DILocalVariable(name: "s23", arg: 5, scope: !2834, file: !2814, line: 146, type: !35)
!2842 = !DILocalVariable(name: "s24", arg: 6, scope: !2834, file: !2814, line: 146, type: !35)
!2843 = !DILocalVariable(name: "s25", arg: 7, scope: !2834, file: !2814, line: 146, type: !35)
!2844 = !DILocalVariable(name: "s26", arg: 8, scope: !2834, file: !2814, line: 146, type: !35)
!2845 = !DILocalVariable(name: "s27", arg: 9, scope: !2834, file: !2814, line: 146, type: !35)
!2846 = !DILocalVariable(name: "s28", arg: 10, scope: !2834, file: !2814, line: 146, type: !35)
!2847 = !DILocation(line: 0, scope: !2834, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 167, column: 16, scope: !2849, inlinedAt: !2829)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !2814, line: 164, column: 11)
!2850 = distinct !DILexicalBlock(scope: !2832, file: !2814, line: 163, column: 5)
!2851 = !DILocation(line: 148, column: 7, scope: !2852, inlinedAt: !2848)
!2852 = distinct !DILexicalBlock(scope: !2834, file: !2814, line: 148, column: 7)
!2853 = !DILocalVariable(name: "s1", arg: 1, scope: !2854, file: !2814, line: 132, type: !36)
!2854 = distinct !DISubprogram(name: "strcaseeq2", scope: !2814, file: !2814, line: 132, type: !2855, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35}
!2857 = !{!2853, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2858 = !DILocalVariable(name: "s2", arg: 2, scope: !2854, file: !2814, line: 132, type: !36)
!2859 = !DILocalVariable(name: "s22", arg: 3, scope: !2854, file: !2814, line: 132, type: !35)
!2860 = !DILocalVariable(name: "s23", arg: 4, scope: !2854, file: !2814, line: 132, type: !35)
!2861 = !DILocalVariable(name: "s24", arg: 5, scope: !2854, file: !2814, line: 132, type: !35)
!2862 = !DILocalVariable(name: "s25", arg: 6, scope: !2854, file: !2814, line: 132, type: !35)
!2863 = !DILocalVariable(name: "s26", arg: 7, scope: !2854, file: !2814, line: 132, type: !35)
!2864 = !DILocalVariable(name: "s27", arg: 8, scope: !2854, file: !2814, line: 132, type: !35)
!2865 = !DILocalVariable(name: "s28", arg: 9, scope: !2854, file: !2814, line: 132, type: !35)
!2866 = !DILocation(line: 0, scope: !2854, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 153, column: 16, scope: !2868, inlinedAt: !2848)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !2814, line: 150, column: 11)
!2869 = distinct !DILexicalBlock(scope: !2852, file: !2814, line: 149, column: 5)
!2870 = !DILocation(line: 134, column: 7, scope: !2871, inlinedAt: !2867)
!2871 = distinct !DILexicalBlock(scope: !2854, file: !2814, line: 134, column: 7)
!2872 = !DILocalVariable(name: "s1", arg: 1, scope: !2873, file: !2814, line: 118, type: !36)
!2873 = distinct !DISubprogram(name: "strcaseeq3", scope: !2814, file: !2814, line: 118, type: !2874, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35}
!2876 = !{!2872, !2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2877 = !DILocalVariable(name: "s2", arg: 2, scope: !2873, file: !2814, line: 118, type: !36)
!2878 = !DILocalVariable(name: "s23", arg: 3, scope: !2873, file: !2814, line: 118, type: !35)
!2879 = !DILocalVariable(name: "s24", arg: 4, scope: !2873, file: !2814, line: 118, type: !35)
!2880 = !DILocalVariable(name: "s25", arg: 5, scope: !2873, file: !2814, line: 118, type: !35)
!2881 = !DILocalVariable(name: "s26", arg: 6, scope: !2873, file: !2814, line: 118, type: !35)
!2882 = !DILocalVariable(name: "s27", arg: 7, scope: !2873, file: !2814, line: 118, type: !35)
!2883 = !DILocalVariable(name: "s28", arg: 8, scope: !2873, file: !2814, line: 118, type: !35)
!2884 = !DILocation(line: 0, scope: !2873, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 139, column: 16, scope: !2886, inlinedAt: !2867)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !2814, line: 136, column: 11)
!2887 = distinct !DILexicalBlock(scope: !2871, file: !2814, line: 135, column: 5)
!2888 = !DILocation(line: 120, column: 7, scope: !2889, inlinedAt: !2885)
!2889 = distinct !DILexicalBlock(scope: !2873, file: !2814, line: 120, column: 7)
!2890 = !DILocation(line: 120, column: 7, scope: !2873, inlinedAt: !2885)
!2891 = !DILocalVariable(name: "s1", arg: 1, scope: !2892, file: !2814, line: 104, type: !36)
!2892 = distinct !DISubprogram(name: "strcaseeq4", scope: !2814, file: !2814, line: 104, type: !2893, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!38, !36, !36, !35, !35, !35, !35, !35}
!2895 = !{!2891, !2896, !2897, !2898, !2899, !2900, !2901}
!2896 = !DILocalVariable(name: "s2", arg: 2, scope: !2892, file: !2814, line: 104, type: !36)
!2897 = !DILocalVariable(name: "s24", arg: 3, scope: !2892, file: !2814, line: 104, type: !35)
!2898 = !DILocalVariable(name: "s25", arg: 4, scope: !2892, file: !2814, line: 104, type: !35)
!2899 = !DILocalVariable(name: "s26", arg: 5, scope: !2892, file: !2814, line: 104, type: !35)
!2900 = !DILocalVariable(name: "s27", arg: 6, scope: !2892, file: !2814, line: 104, type: !35)
!2901 = !DILocalVariable(name: "s28", arg: 7, scope: !2892, file: !2814, line: 104, type: !35)
!2902 = !DILocation(line: 0, scope: !2892, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 125, column: 16, scope: !2904, inlinedAt: !2885)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !2814, line: 122, column: 11)
!2905 = distinct !DILexicalBlock(scope: !2889, file: !2814, line: 121, column: 5)
!2906 = !DILocation(line: 106, column: 7, scope: !2907, inlinedAt: !2903)
!2907 = distinct !DILexicalBlock(scope: !2892, file: !2814, line: 106, column: 7)
!2908 = !DILocation(line: 106, column: 7, scope: !2892, inlinedAt: !2903)
!2909 = !DILocalVariable(name: "s1", arg: 1, scope: !2910, file: !2814, line: 90, type: !36)
!2910 = distinct !DISubprogram(name: "strcaseeq5", scope: !2814, file: !2814, line: 90, type: !2911, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!38, !36, !36, !35, !35, !35, !35}
!2913 = !{!2909, !2914, !2915, !2916, !2917, !2918}
!2914 = !DILocalVariable(name: "s2", arg: 2, scope: !2910, file: !2814, line: 90, type: !36)
!2915 = !DILocalVariable(name: "s25", arg: 3, scope: !2910, file: !2814, line: 90, type: !35)
!2916 = !DILocalVariable(name: "s26", arg: 4, scope: !2910, file: !2814, line: 90, type: !35)
!2917 = !DILocalVariable(name: "s27", arg: 5, scope: !2910, file: !2814, line: 90, type: !35)
!2918 = !DILocalVariable(name: "s28", arg: 6, scope: !2910, file: !2814, line: 90, type: !35)
!2919 = !DILocation(line: 0, scope: !2910, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 111, column: 16, scope: !2921, inlinedAt: !2903)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !2814, line: 108, column: 11)
!2922 = distinct !DILexicalBlock(scope: !2907, file: !2814, line: 107, column: 5)
!2923 = !DILocation(line: 92, column: 7, scope: !2924, inlinedAt: !2920)
!2924 = distinct !DILexicalBlock(scope: !2910, file: !2814, line: 92, column: 7)
!2925 = !DILocation(line: 92, column: 7, scope: !2910, inlinedAt: !2920)
!2926 = !DILocation(line: 235, column: 12, scope: !2830)
!2927 = !DILocation(line: 235, column: 21, scope: !2830)
!2928 = !DILocation(line: 235, column: 5, scope: !2830)
!2929 = !DILocation(line: 0, scope: !2834, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 167, column: 16, scope: !2849, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 236, column: 7, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2798, file: !362, line: 236, column: 7)
!2933 = !DILocation(line: 148, column: 7, scope: !2852, inlinedAt: !2930)
!2934 = !DILocation(line: 0, scope: !2854, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 153, column: 16, scope: !2868, inlinedAt: !2930)
!2936 = !DILocation(line: 134, column: 7, scope: !2871, inlinedAt: !2935)
!2937 = !DILocation(line: 134, column: 7, scope: !2854, inlinedAt: !2935)
!2938 = !DILocation(line: 0, scope: !2873, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 139, column: 16, scope: !2886, inlinedAt: !2935)
!2940 = !DILocation(line: 120, column: 7, scope: !2889, inlinedAt: !2939)
!2941 = !DILocation(line: 120, column: 7, scope: !2873, inlinedAt: !2939)
!2942 = !DILocation(line: 0, scope: !2892, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 125, column: 16, scope: !2904, inlinedAt: !2939)
!2944 = !DILocation(line: 106, column: 7, scope: !2907, inlinedAt: !2943)
!2945 = !DILocation(line: 106, column: 7, scope: !2892, inlinedAt: !2943)
!2946 = !DILocation(line: 0, scope: !2910, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 111, column: 16, scope: !2921, inlinedAt: !2943)
!2948 = !DILocation(line: 92, column: 7, scope: !2924, inlinedAt: !2947)
!2949 = !DILocation(line: 92, column: 7, scope: !2910, inlinedAt: !2947)
!2950 = !DILocalVariable(name: "s1", arg: 1, scope: !2951, file: !2814, line: 76, type: !36)
!2951 = distinct !DISubprogram(name: "strcaseeq6", scope: !2814, file: !2814, line: 76, type: !2952, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!38, !36, !36, !35, !35, !35}
!2954 = !{!2950, !2955, !2956, !2957, !2958}
!2955 = !DILocalVariable(name: "s2", arg: 2, scope: !2951, file: !2814, line: 76, type: !36)
!2956 = !DILocalVariable(name: "s26", arg: 3, scope: !2951, file: !2814, line: 76, type: !35)
!2957 = !DILocalVariable(name: "s27", arg: 4, scope: !2951, file: !2814, line: 76, type: !35)
!2958 = !DILocalVariable(name: "s28", arg: 5, scope: !2951, file: !2814, line: 76, type: !35)
!2959 = !DILocation(line: 0, scope: !2951, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 97, column: 16, scope: !2961, inlinedAt: !2947)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !2814, line: 94, column: 11)
!2962 = distinct !DILexicalBlock(scope: !2924, file: !2814, line: 93, column: 5)
!2963 = !DILocation(line: 78, column: 7, scope: !2964, inlinedAt: !2960)
!2964 = distinct !DILexicalBlock(scope: !2951, file: !2814, line: 78, column: 7)
!2965 = !DILocation(line: 78, column: 7, scope: !2951, inlinedAt: !2960)
!2966 = !DILocalVariable(name: "s1", arg: 1, scope: !2967, file: !2814, line: 62, type: !36)
!2967 = distinct !DISubprogram(name: "strcaseeq7", scope: !2814, file: !2814, line: 62, type: !2968, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!38, !36, !36, !35, !35}
!2970 = !{!2966, !2971, !2972, !2973}
!2971 = !DILocalVariable(name: "s2", arg: 2, scope: !2967, file: !2814, line: 62, type: !36)
!2972 = !DILocalVariable(name: "s27", arg: 3, scope: !2967, file: !2814, line: 62, type: !35)
!2973 = !DILocalVariable(name: "s28", arg: 4, scope: !2967, file: !2814, line: 62, type: !35)
!2974 = !DILocation(line: 0, scope: !2967, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 83, column: 16, scope: !2976, inlinedAt: !2960)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !2814, line: 80, column: 11)
!2977 = distinct !DILexicalBlock(scope: !2964, file: !2814, line: 79, column: 5)
!2978 = !DILocation(line: 64, column: 7, scope: !2979, inlinedAt: !2975)
!2979 = distinct !DILexicalBlock(scope: !2967, file: !2814, line: 64, column: 7)
!2980 = !DILocation(line: 236, column: 7, scope: !2798)
!2981 = !DILocation(line: 237, column: 12, scope: !2932)
!2982 = !DILocation(line: 237, column: 21, scope: !2932)
!2983 = !DILocation(line: 237, column: 5, scope: !2932)
!2984 = !DILocation(line: 239, column: 13, scope: !2798)
!2985 = !DILocation(line: 239, column: 11, scope: !2798)
!2986 = !DILocation(line: 239, column: 3, scope: !2798)
!2987 = !DILocation(line: 240, column: 1, scope: !2798)
!2988 = distinct !DISubprogram(name: "quotearg_alloc", scope: !362, file: !362, line: 799, type: !2989, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!34, !36, !93, !394}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "arg", arg: 1, scope: !2988, file: !362, line: 799, type: !36)
!2993 = !DILocalVariable(name: "argsize", arg: 2, scope: !2988, file: !362, line: 799, type: !93)
!2994 = !DILocalVariable(name: "o", arg: 3, scope: !2988, file: !362, line: 800, type: !394)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocalVariable(name: "arg", arg: 1, scope: !2997, file: !362, line: 812, type: !36)
!2997 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !362, file: !362, line: 812, type: !2998, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!34, !36, !93, !594, !394}
!3000 = !{!2996, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008}
!3001 = !DILocalVariable(name: "argsize", arg: 2, scope: !2997, file: !362, line: 812, type: !93)
!3002 = !DILocalVariable(name: "size", arg: 3, scope: !2997, file: !362, line: 812, type: !594)
!3003 = !DILocalVariable(name: "o", arg: 4, scope: !2997, file: !362, line: 813, type: !394)
!3004 = !DILocalVariable(name: "p", scope: !2997, file: !362, line: 815, type: !394)
!3005 = !DILocalVariable(name: "e", scope: !2997, file: !362, line: 816, type: !38)
!3006 = !DILocalVariable(name: "flags", scope: !2997, file: !362, line: 818, type: !38)
!3007 = !DILocalVariable(name: "bufsize", scope: !2997, file: !362, line: 819, type: !93)
!3008 = !DILocalVariable(name: "buf", scope: !2997, file: !362, line: 823, type: !34)
!3009 = !DILocation(line: 0, scope: !2997, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 802, column: 10, scope: !2988)
!3011 = !DILocation(line: 815, column: 37, scope: !2997, inlinedAt: !3010)
!3012 = !DILocation(line: 816, column: 11, scope: !2997, inlinedAt: !3010)
!3013 = !DILocation(line: 818, column: 18, scope: !2997, inlinedAt: !3010)
!3014 = !DILocation(line: 818, column: 24, scope: !2997, inlinedAt: !3010)
!3015 = !DILocation(line: 819, column: 69, scope: !2997, inlinedAt: !3010)
!3016 = !DILocation(line: 820, column: 53, scope: !2997, inlinedAt: !3010)
!3017 = !DILocation(line: 821, column: 49, scope: !2997, inlinedAt: !3010)
!3018 = !DILocation(line: 822, column: 49, scope: !2997, inlinedAt: !3010)
!3019 = !DILocation(line: 819, column: 20, scope: !2997, inlinedAt: !3010)
!3020 = !DILocation(line: 822, column: 62, scope: !2997, inlinedAt: !3010)
!3021 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !169, line: 216, type: !93)
!3022 = distinct !DISubprogram(name: "xcharalloc", scope: !169, file: !169, line: 216, type: !3023, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!34, !93}
!3025 = !{!3021}
!3026 = !DILocation(line: 0, scope: !3022, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 823, column: 15, scope: !2997, inlinedAt: !3010)
!3028 = !DILocation(line: 218, column: 10, scope: !3022, inlinedAt: !3027)
!3029 = !DILocation(line: 824, column: 60, scope: !2997, inlinedAt: !3010)
!3030 = !DILocation(line: 826, column: 32, scope: !2997, inlinedAt: !3010)
!3031 = !DILocation(line: 826, column: 47, scope: !2997, inlinedAt: !3010)
!3032 = !DILocation(line: 824, column: 3, scope: !2997, inlinedAt: !3010)
!3033 = !DILocation(line: 827, column: 9, scope: !2997, inlinedAt: !3010)
!3034 = !DILocation(line: 802, column: 3, scope: !2988)
!3035 = !DILocation(line: 0, scope: !2997)
!3036 = !DILocation(line: 815, column: 37, scope: !2997)
!3037 = !DILocation(line: 816, column: 11, scope: !2997)
!3038 = !DILocation(line: 818, column: 18, scope: !2997)
!3039 = !DILocation(line: 818, column: 27, scope: !2997)
!3040 = !DILocation(line: 818, column: 24, scope: !2997)
!3041 = !DILocation(line: 819, column: 69, scope: !2997)
!3042 = !DILocation(line: 820, column: 53, scope: !2997)
!3043 = !DILocation(line: 821, column: 49, scope: !2997)
!3044 = !DILocation(line: 822, column: 49, scope: !2997)
!3045 = !DILocation(line: 819, column: 20, scope: !2997)
!3046 = !DILocation(line: 822, column: 62, scope: !2997)
!3047 = !DILocation(line: 0, scope: !3022, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 823, column: 15, scope: !2997)
!3049 = !DILocation(line: 218, column: 10, scope: !3022, inlinedAt: !3048)
!3050 = !DILocation(line: 824, column: 60, scope: !2997)
!3051 = !DILocation(line: 826, column: 32, scope: !2997)
!3052 = !DILocation(line: 826, column: 47, scope: !2997)
!3053 = !DILocation(line: 824, column: 3, scope: !2997)
!3054 = !DILocation(line: 827, column: 9, scope: !2997)
!3055 = !DILocation(line: 828, column: 7, scope: !2997)
!3056 = !DILocation(line: 829, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2997, file: !362, line: 828, column: 7)
!3058 = !DILocation(line: 829, column: 5, scope: !3057)
!3059 = !DILocation(line: 830, column: 3, scope: !2997)
!3060 = distinct !DISubprogram(name: "quotearg_free", scope: !362, file: !362, line: 848, type: !120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3061)
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "sv", scope: !3060, file: !362, line: 850, type: !469)
!3063 = !DILocalVariable(name: "i", scope: !3060, file: !362, line: 851, type: !38)
!3064 = !DILocation(line: 850, column: 24, scope: !3060)
!3065 = !DILocation(line: 0, scope: !3060)
!3066 = !DILocation(line: 852, column: 19, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !362, line: 852, column: 3)
!3068 = distinct !DILexicalBlock(scope: !3060, file: !362, line: 852, column: 3)
!3069 = !DILocation(line: 852, column: 17, scope: !3067)
!3070 = !DILocation(line: 852, column: 3, scope: !3068)
!3071 = !DILocation(line: 853, column: 17, scope: !3067)
!3072 = !{!3073, !1290, i64 8}
!3073 = !{!"slotvec", !1438, i64 0, !1290, i64 8}
!3074 = !DILocation(line: 853, column: 5, scope: !3067)
!3075 = !DILocation(line: 852, column: 28, scope: !3067)
!3076 = distinct !{!3076, !3070, !3077}
!3077 = !DILocation(line: 853, column: 20, scope: !3068)
!3078 = !DILocation(line: 854, column: 13, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3060, file: !362, line: 854, column: 7)
!3080 = !DILocation(line: 854, column: 17, scope: !3079)
!3081 = !DILocation(line: 854, column: 7, scope: !3060)
!3082 = !DILocation(line: 856, column: 7, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !362, line: 855, column: 5)
!3084 = !DILocation(line: 857, column: 21, scope: !3083)
!3085 = !{!3073, !1438, i64 0}
!3086 = !DILocation(line: 858, column: 20, scope: !3083)
!3087 = !DILocation(line: 859, column: 5, scope: !3083)
!3088 = !DILocation(line: 860, column: 10, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3060, file: !362, line: 860, column: 7)
!3090 = !DILocation(line: 860, column: 7, scope: !3060)
!3091 = !DILocation(line: 862, column: 13, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !362, line: 861, column: 5)
!3093 = !DILocation(line: 862, column: 7, scope: !3092)
!3094 = !DILocation(line: 863, column: 15, scope: !3092)
!3095 = !DILocation(line: 864, column: 5, scope: !3092)
!3096 = !DILocation(line: 865, column: 10, scope: !3060)
!3097 = !DILocation(line: 866, column: 1, scope: !3060)
!3098 = distinct !DISubprogram(name: "quotearg_n", scope: !362, file: !362, line: 931, type: !107, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3099)
!3099 = !{!3100, !3101}
!3100 = !DILocalVariable(name: "n", arg: 1, scope: !3098, file: !362, line: 931, type: !38)
!3101 = !DILocalVariable(name: "arg", arg: 2, scope: !3098, file: !362, line: 931, type: !36)
!3102 = !DILocation(line: 0, scope: !3098)
!3103 = !DILocation(line: 933, column: 10, scope: !3098)
!3104 = !DILocation(line: 933, column: 3, scope: !3098)
!3105 = distinct !DISubprogram(name: "quotearg_n_options", scope: !362, file: !362, line: 877, type: !3106, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!34, !38, !36, !93, !394}
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114, !3115, !3118, !3119, !3121, !3122, !3123}
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !362, line: 877, type: !38)
!3110 = !DILocalVariable(name: "arg", arg: 2, scope: !3105, file: !362, line: 877, type: !36)
!3111 = !DILocalVariable(name: "argsize", arg: 3, scope: !3105, file: !362, line: 877, type: !93)
!3112 = !DILocalVariable(name: "options", arg: 4, scope: !3105, file: !362, line: 878, type: !394)
!3113 = !DILocalVariable(name: "e", scope: !3105, file: !362, line: 880, type: !38)
!3114 = !DILocalVariable(name: "sv", scope: !3105, file: !362, line: 882, type: !469)
!3115 = !DILocalVariable(name: "preallocated", scope: !3116, file: !362, line: 889, type: !127)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !362, line: 888, column: 5)
!3117 = distinct !DILexicalBlock(scope: !3105, file: !362, line: 887, column: 7)
!3118 = !DILocalVariable(name: "nmax", scope: !3116, file: !362, line: 890, type: !38)
!3119 = !DILocalVariable(name: "size", scope: !3120, file: !362, line: 903, type: !93)
!3120 = distinct !DILexicalBlock(scope: !3105, file: !362, line: 902, column: 3)
!3121 = !DILocalVariable(name: "val", scope: !3120, file: !362, line: 904, type: !34)
!3122 = !DILocalVariable(name: "flags", scope: !3120, file: !362, line: 906, type: !38)
!3123 = !DILocalVariable(name: "qsize", scope: !3120, file: !362, line: 907, type: !93)
!3124 = !DILocation(line: 0, scope: !3105)
!3125 = !DILocation(line: 880, column: 11, scope: !3105)
!3126 = !DILocation(line: 882, column: 24, scope: !3105)
!3127 = !DILocation(line: 884, column: 9, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3105, file: !362, line: 884, column: 7)
!3129 = !DILocation(line: 884, column: 7, scope: !3105)
!3130 = !DILocation(line: 885, column: 5, scope: !3128)
!3131 = !DILocation(line: 887, column: 7, scope: !3117)
!3132 = !DILocation(line: 887, column: 14, scope: !3117)
!3133 = !DILocation(line: 887, column: 7, scope: !3105)
!3134 = !DILocation(line: 889, column: 31, scope: !3116)
!3135 = !DILocation(line: 0, scope: !3116)
!3136 = !DILocation(line: 892, column: 16, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3116, file: !362, line: 892, column: 11)
!3138 = !DILocation(line: 892, column: 11, scope: !3116)
!3139 = !DILocation(line: 893, column: 9, scope: !3137)
!3140 = !DILocation(line: 895, column: 32, scope: !3116)
!3141 = !DILocation(line: 895, column: 61, scope: !3116)
!3142 = !DILocation(line: 895, column: 58, scope: !3116)
!3143 = !DILocation(line: 895, column: 66, scope: !3116)
!3144 = !DILocation(line: 895, column: 22, scope: !3116)
!3145 = !DILocation(line: 895, column: 15, scope: !3116)
!3146 = !DILocation(line: 896, column: 11, scope: !3116)
!3147 = !DILocation(line: 897, column: 15, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3116, file: !362, line: 896, column: 11)
!3149 = !{i64 0, i64 8, !1638, i64 8, i64 8, !1289}
!3150 = !DILocation(line: 897, column: 9, scope: !3148)
!3151 = !DILocation(line: 898, column: 20, scope: !3116)
!3152 = !DILocation(line: 898, column: 18, scope: !3116)
!3153 = !DILocation(line: 898, column: 15, scope: !3116)
!3154 = !DILocation(line: 898, column: 38, scope: !3116)
!3155 = !DILocation(line: 898, column: 31, scope: !3116)
!3156 = !DILocation(line: 898, column: 48, scope: !3116)
!3157 = !DILocation(line: 0, scope: !2555, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 898, column: 7, scope: !3116)
!3159 = !DILocation(line: 71, column: 10, scope: !2555, inlinedAt: !3158)
!3160 = !DILocation(line: 899, column: 14, scope: !3116)
!3161 = !DILocation(line: 900, column: 5, scope: !3116)
!3162 = !DILocation(line: 903, column: 19, scope: !3120)
!3163 = !DILocation(line: 903, column: 25, scope: !3120)
!3164 = !DILocation(line: 0, scope: !3120)
!3165 = !DILocation(line: 904, column: 23, scope: !3120)
!3166 = !DILocation(line: 906, column: 26, scope: !3120)
!3167 = !DILocation(line: 906, column: 32, scope: !3120)
!3168 = !DILocation(line: 908, column: 55, scope: !3120)
!3169 = !DILocation(line: 909, column: 46, scope: !3120)
!3170 = !DILocation(line: 910, column: 55, scope: !3120)
!3171 = !DILocation(line: 911, column: 55, scope: !3120)
!3172 = !DILocation(line: 907, column: 20, scope: !3120)
!3173 = !DILocation(line: 913, column: 14, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3120, file: !362, line: 913, column: 9)
!3175 = !DILocation(line: 913, column: 9, scope: !3120)
!3176 = !DILocation(line: 915, column: 35, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !362, line: 914, column: 7)
!3178 = !DILocation(line: 915, column: 20, scope: !3177)
!3179 = !DILocation(line: 916, column: 17, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !362, line: 916, column: 13)
!3181 = !DILocation(line: 916, column: 13, scope: !3177)
!3182 = !DILocation(line: 917, column: 11, scope: !3180)
!3183 = !DILocation(line: 0, scope: !3022, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 918, column: 27, scope: !3177)
!3185 = !DILocation(line: 218, column: 10, scope: !3022, inlinedAt: !3184)
!3186 = !DILocation(line: 918, column: 19, scope: !3177)
!3187 = !DILocation(line: 919, column: 69, scope: !3177)
!3188 = !DILocation(line: 921, column: 44, scope: !3177)
!3189 = !DILocation(line: 922, column: 44, scope: !3177)
!3190 = !DILocation(line: 919, column: 9, scope: !3177)
!3191 = !DILocation(line: 923, column: 7, scope: !3177)
!3192 = !DILocation(line: 925, column: 11, scope: !3120)
!3193 = !DILocation(line: 926, column: 5, scope: !3120)
!3194 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !362, file: !362, line: 937, type: !3195, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!34, !38, !36, !93}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "n", arg: 1, scope: !3194, file: !362, line: 937, type: !38)
!3199 = !DILocalVariable(name: "arg", arg: 2, scope: !3194, file: !362, line: 937, type: !36)
!3200 = !DILocalVariable(name: "argsize", arg: 3, scope: !3194, file: !362, line: 937, type: !93)
!3201 = !DILocation(line: 0, scope: !3194)
!3202 = !DILocation(line: 939, column: 10, scope: !3194)
!3203 = !DILocation(line: 939, column: 3, scope: !3194)
!3204 = distinct !DISubprogram(name: "quotearg", scope: !362, file: !362, line: 943, type: !113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3205)
!3205 = !{!3206}
!3206 = !DILocalVariable(name: "arg", arg: 1, scope: !3204, file: !362, line: 943, type: !36)
!3207 = !DILocation(line: 0, scope: !3204)
!3208 = !DILocation(line: 0, scope: !3098, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 945, column: 10, scope: !3204)
!3210 = !DILocation(line: 933, column: 10, scope: !3098, inlinedAt: !3209)
!3211 = !DILocation(line: 945, column: 3, scope: !3204)
!3212 = distinct !DISubprogram(name: "quotearg_mem", scope: !362, file: !362, line: 949, type: !3213, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!34, !36, !93}
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "arg", arg: 1, scope: !3212, file: !362, line: 949, type: !36)
!3217 = !DILocalVariable(name: "argsize", arg: 2, scope: !3212, file: !362, line: 949, type: !93)
!3218 = !DILocation(line: 0, scope: !3212)
!3219 = !DILocation(line: 0, scope: !3194, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 951, column: 10, scope: !3212)
!3221 = !DILocation(line: 939, column: 10, scope: !3194, inlinedAt: !3220)
!3222 = !DILocation(line: 951, column: 3, scope: !3212)
!3223 = distinct !DISubprogram(name: "quotearg_n_style", scope: !362, file: !362, line: 955, type: !144, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3224)
!3224 = !{!3225, !3226, !3227, !3228}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3223, file: !362, line: 955, type: !38)
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3223, file: !362, line: 955, type: !5)
!3227 = !DILocalVariable(name: "arg", arg: 3, scope: !3223, file: !362, line: 955, type: !36)
!3228 = !DILocalVariable(name: "o", scope: !3223, file: !362, line: 957, type: !395)
!3229 = !DILocation(line: 0, scope: !3223)
!3230 = !DILocation(line: 957, column: 3, scope: !3223)
!3231 = !DILocation(line: 957, column: 32, scope: !3223)
!3232 = !DILocalVariable(name: "style", arg: 1, scope: !3233, file: !362, line: 193, type: !5)
!3233 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !362, file: !362, line: 193, type: !3234, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!396, !5}
!3236 = !{!3232, !3237}
!3237 = !DILocalVariable(name: "o", scope: !3233, file: !362, line: 195, type: !396)
!3238 = !DILocation(line: 0, scope: !3233, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 957, column: 36, scope: !3223)
!3240 = !DILocation(line: 195, column: 26, scope: !3233, inlinedAt: !3239)
!3241 = !{!3242}
!3242 = distinct !{!3242, !3243, !"quoting_options_from_style: argument 0"}
!3243 = distinct !{!3243, !"quoting_options_from_style"}
!3244 = !DILocation(line: 196, column: 13, scope: !3245, inlinedAt: !3239)
!3245 = distinct !DILexicalBlock(scope: !3233, file: !362, line: 196, column: 7)
!3246 = !DILocation(line: 196, column: 7, scope: !3233, inlinedAt: !3239)
!3247 = !DILocation(line: 197, column: 5, scope: !3245, inlinedAt: !3239)
!3248 = !DILocation(line: 198, column: 5, scope: !3233, inlinedAt: !3239)
!3249 = !DILocation(line: 198, column: 11, scope: !3233, inlinedAt: !3239)
!3250 = !DILocation(line: 958, column: 10, scope: !3223)
!3251 = !DILocation(line: 959, column: 1, scope: !3223)
!3252 = !DILocation(line: 958, column: 3, scope: !3223)
!3253 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !362, file: !362, line: 962, type: !3254, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3256)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!34, !38, !5, !36, !93}
!3256 = !{!3257, !3258, !3259, !3260, !3261}
!3257 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !362, line: 962, type: !38)
!3258 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !362, line: 962, type: !5)
!3259 = !DILocalVariable(name: "arg", arg: 3, scope: !3253, file: !362, line: 963, type: !36)
!3260 = !DILocalVariable(name: "argsize", arg: 4, scope: !3253, file: !362, line: 963, type: !93)
!3261 = !DILocalVariable(name: "o", scope: !3253, file: !362, line: 965, type: !395)
!3262 = !DILocation(line: 0, scope: !3253)
!3263 = !DILocation(line: 965, column: 3, scope: !3253)
!3264 = !DILocation(line: 965, column: 32, scope: !3253)
!3265 = !DILocation(line: 0, scope: !3233, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 965, column: 36, scope: !3253)
!3267 = !DILocation(line: 195, column: 26, scope: !3233, inlinedAt: !3266)
!3268 = !{!3269}
!3269 = distinct !{!3269, !3270, !"quoting_options_from_style: argument 0"}
!3270 = distinct !{!3270, !"quoting_options_from_style"}
!3271 = !DILocation(line: 196, column: 13, scope: !3245, inlinedAt: !3266)
!3272 = !DILocation(line: 196, column: 7, scope: !3233, inlinedAt: !3266)
!3273 = !DILocation(line: 197, column: 5, scope: !3245, inlinedAt: !3266)
!3274 = !DILocation(line: 198, column: 5, scope: !3233, inlinedAt: !3266)
!3275 = !DILocation(line: 198, column: 11, scope: !3233, inlinedAt: !3266)
!3276 = !DILocation(line: 966, column: 10, scope: !3253)
!3277 = !DILocation(line: 967, column: 1, scope: !3253)
!3278 = !DILocation(line: 966, column: 3, scope: !3253)
!3279 = distinct !DISubprogram(name: "quotearg_style", scope: !362, file: !362, line: 970, type: !3280, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!34, !5, !36}
!3282 = !{!3283, !3284}
!3283 = !DILocalVariable(name: "s", arg: 1, scope: !3279, file: !362, line: 970, type: !5)
!3284 = !DILocalVariable(name: "arg", arg: 2, scope: !3279, file: !362, line: 970, type: !36)
!3285 = !DILocation(line: 195, column: 26, scope: !3233, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 957, column: 36, scope: !3223, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 972, column: 10, scope: !3279)
!3288 = !DILocation(line: 957, column: 32, scope: !3223, inlinedAt: !3287)
!3289 = !DILocation(line: 0, scope: !3279)
!3290 = !DILocation(line: 0, scope: !3223, inlinedAt: !3287)
!3291 = !DILocation(line: 957, column: 3, scope: !3223, inlinedAt: !3287)
!3292 = !DILocation(line: 0, scope: !3233, inlinedAt: !3286)
!3293 = !{!3294}
!3294 = distinct !{!3294, !3295, !"quoting_options_from_style: argument 0"}
!3295 = distinct !{!3295, !"quoting_options_from_style"}
!3296 = !DILocation(line: 196, column: 13, scope: !3245, inlinedAt: !3286)
!3297 = !DILocation(line: 196, column: 7, scope: !3233, inlinedAt: !3286)
!3298 = !DILocation(line: 197, column: 5, scope: !3245, inlinedAt: !3286)
!3299 = !DILocation(line: 198, column: 5, scope: !3233, inlinedAt: !3286)
!3300 = !DILocation(line: 198, column: 11, scope: !3233, inlinedAt: !3286)
!3301 = !DILocation(line: 958, column: 10, scope: !3223, inlinedAt: !3287)
!3302 = !DILocation(line: 959, column: 1, scope: !3223, inlinedAt: !3287)
!3303 = !DILocation(line: 972, column: 3, scope: !3279)
!3304 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !362, file: !362, line: 976, type: !3305, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!34, !5, !36, !93}
!3307 = !{!3308, !3309, !3310}
!3308 = !DILocalVariable(name: "s", arg: 1, scope: !3304, file: !362, line: 976, type: !5)
!3309 = !DILocalVariable(name: "arg", arg: 2, scope: !3304, file: !362, line: 976, type: !36)
!3310 = !DILocalVariable(name: "argsize", arg: 3, scope: !3304, file: !362, line: 976, type: !93)
!3311 = !DILocation(line: 195, column: 26, scope: !3233, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 965, column: 36, scope: !3253, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 978, column: 10, scope: !3304)
!3314 = !DILocation(line: 965, column: 32, scope: !3253, inlinedAt: !3313)
!3315 = !DILocation(line: 0, scope: !3304)
!3316 = !DILocation(line: 0, scope: !3253, inlinedAt: !3313)
!3317 = !DILocation(line: 965, column: 3, scope: !3253, inlinedAt: !3313)
!3318 = !DILocation(line: 0, scope: !3233, inlinedAt: !3312)
!3319 = !{!3320}
!3320 = distinct !{!3320, !3321, !"quoting_options_from_style: argument 0"}
!3321 = distinct !{!3321, !"quoting_options_from_style"}
!3322 = !DILocation(line: 196, column: 13, scope: !3245, inlinedAt: !3312)
!3323 = !DILocation(line: 196, column: 7, scope: !3233, inlinedAt: !3312)
!3324 = !DILocation(line: 197, column: 5, scope: !3245, inlinedAt: !3312)
!3325 = !DILocation(line: 198, column: 5, scope: !3233, inlinedAt: !3312)
!3326 = !DILocation(line: 198, column: 11, scope: !3233, inlinedAt: !3312)
!3327 = !DILocation(line: 966, column: 10, scope: !3253, inlinedAt: !3313)
!3328 = !DILocation(line: 967, column: 1, scope: !3253, inlinedAt: !3313)
!3329 = !DILocation(line: 978, column: 3, scope: !3304)
!3330 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !362, file: !362, line: 982, type: !3331, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!34, !36, !93, !35}
!3333 = !{!3334, !3335, !3336, !3337}
!3334 = !DILocalVariable(name: "arg", arg: 1, scope: !3330, file: !362, line: 982, type: !36)
!3335 = !DILocalVariable(name: "argsize", arg: 2, scope: !3330, file: !362, line: 982, type: !93)
!3336 = !DILocalVariable(name: "ch", arg: 3, scope: !3330, file: !362, line: 982, type: !35)
!3337 = !DILocalVariable(name: "options", scope: !3330, file: !362, line: 984, type: !396)
!3338 = !DILocation(line: 0, scope: !3330)
!3339 = !DILocation(line: 984, column: 3, scope: !3330)
!3340 = !DILocation(line: 984, column: 26, scope: !3330)
!3341 = !DILocation(line: 985, column: 13, scope: !3330)
!3342 = !{i64 0, i64 4, !2353, i64 4, i64 4, !1368, i64 8, i64 32, !2353, i64 40, i64 8, !1289, i64 48, i64 8, !1289}
!3343 = !DILocation(line: 0, scope: !2167, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 986, column: 3, scope: !3330)
!3345 = !DILocation(line: 156, column: 62, scope: !2167, inlinedAt: !3344)
!3346 = !DILocation(line: 156, column: 57, scope: !2167, inlinedAt: !3344)
!3347 = !DILocation(line: 157, column: 15, scope: !2167, inlinedAt: !3344)
!3348 = !DILocation(line: 158, column: 12, scope: !2167, inlinedAt: !3344)
!3349 = !DILocation(line: 158, column: 15, scope: !2167, inlinedAt: !3344)
!3350 = !DILocation(line: 158, column: 25, scope: !2167, inlinedAt: !3344)
!3351 = !DILocation(line: 159, column: 18, scope: !2167, inlinedAt: !3344)
!3352 = !DILocation(line: 159, column: 23, scope: !2167, inlinedAt: !3344)
!3353 = !DILocation(line: 159, column: 6, scope: !2167, inlinedAt: !3344)
!3354 = !DILocation(line: 987, column: 10, scope: !3330)
!3355 = !DILocation(line: 988, column: 1, scope: !3330)
!3356 = !DILocation(line: 987, column: 3, scope: !3330)
!3357 = distinct !DISubprogram(name: "quotearg_char", scope: !362, file: !362, line: 991, type: !3358, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!34, !36, !35}
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "arg", arg: 1, scope: !3357, file: !362, line: 991, type: !36)
!3362 = !DILocalVariable(name: "ch", arg: 2, scope: !3357, file: !362, line: 991, type: !35)
!3363 = !DILocation(line: 984, column: 26, scope: !3330, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 993, column: 10, scope: !3357)
!3365 = !DILocation(line: 0, scope: !3357)
!3366 = !DILocation(line: 0, scope: !3330, inlinedAt: !3364)
!3367 = !DILocation(line: 984, column: 3, scope: !3330, inlinedAt: !3364)
!3368 = !DILocation(line: 985, column: 13, scope: !3330, inlinedAt: !3364)
!3369 = !DILocation(line: 0, scope: !2167, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 986, column: 3, scope: !3330, inlinedAt: !3364)
!3371 = !DILocation(line: 156, column: 62, scope: !2167, inlinedAt: !3370)
!3372 = !DILocation(line: 156, column: 57, scope: !2167, inlinedAt: !3370)
!3373 = !DILocation(line: 157, column: 15, scope: !2167, inlinedAt: !3370)
!3374 = !DILocation(line: 158, column: 12, scope: !2167, inlinedAt: !3370)
!3375 = !DILocation(line: 158, column: 15, scope: !2167, inlinedAt: !3370)
!3376 = !DILocation(line: 158, column: 25, scope: !2167, inlinedAt: !3370)
!3377 = !DILocation(line: 159, column: 18, scope: !2167, inlinedAt: !3370)
!3378 = !DILocation(line: 159, column: 23, scope: !2167, inlinedAt: !3370)
!3379 = !DILocation(line: 159, column: 6, scope: !2167, inlinedAt: !3370)
!3380 = !DILocation(line: 987, column: 10, scope: !3330, inlinedAt: !3364)
!3381 = !DILocation(line: 988, column: 1, scope: !3330, inlinedAt: !3364)
!3382 = !DILocation(line: 993, column: 3, scope: !3357)
!3383 = distinct !DISubprogram(name: "quotearg_colon", scope: !362, file: !362, line: 997, type: !113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3384)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "arg", arg: 1, scope: !3383, file: !362, line: 997, type: !36)
!3386 = !DILocation(line: 984, column: 26, scope: !3330, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 993, column: 10, scope: !3357, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 999, column: 10, scope: !3383)
!3389 = !DILocation(line: 0, scope: !3383)
!3390 = !DILocation(line: 0, scope: !3357, inlinedAt: !3388)
!3391 = !DILocation(line: 0, scope: !3330, inlinedAt: !3387)
!3392 = !DILocation(line: 984, column: 3, scope: !3330, inlinedAt: !3387)
!3393 = !DILocation(line: 985, column: 13, scope: !3330, inlinedAt: !3387)
!3394 = !DILocation(line: 0, scope: !2167, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 986, column: 3, scope: !3330, inlinedAt: !3387)
!3396 = !DILocation(line: 156, column: 57, scope: !2167, inlinedAt: !3395)
!3397 = !DILocation(line: 158, column: 12, scope: !2167, inlinedAt: !3395)
!3398 = !DILocation(line: 159, column: 6, scope: !2167, inlinedAt: !3395)
!3399 = !DILocation(line: 987, column: 10, scope: !3330, inlinedAt: !3387)
!3400 = !DILocation(line: 988, column: 1, scope: !3330, inlinedAt: !3387)
!3401 = !DILocation(line: 999, column: 3, scope: !3383)
!3402 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !362, file: !362, line: 1003, type: !3213, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3403)
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "arg", arg: 1, scope: !3402, file: !362, line: 1003, type: !36)
!3405 = !DILocalVariable(name: "argsize", arg: 2, scope: !3402, file: !362, line: 1003, type: !93)
!3406 = !DILocation(line: 984, column: 26, scope: !3330, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 1005, column: 10, scope: !3402)
!3408 = !DILocation(line: 0, scope: !3402)
!3409 = !DILocation(line: 0, scope: !3330, inlinedAt: !3407)
!3410 = !DILocation(line: 984, column: 3, scope: !3330, inlinedAt: !3407)
!3411 = !DILocation(line: 985, column: 13, scope: !3330, inlinedAt: !3407)
!3412 = !DILocation(line: 0, scope: !2167, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 986, column: 3, scope: !3330, inlinedAt: !3407)
!3414 = !DILocation(line: 156, column: 57, scope: !2167, inlinedAt: !3413)
!3415 = !DILocation(line: 158, column: 12, scope: !2167, inlinedAt: !3413)
!3416 = !DILocation(line: 159, column: 6, scope: !2167, inlinedAt: !3413)
!3417 = !DILocation(line: 987, column: 10, scope: !3330, inlinedAt: !3407)
!3418 = !DILocation(line: 988, column: 1, scope: !3330, inlinedAt: !3407)
!3419 = !DILocation(line: 1005, column: 3, scope: !3402)
!3420 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !362, file: !362, line: 1009, type: !144, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3421)
!3421 = !{!3422, !3423, !3424, !3425}
!3422 = !DILocalVariable(name: "n", arg: 1, scope: !3420, file: !362, line: 1009, type: !38)
!3423 = !DILocalVariable(name: "s", arg: 2, scope: !3420, file: !362, line: 1009, type: !5)
!3424 = !DILocalVariable(name: "arg", arg: 3, scope: !3420, file: !362, line: 1009, type: !36)
!3425 = !DILocalVariable(name: "options", scope: !3420, file: !362, line: 1011, type: !396)
!3426 = !DILocation(line: 195, column: 26, scope: !3233, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 1012, column: 13, scope: !3420)
!3428 = !DILocation(line: 0, scope: !3420)
!3429 = !DILocation(line: 1011, column: 3, scope: !3420)
!3430 = !DILocation(line: 1011, column: 26, scope: !3420)
!3431 = !DILocation(line: 1012, column: 13, scope: !3420)
!3432 = !DILocation(line: 0, scope: !3233, inlinedAt: !3427)
!3433 = !{!3434}
!3434 = distinct !{!3434, !3435, !"quoting_options_from_style: argument 0"}
!3435 = distinct !{!3435, !"quoting_options_from_style"}
!3436 = !DILocation(line: 196, column: 13, scope: !3245, inlinedAt: !3427)
!3437 = !DILocation(line: 196, column: 7, scope: !3233, inlinedAt: !3427)
!3438 = !DILocation(line: 197, column: 5, scope: !3245, inlinedAt: !3427)
!3439 = !DILocation(line: 0, scope: !2167, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 1013, column: 3, scope: !3420)
!3441 = !DILocation(line: 156, column: 57, scope: !2167, inlinedAt: !3440)
!3442 = !DILocation(line: 158, column: 12, scope: !2167, inlinedAt: !3440)
!3443 = !DILocation(line: 159, column: 6, scope: !2167, inlinedAt: !3440)
!3444 = !DILocation(line: 1014, column: 10, scope: !3420)
!3445 = !DILocation(line: 1015, column: 1, scope: !3420)
!3446 = !DILocation(line: 1014, column: 3, scope: !3420)
!3447 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !362, file: !362, line: 1018, type: !3448, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!34, !38, !36, !36, !36}
!3450 = !{!3451, !3452, !3453, !3454}
!3451 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !362, line: 1018, type: !38)
!3452 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3447, file: !362, line: 1018, type: !36)
!3453 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3447, file: !362, line: 1019, type: !36)
!3454 = !DILocalVariable(name: "arg", arg: 4, scope: !3447, file: !362, line: 1019, type: !36)
!3455 = !DILocalVariable(name: "o", scope: !3456, file: !362, line: 1030, type: !396)
!3456 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !362, file: !362, line: 1026, type: !3457, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!34, !38, !36, !36, !36, !93}
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3455}
!3460 = !DILocalVariable(name: "n", arg: 1, scope: !3456, file: !362, line: 1026, type: !38)
!3461 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3456, file: !362, line: 1026, type: !36)
!3462 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3456, file: !362, line: 1027, type: !36)
!3463 = !DILocalVariable(name: "arg", arg: 4, scope: !3456, file: !362, line: 1028, type: !36)
!3464 = !DILocalVariable(name: "argsize", arg: 5, scope: !3456, file: !362, line: 1028, type: !93)
!3465 = !DILocation(line: 1030, column: 26, scope: !3456, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1021, column: 10, scope: !3447)
!3467 = !DILocation(line: 0, scope: !3447)
!3468 = !DILocation(line: 0, scope: !3456, inlinedAt: !3466)
!3469 = !DILocation(line: 1030, column: 3, scope: !3456, inlinedAt: !3466)
!3470 = !DILocation(line: 1030, column: 30, scope: !3456, inlinedAt: !3466)
!3471 = !DILocation(line: 0, scope: !2207, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1031, column: 3, scope: !3456, inlinedAt: !3466)
!3473 = !DILocation(line: 184, column: 6, scope: !2207, inlinedAt: !3472)
!3474 = !DILocation(line: 184, column: 12, scope: !2207, inlinedAt: !3472)
!3475 = !DILocation(line: 185, column: 8, scope: !2221, inlinedAt: !3472)
!3476 = !DILocation(line: 185, column: 23, scope: !2221, inlinedAt: !3472)
!3477 = !DILocation(line: 185, column: 19, scope: !2221, inlinedAt: !3472)
!3478 = !DILocation(line: 186, column: 5, scope: !2221, inlinedAt: !3472)
!3479 = !DILocation(line: 187, column: 6, scope: !2207, inlinedAt: !3472)
!3480 = !DILocation(line: 187, column: 17, scope: !2207, inlinedAt: !3472)
!3481 = !DILocation(line: 188, column: 6, scope: !2207, inlinedAt: !3472)
!3482 = !DILocation(line: 188, column: 18, scope: !2207, inlinedAt: !3472)
!3483 = !DILocation(line: 1032, column: 10, scope: !3456, inlinedAt: !3466)
!3484 = !DILocation(line: 1033, column: 1, scope: !3456, inlinedAt: !3466)
!3485 = !DILocation(line: 1021, column: 3, scope: !3447)
!3486 = !DILocation(line: 0, scope: !3456)
!3487 = !DILocation(line: 1030, column: 3, scope: !3456)
!3488 = !DILocation(line: 1030, column: 26, scope: !3456)
!3489 = !DILocation(line: 1030, column: 30, scope: !3456)
!3490 = !DILocation(line: 0, scope: !2207, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 1031, column: 3, scope: !3456)
!3492 = !DILocation(line: 184, column: 6, scope: !2207, inlinedAt: !3491)
!3493 = !DILocation(line: 184, column: 12, scope: !2207, inlinedAt: !3491)
!3494 = !DILocation(line: 185, column: 8, scope: !2221, inlinedAt: !3491)
!3495 = !DILocation(line: 185, column: 23, scope: !2221, inlinedAt: !3491)
!3496 = !DILocation(line: 185, column: 19, scope: !2221, inlinedAt: !3491)
!3497 = !DILocation(line: 186, column: 5, scope: !2221, inlinedAt: !3491)
!3498 = !DILocation(line: 187, column: 6, scope: !2207, inlinedAt: !3491)
!3499 = !DILocation(line: 187, column: 17, scope: !2207, inlinedAt: !3491)
!3500 = !DILocation(line: 188, column: 6, scope: !2207, inlinedAt: !3491)
!3501 = !DILocation(line: 188, column: 18, scope: !2207, inlinedAt: !3491)
!3502 = !DILocation(line: 1032, column: 10, scope: !3456)
!3503 = !DILocation(line: 1033, column: 1, scope: !3456)
!3504 = !DILocation(line: 1032, column: 3, scope: !3456)
!3505 = distinct !DISubprogram(name: "quotearg_custom", scope: !362, file: !362, line: 1036, type: !3506, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!34, !36, !36, !36}
!3508 = !{!3509, !3510, !3511}
!3509 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3505, file: !362, line: 1036, type: !36)
!3510 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3505, file: !362, line: 1036, type: !36)
!3511 = !DILocalVariable(name: "arg", arg: 3, scope: !3505, file: !362, line: 1037, type: !36)
!3512 = !DILocation(line: 1030, column: 26, scope: !3456, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1021, column: 10, scope: !3447, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 1039, column: 10, scope: !3505)
!3515 = !DILocation(line: 0, scope: !3505)
!3516 = !DILocation(line: 0, scope: !3447, inlinedAt: !3514)
!3517 = !DILocation(line: 0, scope: !3456, inlinedAt: !3513)
!3518 = !DILocation(line: 1030, column: 3, scope: !3456, inlinedAt: !3513)
!3519 = !DILocation(line: 1030, column: 30, scope: !3456, inlinedAt: !3513)
!3520 = !DILocation(line: 0, scope: !2207, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 1031, column: 3, scope: !3456, inlinedAt: !3513)
!3522 = !DILocation(line: 184, column: 6, scope: !2207, inlinedAt: !3521)
!3523 = !DILocation(line: 184, column: 12, scope: !2207, inlinedAt: !3521)
!3524 = !DILocation(line: 185, column: 8, scope: !2221, inlinedAt: !3521)
!3525 = !DILocation(line: 185, column: 23, scope: !2221, inlinedAt: !3521)
!3526 = !DILocation(line: 185, column: 19, scope: !2221, inlinedAt: !3521)
!3527 = !DILocation(line: 186, column: 5, scope: !2221, inlinedAt: !3521)
!3528 = !DILocation(line: 187, column: 6, scope: !2207, inlinedAt: !3521)
!3529 = !DILocation(line: 187, column: 17, scope: !2207, inlinedAt: !3521)
!3530 = !DILocation(line: 188, column: 6, scope: !2207, inlinedAt: !3521)
!3531 = !DILocation(line: 188, column: 18, scope: !2207, inlinedAt: !3521)
!3532 = !DILocation(line: 1032, column: 10, scope: !3456, inlinedAt: !3513)
!3533 = !DILocation(line: 1033, column: 1, scope: !3456, inlinedAt: !3513)
!3534 = !DILocation(line: 1039, column: 3, scope: !3505)
!3535 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !362, file: !362, line: 1043, type: !3536, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!34, !36, !36, !36, !93}
!3538 = !{!3539, !3540, !3541, !3542}
!3539 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3535, file: !362, line: 1043, type: !36)
!3540 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3535, file: !362, line: 1043, type: !36)
!3541 = !DILocalVariable(name: "arg", arg: 3, scope: !3535, file: !362, line: 1044, type: !36)
!3542 = !DILocalVariable(name: "argsize", arg: 4, scope: !3535, file: !362, line: 1044, type: !93)
!3543 = !DILocation(line: 1030, column: 26, scope: !3456, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1046, column: 10, scope: !3535)
!3545 = !DILocation(line: 0, scope: !3535)
!3546 = !DILocation(line: 0, scope: !3456, inlinedAt: !3544)
!3547 = !DILocation(line: 1030, column: 3, scope: !3456, inlinedAt: !3544)
!3548 = !DILocation(line: 1030, column: 30, scope: !3456, inlinedAt: !3544)
!3549 = !DILocation(line: 0, scope: !2207, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1031, column: 3, scope: !3456, inlinedAt: !3544)
!3551 = !DILocation(line: 184, column: 6, scope: !2207, inlinedAt: !3550)
!3552 = !DILocation(line: 184, column: 12, scope: !2207, inlinedAt: !3550)
!3553 = !DILocation(line: 185, column: 8, scope: !2221, inlinedAt: !3550)
!3554 = !DILocation(line: 185, column: 23, scope: !2221, inlinedAt: !3550)
!3555 = !DILocation(line: 185, column: 19, scope: !2221, inlinedAt: !3550)
!3556 = !DILocation(line: 186, column: 5, scope: !2221, inlinedAt: !3550)
!3557 = !DILocation(line: 187, column: 6, scope: !2207, inlinedAt: !3550)
!3558 = !DILocation(line: 187, column: 17, scope: !2207, inlinedAt: !3550)
!3559 = !DILocation(line: 188, column: 6, scope: !2207, inlinedAt: !3550)
!3560 = !DILocation(line: 188, column: 18, scope: !2207, inlinedAt: !3550)
!3561 = !DILocation(line: 1032, column: 10, scope: !3456, inlinedAt: !3544)
!3562 = !DILocation(line: 1033, column: 1, scope: !3456, inlinedAt: !3544)
!3563 = !DILocation(line: 1046, column: 3, scope: !3535)
!3564 = distinct !DISubprogram(name: "quote_n_mem", scope: !362, file: !362, line: 1061, type: !3565, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!36, !38, !36, !93}
!3567 = !{!3568, !3569, !3570}
!3568 = !DILocalVariable(name: "n", arg: 1, scope: !3564, file: !362, line: 1061, type: !38)
!3569 = !DILocalVariable(name: "arg", arg: 2, scope: !3564, file: !362, line: 1061, type: !36)
!3570 = !DILocalVariable(name: "argsize", arg: 3, scope: !3564, file: !362, line: 1061, type: !93)
!3571 = !DILocation(line: 0, scope: !3564)
!3572 = !DILocation(line: 1063, column: 10, scope: !3564)
!3573 = !DILocation(line: 1063, column: 3, scope: !3564)
!3574 = distinct !DISubprogram(name: "quote_mem", scope: !362, file: !362, line: 1067, type: !3575, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!36, !36, !93}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "arg", arg: 1, scope: !3574, file: !362, line: 1067, type: !36)
!3579 = !DILocalVariable(name: "argsize", arg: 2, scope: !3574, file: !362, line: 1067, type: !93)
!3580 = !DILocation(line: 0, scope: !3574)
!3581 = !DILocation(line: 0, scope: !3564, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1069, column: 10, scope: !3574)
!3583 = !DILocation(line: 1063, column: 10, scope: !3564, inlinedAt: !3582)
!3584 = !DILocation(line: 1069, column: 3, scope: !3574)
!3585 = distinct !DISubprogram(name: "quote_n", scope: !362, file: !362, line: 1073, type: !3586, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!36, !38, !36}
!3588 = !{!3589, !3590}
!3589 = !DILocalVariable(name: "n", arg: 1, scope: !3585, file: !362, line: 1073, type: !38)
!3590 = !DILocalVariable(name: "arg", arg: 2, scope: !3585, file: !362, line: 1073, type: !36)
!3591 = !DILocation(line: 0, scope: !3585)
!3592 = !DILocation(line: 0, scope: !3564, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1075, column: 10, scope: !3585)
!3594 = !DILocation(line: 1063, column: 10, scope: !3564, inlinedAt: !3593)
!3595 = !DILocation(line: 1075, column: 3, scope: !3585)
!3596 = distinct !DISubprogram(name: "quote", scope: !362, file: !362, line: 1079, type: !133, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3597)
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "arg", arg: 1, scope: !3596, file: !362, line: 1079, type: !36)
!3599 = !DILocation(line: 0, scope: !3596)
!3600 = !DILocation(line: 0, scope: !3585, inlinedAt: !3601)
!3601 = distinct !DILocation(line: 1081, column: 10, scope: !3596)
!3602 = !DILocation(line: 0, scope: !3564, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 1075, column: 10, scope: !3585, inlinedAt: !3601)
!3604 = !DILocation(line: 1063, column: 10, scope: !3564, inlinedAt: !3603)
!3605 = !DILocation(line: 1081, column: 3, scope: !3596)
!3606 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !585, file: !585, line: 44, type: !3607, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3615)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !150, line: 31, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !150, line: 26, size: 128, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3611, file: !150, line: 28, baseType: !93, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3611, file: !150, line: 29, baseType: !34, size: 64, offset: 64)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3606, file: !585, line: 44, type: !3609)
!3617 = !DILocation(line: 0, scope: !3606)
!3618 = !DILocation(line: 48, column: 1, scope: !3606)
!3619 = !DILocation(line: 47, column: 23, scope: !3606)
!3620 = distinct !DISubprogram(name: "readtoken", scope: !585, file: !585, line: 80, type: !3621, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3657)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!93, !3623, !36, !93, !3609}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3625, file: !46, line: 51, baseType: !38, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3625, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3625, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3625, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3625, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3625, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3625, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3625, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3625, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3625, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3625, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3625, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3625, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3625, file: !46, line: 70, baseType: !3641, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3625, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3625, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3625, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3625, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3625, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3625, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3625, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3625, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3625, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3625, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3625, file: !46, line: 93, baseType: !3641, size: 64, offset: 1344)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3625, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3625, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3625, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3625, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3669}
!3658 = !DILocalVariable(name: "stream", arg: 1, scope: !3620, file: !585, line: 80, type: !3623)
!3659 = !DILocalVariable(name: "delim", arg: 2, scope: !3620, file: !585, line: 81, type: !36)
!3660 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3620, file: !585, line: 82, type: !93)
!3661 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3620, file: !585, line: 83, type: !3609)
!3662 = !DILocalVariable(name: "p", scope: !3620, file: !585, line: 85, type: !34)
!3663 = !DILocalVariable(name: "c", scope: !3620, file: !585, line: 86, type: !38)
!3664 = !DILocalVariable(name: "i", scope: !3620, file: !585, line: 87, type: !93)
!3665 = !DILocalVariable(name: "n", scope: !3620, file: !585, line: 87, type: !93)
!3666 = !DILocalVariable(name: "isdelim", scope: !3620, file: !585, line: 88, type: !3667)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3668, size: 256, elements: !427)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !585, line: 50, baseType: !93)
!3669 = !DILocalVariable(name: "ch", scope: !3670, file: !585, line: 93, type: !604)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !585, line: 92, column: 5)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !585, line: 91, column: 3)
!3672 = distinct !DILexicalBlock(scope: !3620, file: !585, line: 91, column: 3)
!3673 = !DILocation(line: 0, scope: !3620)
!3674 = !DILocation(line: 88, column: 3, scope: !3620)
!3675 = !DILocation(line: 88, column: 8, scope: !3620)
!3676 = !DILocalVariable(name: "__dest", arg: 1, scope: !3677, file: !2556, line: 59, type: !91)
!3677 = distinct !DISubprogram(name: "memset", scope: !2556, file: !2556, line: 59, type: !2557, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3678)
!3678 = !{!3676, !3679, !3680}
!3679 = !DILocalVariable(name: "__ch", arg: 2, scope: !3677, file: !2556, line: 59, type: !38)
!3680 = !DILocalVariable(name: "__len", arg: 3, scope: !3677, file: !2556, line: 59, type: !93)
!3681 = !DILocation(line: 0, scope: !3677, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 90, column: 3, scope: !3620)
!3683 = !DILocation(line: 71, column: 10, scope: !3677, inlinedAt: !3682)
!3684 = !DILocation(line: 91, column: 17, scope: !3671)
!3685 = !DILocation(line: 91, column: 3, scope: !3672)
!3686 = !DILocation(line: 93, column: 26, scope: !3670)
!3687 = !DILocation(line: 0, scope: !3670)
!3688 = !DILocation(line: 94, column: 20, scope: !3670)
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3690, file: !585, line: 60, type: !93)
!3690 = distinct !DISubprogram(name: "set_nth_bit", scope: !585, file: !585, line: 60, type: !3691, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3694)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !93, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3694 = !{!3689, !3695, !3696}
!3695 = !DILocalVariable(name: "bitset", arg: 2, scope: !3690, file: !585, line: 60, type: !3693)
!3696 = !DILocalVariable(name: "one", scope: !3690, file: !585, line: 62, type: !93)
!3697 = !DILocation(line: 0, scope: !3690, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 94, column: 7, scope: !3670)
!3699 = !DILocation(line: 63, column: 41, scope: !3690, inlinedAt: !3698)
!3700 = !DILocation(line: 63, column: 36, scope: !3690, inlinedAt: !3698)
!3701 = !DILocation(line: 63, column: 12, scope: !3690, inlinedAt: !3698)
!3702 = !DILocation(line: 63, column: 3, scope: !3690, inlinedAt: !3698)
!3703 = !DILocation(line: 63, column: 29, scope: !3690, inlinedAt: !3698)
!3704 = !DILocation(line: 91, column: 29, scope: !3671)
!3705 = distinct !{!3705, !3685, !3706}
!3706 = !DILocation(line: 95, column: 5, scope: !3672)
!3707 = !DILocation(line: 68, column: 10, scope: !3708, inlinedAt: !3714)
!3708 = distinct !DISubprogram(name: "getc_unlocked", scope: !3709, file: !3709, line: 66, type: !3710, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3712)
!3709 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!38, !3623}
!3712 = !{!3713}
!3713 = !DILocalVariable(name: "__fp", arg: 1, scope: !3708, file: !3709, line: 66, type: !3623)
!3714 = distinct !DILocation(line: 98, column: 12, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3620, file: !585, line: 98, column: 3)
!3716 = !DILocation(line: 0, scope: !3708, inlinedAt: !3714)
!3717 = !{!3718, !1290, i64 8}
!3718 = !{!"_IO_FILE", !1369, i64 0, !1290, i64 8, !1290, i64 16, !1290, i64 24, !1290, i64 32, !1290, i64 40, !1290, i64 48, !1290, i64 56, !1290, i64 64, !1290, i64 72, !1290, i64 80, !1290, i64 88, !1290, i64 96, !1290, i64 104, !1369, i64 112, !1369, i64 116, !1438, i64 120, !2549, i64 128, !1291, i64 130, !1291, i64 131, !1290, i64 136, !1438, i64 144, !1290, i64 152, !1290, i64 160, !1290, i64 168, !1290, i64 176, !1438, i64 184, !1369, i64 192, !1291, i64 196}
!3719 = !{!3718, !1290, i64 16}
!3720 = !{!"branch_weights", i32 2000, i32 1}
!3721 = !{!"misexpect", i64 1, i64 2000, i64 1}
!3722 = !DILocation(line: 98, column: 34, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3715, file: !585, line: 98, column: 3)
!3724 = !DILocation(line: 98, column: 29, scope: !3723)
!3725 = !DILocation(line: 98, column: 3, scope: !3715)
!3726 = !DILocation(line: 98, column: 50, scope: !3723)
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3728, file: !585, line: 54, type: !93)
!3728 = distinct !DISubprogram(name: "get_nth_bit", scope: !585, file: !585, line: 54, type: !3729, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3733)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!127, !93, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3733 = !{!3727, !3734}
!3734 = !DILocalVariable(name: "bitset", arg: 2, scope: !3728, file: !585, line: 54, type: !3731)
!3735 = !DILocation(line: 0, scope: !3728, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 98, column: 37, scope: !3723)
!3737 = !DILocation(line: 56, column: 19, scope: !3728, inlinedAt: !3736)
!3738 = !DILocation(line: 56, column: 10, scope: !3728, inlinedAt: !3736)
!3739 = !DILocation(line: 56, column: 41, scope: !3728, inlinedAt: !3736)
!3740 = !DILocation(line: 0, scope: !3708, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 98, column: 67, scope: !3723)
!3742 = !DILocation(line: 68, column: 10, scope: !3708, inlinedAt: !3741)
!3743 = distinct !{!3743, !3725, !3744}
!3744 = !DILocation(line: 101, column: 5, scope: !3715)
!3745 = !DILocation(line: 103, column: 20, scope: !3620)
!3746 = !DILocation(line: 104, column: 20, scope: !3620)
!3747 = !{!1437, !1438, i64 0}
!3748 = !DILocation(line: 106, column: 3, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3620, file: !585, line: 106, column: 3)
!3750 = !DILocation(line: 111, column: 13, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !585, line: 111, column: 11)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !585, line: 107, column: 5)
!3753 = distinct !DILexicalBlock(scope: !3749, file: !585, line: 106, column: 3)
!3754 = !DILocation(line: 111, column: 11, scope: !3752)
!3755 = !DILocation(line: 0, scope: !591, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 112, column: 13, scope: !3751)
!3757 = !DILocation(line: 178, column: 9, scope: !3758, inlinedAt: !3756)
!3758 = distinct !DILexicalBlock(scope: !591, file: !169, line: 178, column: 7)
!3759 = !DILocation(line: 178, column: 7, scope: !591, inlinedAt: !3756)
!3760 = !DILocation(line: 180, column: 13, scope: !3761, inlinedAt: !3756)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !169, line: 180, column: 11)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !169, line: 179, column: 5)
!3763 = !DILocation(line: 180, column: 11, scope: !3762, inlinedAt: !3756)
!3764 = !DILocation(line: 191, column: 11, scope: !3765, inlinedAt: !3756)
!3765 = distinct !DILexicalBlock(scope: !3762, file: !169, line: 191, column: 11)
!3766 = !DILocation(line: 191, column: 11, scope: !3762, inlinedAt: !3756)
!3767 = !DILocation(line: 192, column: 9, scope: !3765, inlinedAt: !3756)
!3768 = !DILocation(line: 201, column: 11, scope: !3769, inlinedAt: !3756)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !169, line: 200, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3758, file: !169, line: 195, column: 5)
!3771 = !DILocation(line: 200, column: 11, scope: !3770, inlinedAt: !3756)
!3772 = !DILocation(line: 202, column: 9, scope: !3769, inlinedAt: !3756)
!3773 = !DILocation(line: 203, column: 14, scope: !3770, inlinedAt: !3756)
!3774 = !DILocation(line: 203, column: 18, scope: !3770, inlinedAt: !3756)
!3775 = !DILocation(line: 203, column: 9, scope: !3770, inlinedAt: !3756)
!3776 = !DILocation(line: 207, column: 10, scope: !591, inlinedAt: !3756)
!3777 = !DILocation(line: 112, column: 9, scope: !3751)
!3778 = !DILocation(line: 114, column: 11, scope: !3752)
!3779 = !DILocation(line: 119, column: 24, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3752, file: !585, line: 119, column: 11)
!3781 = !DILocation(line: 0, scope: !3728, inlinedAt: !3782)
!3782 = distinct !DILocation(line: 119, column: 11, scope: !3780)
!3783 = !DILocation(line: 56, column: 19, scope: !3728, inlinedAt: !3782)
!3784 = !DILocation(line: 56, column: 10, scope: !3728, inlinedAt: !3782)
!3785 = !DILocation(line: 56, column: 41, scope: !3728, inlinedAt: !3782)
!3786 = !DILocation(line: 119, column: 11, scope: !3752)
!3787 = !DILocation(line: 124, column: 16, scope: !3752)
!3788 = !DILocation(line: 124, column: 10, scope: !3752)
!3789 = !DILocation(line: 124, column: 7, scope: !3752)
!3790 = !DILocation(line: 124, column: 14, scope: !3752)
!3791 = !DILocation(line: 0, scope: !3708, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 125, column: 11, scope: !3752)
!3793 = !DILocation(line: 68, column: 10, scope: !3708, inlinedAt: !3792)
!3794 = !DILocation(line: 108, column: 13, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3752, file: !585, line: 108, column: 11)
!3796 = !DILocation(line: 108, column: 22, scope: !3795)
!3797 = !DILocation(line: 108, column: 17, scope: !3795)
!3798 = distinct !{!3798, !3748, !3799}
!3799 = !DILocation(line: 126, column: 5, scope: !3749)
!3800 = !DILocation(line: 0, scope: !3752)
!3801 = !DILocation(line: 128, column: 23, scope: !3620)
!3802 = !DILocation(line: 129, column: 21, scope: !3620)
!3803 = !DILocation(line: 130, column: 3, scope: !3620)
!3804 = !DILocation(line: 131, column: 1, scope: !3620)
!3805 = distinct !DISubprogram(name: "readtokens", scope: !585, file: !585, line: 141, type: !3806, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3810)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!93, !3623, !93, !36, !93, !3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3827}
!3811 = !DILocalVariable(name: "stream", arg: 1, scope: !3805, file: !585, line: 141, type: !3623)
!3812 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3805, file: !585, line: 142, type: !93)
!3813 = !DILocalVariable(name: "delim", arg: 3, scope: !3805, file: !585, line: 143, type: !36)
!3814 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3805, file: !585, line: 144, type: !93)
!3815 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3805, file: !585, line: 145, type: !3808)
!3816 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3805, file: !585, line: 146, type: !3809)
!3817 = !DILocalVariable(name: "tb", scope: !3805, file: !585, line: 148, type: !3610)
!3818 = !DILocalVariable(name: "token", scope: !3805, file: !585, line: 148, type: !3609)
!3819 = !DILocalVariable(name: "tokens", scope: !3805, file: !585, line: 149, type: !126)
!3820 = !DILocalVariable(name: "lengths", scope: !3805, file: !585, line: 150, type: !594)
!3821 = !DILocalVariable(name: "sz", scope: !3805, file: !585, line: 151, type: !93)
!3822 = !DILocalVariable(name: "n_tokens", scope: !3805, file: !585, line: 152, type: !93)
!3823 = !DILocalVariable(name: "tmp", scope: !3824, file: !585, line: 167, type: !34)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !585, line: 166, column: 5)
!3825 = distinct !DILexicalBlock(scope: !3826, file: !585, line: 165, column: 3)
!3826 = distinct !DILexicalBlock(scope: !3805, file: !585, line: 165, column: 3)
!3827 = !DILocalVariable(name: "token_length", scope: !3824, file: !585, line: 168, type: !93)
!3828 = !DILocation(line: 0, scope: !3805)
!3829 = !DILocation(line: 148, column: 3, scope: !3805)
!3830 = !DILocation(line: 148, column: 16, scope: !3805)
!3831 = !DILocation(line: 154, column: 26, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3805, file: !585, line: 154, column: 7)
!3833 = !DILocation(line: 154, column: 7, scope: !3805)
!3834 = !DILocalVariable(name: "n", arg: 1, scope: !3835, file: !169, line: 99, type: !93)
!3835 = distinct !DISubprogram(name: "xnmalloc", scope: !169, file: !169, line: 99, type: !3836, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3838)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!91, !93, !93}
!3838 = !{!3834, !3839}
!3839 = !DILocalVariable(name: "s", arg: 2, scope: !3835, file: !169, line: 99, type: !93)
!3840 = !DILocation(line: 0, scope: !3835, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 160, column: 12, scope: !3805)
!3842 = !DILocation(line: 101, column: 7, scope: !3843, inlinedAt: !3841)
!3843 = distinct !DILexicalBlock(scope: !3835, file: !169, line: 101, column: 7)
!3844 = !DILocation(line: 101, column: 7, scope: !3835, inlinedAt: !3841)
!3845 = !DILocation(line: 102, column: 5, scope: !3843, inlinedAt: !3841)
!3846 = !DILocation(line: 103, column: 21, scope: !3835, inlinedAt: !3841)
!3847 = !DILocation(line: 103, column: 10, scope: !3835, inlinedAt: !3841)
!3848 = !DILocation(line: 160, column: 12, scope: !3805)
!3849 = !DILocation(line: 0, scope: !3835, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 161, column: 13, scope: !3805)
!3851 = !DILocation(line: 103, column: 10, scope: !3835, inlinedAt: !3850)
!3852 = !DILocation(line: 161, column: 13, scope: !3805)
!3853 = !DILocation(line: 0, scope: !3606, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 164, column: 3, scope: !3805)
!3855 = !DILocation(line: 47, column: 23, scope: !3606, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !3824)
!3857 = !DILocation(line: 165, column: 3, scope: !3805)
!3858 = !DILocation(line: 159, column: 6, scope: !3805)
!3859 = !DILocation(line: 163, column: 12, scope: !3805)
!3860 = !DILocation(line: 168, column: 29, scope: !3824)
!3861 = !DILocation(line: 169, column: 20, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3824, file: !585, line: 169, column: 11)
!3863 = !DILocation(line: 169, column: 11, scope: !3824)
!3864 = !DILocation(line: 171, column: 32, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3862, file: !585, line: 170, column: 9)
!3866 = !DILocation(line: 0, scope: !591, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 171, column: 20, scope: !3865)
!3868 = !DILocation(line: 178, column: 9, scope: !3758, inlinedAt: !3867)
!3869 = !DILocation(line: 178, column: 7, scope: !591, inlinedAt: !3867)
!3870 = !DILocation(line: 180, column: 13, scope: !3761, inlinedAt: !3867)
!3871 = !DILocation(line: 180, column: 11, scope: !3762, inlinedAt: !3867)
!3872 = !DILocation(line: 191, column: 11, scope: !3765, inlinedAt: !3867)
!3873 = !DILocation(line: 191, column: 11, scope: !3762, inlinedAt: !3867)
!3874 = !DILocation(line: 192, column: 9, scope: !3765, inlinedAt: !3867)
!3875 = !DILocation(line: 201, column: 11, scope: !3769, inlinedAt: !3867)
!3876 = !DILocation(line: 200, column: 11, scope: !3770, inlinedAt: !3867)
!3877 = !DILocation(line: 202, column: 9, scope: !3769, inlinedAt: !3867)
!3878 = !DILocation(line: 203, column: 14, scope: !3770, inlinedAt: !3867)
!3879 = !DILocation(line: 203, column: 18, scope: !3770, inlinedAt: !3867)
!3880 = !DILocation(line: 203, column: 9, scope: !3770, inlinedAt: !3867)
!3881 = !DILocation(line: 207, column: 25, scope: !591, inlinedAt: !3867)
!3882 = !DILocalVariable(name: "p", arg: 1, scope: !3883, file: !169, line: 112, type: !91)
!3883 = distinct !DISubprogram(name: "xnrealloc", scope: !169, file: !169, line: 112, type: !3884, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!91, !91, !93, !93}
!3886 = !{!3882, !3887, !3888}
!3887 = !DILocalVariable(name: "n", arg: 2, scope: !3883, file: !169, line: 112, type: !93)
!3888 = !DILocalVariable(name: "s", arg: 3, scope: !3883, file: !169, line: 112, type: !93)
!3889 = !DILocation(line: 0, scope: !3883, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 172, column: 21, scope: !3865)
!3891 = !DILocation(line: 114, column: 7, scope: !3883, inlinedAt: !3890)
!3892 = !DILocation(line: 207, column: 10, scope: !591, inlinedAt: !3867)
!3893 = !DILocation(line: 171, column: 20, scope: !3865)
!3894 = !DILocation(line: 172, column: 32, scope: !3865)
!3895 = !DILocation(line: 116, column: 10, scope: !3883, inlinedAt: !3890)
!3896 = !DILocation(line: 172, column: 21, scope: !3865)
!3897 = !DILocation(line: 173, column: 9, scope: !3865)
!3898 = !DILocation(line: 175, column: 24, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3824, file: !585, line: 175, column: 11)
!3900 = !DILocation(line: 175, column: 11, scope: !3824)
!3901 = !DILocation(line: 182, column: 36, scope: !3824)
!3902 = !DILocation(line: 0, scope: !3835, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 182, column: 13, scope: !3824)
!3904 = !DILocation(line: 101, column: 7, scope: !3843, inlinedAt: !3903)
!3905 = !DILocation(line: 101, column: 7, scope: !3835, inlinedAt: !3903)
!3906 = !DILocation(line: 102, column: 5, scope: !3843, inlinedAt: !3903)
!3907 = !DILocation(line: 103, column: 10, scope: !3835, inlinedAt: !3903)
!3908 = !DILocation(line: 183, column: 7, scope: !3824)
!3909 = !DILocation(line: 183, column: 25, scope: !3824)
!3910 = !DILocation(line: 184, column: 46, scope: !3824)
!3911 = !DILocalVariable(name: "__dest", arg: 1, scope: !3912, file: !2556, line: 31, type: !3915)
!3912 = distinct !DISubprogram(name: "memcpy", scope: !2556, file: !2556, line: 31, type: !3913, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !584, retainedNodes: !3917)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!91, !3915, !3916, !93}
!3915 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3916 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !388)
!3917 = !{!3911, !3918, !3919}
!3918 = !DILocalVariable(name: "__src", arg: 2, scope: !3912, file: !2556, line: 31, type: !3916)
!3919 = !DILocalVariable(name: "__len", arg: 3, scope: !3912, file: !2556, line: 31, type: !93)
!3920 = !DILocation(line: 0, scope: !3912, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 184, column: 26, scope: !3824)
!3922 = !DILocation(line: 34, column: 10, scope: !3912, inlinedAt: !3921)
!3923 = !DILocation(line: 184, column: 7, scope: !3824)
!3924 = !DILocation(line: 184, column: 24, scope: !3824)
!3925 = !DILocation(line: 185, column: 15, scope: !3824)
!3926 = !DILocation(line: 178, column: 11, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3899, file: !585, line: 176, column: 9)
!3928 = !DILocation(line: 178, column: 28, scope: !3927)
!3929 = !DILocation(line: 179, column: 11, scope: !3927)
!3930 = !DILocation(line: 179, column: 29, scope: !3927)
!3931 = !DILocation(line: 188, column: 16, scope: !3805)
!3932 = !DILocation(line: 188, column: 3, scope: !3805)
!3933 = !DILocation(line: 189, column: 15, scope: !3805)
!3934 = !DILocation(line: 190, column: 21, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3805, file: !585, line: 190, column: 7)
!3936 = !DILocation(line: 190, column: 7, scope: !3805)
!3937 = !DILocation(line: 191, column: 20, scope: !3935)
!3938 = !DILocation(line: 191, column: 5, scope: !3935)
!3939 = !DILocation(line: 193, column: 11, scope: !3935)
!3940 = !DILocation(line: 193, column: 5, scope: !3935)
!3941 = !DILocation(line: 195, column: 1, scope: !3805)
!3942 = !DILocation(line: 194, column: 3, scope: !3805)
!3943 = distinct !DISubprogram(name: "version_etc_arn", scope: !606, file: !606, line: 61, type: !3944, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3949)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3946, !36, !36, !36, !3948, !93}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !616)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955}
!3950 = !DILocalVariable(name: "stream", arg: 1, scope: !3943, file: !606, line: 61, type: !3946)
!3951 = !DILocalVariable(name: "command_name", arg: 2, scope: !3943, file: !606, line: 62, type: !36)
!3952 = !DILocalVariable(name: "package", arg: 3, scope: !3943, file: !606, line: 62, type: !36)
!3953 = !DILocalVariable(name: "version", arg: 4, scope: !3943, file: !606, line: 63, type: !36)
!3954 = !DILocalVariable(name: "authors", arg: 5, scope: !3943, file: !606, line: 64, type: !3948)
!3955 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3943, file: !606, line: 64, type: !93)
!3956 = !DILocation(line: 0, scope: !3943)
!3957 = !DILocation(line: 66, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3943, file: !606, line: 66, column: 7)
!3959 = !DILocation(line: 66, column: 7, scope: !3943)
!3960 = !DILocation(line: 67, column: 5, scope: !3958)
!3961 = !DILocation(line: 69, column: 5, scope: !3958)
!3962 = !DILocation(line: 83, column: 3, scope: !3943)
!3963 = !DILocation(line: 85, column: 3, scope: !3943)
!3964 = !DILocation(line: 88, column: 3, scope: !3943)
!3965 = !DILocation(line: 95, column: 3, scope: !3943)
!3966 = !DILocation(line: 97, column: 3, scope: !3943)
!3967 = !DILocation(line: 105, column: 7, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3943, file: !606, line: 98, column: 5)
!3969 = !DILocation(line: 106, column: 7, scope: !3968)
!3970 = !DILocation(line: 109, column: 7, scope: !3968)
!3971 = !DILocation(line: 110, column: 7, scope: !3968)
!3972 = !DILocation(line: 113, column: 7, scope: !3968)
!3973 = !DILocation(line: 115, column: 7, scope: !3968)
!3974 = !DILocation(line: 120, column: 7, scope: !3968)
!3975 = !DILocation(line: 122, column: 7, scope: !3968)
!3976 = !DILocation(line: 127, column: 7, scope: !3968)
!3977 = !DILocation(line: 129, column: 7, scope: !3968)
!3978 = !DILocation(line: 134, column: 7, scope: !3968)
!3979 = !DILocation(line: 137, column: 7, scope: !3968)
!3980 = !DILocation(line: 142, column: 7, scope: !3968)
!3981 = !DILocation(line: 145, column: 7, scope: !3968)
!3982 = !DILocation(line: 150, column: 7, scope: !3968)
!3983 = !DILocation(line: 154, column: 7, scope: !3968)
!3984 = !DILocation(line: 159, column: 7, scope: !3968)
!3985 = !DILocation(line: 163, column: 7, scope: !3968)
!3986 = !DILocation(line: 170, column: 7, scope: !3968)
!3987 = !DILocation(line: 174, column: 7, scope: !3968)
!3988 = !DILocation(line: 176, column: 1, scope: !3943)
!3989 = distinct !DISubprogram(name: "version_etc_ar", scope: !606, file: !606, line: 183, type: !3990, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3946, !36, !36, !36, !3948}
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998}
!3993 = !DILocalVariable(name: "stream", arg: 1, scope: !3989, file: !606, line: 183, type: !3946)
!3994 = !DILocalVariable(name: "command_name", arg: 2, scope: !3989, file: !606, line: 184, type: !36)
!3995 = !DILocalVariable(name: "package", arg: 3, scope: !3989, file: !606, line: 184, type: !36)
!3996 = !DILocalVariable(name: "version", arg: 4, scope: !3989, file: !606, line: 185, type: !36)
!3997 = !DILocalVariable(name: "authors", arg: 5, scope: !3989, file: !606, line: 185, type: !3948)
!3998 = !DILocalVariable(name: "n_authors", scope: !3989, file: !606, line: 187, type: !93)
!3999 = !DILocation(line: 0, scope: !3989)
!4000 = !DILocation(line: 189, column: 8, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3989, file: !606, line: 189, column: 3)
!4002 = !DILocation(line: 0, scope: !4001)
!4003 = !DILocation(line: 189, column: 23, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4001, file: !606, line: 189, column: 3)
!4005 = !DILocation(line: 189, column: 3, scope: !4001)
!4006 = !DILocation(line: 189, column: 52, scope: !4004)
!4007 = distinct !{!4007, !4005, !4008}
!4008 = !DILocation(line: 190, column: 5, scope: !4001)
!4009 = !DILocation(line: 191, column: 3, scope: !3989)
!4010 = !DILocation(line: 192, column: 1, scope: !3989)
!4011 = distinct !DISubprogram(name: "version_etc_va", scope: !606, file: !606, line: 199, type: !4012, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !4021)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{null, !3946, !36, !36, !36, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !606, line: 192, size: 192, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4015, file: !606, line: 192, baseType: !7, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4015, file: !606, line: 192, baseType: !7, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4015, file: !606, line: 192, baseType: !91, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4015, file: !606, line: 192, baseType: !91, size: 64, offset: 128)
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4022 = !DILocalVariable(name: "stream", arg: 1, scope: !4011, file: !606, line: 199, type: !3946)
!4023 = !DILocalVariable(name: "command_name", arg: 2, scope: !4011, file: !606, line: 200, type: !36)
!4024 = !DILocalVariable(name: "package", arg: 3, scope: !4011, file: !606, line: 200, type: !36)
!4025 = !DILocalVariable(name: "version", arg: 4, scope: !4011, file: !606, line: 201, type: !36)
!4026 = !DILocalVariable(name: "authors", arg: 5, scope: !4011, file: !606, line: 201, type: !4014)
!4027 = !DILocalVariable(name: "n_authors", scope: !4011, file: !606, line: 203, type: !93)
!4028 = !DILocalVariable(name: "authtab", scope: !4011, file: !606, line: 204, type: !4029)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !456)
!4030 = !DILocation(line: 0, scope: !4011)
!4031 = !DILocation(line: 204, column: 3, scope: !4011)
!4032 = !DILocation(line: 204, column: 15, scope: !4011)
!4033 = !DILocation(line: 0, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !606, line: 206, column: 3)
!4035 = distinct !DILexicalBlock(scope: !4011, file: !606, line: 206, column: 3)
!4036 = !DILocation(line: 208, column: 35, scope: !4034)
!4037 = !DILocation(line: 208, column: 14, scope: !4034)
!4038 = !DILocation(line: 208, column: 33, scope: !4034)
!4039 = !DILocation(line: 208, column: 67, scope: !4034)
!4040 = !DILocation(line: 206, column: 3, scope: !4035)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocation(line: 211, column: 3, scope: !4011)
!4043 = !DILocation(line: 213, column: 1, scope: !4011)
!4044 = distinct !DISubprogram(name: "version_etc", scope: !606, file: !606, line: 230, type: !4045, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !3946, !36, !36, !36, null}
!4047 = !{!4048, !4049, !4050, !4051, !4052}
!4048 = !DILocalVariable(name: "stream", arg: 1, scope: !4044, file: !606, line: 230, type: !3946)
!4049 = !DILocalVariable(name: "command_name", arg: 2, scope: !4044, file: !606, line: 231, type: !36)
!4050 = !DILocalVariable(name: "package", arg: 3, scope: !4044, file: !606, line: 231, type: !36)
!4051 = !DILocalVariable(name: "version", arg: 4, scope: !4044, file: !606, line: 232, type: !36)
!4052 = !DILocalVariable(name: "authors", scope: !4044, file: !606, line: 234, type: !4053)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !4054)
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2040, line: 32, baseType: !4055)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !606, line: 234, baseType: !4056)
!4056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 192, elements: !76)
!4057 = !DILocation(line: 0, scope: !4044)
!4058 = !DILocation(line: 234, column: 3, scope: !4044)
!4059 = !DILocation(line: 234, column: 11, scope: !4044)
!4060 = !DILocation(line: 236, column: 3, scope: !4044)
!4061 = !DILocation(line: 237, column: 3, scope: !4044)
!4062 = !DILocation(line: 238, column: 3, scope: !4044)
!4063 = !DILocation(line: 239, column: 1, scope: !4044)
!4064 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !606, file: !606, line: 242, type: !120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !39)
!4065 = !DILocation(line: 244, column: 3, scope: !4064)
!4066 = !DILocation(line: 249, column: 3, scope: !4064)
!4067 = !DILocation(line: 255, column: 3, scope: !4064)
!4068 = !DILocation(line: 260, column: 3, scope: !4064)
!4069 = !DILocation(line: 262, column: 1, scope: !4064)
!4070 = distinct !DISubprogram(name: "xnmalloc", scope: !169, file: !169, line: 99, type: !3836, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4071)
!4071 = !{!4072, !4073}
!4072 = !DILocalVariable(name: "n", arg: 1, scope: !4070, file: !169, line: 99, type: !93)
!4073 = !DILocalVariable(name: "s", arg: 2, scope: !4070, file: !169, line: 99, type: !93)
!4074 = !DILocation(line: 0, scope: !4070)
!4075 = !DILocation(line: 101, column: 7, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4070, file: !169, line: 101, column: 7)
!4077 = !DILocation(line: 101, column: 7, scope: !4070)
!4078 = !DILocation(line: 102, column: 5, scope: !4076)
!4079 = !DILocation(line: 103, column: 21, scope: !4070)
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4081, file: !648, line: 39, type: !93)
!4081 = distinct !DISubprogram(name: "xmalloc", scope: !648, file: !648, line: 39, type: !4082, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4084)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!91, !93}
!4084 = !{!4080, !4085}
!4085 = !DILocalVariable(name: "p", scope: !4081, file: !648, line: 41, type: !91)
!4086 = !DILocation(line: 0, scope: !4081, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 103, column: 10, scope: !4070)
!4088 = !DILocation(line: 41, column: 13, scope: !4081, inlinedAt: !4087)
!4089 = !DILocation(line: 42, column: 8, scope: !4090, inlinedAt: !4087)
!4090 = distinct !DILexicalBlock(scope: !4081, file: !648, line: 42, column: 7)
!4091 = !DILocation(line: 42, column: 15, scope: !4090, inlinedAt: !4087)
!4092 = !DILocation(line: 42, column: 10, scope: !4090, inlinedAt: !4087)
!4093 = !DILocation(line: 43, column: 5, scope: !4090, inlinedAt: !4087)
!4094 = !DILocation(line: 103, column: 3, scope: !4070)
!4095 = !DILocation(line: 0, scope: !4081)
!4096 = !DILocation(line: 41, column: 13, scope: !4081)
!4097 = !DILocation(line: 42, column: 8, scope: !4090)
!4098 = !DILocation(line: 42, column: 15, scope: !4090)
!4099 = !DILocation(line: 42, column: 10, scope: !4090)
!4100 = !DILocation(line: 43, column: 5, scope: !4090)
!4101 = !DILocation(line: 44, column: 3, scope: !4081)
!4102 = distinct !DISubprogram(name: "xnrealloc", scope: !169, file: !169, line: 112, type: !3884, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4103)
!4103 = !{!4104, !4105, !4106}
!4104 = !DILocalVariable(name: "p", arg: 1, scope: !4102, file: !169, line: 112, type: !91)
!4105 = !DILocalVariable(name: "n", arg: 2, scope: !4102, file: !169, line: 112, type: !93)
!4106 = !DILocalVariable(name: "s", arg: 3, scope: !4102, file: !169, line: 112, type: !93)
!4107 = !DILocation(line: 0, scope: !4102)
!4108 = !DILocation(line: 114, column: 7, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4102, file: !169, line: 114, column: 7)
!4110 = !DILocation(line: 114, column: 7, scope: !4102)
!4111 = !DILocation(line: 115, column: 5, scope: !4109)
!4112 = !DILocation(line: 116, column: 25, scope: !4102)
!4113 = !DILocalVariable(name: "p", arg: 1, scope: !4114, file: !648, line: 51, type: !91)
!4114 = distinct !DISubprogram(name: "xrealloc", scope: !648, file: !648, line: 51, type: !4115, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4117)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!91, !91, !93}
!4117 = !{!4113, !4118}
!4118 = !DILocalVariable(name: "n", arg: 2, scope: !4114, file: !648, line: 51, type: !93)
!4119 = !DILocation(line: 0, scope: !4114, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 116, column: 10, scope: !4102)
!4121 = !DILocation(line: 53, column: 8, scope: !4122, inlinedAt: !4120)
!4122 = distinct !DILexicalBlock(scope: !4114, file: !648, line: 53, column: 7)
!4123 = !DILocation(line: 53, column: 13, scope: !4122, inlinedAt: !4120)
!4124 = !DILocation(line: 53, column: 10, scope: !4122, inlinedAt: !4120)
!4125 = !DILocation(line: 57, column: 7, scope: !4126, inlinedAt: !4120)
!4126 = distinct !DILexicalBlock(scope: !4122, file: !648, line: 54, column: 5)
!4127 = !DILocation(line: 58, column: 7, scope: !4126, inlinedAt: !4120)
!4128 = !DILocation(line: 61, column: 7, scope: !4114, inlinedAt: !4120)
!4129 = !DILocation(line: 62, column: 8, scope: !4130, inlinedAt: !4120)
!4130 = distinct !DILexicalBlock(scope: !4114, file: !648, line: 62, column: 7)
!4131 = !DILocation(line: 62, column: 13, scope: !4130, inlinedAt: !4120)
!4132 = !DILocation(line: 62, column: 10, scope: !4130, inlinedAt: !4120)
!4133 = !DILocation(line: 63, column: 5, scope: !4130, inlinedAt: !4120)
!4134 = !DILocation(line: 116, column: 3, scope: !4102)
!4135 = !DILocation(line: 0, scope: !4114)
!4136 = !DILocation(line: 53, column: 8, scope: !4122)
!4137 = !DILocation(line: 53, column: 13, scope: !4122)
!4138 = !DILocation(line: 53, column: 10, scope: !4122)
!4139 = !DILocation(line: 57, column: 7, scope: !4126)
!4140 = !DILocation(line: 58, column: 7, scope: !4126)
!4141 = !DILocation(line: 61, column: 7, scope: !4114)
!4142 = !DILocation(line: 62, column: 8, scope: !4130)
!4143 = !DILocation(line: 62, column: 13, scope: !4130)
!4144 = !DILocation(line: 62, column: 10, scope: !4130)
!4145 = !DILocation(line: 63, column: 5, scope: !4130)
!4146 = !DILocation(line: 65, column: 1, scope: !4114)
!4147 = !DILocation(line: 0, scope: !651)
!4148 = !DILocation(line: 176, column: 14, scope: !651)
!4149 = !DILocation(line: 178, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !651, file: !169, line: 178, column: 7)
!4151 = !DILocation(line: 178, column: 7, scope: !651)
!4152 = !DILocation(line: 180, column: 13, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !169, line: 180, column: 11)
!4154 = distinct !DILexicalBlock(scope: !4150, file: !169, line: 179, column: 5)
!4155 = !DILocation(line: 180, column: 11, scope: !4154)
!4156 = !DILocation(line: 188, column: 30, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4153, file: !169, line: 181, column: 9)
!4158 = !DILocation(line: 189, column: 16, scope: !4157)
!4159 = !DILocation(line: 189, column: 13, scope: !4157)
!4160 = !DILocation(line: 190, column: 9, scope: !4157)
!4161 = !DILocation(line: 191, column: 11, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4154, file: !169, line: 191, column: 11)
!4163 = !DILocation(line: 191, column: 11, scope: !4154)
!4164 = !DILocation(line: 206, column: 7, scope: !651)
!4165 = !DILocation(line: 207, column: 25, scope: !651)
!4166 = !DILocation(line: 0, scope: !4114, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 207, column: 10, scope: !651)
!4168 = !DILocation(line: 53, column: 10, scope: !4122, inlinedAt: !4167)
!4169 = !DILocation(line: 192, column: 9, scope: !4162)
!4170 = !DILocation(line: 200, column: 69, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !169, line: 200, column: 11)
!4172 = distinct !DILexicalBlock(scope: !4150, file: !169, line: 195, column: 5)
!4173 = !DILocation(line: 201, column: 11, scope: !4171)
!4174 = !DILocation(line: 200, column: 11, scope: !4172)
!4175 = !DILocation(line: 202, column: 9, scope: !4171)
!4176 = !DILocation(line: 203, column: 14, scope: !4172)
!4177 = !DILocation(line: 203, column: 18, scope: !4172)
!4178 = !DILocation(line: 203, column: 9, scope: !4172)
!4179 = !DILocation(line: 53, column: 8, scope: !4122, inlinedAt: !4167)
!4180 = !DILocation(line: 57, column: 7, scope: !4126, inlinedAt: !4167)
!4181 = !DILocation(line: 58, column: 7, scope: !4126, inlinedAt: !4167)
!4182 = !DILocation(line: 61, column: 7, scope: !4114, inlinedAt: !4167)
!4183 = !DILocation(line: 62, column: 8, scope: !4130, inlinedAt: !4167)
!4184 = !DILocation(line: 62, column: 13, scope: !4130, inlinedAt: !4167)
!4185 = !DILocation(line: 62, column: 10, scope: !4130, inlinedAt: !4167)
!4186 = !DILocation(line: 63, column: 5, scope: !4130, inlinedAt: !4167)
!4187 = !DILocation(line: 207, column: 3, scope: !651)
!4188 = distinct !DISubprogram(name: "xcharalloc", scope: !169, file: !169, line: 216, type: !3023, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4189)
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "n", arg: 1, scope: !4188, file: !169, line: 216, type: !93)
!4191 = !DILocation(line: 0, scope: !4188)
!4192 = !DILocation(line: 0, scope: !4081, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 218, column: 10, scope: !4188)
!4194 = !DILocation(line: 41, column: 13, scope: !4081, inlinedAt: !4193)
!4195 = !DILocation(line: 42, column: 8, scope: !4090, inlinedAt: !4193)
!4196 = !DILocation(line: 42, column: 15, scope: !4090, inlinedAt: !4193)
!4197 = !DILocation(line: 42, column: 10, scope: !4090, inlinedAt: !4193)
!4198 = !DILocation(line: 43, column: 5, scope: !4090, inlinedAt: !4193)
!4199 = !DILocation(line: 218, column: 3, scope: !4188)
!4200 = distinct !DISubprogram(name: "x2realloc", scope: !648, file: !648, line: 74, type: !4201, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4203)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!91, !91, !594}
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "p", arg: 1, scope: !4200, file: !648, line: 74, type: !91)
!4205 = !DILocalVariable(name: "pn", arg: 2, scope: !4200, file: !648, line: 74, type: !594)
!4206 = !DILocation(line: 0, scope: !4200)
!4207 = !DILocation(line: 0, scope: !651, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 76, column: 10, scope: !4200)
!4209 = !DILocation(line: 176, column: 14, scope: !651, inlinedAt: !4208)
!4210 = !DILocation(line: 178, column: 9, scope: !4150, inlinedAt: !4208)
!4211 = !DILocation(line: 178, column: 7, scope: !651, inlinedAt: !4208)
!4212 = !DILocation(line: 180, column: 13, scope: !4153, inlinedAt: !4208)
!4213 = !DILocation(line: 180, column: 11, scope: !4154, inlinedAt: !4208)
!4214 = !DILocation(line: 191, column: 11, scope: !4162, inlinedAt: !4208)
!4215 = !DILocation(line: 191, column: 11, scope: !4154, inlinedAt: !4208)
!4216 = !DILocation(line: 206, column: 7, scope: !651, inlinedAt: !4208)
!4217 = !DILocation(line: 0, scope: !4114, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 207, column: 10, scope: !651, inlinedAt: !4208)
!4219 = !DILocation(line: 53, column: 10, scope: !4122, inlinedAt: !4218)
!4220 = !DILocation(line: 192, column: 9, scope: !4162, inlinedAt: !4208)
!4221 = !DILocation(line: 201, column: 11, scope: !4171, inlinedAt: !4208)
!4222 = !DILocation(line: 200, column: 11, scope: !4172, inlinedAt: !4208)
!4223 = !DILocation(line: 202, column: 9, scope: !4171, inlinedAt: !4208)
!4224 = !DILocation(line: 203, column: 14, scope: !4172, inlinedAt: !4208)
!4225 = !DILocation(line: 203, column: 18, scope: !4172, inlinedAt: !4208)
!4226 = !DILocation(line: 203, column: 9, scope: !4172, inlinedAt: !4208)
!4227 = !DILocation(line: 53, column: 8, scope: !4122, inlinedAt: !4218)
!4228 = !DILocation(line: 57, column: 7, scope: !4126, inlinedAt: !4218)
!4229 = !DILocation(line: 58, column: 7, scope: !4126, inlinedAt: !4218)
!4230 = !DILocation(line: 61, column: 7, scope: !4114, inlinedAt: !4218)
!4231 = !DILocation(line: 62, column: 8, scope: !4130, inlinedAt: !4218)
!4232 = !DILocation(line: 62, column: 13, scope: !4130, inlinedAt: !4218)
!4233 = !DILocation(line: 62, column: 10, scope: !4130, inlinedAt: !4218)
!4234 = !DILocation(line: 63, column: 5, scope: !4130, inlinedAt: !4218)
!4235 = !DILocation(line: 76, column: 3, scope: !4200)
!4236 = distinct !DISubprogram(name: "xzalloc", scope: !648, file: !648, line: 84, type: !4082, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4237)
!4237 = !{!4238}
!4238 = !DILocalVariable(name: "n", arg: 1, scope: !4236, file: !648, line: 84, type: !93)
!4239 = !DILocation(line: 0, scope: !4236)
!4240 = !DILocalVariable(name: "n", arg: 1, scope: !4241, file: !648, line: 93, type: !93)
!4241 = distinct !DISubprogram(name: "xcalloc", scope: !648, file: !648, line: 93, type: !3836, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4242)
!4242 = !{!4240, !4243, !4244}
!4243 = !DILocalVariable(name: "s", arg: 2, scope: !4241, file: !648, line: 93, type: !93)
!4244 = !DILocalVariable(name: "p", scope: !4241, file: !648, line: 95, type: !91)
!4245 = !DILocation(line: 0, scope: !4241, inlinedAt: !4246)
!4246 = distinct !DILocation(line: 86, column: 10, scope: !4236)
!4247 = !DILocation(line: 100, column: 7, scope: !4248, inlinedAt: !4246)
!4248 = distinct !DILexicalBlock(scope: !4241, file: !648, line: 100, column: 7)
!4249 = !DILocation(line: 101, column: 7, scope: !4248, inlinedAt: !4246)
!4250 = !DILocation(line: 101, column: 18, scope: !4248, inlinedAt: !4246)
!4251 = !DILocation(line: 101, column: 16, scope: !4248, inlinedAt: !4246)
!4252 = !DILocation(line: 100, column: 7, scope: !4241, inlinedAt: !4246)
!4253 = !DILocation(line: 102, column: 5, scope: !4248, inlinedAt: !4246)
!4254 = !DILocation(line: 86, column: 3, scope: !4236)
!4255 = !DILocation(line: 0, scope: !4241)
!4256 = !DILocation(line: 100, column: 7, scope: !4248)
!4257 = !DILocation(line: 101, column: 7, scope: !4248)
!4258 = !DILocation(line: 101, column: 18, scope: !4248)
!4259 = !DILocation(line: 101, column: 16, scope: !4248)
!4260 = !DILocation(line: 100, column: 7, scope: !4241)
!4261 = !DILocation(line: 102, column: 5, scope: !4248)
!4262 = !DILocation(line: 103, column: 3, scope: !4241)
!4263 = distinct !DISubprogram(name: "xmemdup", scope: !648, file: !648, line: 111, type: !4264, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!91, !388, !93}
!4266 = !{!4267, !4268}
!4267 = !DILocalVariable(name: "p", arg: 1, scope: !4263, file: !648, line: 111, type: !388)
!4268 = !DILocalVariable(name: "s", arg: 2, scope: !4263, file: !648, line: 111, type: !93)
!4269 = !DILocation(line: 0, scope: !4263)
!4270 = !DILocation(line: 0, scope: !4081, inlinedAt: !4271)
!4271 = distinct !DILocation(line: 113, column: 18, scope: !4263)
!4272 = !DILocation(line: 41, column: 13, scope: !4081, inlinedAt: !4271)
!4273 = !DILocation(line: 42, column: 8, scope: !4090, inlinedAt: !4271)
!4274 = !DILocation(line: 42, column: 15, scope: !4090, inlinedAt: !4271)
!4275 = !DILocation(line: 42, column: 10, scope: !4090, inlinedAt: !4271)
!4276 = !DILocation(line: 43, column: 5, scope: !4090, inlinedAt: !4271)
!4277 = !DILocalVariable(name: "__dest", arg: 1, scope: !4278, file: !2556, line: 31, type: !3915)
!4278 = distinct !DISubprogram(name: "memcpy", scope: !2556, file: !2556, line: 31, type: !3913, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4279)
!4279 = !{!4277, !4280, !4281}
!4280 = !DILocalVariable(name: "__src", arg: 2, scope: !4278, file: !2556, line: 31, type: !3916)
!4281 = !DILocalVariable(name: "__len", arg: 3, scope: !4278, file: !2556, line: 31, type: !93)
!4282 = !DILocation(line: 0, scope: !4278, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 113, column: 10, scope: !4263)
!4284 = !DILocation(line: 34, column: 10, scope: !4278, inlinedAt: !4283)
!4285 = !DILocation(line: 113, column: 3, scope: !4263)
!4286 = distinct !DISubprogram(name: "xstrdup", scope: !648, file: !648, line: 119, type: !113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !647, retainedNodes: !4287)
!4287 = !{!4288}
!4288 = !DILocalVariable(name: "string", arg: 1, scope: !4286, file: !648, line: 119, type: !36)
!4289 = !DILocation(line: 0, scope: !4286)
!4290 = !DILocation(line: 121, column: 27, scope: !4286)
!4291 = !DILocation(line: 121, column: 43, scope: !4286)
!4292 = !DILocation(line: 0, scope: !4263, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 121, column: 10, scope: !4286)
!4294 = !DILocation(line: 0, scope: !4081, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 113, column: 18, scope: !4263, inlinedAt: !4293)
!4296 = !DILocation(line: 41, column: 13, scope: !4081, inlinedAt: !4295)
!4297 = !DILocation(line: 42, column: 8, scope: !4090, inlinedAt: !4295)
!4298 = !DILocation(line: 42, column: 15, scope: !4090, inlinedAt: !4295)
!4299 = !DILocation(line: 42, column: 10, scope: !4090, inlinedAt: !4295)
!4300 = !DILocation(line: 43, column: 5, scope: !4090, inlinedAt: !4295)
!4301 = !DILocation(line: 0, scope: !4278, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 113, column: 10, scope: !4263, inlinedAt: !4293)
!4303 = !DILocation(line: 34, column: 10, scope: !4278, inlinedAt: !4302)
!4304 = !DILocation(line: 121, column: 3, scope: !4286)
!4305 = distinct !DISubprogram(name: "xalloc_die", scope: !664, file: !664, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !39)
!4306 = !DILocation(line: 34, column: 10, scope: !4305)
!4307 = !DILocation(line: 34, column: 33, scope: !4305)
!4308 = !DILocation(line: 34, column: 3, scope: !4305)
!4309 = !DILocation(line: 40, column: 3, scope: !4305)
!4310 = distinct !DISubprogram(name: "rpl_calloc", scope: !667, file: !667, line: 42, type: !3836, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !666, retainedNodes: !4311)
!4311 = !{!4312, !4313, !4314, !4315}
!4312 = !DILocalVariable(name: "n", arg: 1, scope: !4310, file: !667, line: 42, type: !93)
!4313 = !DILocalVariable(name: "s", arg: 2, scope: !4310, file: !667, line: 42, type: !93)
!4314 = !DILocalVariable(name: "result", scope: !4310, file: !667, line: 44, type: !91)
!4315 = !DILocalVariable(name: "bytes", scope: !4316, file: !667, line: 56, type: !93)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !667, line: 53, column: 5)
!4317 = distinct !DILexicalBlock(scope: !4310, file: !667, line: 47, column: 7)
!4318 = !DILocation(line: 0, scope: !4310)
!4319 = !DILocation(line: 47, column: 9, scope: !4317)
!4320 = !DILocation(line: 47, column: 19, scope: !4317)
!4321 = !DILocation(line: 47, column: 14, scope: !4317)
!4322 = !DILocation(line: 0, scope: !4316)
!4323 = !DILocation(line: 57, column: 21, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4316, file: !667, line: 57, column: 11)
!4325 = !DILocation(line: 57, column: 11, scope: !4316)
!4326 = !DILocation(line: 59, column: 11, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4324, file: !667, line: 58, column: 9)
!4328 = !DILocation(line: 59, column: 17, scope: !4327)
!4329 = !DILocation(line: 65, column: 12, scope: !4310)
!4330 = !DILocation(line: 72, column: 3, scope: !4310)
!4331 = !DILocation(line: 73, column: 1, scope: !4310)
!4332 = distinct !DISubprogram(name: "rpl_fclose", scope: !670, file: !670, line: 58, type: !4333, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !669, retainedNodes: !4337)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!38, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !676)
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DILocalVariable(name: "fp", arg: 1, scope: !4332, file: !670, line: 58, type: !4335)
!4339 = !DILocalVariable(name: "saved_errno", scope: !4332, file: !670, line: 60, type: !38)
!4340 = !DILocalVariable(name: "fd", scope: !4332, file: !670, line: 61, type: !38)
!4341 = !DILocalVariable(name: "result", scope: !4332, file: !670, line: 62, type: !38)
!4342 = !DILocation(line: 0, scope: !4332)
!4343 = !DILocation(line: 65, column: 8, scope: !4332)
!4344 = !DILocation(line: 66, column: 10, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4332, file: !670, line: 66, column: 7)
!4346 = !DILocation(line: 66, column: 7, scope: !4332)
!4347 = !DILocation(line: 67, column: 12, scope: !4345)
!4348 = !DILocation(line: 67, column: 5, scope: !4345)
!4349 = !DILocation(line: 72, column: 9, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4332, file: !670, line: 72, column: 7)
!4351 = !DILocation(line: 72, column: 23, scope: !4350)
!4352 = !DILocation(line: 72, column: 33, scope: !4350)
!4353 = !DILocation(line: 72, column: 26, scope: !4350)
!4354 = !DILocation(line: 72, column: 59, scope: !4350)
!4355 = !DILocation(line: 73, column: 7, scope: !4350)
!4356 = !DILocation(line: 73, column: 10, scope: !4350)
!4357 = !DILocation(line: 72, column: 7, scope: !4332)
!4358 = !DILocation(line: 100, column: 12, scope: !4332)
!4359 = !DILocation(line: 105, column: 7, scope: !4332)
!4360 = !DILocation(line: 74, column: 19, scope: !4350)
!4361 = !DILocation(line: 105, column: 19, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4332, file: !670, line: 105, column: 7)
!4363 = !DILocation(line: 107, column: 13, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4362, file: !670, line: 106, column: 5)
!4365 = !DILocation(line: 109, column: 5, scope: !4364)
!4366 = !DILocation(line: 112, column: 1, scope: !4332)
!4367 = distinct !DISubprogram(name: "rpl_fflush", scope: !713, file: !713, line: 129, type: !4368, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4372)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!38, !4370}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !719)
!4372 = !{!4373}
!4373 = !DILocalVariable(name: "stream", arg: 1, scope: !4367, file: !713, line: 129, type: !4370)
!4374 = !DILocation(line: 0, scope: !4367)
!4375 = !DILocation(line: 150, column: 14, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4367, file: !713, line: 150, column: 7)
!4377 = !DILocation(line: 150, column: 22, scope: !4376)
!4378 = !DILocation(line: 150, column: 27, scope: !4376)
!4379 = !DILocation(line: 150, column: 7, scope: !4367)
!4380 = !DILocation(line: 151, column: 12, scope: !4376)
!4381 = !DILocation(line: 151, column: 5, scope: !4376)
!4382 = !DILocalVariable(name: "fp", arg: 1, scope: !4383, file: !713, line: 41, type: !4370)
!4383 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !713, file: !713, line: 41, type: !4384, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4370}
!4386 = !{!4382}
!4387 = !DILocation(line: 0, scope: !4383, inlinedAt: !4388)
!4388 = distinct !DILocation(line: 156, column: 3, scope: !4367)
!4389 = !DILocation(line: 43, column: 11, scope: !4390, inlinedAt: !4388)
!4390 = distinct !DILexicalBlock(scope: !4383, file: !713, line: 43, column: 7)
!4391 = !{!3718, !1369, i64 0}
!4392 = !DILocation(line: 43, column: 18, scope: !4390, inlinedAt: !4388)
!4393 = !DILocation(line: 43, column: 7, scope: !4383, inlinedAt: !4388)
!4394 = !DILocation(line: 45, column: 5, scope: !4390, inlinedAt: !4388)
!4395 = !DILocation(line: 158, column: 10, scope: !4367)
!4396 = !DILocation(line: 158, column: 3, scope: !4367)
!4397 = !DILocation(line: 235, column: 1, scope: !4367)
!4398 = distinct !DISubprogram(name: "rpl_fseeko", scope: !754, file: !754, line: 28, type: !4399, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !4403)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!38, !4401, !1891, !38}
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !760)
!4403 = !{!4404, !4405, !4406, !4407}
!4404 = !DILocalVariable(name: "fp", arg: 1, scope: !4398, file: !754, line: 28, type: !4401)
!4405 = !DILocalVariable(name: "offset", arg: 2, scope: !4398, file: !754, line: 28, type: !1891)
!4406 = !DILocalVariable(name: "whence", arg: 3, scope: !4398, file: !754, line: 28, type: !38)
!4407 = !DILocalVariable(name: "pos", scope: !4408, file: !754, line: 117, type: !1891)
!4408 = distinct !DILexicalBlock(scope: !4409, file: !754, line: 113, column: 5)
!4409 = distinct !DILexicalBlock(scope: !4398, file: !754, line: 52, column: 7)
!4410 = !DILocation(line: 0, scope: !4398)
!4411 = !DILocation(line: 52, column: 11, scope: !4409)
!4412 = !DILocation(line: 52, column: 31, scope: !4409)
!4413 = !DILocation(line: 52, column: 24, scope: !4409)
!4414 = !DILocation(line: 53, column: 7, scope: !4409)
!4415 = !DILocation(line: 53, column: 14, scope: !4409)
!4416 = !{!3718, !1290, i64 40}
!4417 = !DILocation(line: 53, column: 35, scope: !4409)
!4418 = !{!3718, !1290, i64 32}
!4419 = !DILocation(line: 53, column: 28, scope: !4409)
!4420 = !DILocation(line: 54, column: 7, scope: !4409)
!4421 = !DILocation(line: 54, column: 14, scope: !4409)
!4422 = !{!3718, !1290, i64 72}
!4423 = !DILocation(line: 54, column: 28, scope: !4409)
!4424 = !DILocation(line: 52, column: 7, scope: !4398)
!4425 = !DILocation(line: 117, column: 26, scope: !4408)
!4426 = !DILocation(line: 117, column: 19, scope: !4408)
!4427 = !DILocation(line: 0, scope: !4408)
!4428 = !DILocation(line: 118, column: 15, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4408, file: !754, line: 118, column: 11)
!4430 = !DILocation(line: 118, column: 11, scope: !4408)
!4431 = !DILocation(line: 129, column: 11, scope: !4408)
!4432 = !DILocation(line: 129, column: 18, scope: !4408)
!4433 = !DILocation(line: 130, column: 11, scope: !4408)
!4434 = !DILocation(line: 130, column: 19, scope: !4408)
!4435 = !{!3718, !1438, i64 144}
!4436 = !DILocation(line: 161, column: 7, scope: !4408)
!4437 = !DILocation(line: 163, column: 10, scope: !4398)
!4438 = !DILocation(line: 163, column: 3, scope: !4398)
!4439 = !DILocation(line: 164, column: 1, scope: !4398)
!4440 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !795, file: !795, line: 86, type: !4441, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4447)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!93, !4443, !36, !93, !4444}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2297, line: 6, baseType: !4446)
!4446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !418, line: 21, baseType: !801)
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4453, !4454}
!4448 = !DILocalVariable(name: "pwc", arg: 1, scope: !4440, file: !795, line: 86, type: !4443)
!4449 = !DILocalVariable(name: "s", arg: 2, scope: !4440, file: !795, line: 86, type: !36)
!4450 = !DILocalVariable(name: "n", arg: 3, scope: !4440, file: !795, line: 86, type: !93)
!4451 = !DILocalVariable(name: "ps", arg: 4, scope: !4440, file: !795, line: 86, type: !4444)
!4452 = !DILocalVariable(name: "ret", scope: !4440, file: !795, line: 88, type: !93)
!4453 = !DILocalVariable(name: "wc", scope: !4440, file: !795, line: 89, type: !2301)
!4454 = !DILocalVariable(name: "uc", scope: !4455, file: !795, line: 156, type: !604)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !795, line: 155, column: 5)
!4456 = distinct !DILexicalBlock(scope: !4440, file: !795, line: 154, column: 7)
!4457 = !DILocation(line: 0, scope: !4440)
!4458 = !DILocation(line: 89, column: 3, scope: !4440)
!4459 = !DILocation(line: 105, column: 9, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4440, file: !795, line: 105, column: 7)
!4461 = !DILocation(line: 105, column: 7, scope: !4440)
!4462 = !DILocation(line: 145, column: 9, scope: !4440)
!4463 = !DILocation(line: 154, column: 19, scope: !4456)
!4464 = !DILocation(line: 154, column: 31, scope: !4456)
!4465 = !DILocation(line: 154, column: 26, scope: !4456)
!4466 = !DILocation(line: 154, column: 41, scope: !4456)
!4467 = !DILocation(line: 154, column: 7, scope: !4440)
!4468 = !DILocation(line: 156, column: 26, scope: !4455)
!4469 = !DILocation(line: 0, scope: !4455)
!4470 = !DILocation(line: 157, column: 14, scope: !4455)
!4471 = !DILocation(line: 157, column: 12, scope: !4455)
!4472 = !DILocation(line: 163, column: 1, scope: !4440)
!4473 = distinct !DISubprogram(name: "close_stream", scope: !814, file: !814, line: 56, type: !4474, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4478)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!38, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1909, line: 7, baseType: !820)
!4478 = !{!4479, !4480, !4482, !4483}
!4479 = !DILocalVariable(name: "stream", arg: 1, scope: !4473, file: !814, line: 56, type: !4476)
!4480 = !DILocalVariable(name: "some_pending", scope: !4473, file: !814, line: 58, type: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!4482 = !DILocalVariable(name: "prev_fail", scope: !4473, file: !814, line: 59, type: !4481)
!4483 = !DILocalVariable(name: "fclose_fail", scope: !4473, file: !814, line: 60, type: !4481)
!4484 = !DILocation(line: 0, scope: !4473)
!4485 = !DILocation(line: 58, column: 30, scope: !4473)
!4486 = !DILocalVariable(name: "__stream", arg: 1, scope: !4487, file: !3709, line: 135, type: !4476)
!4487 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3709, file: !3709, line: 135, type: !4474, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !4488)
!4488 = !{!4486}
!4489 = !DILocation(line: 0, scope: !4487, inlinedAt: !4490)
!4490 = distinct !DILocation(line: 59, column: 27, scope: !4473)
!4491 = !DILocation(line: 137, column: 10, scope: !4487, inlinedAt: !4490)
!4492 = !DILocation(line: 59, column: 43, scope: !4473)
!4493 = !DILocation(line: 60, column: 29, scope: !4473)
!4494 = !DILocation(line: 60, column: 45, scope: !4473)
!4495 = !DILocation(line: 70, column: 17, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4473, file: !814, line: 70, column: 7)
!4497 = !DILocation(line: 58, column: 50, scope: !4473)
!4498 = !DILocation(line: 70, column: 33, scope: !4496)
!4499 = !DILocation(line: 70, column: 53, scope: !4496)
!4500 = !DILocation(line: 70, column: 59, scope: !4496)
!4501 = !DILocation(line: 70, column: 7, scope: !4473)
!4502 = !DILocation(line: 72, column: 11, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4496, file: !814, line: 71, column: 5)
!4504 = !DILocation(line: 73, column: 9, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4503, file: !814, line: 72, column: 11)
!4506 = !DILocation(line: 73, column: 15, scope: !4505)
!4507 = !DILocation(line: 78, column: 1, scope: !4473)
!4508 = distinct !DISubprogram(name: "hard_locale", scope: !852, file: !852, line: 27, type: !811, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !851, retainedNodes: !4509)
!4509 = !{!4510, !4511}
!4510 = !DILocalVariable(name: "category", arg: 1, scope: !4508, file: !852, line: 27, type: !38)
!4511 = !DILocalVariable(name: "locale", scope: !4508, file: !852, line: 29, type: !4512)
!4512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !4513)
!4513 = !{!4514}
!4514 = !DISubrange(count: 257)
!4515 = !DILocation(line: 0, scope: !4508)
!4516 = !DILocation(line: 29, column: 3, scope: !4508)
!4517 = !DILocation(line: 29, column: 8, scope: !4508)
!4518 = !DILocation(line: 31, column: 7, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4508, file: !852, line: 31, column: 7)
!4520 = !DILocation(line: 31, column: 7, scope: !4508)
!4521 = !DILocation(line: 34, column: 12, scope: !4508)
!4522 = !DILocation(line: 34, column: 38, scope: !4508)
!4523 = !DILocation(line: 34, column: 41, scope: !4508)
!4524 = !DILocation(line: 34, column: 66, scope: !4508)
!4525 = !DILocation(line: 35, column: 1, scope: !4508)
!4526 = distinct !DISubprogram(name: "locale_charset", scope: !859, file: !859, line: 831, type: !441, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !4527)
!4527 = !{!4528}
!4528 = !DILocalVariable(name: "codeset", scope: !4526, file: !859, line: 833, type: !36)
!4529 = !DILocation(line: 847, column: 13, scope: !4526)
!4530 = !DILocation(line: 0, scope: !4526)
!4531 = !DILocation(line: 911, column: 15, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4526, file: !859, line: 911, column: 7)
!4533 = !DILocation(line: 911, column: 7, scope: !4526)
!4534 = !DILocation(line: 1070, column: 13, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !859, line: 1070, column: 13)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !859, line: 1060, column: 7)
!4537 = distinct !DILexicalBlock(scope: !4526, file: !859, line: 1019, column: 3)
!4538 = !DILocation(line: 1070, column: 24, scope: !4535)
!4539 = !DILocation(line: 1070, column: 13, scope: !4536)
!4540 = !DILocation(line: 1158, column: 3, scope: !4526)
!4541 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1252, file: !1252, line: 269, type: !4542, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1251, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!38, !38, !34, !93}
!4544 = !{!4545, !4546, !4547}
!4545 = !DILocalVariable(name: "category", arg: 1, scope: !4541, file: !1252, line: 269, type: !38)
!4546 = !DILocalVariable(name: "buf", arg: 2, scope: !4541, file: !1252, line: 269, type: !34)
!4547 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4541, file: !1252, line: 269, type: !93)
!4548 = !DILocation(line: 0, scope: !4541)
!4549 = !DILocalVariable(name: "category", arg: 1, scope: !4550, file: !1252, line: 91, type: !38)
!4550 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1252, file: !1252, line: 91, type: !4542, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1251, retainedNodes: !4551)
!4551 = !{!4549, !4552, !4553, !4554, !4555}
!4552 = !DILocalVariable(name: "buf", arg: 2, scope: !4550, file: !1252, line: 91, type: !34)
!4553 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4550, file: !1252, line: 91, type: !93)
!4554 = !DILocalVariable(name: "result", scope: !4550, file: !1252, line: 140, type: !36)
!4555 = !DILocalVariable(name: "length", scope: !4556, file: !1252, line: 154, type: !93)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !1252, line: 153, column: 5)
!4557 = distinct !DILexicalBlock(scope: !4550, file: !1252, line: 142, column: 7)
!4558 = !DILocation(line: 0, scope: !4550, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 274, column: 10, scope: !4541)
!4560 = !DILocalVariable(name: "category", arg: 1, scope: !4561, file: !1252, line: 60, type: !38)
!4561 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1252, file: !1252, line: 60, type: !4562, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1251, retainedNodes: !4564)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!36, !38}
!4564 = !{!4560, !4565}
!4565 = !DILocalVariable(name: "result", scope: !4561, file: !1252, line: 62, type: !36)
!4566 = !DILocation(line: 0, scope: !4561, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 140, column: 24, scope: !4550, inlinedAt: !4559)
!4568 = !DILocation(line: 62, column: 24, scope: !4561, inlinedAt: !4567)
!4569 = !DILocation(line: 142, column: 14, scope: !4557, inlinedAt: !4559)
!4570 = !DILocation(line: 142, column: 7, scope: !4550, inlinedAt: !4559)
!4571 = !DILocation(line: 145, column: 19, scope: !4572, inlinedAt: !4559)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !1252, line: 145, column: 11)
!4573 = distinct !DILexicalBlock(scope: !4557, file: !1252, line: 143, column: 5)
!4574 = !DILocation(line: 145, column: 11, scope: !4573, inlinedAt: !4559)
!4575 = !DILocation(line: 149, column: 16, scope: !4572, inlinedAt: !4559)
!4576 = !DILocation(line: 149, column: 9, scope: !4572, inlinedAt: !4559)
!4577 = !DILocation(line: 154, column: 23, scope: !4556, inlinedAt: !4559)
!4578 = !DILocation(line: 0, scope: !4556, inlinedAt: !4559)
!4579 = !DILocation(line: 155, column: 18, scope: !4580, inlinedAt: !4559)
!4580 = distinct !DILexicalBlock(scope: !4556, file: !1252, line: 155, column: 11)
!4581 = !DILocation(line: 155, column: 11, scope: !4556, inlinedAt: !4559)
!4582 = !DILocation(line: 157, column: 39, scope: !4583, inlinedAt: !4559)
!4583 = distinct !DILexicalBlock(scope: !4580, file: !1252, line: 156, column: 9)
!4584 = !DILocalVariable(name: "__dest", arg: 1, scope: !4585, file: !2556, line: 31, type: !3915)
!4585 = distinct !DISubprogram(name: "memcpy", scope: !2556, file: !2556, line: 31, type: !3913, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1251, retainedNodes: !4586)
!4586 = !{!4584, !4587, !4588}
!4587 = !DILocalVariable(name: "__src", arg: 2, scope: !4585, file: !2556, line: 31, type: !3916)
!4588 = !DILocalVariable(name: "__len", arg: 3, scope: !4585, file: !2556, line: 31, type: !93)
!4589 = !DILocation(line: 0, scope: !4585, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 157, column: 11, scope: !4583, inlinedAt: !4559)
!4591 = !DILocation(line: 34, column: 10, scope: !4585, inlinedAt: !4590)
!4592 = !DILocation(line: 158, column: 11, scope: !4583, inlinedAt: !4559)
!4593 = !DILocation(line: 162, column: 23, scope: !4594, inlinedAt: !4559)
!4594 = distinct !DILexicalBlock(scope: !4595, file: !1252, line: 162, column: 15)
!4595 = distinct !DILexicalBlock(scope: !4580, file: !1252, line: 161, column: 9)
!4596 = !DILocation(line: 162, column: 15, scope: !4595, inlinedAt: !4559)
!4597 = !DILocation(line: 167, column: 44, scope: !4598, inlinedAt: !4559)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !1252, line: 163, column: 13)
!4599 = !DILocation(line: 0, scope: !4585, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 167, column: 15, scope: !4598, inlinedAt: !4559)
!4601 = !DILocation(line: 34, column: 10, scope: !4585, inlinedAt: !4600)
!4602 = !DILocation(line: 168, column: 15, scope: !4598, inlinedAt: !4559)
!4603 = !DILocation(line: 168, column: 32, scope: !4598, inlinedAt: !4559)
!4604 = !DILocation(line: 169, column: 13, scope: !4598, inlinedAt: !4559)
!4605 = !DILocation(line: 0, scope: !4557, inlinedAt: !4559)
!4606 = !DILocation(line: 274, column: 3, scope: !4541)
!4607 = distinct !DISubprogram(name: "setlocale_null", scope: !1252, file: !1252, line: 301, type: !4562, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1251, retainedNodes: !4608)
!4608 = !{!4609}
!4609 = !DILocalVariable(name: "category", arg: 1, scope: !4607, file: !1252, line: 301, type: !38)
!4610 = !DILocation(line: 0, scope: !4607)
!4611 = !DILocation(line: 0, scope: !4561, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 304, column: 10, scope: !4607)
!4613 = !DILocation(line: 62, column: 24, scope: !4561, inlinedAt: !4612)
!4614 = !DILocation(line: 304, column: 3, scope: !4607)
