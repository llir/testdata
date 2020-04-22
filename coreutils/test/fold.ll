; ModuleID = 'coreutils-8.32/src/fold.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Wrap input lines in each FILE, writing to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [147 x i8] c"  -b, --bytes         count bytes rather than columns\0A  -s, --spaces        break at spaces\0A  -w, --width=WIDTH   use WIDTH columns instead of 80\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"fold\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@count_bytes = internal unnamed_addr global i1 false, align 1, !dbg !251
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !252
@shortopts = internal constant [35 x i8] c"bsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !193
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !198
@optarg = external local_unnamed_addr global i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fold_file.allocated_out = internal global i64 0, align 8, !dbg !249
@fold_file.line_out = internal unnamed_addr global i8* null, align 8, !dbg !203
@.str.31 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !253
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !258
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !301
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !303
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !309
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !350
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !428
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !434
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !436
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !443
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !450
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !438
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !452
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.99 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.100 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !458
@.str.1.113 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.120 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.121 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1194 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1199, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 %0, metadata !1198, metadata !DIExpression()), !dbg !1220
  %3 = icmp eq i32 %0, 0, !dbg !1221
  br i1 %3, label %9, label %4, !dbg !1222

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1223, !tbaa !1225
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1223
  %7 = load i8*, i8** @program_name, align 8, !dbg !1223, !tbaa !1225
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1223
  br label %67, !dbg !1223

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1229
  %11 = load i8*, i8** @program_name, align 8, !dbg !1229, !tbaa !1225
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1229
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1230
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1230, !tbaa !1225
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1230
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1231
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1231, !tbaa !1225
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1231
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1234
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1234, !tbaa !1225
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #18, !dbg !1234
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1237
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1237, !tbaa !1225
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1237
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1238
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1238, !tbaa !1225
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1238
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1239
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1239, !tbaa !1225
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1239
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !1203, metadata !DIExpression()) #18, !dbg !1240
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1216
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !1204, metadata !DIExpression()) #18, !dbg !1240
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1242
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  br label %33, !dbg !1243

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #21, !dbg !1244
  %37 = icmp eq i32 %36, 0, !dbg !1244
  br i1 %37, label %43, label %38, !dbg !1243

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !1245
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !1246
  %41 = load i8*, i8** %40, align 8, !dbg !1246, !tbaa !1247
  %42 = icmp eq i8* %41, null, !dbg !1249
  br i1 %42, label %43, label %33, !dbg !1250, !llvm.loop !1251

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %39, %38 ], [ %35, %33 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !1205, metadata !DIExpression()) #18, !dbg !1240
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !1252
  %46 = load i8*, i8** %45, align 8, !dbg !1252, !tbaa !1254
  %47 = icmp eq i8* %46, null, !dbg !1255
  %48 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !1256
  call void @llvm.dbg.value(metadata i8* %48, metadata !1204, metadata !DIExpression()) #18, !dbg !1240
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #18, !dbg !1257
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #18, !dbg !1257
  %51 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1258
  call void @llvm.dbg.value(metadata i8* %51, metadata !1212, metadata !DIExpression()) #18, !dbg !1240
  %52 = icmp eq i8* %51, null, !dbg !1259
  br i1 %52, label %60, label %53, !dbg !1261

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #21, !dbg !1262
  %55 = icmp eq i32 %54, 0, !dbg !1262
  br i1 %55, label %60, label %56, !dbg !1263

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1264
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1264, !tbaa !1225
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #18, !dbg !1264
  br label %60, !dbg !1266

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1267
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1267
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1268
  %64 = icmp eq i8* %48, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !1268
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1268
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #18, !dbg !1268
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #18, !dbg !1269
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #22, !dbg !1270
  unreachable, !dbg !1270
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !45 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !55 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !120 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1271 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1275, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8** %1, metadata !1276, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 80, metadata !1277, metadata !DIExpression()), !dbg !1286
  %4 = load i8*, i8** %1, align 8, !dbg !1287, !tbaa !1225
  tail call void @set_program_name(i8* %4) #18, !dbg !1288
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1289
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1290
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1291
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1292
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1293
  store i1 false, i1* @count_bytes, align 1, !dbg !1294
  store i1 false, i1* @break_spaces, align 1, !dbg !1295
  call void @llvm.dbg.value(metadata i64 80, metadata !1277, metadata !DIExpression()), !dbg !1286
  %9 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %9, metadata !1279, metadata !DIExpression()), !dbg !1286
  %10 = icmp eq i32 %9, -1, !dbg !1297
  br i1 %10, label %41, label %11, !dbg !1298

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0, !dbg !1299
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1, !dbg !1300
  br label %14, !dbg !1298

14:                                               ; preds = %11, %37
  %15 = phi i32 [ %9, %11 ], [ %39, %37 ]
  %16 = phi i64 [ 80, %11 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !1277, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #18, !dbg !1304
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !1281, metadata !DIExpression()), !dbg !1305
  switch i32 %15, label %36 [
    i32 98, label %19
    i32 115, label %20
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 56, label %21
    i32 57, label %21
    i32 119, label %17
    i32 -130, label %32
    i32 -131, label %33
  ], !dbg !1306

17:                                               ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !1307, !tbaa !1225
  br label %28, !dbg !1306

19:                                               ; preds = %14
  store i1 true, i1* @count_bytes, align 1, !dbg !1308
  br label %37, !dbg !1309

20:                                               ; preds = %14
  store i1 true, i1* @break_spaces, align 1, !dbg !1310
  br label %37, !dbg !1311

21:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !1312, !tbaa !1225
  %23 = icmp eq i8* %22, null, !dbg !1312
  br i1 %23, label %26, label %24, !dbg !1313

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !1314
  store i8* %25, i8** @optarg, align 8, !dbg !1314, !tbaa !1225
  br label %28, !dbg !1315

26:                                               ; preds = %21
  %27 = trunc i32 %15 to i8, !dbg !1316
  store i8 %27, i8* %12, align 1, !dbg !1317, !tbaa !1318
  store i8 0, i8* %13, align 1, !dbg !1319, !tbaa !1318
  store i8* %12, i8** @optarg, align 8, !dbg !1320, !tbaa !1225
  br label %28

28:                                               ; preds = %17, %24, %26
  %29 = phi i8* [ %18, %17 ], [ %25, %24 ], [ %12, %26 ], !dbg !1307
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 5) #18, !dbg !1321
  %31 = call i64 @xdectoumax(i8* %29, i64 1, i64 -10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %30, i32 0) #18, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %31, metadata !1277, metadata !DIExpression()), !dbg !1286
  br label %37, !dbg !1323

32:                                               ; preds = %14
  call void @usage(i32 0) #23, !dbg !1324
  unreachable, !dbg !1324

33:                                               ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1325, !tbaa !1225
  %35 = load i8*, i8** @Version, align 8, !dbg !1325, !tbaa !1225
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #18, !dbg !1325
  call void @exit(i32 0) #22, !dbg !1325
  unreachable, !dbg !1325

36:                                               ; preds = %14
  call void @usage(i32 1) #23, !dbg !1326
  unreachable, !dbg !1326

37:                                               ; preds = %28, %20, %19
  %38 = phi i64 [ %31, %28 ], [ %16, %20 ], [ %16, %19 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %38, metadata !1277, metadata !DIExpression()), !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #18, !dbg !1327
  %39 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %39, metadata !1279, metadata !DIExpression()), !dbg !1286
  %40 = icmp eq i32 %39, -1, !dbg !1297
  br i1 %40, label %41, label %14, !dbg !1298, !llvm.loop !1328

41:                                               ; preds = %37, %2
  %42 = phi i64 [ 80, %2 ], [ %38, %37 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %42, metadata !1277, metadata !DIExpression()), !dbg !1286
  %43 = load i32, i32* @optind, align 4, !dbg !1329, !tbaa !1331
  %44 = icmp eq i32 %43, %0, !dbg !1333
  br i1 %44, label %49, label %45, !dbg !1334

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8 1, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i32 %43, metadata !1278, metadata !DIExpression()), !dbg !1286
  %46 = icmp slt i32 %43, %0, !dbg !1335
  br i1 %46, label %47, label %63, !dbg !1339

47:                                               ; preds = %45
  %48 = sext i32 %43 to i64, !dbg !1339
  br label %52, !dbg !1339

49:                                               ; preds = %41
  %50 = call fastcc zeroext i1 @fold_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %42), !dbg !1340
  %51 = zext i1 %50 to i8, !dbg !1341
  call void @llvm.dbg.value(metadata i8 %51, metadata !1280, metadata !DIExpression()), !dbg !1286
  br label %63, !dbg !1342

52:                                               ; preds = %52, %47
  %53 = phi i64 [ %48, %47 ], [ %60, %52 ]
  %54 = phi i8 [ 1, %47 ], [ %59, %52 ]
  call void @llvm.dbg.value(metadata i8 %54, metadata !1280, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i64 %53, metadata !1278, metadata !DIExpression()), !dbg !1286
  %55 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !1343
  %56 = load i8*, i8** %55, align 8, !dbg !1343, !tbaa !1225
  %57 = call fastcc zeroext i1 @fold_file(i8* %56, i64 %42), !dbg !1344
  %58 = zext i1 %57 to i8, !dbg !1344
  %59 = and i8 %54, %58, !dbg !1345
  call void @llvm.dbg.value(metadata i8 %59, metadata !1280, metadata !DIExpression()), !dbg !1286
  %60 = add nsw i64 %53, 1, !dbg !1346
  call void @llvm.dbg.value(metadata i64 %60, metadata !1278, metadata !DIExpression()), !dbg !1286
  %61 = trunc i64 %60 to i32, !dbg !1335
  %62 = icmp eq i32 %61, %0, !dbg !1335
  br i1 %62, label %63, label %52, !dbg !1339, !llvm.loop !1347

63:                                               ; preds = %52, %45, %49
  %64 = phi i8 [ %51, %49 ], [ 1, %45 ], [ %59, %52 ], !dbg !1349
  call void @llvm.dbg.value(metadata i8 %64, metadata !1280, metadata !DIExpression()), !dbg !1286
  %65 = load i1, i1* @have_read_stdin, align 1, !dbg !1350
  br i1 %65, label %66, label %73, !dbg !1352

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1353, !tbaa !1225
  %68 = call i32 @rpl_fclose(%struct._IO_FILE* %67) #18, !dbg !1354
  %69 = icmp eq i32 %68, -1, !dbg !1355
  br i1 %69, label %70, label %73, !dbg !1356

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #24, !dbg !1357
  %72 = load i32, i32* %71, align 4, !dbg !1357, !tbaa !1331
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #18, !dbg !1357
  unreachable, !dbg !1357

73:                                               ; preds = %66, %63
  %74 = xor i8 %64, 1, !dbg !1358
  %75 = zext i8 %74 to i32, !dbg !1358
  ret i32 %75, !dbg !1359
}

; Function Attrs: nounwind
declare !dbg !124 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !127 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !130 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !137 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fold_file(i8* %0, i64 %1) unnamed_addr #8 !dbg !205 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !209, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %1, metadata !210, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 0, metadata !217, metadata !DIExpression()), !dbg !1360
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #21, !dbg !1361
  %4 = icmp eq i32 %3, 0, !dbg !1361
  br i1 %4, label %5, label %7, !dbg !1363

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1364, !tbaa !1225
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !211, metadata !DIExpression()), !dbg !1360
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1366
  br label %9, !dbg !1367

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !1368
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !211, metadata !DIExpression()), !dbg !1360
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ], !dbg !1369
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !211, metadata !DIExpression()), !dbg !1360
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !1370
  br i1 %11, label %12, label %16, !dbg !1372

12:                                               ; preds = %9
  %13 = tail call i32* @__errno_location() #24, !dbg !1373
  %14 = load i32, i32* %13, align 4, !dbg !1373, !tbaa !1331
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !1375
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %15) #18, !dbg !1376
  br label %176, !dbg !1377

16:                                               ; preds = %9
  tail call void @fadvise(%struct._IO_FILE* nonnull %10, i32 2) #18, !dbg !1378
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 1, !dbg !1379
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 2, !dbg !1379
  br label %19, !dbg !1387

19:                                               ; preds = %49, %16
  %20 = phi i64 [ 0, %16 ], [ %50, %49 ], !dbg !1360
  %21 = phi i64 [ 0, %16 ], [ %51, %49 ], !dbg !1360
  call void @llvm.dbg.value(metadata i64 %21, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1385, metadata !DIExpression()) #18, !dbg !1379
  %22 = load i8*, i8** %17, align 8, !dbg !1388, !tbaa !1389
  %23 = load i8*, i8** %18, align 8, !dbg !1388, !tbaa !1393
  %24 = icmp ult i8* %22, %23, !dbg !1388
  br i1 %24, label %25, label %29, !dbg !1388, !prof !1394, !misexpect !1395

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1388
  store i8* %26, i8** %17, align 8, !dbg !1388, !tbaa !1389
  %27 = load i8, i8* %22, align 1, !dbg !1388, !tbaa !1318
  %28 = zext i8 %27 to i32, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %30, metadata !215, metadata !DIExpression()), !dbg !1360
  br label %32, !dbg !1387

29:                                               ; preds = %19
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %10) #18, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %30, metadata !215, metadata !DIExpression()), !dbg !1360
  %31 = icmp eq i32 %30, -1, !dbg !1396
  br i1 %31, label %148, label %32, !dbg !1387

32:                                               ; preds = %25, %29
  %33 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %34 = add i64 %20, 1, !dbg !1397
  %35 = load i64, i64* @fold_file.allocated_out, align 8, !dbg !1399, !tbaa !1400
  %36 = icmp ult i64 %34, %35, !dbg !1401
  br i1 %36, label %40, label %37, !dbg !1402

37:                                               ; preds = %32
  %38 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1403, !tbaa !1225
  %39 = tail call i8* @x2realloc(i8* %38, i64* nonnull @fold_file.allocated_out) #18, !dbg !1403
  store i8* %39, i8** @fold_file.line_out, align 8, !dbg !1404, !tbaa !1225
  br label %40, !dbg !1405

40:                                               ; preds = %32, %37
  %41 = icmp eq i32 %33, 10, !dbg !1406
  br i1 %41, label %44, label %42, !dbg !1407

42:                                               ; preds = %40
  %43 = trunc i32 %33 to i8, !dbg !1408
  br label %52, !dbg !1409

44:                                               ; preds = %40
  %45 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1417, !tbaa !1225
  call void @llvm.dbg.value(metadata i64 %34, metadata !217, metadata !DIExpression()), !dbg !1360
  %46 = getelementptr inbounds i8, i8* %45, i64 %20, !dbg !1417
  store i8 10, i8* %46, align 1, !dbg !1418, !tbaa !1318
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1419, !tbaa !1225
  %48 = tail call i64 @fwrite_unlocked(i8* %45, i64 1, i64 %34, %struct._IO_FILE* %47), !dbg !1419
  br label %49, !dbg !1419

49:                                               ; preds = %44, %137, %143
  %50 = phi i64 [ 1, %137 ], [ %146, %143 ], [ 0, %44 ]
  %51 = phi i64 [ %70, %137 ], [ %144, %143 ], [ 0, %44 ]
  br label %19, !dbg !1360, !llvm.loop !1420

52:                                               ; preds = %107, %42
  %53 = phi i64 [ %20, %42 ], [ %108, %107 ], !dbg !1360
  %54 = phi i64 [ %21, %42 ], [ %109, %107 ], !dbg !1360
  call void @llvm.dbg.value(metadata i64 %54, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.label(metadata !248), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %54, metadata !1414, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i8 %43, metadata !1415, metadata !DIExpression()), !dbg !1423
  %55 = load i1, i1* @count_bytes, align 1, !dbg !1424
  br i1 %55, label %67, label %56, !dbg !1409

56:                                               ; preds = %52
  switch i8 %43, label %65 [
    i8 8, label %57
    i8 13, label %143
    i8 9, label %61
  ], !dbg !1426

57:                                               ; preds = %56
  %58 = icmp eq i64 %54, 0, !dbg !1428
  %59 = add i64 %54, -1, !dbg !1432
  %60 = select i1 %58, i64 0, i64 %59, !dbg !1433
  br label %69, !dbg !1433

61:                                               ; preds = %56
  %62 = and i64 %54, 7, !dbg !1434
  %63 = add i64 %54, 8, !dbg !1437
  %64 = sub i64 %63, %62, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %64, metadata !1414, metadata !DIExpression()), !dbg !1423
  br label %69, !dbg !1439

65:                                               ; preds = %56
  %66 = add i64 %54, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %66, metadata !1414, metadata !DIExpression()), !dbg !1423
  br label %69

67:                                               ; preds = %52
  %68 = add i64 %54, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %68, metadata !1414, metadata !DIExpression()), !dbg !1423
  br label %69

69:                                               ; preds = %61, %65, %67, %57
  %70 = phi i64 [ %60, %57 ], [ %68, %67 ], [ %64, %61 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  %71 = icmp ugt i64 %70, %1, !dbg !1442
  br i1 %71, label %72, label %143, !dbg !1443

72:                                               ; preds = %69
  %73 = load i1, i1* @break_spaces, align 1, !dbg !1444
  %74 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1445
  br i1 %73, label %75, label %135, !dbg !1446

75:                                               ; preds = %72, %78
  %76 = phi i64 [ %79, %78 ], [ %53, %72 ], !dbg !1447
  call void @llvm.dbg.value(metadata i64 %76, metadata !231, metadata !DIExpression()), !dbg !1447
  %77 = icmp eq i64 %76, 0, !dbg !1448
  br i1 %77, label %135, label %78, !dbg !1448

78:                                               ; preds = %75
  %79 = add i64 %76, -1, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %79, metadata !231, metadata !DIExpression()), !dbg !1447
  %80 = tail call i16** @__ctype_b_loc() #24, !dbg !1451
  %81 = load i16*, i16** %80, align 8, !dbg !1451, !tbaa !1225
  %82 = getelementptr inbounds i8, i8* %74, i64 %79, !dbg !1451
  %83 = load i8, i8* %82, align 1, !dbg !1451, !tbaa !1318
  %84 = zext i8 %83 to i64, !dbg !1451
  %85 = getelementptr inbounds i16, i16* %81, i64 %84, !dbg !1451
  %86 = load i16, i16* %85, align 2, !dbg !1451, !tbaa !1453
  %87 = and i16 %86, 1, !dbg !1451
  %88 = icmp eq i16 %87, 0, !dbg !1451
  br i1 %88, label %75, label %89, !dbg !1454, !llvm.loop !1455

89:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 %76, metadata !231, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %76, metadata !231, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i8 undef, metadata !226, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %76, metadata !231, metadata !DIExpression()), !dbg !1447
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1457, !tbaa !1225
  %91 = tail call i64 @fwrite_unlocked(i8* nonnull %74, i64 1, i64 %76, %struct._IO_FILE* %90), !dbg !1458
  call void @llvm.dbg.value(metadata i32 10, metadata !1459, metadata !DIExpression()) #18, !dbg !1464
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1466, !tbaa !1225
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 5, !dbg !1466
  %94 = load i8*, i8** %93, align 8, !dbg !1466, !tbaa !1467
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 6, !dbg !1466
  %96 = load i8*, i8** %95, align 8, !dbg !1466, !tbaa !1468
  %97 = icmp ult i8* %94, %96, !dbg !1466
  br i1 %97, label %100, label %98, !dbg !1466, !prof !1394, !misexpect !1395

98:                                               ; preds = %89
  %99 = tail call i32 @__overflow(%struct._IO_FILE* %92, i32 10) #18, !dbg !1466
  br label %102, !dbg !1466

100:                                              ; preds = %89
  %101 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1466
  store i8* %101, i8** %93, align 8, !dbg !1466, !tbaa !1467
  store i8 10, i8* %94, align 1, !dbg !1466, !tbaa !1318
  br label %102, !dbg !1466

102:                                              ; preds = %98, %100
  %103 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1469, !tbaa !1225
  %104 = getelementptr inbounds i8, i8* %103, i64 %76, !dbg !1470
  %105 = sub i64 %53, %76, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %103, metadata !1472, metadata !DIExpression()) #18, !dbg !1480
  call void @llvm.dbg.value(metadata i8* %104, metadata !1478, metadata !DIExpression()) #18, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %105, metadata !1479, metadata !DIExpression()) #18, !dbg !1480
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %103, i8* nonnull align 1 %104, i64 %105, i1 false) #18, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %105, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 0, metadata !216, metadata !DIExpression()), !dbg !1360
  %106 = icmp eq i64 %105, 0, !dbg !1483
  br i1 %106, label %107, label %110, !dbg !1486

107:                                              ; preds = %131, %102, %138
  %108 = phi i64 [ 0, %102 ], [ 0, %138 ], [ %105, %131 ]
  %109 = phi i64 [ 0, %102 ], [ 0, %138 ], [ %132, %131 ]
  br label %52, !dbg !1360

110:                                              ; preds = %102
  %111 = load i1, i1* @count_bytes, align 1, !dbg !1487
  %112 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1489
  br label %113, !dbg !1486

113:                                              ; preds = %131, %110
  %114 = phi i64 [ 0, %110 ], [ %132, %131 ]
  %115 = phi i64 [ 0, %110 ], [ %133, %131 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %115, metadata !232, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %114, metadata !1414, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 undef, metadata !1415, metadata !DIExpression()), !dbg !1490
  br i1 %111, label %129, label %116, !dbg !1491

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !1492
  %118 = load i8, i8* %117, align 1, !dbg !1492, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %118, metadata !1415, metadata !DIExpression()), !dbg !1490
  switch i8 %118, label %127 [
    i8 8, label %119
    i8 13, label %131
    i8 9, label %123
  ], !dbg !1493

119:                                              ; preds = %116
  %120 = icmp eq i64 %114, 0, !dbg !1494
  %121 = add i64 %114, -1, !dbg !1495
  %122 = select i1 %120, i64 0, i64 %121, !dbg !1496
  br label %131, !dbg !1496

123:                                              ; preds = %116
  %124 = and i64 %114, 7, !dbg !1497
  %125 = add i64 %114, 8, !dbg !1498
  %126 = sub i64 %125, %124, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %126, metadata !1414, metadata !DIExpression()), !dbg !1490
  br label %131, !dbg !1500

127:                                              ; preds = %116
  %128 = add i64 %114, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %128, metadata !1414, metadata !DIExpression()), !dbg !1490
  br label %131

129:                                              ; preds = %113
  %130 = add i64 %114, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %130, metadata !1414, metadata !DIExpression()), !dbg !1490
  br label %131

131:                                              ; preds = %116, %123, %127, %129, %119
  %132 = phi i64 [ %122, %119 ], [ %130, %129 ], [ %126, %123 ], [ %128, %127 ], [ 0, %116 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !216, metadata !DIExpression()), !dbg !1360
  %133 = add nuw i64 %115, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %133, metadata !232, metadata !DIExpression()), !dbg !1457
  %134 = icmp eq i64 %133, %105, !dbg !1483
  br i1 %134, label %107, label %113, !dbg !1486, !llvm.loop !1504

135:                                              ; preds = %75, %72
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  %136 = icmp eq i64 %53, 0, !dbg !1506
  br i1 %136, label %137, label %138, !dbg !1508

137:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %70, metadata !216, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 1, metadata !217, metadata !DIExpression()), !dbg !1360
  store i8 %43, i8* %74, align 1, !dbg !1509, !tbaa !1318
  br label %49, !dbg !1511

138:                                              ; preds = %135
  %139 = add i64 %53, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %139, metadata !217, metadata !DIExpression()), !dbg !1360
  %140 = getelementptr inbounds i8, i8* %74, i64 %53, !dbg !1513
  store i8 10, i8* %140, align 1, !dbg !1514, !tbaa !1318
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !1225
  %142 = tail call i64 @fwrite_unlocked(i8* nonnull %74, i64 1, i64 %139, %struct._IO_FILE* %141), !dbg !1515
  br label %107, !dbg !1515

143:                                              ; preds = %56, %69
  %144 = phi i64 [ %70, %69 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %53, metadata !217, metadata !DIExpression()), !dbg !1360
  %145 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1516, !tbaa !1225
  %146 = add i64 %53, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %146, metadata !217, metadata !DIExpression()), !dbg !1360
  %147 = getelementptr inbounds i8, i8* %145, i64 %53, !dbg !1516
  store i8 %43, i8* %147, align 1, !dbg !1518, !tbaa !1318
  br label %49, !dbg !1387

148:                                              ; preds = %29
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %20, metadata !217, metadata !DIExpression()), !dbg !1360
  %149 = tail call i32* @__errno_location() #24, !dbg !1519
  %150 = load i32, i32* %149, align 4, !dbg !1519, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %150, metadata !218, metadata !DIExpression()), !dbg !1360
  %151 = icmp eq i64 %20, 0, !dbg !1520
  br i1 %151, label %156, label %152, !dbg !1521

152:                                              ; preds = %148
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1522, !tbaa !1225
  %154 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1522, !tbaa !1225
  %155 = tail call i64 @fwrite_unlocked(i8* %154, i64 1, i64 %20, %struct._IO_FILE* %153), !dbg !1523
  br label %156, !dbg !1523

156:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1524, metadata !DIExpression()), !dbg !1527
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 0, !dbg !1530
  %158 = load i32, i32* %157, align 8, !dbg !1530, !tbaa !1531
  %159 = and i32 %158, 32, !dbg !1530
  %160 = icmp eq i32 %159, 0, !dbg !1532
  br i1 %160, label %167, label %161, !dbg !1533

161:                                              ; preds = %156
  %162 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !1534
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %162) #18, !dbg !1536
  %163 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #21, !dbg !1537
  %164 = icmp eq i32 %163, 0, !dbg !1537
  br i1 %164, label %176, label %165, !dbg !1539

165:                                              ; preds = %161
  %166 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #18, !dbg !1540
  br label %176, !dbg !1540

167:                                              ; preds = %156
  %168 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #21, !dbg !1541
  %169 = icmp eq i32 %168, 0, !dbg !1541
  br i1 %169, label %176, label %170, !dbg !1543

170:                                              ; preds = %167
  %171 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #18, !dbg !1544
  %172 = icmp eq i32 %171, -1, !dbg !1545
  br i1 %172, label %173, label %176, !dbg !1546

173:                                              ; preds = %170
  %174 = load i32, i32* %149, align 4, !dbg !1547, !tbaa !1331
  %175 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #18, !dbg !1549
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %175) #18, !dbg !1550
  br label %176, !dbg !1551

176:                                              ; preds = %167, %170, %161, %165, %173, %12
  %177 = phi i1 [ false, %12 ], [ false, %173 ], [ false, %165 ], [ false, %161 ], [ true, %170 ], [ true, %167 ], !dbg !1360
  ret i1 %177, !dbg !1552
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !164 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !179 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1555, metadata !DIExpression()), !dbg !1556
  store i8* %0, i8** @file_name, align 8, !dbg !1557, !tbaa !1225
  ret void, !dbg !1558
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1559 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1565, !tbaa !1566
  ret void, !dbg !1568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1569 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1574, !tbaa !1225
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1575
  %3 = icmp eq i32 %2, 0, !dbg !1576
  br i1 %3, label %22, label %4, !dbg !1577

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1578, !tbaa !1566, !range !1579
  %6 = icmp eq i8 %5, 0, !dbg !1578
  br i1 %6, label %11, label %7, !dbg !1580

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1581
  %9 = load i32, i32* %8, align 4, !dbg !1581, !tbaa !1331
  %10 = icmp eq i32 %9, 32, !dbg !1582
  br i1 %10, label %22, label %11, !dbg !1583

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %12, metadata !1571, metadata !DIExpression()), !dbg !1585
  %13 = load i8*, i8** @file_name, align 8, !dbg !1586, !tbaa !1225
  %14 = icmp eq i8* %13, null, !dbg !1586
  %15 = tail call i32* @__errno_location() #24, !dbg !1588
  %16 = load i32, i32* %15, align 4, !dbg !1588, !tbaa !1331
  br i1 %14, label %19, label %17, !dbg !1589

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1590
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1591
  br label %20, !dbg !1591

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #18, !dbg !1592
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1593, !tbaa !1331
  tail call void @_exit(i32 %21) #22, !dbg !1594
  unreachable, !dbg !1594

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1595, !tbaa !1225
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1597
  %25 = icmp eq i32 %24, 0, !dbg !1598
  br i1 %25, label %28, label %26, !dbg !1599

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1600, !tbaa !1331
  tail call void @_exit(i32 %27) #22, !dbg !1601
  unreachable, !dbg !1601

28:                                               ; preds = %22
  ret void, !dbg !1602
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1609, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %1, metadata !1610, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %2, metadata !1611, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i32 %3, metadata !1612, metadata !DIExpression()), !dbg !1615
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #18, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %5, metadata !1613, metadata !DIExpression()), !dbg !1617
  ret void, !dbg !1618
}

; Function Attrs: nounwind
declare !dbg !470 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1619 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1625, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %1, metadata !1626, metadata !DIExpression()), !dbg !1627
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1628
  br i1 %3, label %7, label %4, !dbg !1630

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %5, metadata !1609, metadata !DIExpression()) #18, !dbg !1632
  call void @llvm.dbg.value(metadata i64 0, metadata !1610, metadata !DIExpression()) #18, !dbg !1632
  call void @llvm.dbg.value(metadata i64 0, metadata !1611, metadata !DIExpression()) #18, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %1, metadata !1612, metadata !DIExpression()) #18, !dbg !1632
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #18, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %6, metadata !1613, metadata !DIExpression()) #18, !dbg !1635
  br label %7, !dbg !1636

7:                                                ; preds = %2, %4
  ret void, !dbg !1637
}

; Function Attrs: nofree nounwind
declare !dbg !474 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1638 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1640, metadata !DIExpression()), !dbg !1643
  %2 = icmp eq i8* %0, null, !dbg !1644
  br i1 %2, label %3, label %6, !dbg !1646

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1647, !tbaa !1225
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1649
  tail call void @abort() #22, !dbg !1650
  unreachable, !dbg !1650

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %7, metadata !1641, metadata !DIExpression()), !dbg !1643
  %8 = icmp eq i8* %7, null, !dbg !1652
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1653
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1653
  call void @llvm.dbg.value(metadata i8* %10, metadata !1642, metadata !DIExpression()), !dbg !1643
  %11 = ptrtoint i8* %10 to i64, !dbg !1654
  %12 = ptrtoint i8* %0 to i64, !dbg !1654
  %13 = sub i64 %11, %12, !dbg !1654
  %14 = icmp sgt i64 %13, 6, !dbg !1656
  br i1 %14, label %15, label %24, !dbg !1657

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1658
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #21, !dbg !1659
  %18 = icmp eq i32 %17, 0, !dbg !1660
  br i1 %18, label %19, label %24, !dbg !1661

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1640, metadata !DIExpression()), !dbg !1643
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #21, !dbg !1662
  %21 = icmp eq i32 %20, 0, !dbg !1665
  br i1 %21, label %22, label %24, !dbg !1666

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %23, metadata !1640, metadata !DIExpression()), !dbg !1643
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1669, !tbaa !1225
  br label %24, !dbg !1670

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1640, metadata !DIExpression()), !dbg !1643
  store i8* %25, i8** @program_name, align 8, !dbg !1671, !tbaa !1225
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1672, !tbaa !1225
  ret void, !dbg !1673
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1674 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1679, metadata !DIExpression()), !dbg !1682
  %2 = tail call i32* @__errno_location() #24, !dbg !1683
  %3 = load i32, i32* %2, align 4, !dbg !1683, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %3, metadata !1680, metadata !DIExpression()), !dbg !1682
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1684
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1684
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1684
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1685
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 %3, i32* %2, align 4, !dbg !1686, !tbaa !1331
  ret %struct.quoting_options* %8, !dbg !1687
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1688 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1692, metadata !DIExpression()), !dbg !1693
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1694
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1694
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1695
  %5 = load i32, i32* %4, align 8, !dbg !1695, !tbaa !1696
  ret i32 %5, !dbg !1698
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1699 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 %1, metadata !1704, metadata !DIExpression()), !dbg !1705
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1706
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1706
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1707
  store i32 %1, i32* %5, align 8, !dbg !1708, !tbaa !1696
  ret void, !dbg !1709
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1710 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1714, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 %1, metadata !1715, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %2, metadata !1716, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 %1, metadata !1717, metadata !DIExpression()), !dbg !1722
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1723
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1723
  %6 = lshr i8 %1, 5, !dbg !1724
  %7 = zext i8 %6 to i64, !dbg !1724
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1725
  call void @llvm.dbg.value(metadata i32* %8, metadata !1718, metadata !DIExpression()), !dbg !1722
  %9 = and i8 %1, 31, !dbg !1726
  %10 = zext i8 %9 to i32, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %10, metadata !1720, metadata !DIExpression()), !dbg !1722
  %11 = load i32, i32* %8, align 4, !dbg !1727, !tbaa !1331
  %12 = lshr i32 %11, %10, !dbg !1728
  %13 = and i32 %12, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %13, metadata !1721, metadata !DIExpression()), !dbg !1722
  %14 = and i32 %2, 1, !dbg !1730
  %15 = xor i32 %13, %14, !dbg !1731
  %16 = shl i32 %15, %10, !dbg !1732
  %17 = xor i32 %16, %11, !dbg !1733
  store i32 %17, i32* %8, align 4, !dbg !1733, !tbaa !1331
  ret i32 %13, !dbg !1734
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1735 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1739, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %1, metadata !1740, metadata !DIExpression()), !dbg !1742
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1743
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1745
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1739, metadata !DIExpression()), !dbg !1742
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1746
  %6 = load i32, i32* %5, align 4, !dbg !1746, !tbaa !1747
  call void @llvm.dbg.value(metadata i32 %6, metadata !1741, metadata !DIExpression()), !dbg !1742
  store i32 %1, i32* %5, align 4, !dbg !1748, !tbaa !1747
  ret i32 %6, !dbg !1749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1750 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1754, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* %1, metadata !1755, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* %2, metadata !1756, metadata !DIExpression()), !dbg !1757
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1758
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1754, metadata !DIExpression()), !dbg !1757
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1761
  store i32 10, i32* %6, align 8, !dbg !1762, !tbaa !1696
  %7 = icmp ne i8* %1, null, !dbg !1763
  %8 = icmp ne i8* %2, null, !dbg !1765
  %9 = and i1 %7, %8, !dbg !1766
  br i1 %9, label %11, label %10, !dbg !1766

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1767
  unreachable, !dbg !1767

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1768
  store i8* %1, i8** %12, align 8, !dbg !1769, !tbaa !1770
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1771
  store i8* %2, i8** %13, align 8, !dbg !1772, !tbaa !1773
  ret void, !dbg !1774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1775 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1779, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %1, metadata !1780, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8* %2, metadata !1781, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i64 %3, metadata !1782, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1783, metadata !DIExpression()), !dbg !1787
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1788
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1784, metadata !DIExpression()), !dbg !1787
  %8 = tail call i32* @__errno_location() #24, !dbg !1789
  %9 = load i32, i32* %8, align 4, !dbg !1789, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %9, metadata !1785, metadata !DIExpression()), !dbg !1787
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1790
  %11 = load i32, i32* %10, align 8, !dbg !1790, !tbaa !1696
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1791
  %13 = load i32, i32* %12, align 4, !dbg !1791, !tbaa !1747
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1792
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1793
  %16 = load i8*, i8** %15, align 8, !dbg !1793, !tbaa !1770
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1794
  %18 = load i8*, i8** %17, align 8, !dbg !1794, !tbaa !1773
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %19, metadata !1786, metadata !DIExpression()), !dbg !1787
  store i32 %9, i32* %8, align 4, !dbg !1796, !tbaa !1331
  ret i64 %19, !dbg !1797
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1798 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1804, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %1, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %2, metadata !1806, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %3, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %4, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %5, metadata !1809, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32* %6, metadata !1810, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %7, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %8, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* null, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1817, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1818, metadata !DIExpression()), !dbg !1862
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1863
  %14 = icmp eq i64 %13, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i1 %14, metadata !1819, metadata !DIExpression()), !dbg !1862
  %15 = lshr i32 %5, 1, !dbg !1865
  %16 = trunc i32 %15 to i8, !dbg !1865
  %17 = and i8 %16, 1, !dbg !1865
  call void @llvm.dbg.value(metadata i8 %17, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1862
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1866
  %19 = and i32 %5, 4, !dbg !1868
  %20 = icmp eq i32 %19, 0, !dbg !1868
  %21 = and i32 %5, 1, !dbg !1871
  %22 = icmp eq i32 %21, 0, !dbg !1871
  %23 = bitcast i64* %10 to i8*, !dbg !1874
  %24 = bitcast i32* %12 to i8*, !dbg !1875
  %25 = icmp eq i32* %6, null, !dbg !1876
  br label %26, !dbg !1878

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1879
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1880
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1881
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1882
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1862
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1883
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1884
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1885
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %38, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %37, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %36, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %35, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %34, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %33, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %32, metadata !1817, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %31, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %30, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %29, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %28, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %27, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1856), !dbg !1886
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
  ], !dbg !1887

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %35, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 5, metadata !1808, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1888

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 5, metadata !1808, metadata !DIExpression()), !dbg !1862
  %42 = and i8 %35, 1, !dbg !1890
  %43 = icmp eq i8 %42, 0, !dbg !1890
  br i1 %43, label %44, label %92, !dbg !1888

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1892
  br i1 %45, label %92, label %46, !dbg !1895

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1892, !tbaa !1318
  br label %92, !dbg !1892

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %48, metadata !1811, metadata !DIExpression()), !dbg !1862
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %49, metadata !1812, metadata !DIExpression()), !dbg !1862
  br label %50, !dbg !1901

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %51, metadata !1811, metadata !DIExpression()), !dbg !1862
  %53 = and i8 %35, 1, !dbg !1902
  %54 = icmp eq i8 %53, 0, !dbg !1902
  br i1 %54, label %55, label %70, !dbg !1904

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1814, metadata !DIExpression()), !dbg !1862
  %56 = load i8, i8* %51, align 1, !dbg !1905, !tbaa !1318
  %57 = icmp eq i8 %56, 0, !dbg !1908
  br i1 %57, label %70, label %58, !dbg !1908

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %61, metadata !1814, metadata !DIExpression()), !dbg !1862
  %62 = icmp ult i64 %61, %39, !dbg !1909
  br i1 %62, label %63, label %65, !dbg !1912

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1909
  store i8 %59, i8* %64, align 1, !dbg !1909, !tbaa !1318
  br label %65, !dbg !1909

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %66, metadata !1814, metadata !DIExpression()), !dbg !1862
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1913
  call void @llvm.dbg.value(metadata i8* %67, metadata !1816, metadata !DIExpression()), !dbg !1862
  %68 = load i8, i8* %67, align 1, !dbg !1905, !tbaa !1318
  %69 = icmp eq i8 %68, 0, !dbg !1908
  br i1 %69, label %70, label %58, !dbg !1908, !llvm.loop !1914

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1916
  call void @llvm.dbg.value(metadata i64 %71, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %52, metadata !1816, metadata !DIExpression()), !dbg !1862
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %72, metadata !1817, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1918

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1862
  br label %74, !dbg !1919

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %75, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1820, metadata !DIExpression()), !dbg !1862
  br label %76, !dbg !1920

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1882
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %78, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %77, metadata !1818, metadata !DIExpression()), !dbg !1862
  %79 = and i8 %78, 1, !dbg !1921
  %80 = icmp eq i8 %79, 0, !dbg !1921
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1923
  br label %82, !dbg !1923

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1862
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1865
  call void @llvm.dbg.value(metadata i8 %84, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %83, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  %85 = and i8 %84, 1, !dbg !1924
  %86 = icmp eq i8 %85, 0, !dbg !1924
  br i1 %86, label %87, label %92, !dbg !1926

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1927
  br i1 %88, label %92, label %89, !dbg !1930

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1927, !tbaa !1318
  br label %92, !dbg !1927

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1862
  br label %92, !dbg !1931

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1932
  unreachable, !dbg !1932

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1916
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1862
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1862
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1862
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %100, metadata !1820, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %98, metadata !1817, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %96, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 %93, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 0, metadata !1813, metadata !DIExpression()), !dbg !1862
  %101 = and i8 %99, 1, !dbg !1933
  %102 = icmp ne i8 %101, 0, !dbg !1933
  %103 = icmp ne i32 %93, 2, !dbg !1933
  %104 = and i1 %103, %102, !dbg !1933
  %105 = icmp ne i64 %98, 0, !dbg !1933
  %106 = and i1 %105, %104, !dbg !1933
  %107 = icmp ugt i64 %98, 1, !dbg !1933
  %108 = and i8 %100, 1, !dbg !1935
  %109 = icmp eq i8 %108, 0, !dbg !1935
  %110 = icmp eq i32 %93, 2, !dbg !1938
  %111 = or i1 %103, %109, !dbg !1940
  %112 = icmp ne i8 %108, 0, !dbg !1942
  %113 = and i1 %110, %112, !dbg !1942
  %114 = xor i1 %102, true, !dbg !1943
  %115 = xor i1 %104, true, !dbg !1876
  %116 = and i1 %109, %115, !dbg !1876
  %117 = or i1 %25, %116, !dbg !1876
  %118 = and i8 %99, %100, !dbg !1944
  %119 = and i8 %118, 1, !dbg !1944
  %120 = icmp ne i8 %119, 0, !dbg !1944
  %121 = and i1 %120, %105, !dbg !1944
  br label %122, !dbg !1946

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1947
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1916
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1879
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1883
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1884
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1885
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %126, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %123, metadata !1813, metadata !DIExpression()), !dbg !1862
  %131 = icmp eq i64 %126, -1, !dbg !1948
  br i1 %131, label %132, label %136, !dbg !1949

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1950
  %134 = load i8, i8* %133, align 1, !dbg !1950, !tbaa !1318
  %135 = icmp eq i8 %134, 0, !dbg !1951
  br i1 %135, label %581, label %138, !dbg !1952

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1953
  br i1 %137, label %581, label %138, !dbg !1952

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1829, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1831, metadata !DIExpression()), !dbg !1954
  br i1 %106, label %139, label %154, !dbg !1955

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1956
  %141 = and i1 %107, %131, !dbg !1957
  br i1 %141, label %142, label %144, !dbg !1957

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %143, metadata !1807, metadata !DIExpression()), !dbg !1862
  br label %144, !dbg !1959

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1807, metadata !DIExpression()), !dbg !1862
  %146 = icmp ugt i64 %140, %145, !dbg !1960
  br i1 %146, label %154, label %147, !dbg !1961

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1962
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1963
  %150 = icmp ne i32 %149, 0, !dbg !1964
  %151 = or i1 %150, %109, !dbg !1965
  %152 = xor i1 %150, true, !dbg !1965
  %153 = zext i1 %152 to i8, !dbg !1965
  br i1 %151, label %154, label %639, !dbg !1965

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %156, metadata !1829, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %155, metadata !1807, metadata !DIExpression()), !dbg !1862
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1966
  %158 = load i8, i8* %157, align 1, !dbg !1966, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %158, metadata !1824, metadata !DIExpression()), !dbg !1954
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
  ], !dbg !1967

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1968

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1969

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1954
  %162 = and i8 %127, 1, !dbg !1972
  %163 = icmp eq i8 %162, 0, !dbg !1972
  %164 = and i1 %110, %163, !dbg !1972
  br i1 %164, label %165, label %181, !dbg !1972

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1974
  br i1 %166, label %167, label %169, !dbg !1978

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1974
  store i8 39, i8* %168, align 1, !dbg !1974, !tbaa !1318
  br label %169, !dbg !1974

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %170, metadata !1814, metadata !DIExpression()), !dbg !1862
  %171 = icmp ult i64 %170, %130, !dbg !1979
  br i1 %171, label %172, label %174, !dbg !1982

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1979
  store i8 36, i8* %173, align 1, !dbg !1979, !tbaa !1318
  br label %174, !dbg !1979

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1982
  call void @llvm.dbg.value(metadata i64 %175, metadata !1814, metadata !DIExpression()), !dbg !1862
  %176 = icmp ult i64 %175, %130, !dbg !1983
  br i1 %176, label %177, label %179, !dbg !1986

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1983
  store i8 39, i8* %178, align 1, !dbg !1983, !tbaa !1318
  br label %179, !dbg !1983

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %180, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %181, !dbg !1987

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1862
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %183, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %182, metadata !1814, metadata !DIExpression()), !dbg !1862
  %184 = icmp ult i64 %182, %130, !dbg !1988
  br i1 %184, label %185, label %187, !dbg !1991

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1988
  store i8 92, i8* %186, align 1, !dbg !1988, !tbaa !1318
  br label %187, !dbg !1988

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %188, metadata !1814, metadata !DIExpression()), !dbg !1862
  br i1 %103, label %189, label %463, !dbg !1992

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1994
  %191 = icmp ult i64 %190, %155, !dbg !1995
  br i1 %191, label %192, label %463, !dbg !1996

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1997
  %194 = load i8, i8* %193, align 1, !dbg !1997, !tbaa !1318
  %195 = add i8 %194, -48, !dbg !1998
  %196 = icmp ult i8 %195, 10, !dbg !1998
  br i1 %196, label %197, label %463, !dbg !1998

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1999
  br i1 %198, label %199, label %201, !dbg !2003

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1999
  store i8 48, i8* %200, align 1, !dbg !1999, !tbaa !1318
  br label %201, !dbg !1999

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %202, metadata !1814, metadata !DIExpression()), !dbg !1862
  %203 = icmp ult i64 %202, %130, !dbg !2004
  br i1 %203, label %204, label %206, !dbg !2007

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2004
  store i8 48, i8* %205, align 1, !dbg !2004, !tbaa !1318
  br label %206, !dbg !2004

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %207, metadata !1814, metadata !DIExpression()), !dbg !1862
  br label %463, !dbg !2008

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2009

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2010

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2011

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2012

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2013
  %214 = icmp ult i64 %213, %155, !dbg !2014
  br i1 %214, label %215, label %463, !dbg !2015

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2016
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2017
  %218 = load i8, i8* %217, align 1, !dbg !2017, !tbaa !1318
  %219 = icmp eq i8 %218, 63, !dbg !2018
  br i1 %219, label %220, label %463, !dbg !2019

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2020
  %222 = load i8, i8* %221, align 1, !dbg !2020, !tbaa !1318
  %223 = sext i8 %222 to i32, !dbg !2020
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
  ], !dbg !2021

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2022

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i64 %213, metadata !1813, metadata !DIExpression()), !dbg !1862
  %226 = icmp ult i64 %124, %130, !dbg !2024
  br i1 %226, label %227, label %229, !dbg !2027

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2024
  store i8 63, i8* %228, align 1, !dbg !2024, !tbaa !1318
  br label %229, !dbg !2024

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %230, metadata !1814, metadata !DIExpression()), !dbg !1862
  %231 = icmp ult i64 %230, %130, !dbg !2028
  br i1 %231, label %232, label %234, !dbg !2031

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2028
  store i8 34, i8* %233, align 1, !dbg !2028, !tbaa !1318
  br label %234, !dbg !2028

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %235, metadata !1814, metadata !DIExpression()), !dbg !1862
  %236 = icmp ult i64 %235, %130, !dbg !2032
  br i1 %236, label %237, label %239, !dbg !2035

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2032
  store i8 34, i8* %238, align 1, !dbg !2032, !tbaa !1318
  br label %239, !dbg !2032

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %240, metadata !1814, metadata !DIExpression()), !dbg !1862
  %241 = icmp ult i64 %240, %130, !dbg !2036
  br i1 %241, label %242, label %244, !dbg !2039

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2036
  store i8 63, i8* %243, align 1, !dbg !2036, !tbaa !1318
  br label %244, !dbg !2036

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %245, metadata !1814, metadata !DIExpression()), !dbg !1862
  br label %463, !dbg !2040

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1828, metadata !DIExpression()), !dbg !1954
  br label %256, !dbg !2041

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1828, metadata !DIExpression()), !dbg !1954
  br label %256, !dbg !2042

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1828, metadata !DIExpression()), !dbg !1954
  br label %254, !dbg !2043

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1828, metadata !DIExpression()), !dbg !1954
  br label %254, !dbg !2044

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1828, metadata !DIExpression()), !dbg !1954
  br label %256, !dbg !2045

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1828, metadata !DIExpression()), !dbg !1954
  br i1 %110, label %252, label %253, !dbg !2046

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2047

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2050

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2051
  call void @llvm.dbg.value(metadata i8 %255, metadata !1828, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1857), !dbg !2052
  br i1 %111, label %256, label %625, !dbg !2053

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2051
  call void @llvm.dbg.value(metadata i8 %257, metadata !1828, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.label(metadata !1858), !dbg !2055
  br i1 %102, label %488, label %463, !dbg !2056

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2057

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2058, !tbaa !1318
  %261 = icmp eq i8 %260, 0, !dbg !2059
  br i1 %261, label %262, label %463, !dbg !2060

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2061
  br i1 %263, label %264, label %463, !dbg !2063

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1831, metadata !DIExpression()), !dbg !1954
  br label %265, !dbg !2064

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %266, metadata !1831, metadata !DIExpression()), !dbg !1954
  br i1 %111, label %463, label %625, !dbg !2065

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1831, metadata !DIExpression()), !dbg !1954
  br i1 %110, label %268, label %463, !dbg !2066

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2067

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2069
  %271 = icmp ne i64 %125, 0, !dbg !2071
  %272 = or i1 %271, %270, !dbg !2072
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2072
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %274, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %273, metadata !1815, metadata !DIExpression()), !dbg !1862
  %275 = icmp ult i64 %124, %274, !dbg !2073
  br i1 %275, label %276, label %278, !dbg !2076

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2073
  store i8 39, i8* %277, align 1, !dbg !2073, !tbaa !1318
  br label %278, !dbg !2073

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %279, metadata !1814, metadata !DIExpression()), !dbg !1862
  %280 = icmp ult i64 %279, %274, !dbg !2077
  br i1 %280, label %281, label %283, !dbg !2080

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2077
  store i8 92, i8* %282, align 1, !dbg !2077, !tbaa !1318
  br label %283, !dbg !2077

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %284, metadata !1814, metadata !DIExpression()), !dbg !1862
  %285 = icmp ult i64 %284, %274, !dbg !2081
  br i1 %285, label %286, label %288, !dbg !2084

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2081
  store i8 39, i8* %287, align 1, !dbg !2081, !tbaa !1318
  br label %288, !dbg !2081

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %289, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %463, !dbg !2085

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2086

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1832, metadata !DIExpression()), !dbg !2087
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2088
  %293 = load i16*, i16** %292, align 8, !dbg !2088, !tbaa !1225
  %294 = zext i8 %158 to i64, !dbg !2088
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2088
  %296 = load i16, i16* %295, align 2, !dbg !2088, !tbaa !1453
  %297 = lshr i16 %296, 14, !dbg !2090
  %298 = trunc i16 %297 to i8, !dbg !2090
  %299 = and i8 %298, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %299, metadata !1835, metadata !DIExpression()), !dbg !2087
  br label %355, !dbg !2091

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2092
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1836, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %23, metadata !2094, metadata !DIExpression()) #18, !dbg !2101
  call void @llvm.dbg.value(metadata i32 0, metadata !2099, metadata !DIExpression()) #18, !dbg !2101
  call void @llvm.dbg.value(metadata i64 8, metadata !2100, metadata !DIExpression()) #18, !dbg !2101
  store i64 0, i64* %10, align 8, !dbg !2103
  call void @llvm.dbg.value(metadata i64 0, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 1, metadata !1835, metadata !DIExpression()), !dbg !2087
  %301 = icmp eq i64 %155, -1, !dbg !2104
  br i1 %301, label %302, label %304, !dbg !2106

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %303, metadata !1807, metadata !DIExpression()), !dbg !1862
  br label %304, !dbg !2108

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1954
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  br label %306, !dbg !2109

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2110
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2111
  call void @llvm.dbg.value(metadata i8 %308, metadata !1835, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2112
  %309 = add i64 %307, %123, !dbg !2113
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2114
  %311 = sub i64 %305, %309, !dbg !2115
  call void @llvm.dbg.value(metadata i32* %12, metadata !1842, metadata !DIExpression(DW_OP_deref)), !dbg !1875
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %312, metadata !1845, metadata !DIExpression()), !dbg !1875
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2117

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  %314 = icmp ugt i64 %305, %309, !dbg !2118
  br i1 %314, label %315, label %340, !dbg !2120

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2121
  br label %317, !dbg !2121

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1832, metadata !DIExpression()), !dbg !2087
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2122
  %321 = load i8, i8* %320, align 1, !dbg !2122, !tbaa !1318
  %322 = icmp eq i8 %321, 0, !dbg !2120
  br i1 %322, label %340, label %323, !dbg !2121

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %324, metadata !1832, metadata !DIExpression()), !dbg !2087
  %325 = add i64 %324, %123, !dbg !2124
  %326 = icmp ult i64 %325, %305, !dbg !2118
  br i1 %326, label %317, label %340, !dbg !2120, !llvm.loop !2125

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2126
  %329 = and i1 %113, %328, !dbg !2129
  call void @llvm.dbg.value(metadata i64 1, metadata !1846, metadata !DIExpression()), !dbg !2130
  br i1 %329, label %330, label %343, !dbg !2129

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1846, metadata !DIExpression()), !dbg !2130
  %332 = add i64 %331, %309, !dbg !2131
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2132
  %334 = load i8, i8* %333, align 1, !dbg !2132, !tbaa !1318
  %335 = sext i8 %334 to i32, !dbg !2132
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2133

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %337, metadata !1846, metadata !DIExpression()), !dbg !2130
  %338 = icmp eq i64 %337, %312, !dbg !2126
  br i1 %338, label %343, label %330, !dbg !2135, !llvm.loop !2136

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %308, metadata !1835, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %307, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %308, metadata !1835, metadata !DIExpression()), !dbg !2087
  br label %340, !dbg !2138

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2138
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2139, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %344, metadata !1842, metadata !DIExpression()), !dbg !1875
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2141
  %346 = icmp eq i32 %345, 0, !dbg !2141
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2142
  call void @llvm.dbg.value(metadata i8 %347, metadata !1835, metadata !DIExpression()), !dbg !2087
  %348 = add i64 %312, %307, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %348, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %347, metadata !1835, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %348, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2138
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2144
  %350 = icmp eq i32 %349, 0, !dbg !2145
  br i1 %350, label %306, label %351, !dbg !2146, !llvm.loop !2147

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2149
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i32 2, metadata !1808, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %99, metadata !1818, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %305, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2149
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1954
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2150
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2150
  call void @llvm.dbg.value(metadata i8 %358, metadata !1835, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %357, metadata !1832, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %356, metadata !1807, metadata !DIExpression()), !dbg !1862
  %359 = and i8 %358, 1, !dbg !2151
  %360 = icmp ne i8 %359, 0, !dbg !2151
  call void @llvm.dbg.value(metadata i8 %359, metadata !1831, metadata !DIExpression()), !dbg !1954
  %361 = icmp ult i64 %357, 2, !dbg !2152
  %362 = or i1 %360, %114, !dbg !2153
  %363 = and i1 %361, %362, !dbg !2154
  br i1 %363, label %463, label %364, !dbg !2154

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %365, metadata !1853, metadata !DIExpression()), !dbg !2156
  br label %366, !dbg !2157

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1947
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1862
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1883
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1954
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1954
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2158
  call void @llvm.dbg.value(metadata i8 %372, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %371, metadata !1829, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %370, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %369, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %368, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %367, metadata !1813, metadata !DIExpression()), !dbg !1862
  br i1 %362, label %419, label %373, !dbg !2159

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2164

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1954
  %375 = and i8 %369, 1, !dbg !2167
  %376 = icmp eq i8 %375, 0, !dbg !2167
  %377 = and i1 %110, %376, !dbg !2167
  br i1 %377, label %378, label %394, !dbg !2167

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2169
  br i1 %379, label %380, label %382, !dbg !2173

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2169
  store i8 39, i8* %381, align 1, !dbg !2169, !tbaa !1318
  br label %382, !dbg !2169

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %383, metadata !1814, metadata !DIExpression()), !dbg !1862
  %384 = icmp ult i64 %383, %130, !dbg !2174
  br i1 %384, label %385, label %387, !dbg !2177

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2174
  store i8 36, i8* %386, align 1, !dbg !2174, !tbaa !1318
  br label %387, !dbg !2174

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %388, metadata !1814, metadata !DIExpression()), !dbg !1862
  %389 = icmp ult i64 %388, %130, !dbg !2178
  br i1 %389, label %390, label %392, !dbg !2181

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2178
  store i8 39, i8* %391, align 1, !dbg !2178, !tbaa !1318
  br label %392, !dbg !2178

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %393, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %394, !dbg !2182

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1862
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %396, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %395, metadata !1814, metadata !DIExpression()), !dbg !1862
  %397 = icmp ult i64 %395, %130, !dbg !2183
  br i1 %397, label %398, label %400, !dbg !2186

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2183
  store i8 92, i8* %399, align 1, !dbg !2183, !tbaa !1318
  br label %400, !dbg !2183

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %401, metadata !1814, metadata !DIExpression()), !dbg !1862
  %402 = icmp ult i64 %401, %130, !dbg !2187
  br i1 %402, label %403, label %407, !dbg !2190

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2187
  %405 = or i8 %404, 48, !dbg !2187
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2187
  store i8 %405, i8* %406, align 1, !dbg !2187, !tbaa !1318
  br label %407, !dbg !2187

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %408, metadata !1814, metadata !DIExpression()), !dbg !1862
  %409 = icmp ult i64 %408, %130, !dbg !2191
  br i1 %409, label %410, label %415, !dbg !2194

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2191
  %412 = and i8 %411, 7, !dbg !2191
  %413 = or i8 %412, 48, !dbg !2191
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2191
  store i8 %413, i8* %414, align 1, !dbg !2191, !tbaa !1318
  br label %415, !dbg !2191

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2194
  call void @llvm.dbg.value(metadata i64 %416, metadata !1814, metadata !DIExpression()), !dbg !1862
  %417 = and i8 %370, 7, !dbg !2195
  %418 = or i8 %417, 48, !dbg !2196
  call void @llvm.dbg.value(metadata i8 %418, metadata !1824, metadata !DIExpression()), !dbg !1954
  br label %428, !dbg !2197

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2198
  %421 = icmp eq i8 %420, 0, !dbg !2198
  br i1 %421, label %428, label %422, !dbg !2200

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2201
  br i1 %423, label %424, label %426, !dbg !2205

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2201
  store i8 92, i8* %425, align 1, !dbg !2201, !tbaa !1318
  br label %426, !dbg !2201

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %427, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1829, metadata !DIExpression()), !dbg !1954
  br label %428, !dbg !2206

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1862
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1883
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1954
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1954
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %433, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %432, metadata !1829, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %431, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %430, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %429, metadata !1814, metadata !DIExpression()), !dbg !1862
  %434 = add i64 %367, 1, !dbg !2207
  %435 = icmp ugt i64 %365, %434, !dbg !2209
  br i1 %435, label %436, label %526, !dbg !2210

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2211
  %438 = icmp ne i8 %437, 0, !dbg !2211
  %439 = and i8 %433, 1, !dbg !2211
  %440 = icmp eq i8 %439, 0, !dbg !2211
  %441 = and i1 %438, %440, !dbg !2211
  br i1 %441, label %442, label %453, !dbg !2211

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2214
  br i1 %443, label %444, label %446, !dbg !2218

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2214
  store i8 39, i8* %445, align 1, !dbg !2214, !tbaa !1318
  br label %446, !dbg !2214

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %447, metadata !1814, metadata !DIExpression()), !dbg !1862
  %448 = icmp ult i64 %447, %130, !dbg !2219
  br i1 %448, label %449, label %451, !dbg !2222

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2219
  store i8 39, i8* %450, align 1, !dbg !2219, !tbaa !1318
  br label %451, !dbg !2219

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %452, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %453, !dbg !2223

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2224
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %455, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %454, metadata !1814, metadata !DIExpression()), !dbg !1862
  %456 = icmp ult i64 %454, %130, !dbg !2225
  br i1 %456, label %457, label %459, !dbg !2228

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2225
  store i8 %431, i8* %458, align 1, !dbg !2225, !tbaa !1318
  br label %459, !dbg !2225

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %460, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %434, metadata !1813, metadata !DIExpression()), !dbg !1862
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2229
  %462 = load i8, i8* %461, align 1, !dbg !2229, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %462, metadata !1824, metadata !DIExpression()), !dbg !1954
  br label %366, !dbg !2230, !llvm.loop !2231

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1947
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1862
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1879
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2234
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1862
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1862
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1954
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1954
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1954
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %472, metadata !1831, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %471, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %156, metadata !1829, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %470, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %469, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %468, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %467, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %466, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %465, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %464, metadata !1813, metadata !DIExpression()), !dbg !1862
  br i1 %117, label %486, label %474, !dbg !2235

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2236
  %476 = zext i8 %475 to i64, !dbg !2236
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2237
  %478 = load i32, i32* %477, align 4, !dbg !2237, !tbaa !1331
  %479 = and i8 %470, 31, !dbg !2238
  %480 = zext i8 %479 to i32, !dbg !2238
  %481 = shl nuw i32 1, %480, !dbg !2239
  %482 = and i32 %478, %481, !dbg !2239
  %483 = icmp eq i32 %482, 0, !dbg !2239
  %484 = icmp eq i8 %156, 0, !dbg !2240
  %485 = and i1 %484, %483, !dbg !2241
  br i1 %485, label %526, label %488, !dbg !2241

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2240
  br i1 %487, label %526, label %488, !dbg !2242

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2243
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1862
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1879
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2234
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1883
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1884
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1954
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1954
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %496, metadata !1831, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %495, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %494, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %493, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %492, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %491, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %490, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %489, metadata !1813, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1859), !dbg !2244
  br i1 %109, label %498, label %629, !dbg !2245

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1954
  %499 = and i8 %493, 1, !dbg !2247
  %500 = icmp eq i8 %499, 0, !dbg !2247
  %501 = and i1 %110, %500, !dbg !2247
  br i1 %501, label %502, label %518, !dbg !2247

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2249
  br i1 %503, label %504, label %506, !dbg !2253

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2249
  store i8 39, i8* %505, align 1, !dbg !2249, !tbaa !1318
  br label %506, !dbg !2249

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %507, metadata !1814, metadata !DIExpression()), !dbg !1862
  %508 = icmp ult i64 %507, %497, !dbg !2254
  br i1 %508, label %509, label %511, !dbg !2257

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2254
  store i8 36, i8* %510, align 1, !dbg !2254, !tbaa !1318
  br label %511, !dbg !2254

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2257
  call void @llvm.dbg.value(metadata i64 %512, metadata !1814, metadata !DIExpression()), !dbg !1862
  %513 = icmp ult i64 %512, %497, !dbg !2258
  br i1 %513, label %514, label %516, !dbg !2261

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2258
  store i8 39, i8* %515, align 1, !dbg !2258, !tbaa !1318
  br label %516, !dbg !2258

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %517, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %518, !dbg !2262

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1954
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %520, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %519, metadata !1814, metadata !DIExpression()), !dbg !1862
  %521 = icmp ult i64 %519, %497, !dbg !2263
  br i1 %521, label %522, label %524, !dbg !2266

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2263
  store i8 92, i8* %523, align 1, !dbg !2263, !tbaa !1318
  br label %524, !dbg !2263

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %525, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %535, metadata !1831, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %534, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %533, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %532, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %531, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %530, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %529, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %528, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %527, metadata !1813, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1860), !dbg !2267
  br label %553, !dbg !2268

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2243
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1862
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1879
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2234
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1883
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1884
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2271
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1954
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1954
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %535, metadata !1831, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %534, metadata !1830, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %533, metadata !1824, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 %532, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %531, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %530, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %529, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %528, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %527, metadata !1813, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1860), !dbg !2267
  %537 = and i8 %531, 1, !dbg !2268
  %538 = icmp ne i8 %537, 0, !dbg !2268
  %539 = and i8 %534, 1, !dbg !2268
  %540 = icmp eq i8 %539, 0, !dbg !2268
  %541 = and i1 %538, %540, !dbg !2268
  br i1 %541, label %542, label %553, !dbg !2268

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2272
  br i1 %543, label %544, label %546, !dbg !2276

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2272
  store i8 39, i8* %545, align 1, !dbg !2272, !tbaa !1318
  br label %546, !dbg !2272

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %547, metadata !1814, metadata !DIExpression()), !dbg !1862
  %548 = icmp ult i64 %547, %536, !dbg !2277
  br i1 %548, label %549, label %551, !dbg !2280

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2277
  store i8 39, i8* %550, align 1, !dbg !2277, !tbaa !1318
  br label %551, !dbg !2277

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %552, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1862
  br label %553, !dbg !2281

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1954
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1862
  call void @llvm.dbg.value(metadata i8 %562, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %561, metadata !1814, metadata !DIExpression()), !dbg !1862
  %563 = icmp ult i64 %561, %554, !dbg !2282
  br i1 %563, label %564, label %566, !dbg !2285

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2282
  store i8 %556, i8* %565, align 1, !dbg !2282, !tbaa !1318
  br label %566, !dbg !2282

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %567, metadata !1814, metadata !DIExpression()), !dbg !1862
  %568 = and i8 %555, 1, !dbg !2286
  %569 = icmp eq i8 %568, 0, !dbg !2286
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2288
  call void @llvm.dbg.value(metadata i8 %570, metadata !1823, metadata !DIExpression()), !dbg !1862
  br label %571, !dbg !2289

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2243
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1862
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1879
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2234
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1883
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1862
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1885
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %578, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %577, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %576, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %575, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %574, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %573, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %572, metadata !1813, metadata !DIExpression()), !dbg !1862
  %580 = add i64 %572, 1, !dbg !2290
  call void @llvm.dbg.value(metadata i64 %580, metadata !1813, metadata !DIExpression()), !dbg !1862
  br label %122, !dbg !2291, !llvm.loop !2292

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %127, metadata !1821, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 %129, metadata !1823, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  %583 = icmp eq i64 %124, 0, !dbg !2294
  %584 = and i1 %110, %583, !dbg !2296
  %585 = xor i1 %584, true, !dbg !2296
  %586 = or i1 %109, %585, !dbg !2296
  br i1 %586, label %587, label %629, !dbg !2296

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2297
  %589 = xor i1 %588, true, !dbg !2297
  %590 = and i8 %128, 1, !dbg !2299
  %591 = icmp eq i8 %590, 0, !dbg !2299
  %592 = or i1 %591, %589, !dbg !2297
  br i1 %592, label %602, label %593, !dbg !2297

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2300
  %595 = icmp eq i8 %594, 0, !dbg !2300
  br i1 %595, label %598, label %596, !dbg !2303

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %94, metadata !1811, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %95, metadata !1812, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %125, metadata !1815, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %582, metadata !1807, metadata !DIExpression()), !dbg !1862
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2304
  br label %645, !dbg !2305

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2306
  %600 = icmp ne i64 %125, 0, !dbg !2308
  %601 = and i1 %600, %599, !dbg !2309
  br i1 %601, label %26, label %602, !dbg !2309

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %130, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  %603 = icmp ne i8* %97, null, !dbg !2310
  %604 = and i1 %603, %109, !dbg !2312
  br i1 %604, label %605, label %620, !dbg !2312

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %124, metadata !1814, metadata !DIExpression()), !dbg !1862
  %606 = load i8, i8* %97, align 1, !dbg !2313, !tbaa !1318
  %607 = icmp eq i8 %606, 0, !dbg !2316
  br i1 %607, label %620, label %608, !dbg !2316

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1816, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %611, metadata !1814, metadata !DIExpression()), !dbg !1862
  %612 = icmp ult i64 %611, %130, !dbg !2317
  br i1 %612, label %613, label %615, !dbg !2320

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2317
  store i8 %609, i8* %614, align 1, !dbg !2317, !tbaa !1318
  br label %615, !dbg !2317

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %616, metadata !1814, metadata !DIExpression()), !dbg !1862
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2321
  call void @llvm.dbg.value(metadata i8* %617, metadata !1816, metadata !DIExpression()), !dbg !1862
  %618 = load i8, i8* %617, align 1, !dbg !2313, !tbaa !1318
  %619 = icmp eq i8 %618, 0, !dbg !2316
  br i1 %619, label %620, label %608, !dbg !2316, !llvm.loop !2322

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1916
  call void @llvm.dbg.value(metadata i64 %621, metadata !1814, metadata !DIExpression()), !dbg !1862
  %622 = icmp ult i64 %621, %130, !dbg !2324
  br i1 %622, label %623, label %645, !dbg !2326

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2327
  store i8 0, i8* %624, align 1, !dbg !2328, !tbaa !1318
  br label %645, !dbg !2327

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %630, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1861), !dbg !2329
  %627 = icmp eq i8 %101, 0, !dbg !2330
  %628 = select i1 %627, i32 2, i32 4, !dbg !2330
  br label %635, !dbg !2330

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1805, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %630, metadata !1807, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.label(metadata !1861), !dbg !2329
  %632 = icmp eq i32 %93, 2, !dbg !2332
  %633 = icmp eq i8 %101, 0, !dbg !2330
  %634 = select i1 %633, i32 2, i32 4, !dbg !2330
  br i1 %632, label %635, label %639, !dbg !2330

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2330

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1808, metadata !DIExpression()), !dbg !1862
  %643 = and i32 %5, -3, !dbg !2333
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2334
  br label %645, !dbg !2335

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2336
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2337 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2342, metadata !DIExpression()), !dbg !2345
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %3, metadata !2343, metadata !DIExpression()), !dbg !2345
  %4 = icmp eq i8* %3, %0, !dbg !2347
  br i1 %4, label %5, label %71, !dbg !2349

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %6, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %6, metadata !2351, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* undef, metadata !2357, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 85, metadata !2358, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 84, metadata !2359, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 70, metadata !2360, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 45, metadata !2361, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 56, metadata !2362, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8 0, metadata !2366, metadata !DIExpression()), !dbg !2367
  %7 = load i8, i8* %6, align 1, !dbg !2370, !tbaa !1318
  %8 = and i8 %7, -33, !dbg !2370
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2370

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2372, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8* undef, metadata !2377, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 84, metadata !2378, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 70, metadata !2379, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 45, metadata !2380, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 56, metadata !2381, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2384, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2385, metadata !DIExpression()), !dbg !2386
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2390
  %11 = load i8, i8* %10, align 1, !dbg !2390, !tbaa !1318
  %12 = and i8 %11, -33, !dbg !2390
  %13 = icmp eq i8 %12, 84, !dbg !2390
  br i1 %13, label %14, label %68, !dbg !2390

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2392, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8* undef, metadata !2397, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 70, metadata !2398, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 45, metadata !2399, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 56, metadata !2400, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2405
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2409
  %16 = load i8, i8* %15, align 1, !dbg !2409, !tbaa !1318
  %17 = and i8 %16, -33, !dbg !2409
  %18 = icmp eq i8 %17, 70, !dbg !2409
  br i1 %18, label %19, label %68, !dbg !2409

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2411, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8* undef, metadata !2416, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 45, metadata !2417, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 56, metadata !2418, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8 0, metadata !2422, metadata !DIExpression()), !dbg !2423
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2427
  %21 = load i8, i8* %20, align 1, !dbg !2427, !tbaa !1318
  %22 = icmp eq i8 %21, 45, !dbg !2427
  br i1 %22, label %23, label %68, !dbg !2429

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2430, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* undef, metadata !2435, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 56, metadata !2436, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2441
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2445
  %25 = load i8, i8* %24, align 1, !dbg !2445, !tbaa !1318
  %26 = icmp eq i8 %25, 56, !dbg !2445
  br i1 %26, label %27, label %68, !dbg !2447

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8* undef, metadata !2453, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2454, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2458
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2462
  %29 = load i8, i8* %28, align 1, !dbg !2462, !tbaa !1318
  %30 = icmp eq i8 %29, 0, !dbg !2462
  br i1 %30, label %31, label %68, !dbg !2464

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2465, !tbaa !1318
  %33 = icmp eq i8 %32, 96, !dbg !2466
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2465
  br label %71, !dbg !2467

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2372, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* undef, metadata !2377, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 66, metadata !2378, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 49, metadata !2379, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 56, metadata !2380, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 48, metadata !2381, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 51, metadata !2382, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 48, metadata !2383, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2384, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2385, metadata !DIExpression()), !dbg !2468
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2472
  %37 = load i8, i8* %36, align 1, !dbg !2472, !tbaa !1318
  %38 = and i8 %37, -33, !dbg !2472
  %39 = icmp eq i8 %38, 66, !dbg !2472
  br i1 %39, label %40, label %68, !dbg !2472

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2392, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* undef, metadata !2397, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 49, metadata !2398, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 56, metadata !2399, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 48, metadata !2400, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 51, metadata !2401, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 48, metadata !2402, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2473
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2475
  %42 = load i8, i8* %41, align 1, !dbg !2475, !tbaa !1318
  %43 = icmp eq i8 %42, 49, !dbg !2475
  br i1 %43, label %44, label %68, !dbg !2476

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2411, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* undef, metadata !2416, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 56, metadata !2417, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 48, metadata !2418, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 51, metadata !2419, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 48, metadata !2420, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 0, metadata !2421, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 0, metadata !2422, metadata !DIExpression()), !dbg !2477
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2479
  %46 = load i8, i8* %45, align 1, !dbg !2479, !tbaa !1318
  %47 = icmp eq i8 %46, 56, !dbg !2479
  br i1 %47, label %48, label %68, !dbg !2480

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2430, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8* undef, metadata !2435, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 48, metadata !2436, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 51, metadata !2437, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 48, metadata !2438, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2439, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 0, metadata !2440, metadata !DIExpression()), !dbg !2481
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2483
  %50 = load i8, i8* %49, align 1, !dbg !2483, !tbaa !1318
  %51 = icmp eq i8 %50, 48, !dbg !2483
  br i1 %51, label %52, label %68, !dbg !2484

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* undef, metadata !2453, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 51, metadata !2454, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 48, metadata !2455, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2485
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2487
  %54 = load i8, i8* %53, align 1, !dbg !2487, !tbaa !1318
  %55 = icmp eq i8 %54, 51, !dbg !2487
  br i1 %55, label %56, label %68, !dbg !2488

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2489, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* undef, metadata !2494, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 48, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2497, metadata !DIExpression()), !dbg !2498
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2502
  %58 = load i8, i8* %57, align 1, !dbg !2502, !tbaa !1318
  %59 = icmp eq i8 %58, 48, !dbg !2502
  br i1 %59, label %60, label %68, !dbg !2504

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2505, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* undef, metadata !2510, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2512, metadata !DIExpression()), !dbg !2513
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2517
  %62 = load i8, i8* %61, align 1, !dbg !2517, !tbaa !1318
  %63 = icmp eq i8 %62, 0, !dbg !2517
  br i1 %63, label %64, label %68, !dbg !2519

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2520, !tbaa !1318
  %66 = icmp eq i8 %65, 96, !dbg !2521
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2520
  br label %71, !dbg !2522

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2523
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2524
  br label %71, !dbg !2525

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2345
  ret i8* %72, !dbg !2526
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !402 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !406 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata i64* null, metadata !2541, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2542, metadata !DIExpression()) #18, !dbg !2548
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2550
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2543, metadata !DIExpression()) #18, !dbg !2548
  %6 = tail call i32* @__errno_location() #24, !dbg !2551
  %7 = load i32, i32* %6, align 4, !dbg !2551, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %7, metadata !2544, metadata !DIExpression()) #18, !dbg !2548
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2552
  %9 = load i32, i32* %8, align 4, !dbg !2552, !tbaa !1747
  %10 = or i32 %9, 1, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %10, metadata !2545, metadata !DIExpression()) #18, !dbg !2548
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2554
  %12 = load i32, i32* %11, align 8, !dbg !2554, !tbaa !1696
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2555
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2556
  %15 = load i8*, i8** %14, align 8, !dbg !2556, !tbaa !1770
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2557
  %17 = load i8*, i8** %16, align 8, !dbg !2557, !tbaa !1773
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2558
  %19 = add i64 %18, 1, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %19, metadata !2546, metadata !DIExpression()) #18, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %19, metadata !2560, metadata !DIExpression()) #18, !dbg !2565
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %20, metadata !2547, metadata !DIExpression()) #18, !dbg !2548
  %21 = load i32, i32* %11, align 8, !dbg !2568, !tbaa !1696
  %22 = load i8*, i8** %14, align 8, !dbg !2569, !tbaa !1770
  %23 = load i8*, i8** %16, align 8, !dbg !2570, !tbaa !1773
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2571
  store i32 %7, i32* %6, align 4, !dbg !2572, !tbaa !1331
  ret i8* %20, !dbg !2573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2536 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2535, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %1, metadata !2540, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64* %2, metadata !2541, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2542, metadata !DIExpression()), !dbg !2574
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2575
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2543, metadata !DIExpression()), !dbg !2574
  %7 = tail call i32* @__errno_location() #24, !dbg !2576
  %8 = load i32, i32* %7, align 4, !dbg !2576, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %8, metadata !2544, metadata !DIExpression()), !dbg !2574
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2577
  %10 = load i32, i32* %9, align 4, !dbg !2577, !tbaa !1747
  %11 = icmp ne i64* %2, null, !dbg !2578
  %12 = xor i1 %11, true, !dbg !2578
  %13 = zext i1 %12 to i32, !dbg !2578
  %14 = or i32 %10, %13, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %14, metadata !2545, metadata !DIExpression()), !dbg !2574
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2580
  %16 = load i32, i32* %15, align 8, !dbg !2580, !tbaa !1696
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2581
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2582
  %19 = load i8*, i8** %18, align 8, !dbg !2582, !tbaa !1770
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2583
  %21 = load i8*, i8** %20, align 8, !dbg !2583, !tbaa !1773
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2584
  %23 = add i64 %22, 1, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %23, metadata !2546, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %23, metadata !2560, metadata !DIExpression()) #18, !dbg !2586
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %24, metadata !2547, metadata !DIExpression()), !dbg !2574
  %25 = load i32, i32* %15, align 8, !dbg !2589, !tbaa !1696
  %26 = load i8*, i8** %18, align 8, !dbg !2590, !tbaa !1770
  %27 = load i8*, i8** %20, align 8, !dbg !2591, !tbaa !1773
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2592
  store i32 %8, i32* %7, align 4, !dbg !2593, !tbaa !1331
  br i1 %11, label %29, label %30, !dbg !2594

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2595, !tbaa !1400
  br label %30, !dbg !2597

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2599 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2603, !tbaa !1225
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 1, metadata !2602, metadata !DIExpression()), !dbg !2604
  %2 = load i32, i32* @nslots, align 4, !dbg !2605, !tbaa !1331
  %3 = icmp sgt i32 %2, 1, !dbg !2608
  br i1 %3, label %4, label %12, !dbg !2609

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2602, metadata !DIExpression()), !dbg !2604
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2610
  %7 = load i8*, i8** %6, align 8, !dbg !2610, !tbaa !2611
  tail call void @free(i8* %7) #18, !dbg !2613
  %8 = add nuw nsw i64 %5, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %8, metadata !2602, metadata !DIExpression()), !dbg !2604
  %9 = load i32, i32* @nslots, align 4, !dbg !2605, !tbaa !1331
  %10 = sext i32 %9 to i64, !dbg !2608
  %11 = icmp slt i64 %8, %10, !dbg !2608
  br i1 %11, label %4, label %12, !dbg !2609, !llvm.loop !2615

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2617
  %14 = load i8*, i8** %13, align 8, !dbg !2617, !tbaa !2611
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2619
  br i1 %15, label %17, label %16, !dbg !2620

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2621
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2623, !tbaa !2624
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2625, !tbaa !2611
  br label %17, !dbg !2626

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2627
  br i1 %18, label %21, label %19, !dbg !2629

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2630
  tail call void @free(i8* %20) #18, !dbg !2632
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2633, !tbaa !1225
  br label %21, !dbg !2634

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2635, !tbaa !1331
  ret void, !dbg !2636
}

; Function Attrs: nounwind
declare !dbg !379 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()), !dbg !2641
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2642
  ret i8* %3, !dbg !2643
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !2649, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %2, metadata !2650, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2651, metadata !DIExpression()), !dbg !2663
  %5 = tail call i32* @__errno_location() #24, !dbg !2664
  %6 = load i32, i32* %5, align 4, !dbg !2664, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %6, metadata !2652, metadata !DIExpression()), !dbg !2663
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2665, !tbaa !1225
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2653, metadata !DIExpression()), !dbg !2663
  %8 = icmp slt i32 %0, 0, !dbg !2666
  br i1 %8, label %9, label %10, !dbg !2668

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2669
  unreachable, !dbg !2669

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2670, !tbaa !1331
  %12 = icmp sgt i32 %11, %0, !dbg !2671
  br i1 %12, label %34, label %13, !dbg !2672

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2673
  call void @llvm.dbg.value(metadata i1 %14, metadata !2654, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2657, metadata !DIExpression()), !dbg !2674
  %15 = icmp eq i32 %0, 2147483647, !dbg !2675
  br i1 %15, label %16, label %17, !dbg !2677

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2678
  unreachable, !dbg !2678

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2679
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2679
  %20 = add nuw nsw i32 %0, 1, !dbg !2680
  %21 = sext i32 %20 to i64, !dbg !2681
  %22 = shl nuw nsw i64 %21, 4, !dbg !2682
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2683
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2653, metadata !DIExpression()), !dbg !2663
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2684, !tbaa !1225
  br i1 %14, label %25, label %26, !dbg !2685

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2686, !tbaa.struct !2688
  br label %26, !dbg !2689

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2690, !tbaa !1331
  %28 = sext i32 %27 to i64, !dbg !2691
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2691
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2692
  %31 = sub nsw i32 %20, %27, !dbg !2693
  %32 = sext i32 %31 to i64, !dbg !2694
  %33 = shl nsw i64 %32, 4, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %30, metadata !2094, metadata !DIExpression()) #18, !dbg !2696
  call void @llvm.dbg.value(metadata i32 0, metadata !2099, metadata !DIExpression()) #18, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %33, metadata !2100, metadata !DIExpression()) #18, !dbg !2696
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2698
  store i32 %20, i32* @nslots, align 4, !dbg !2699, !tbaa !1331
  br label %34, !dbg !2700

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2663
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2653, metadata !DIExpression()), !dbg !2663
  %36 = zext i32 %0 to i64, !dbg !2701
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2702
  %38 = load i64, i64* %37, align 8, !dbg !2702, !tbaa !2624
  call void @llvm.dbg.value(metadata i64 %38, metadata !2658, metadata !DIExpression()), !dbg !2703
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2704
  %40 = load i8*, i8** %39, align 8, !dbg !2704, !tbaa !2611
  call void @llvm.dbg.value(metadata i8* %40, metadata !2660, metadata !DIExpression()), !dbg !2703
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2705
  %42 = load i32, i32* %41, align 4, !dbg !2705, !tbaa !1747
  %43 = or i32 %42, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %43, metadata !2661, metadata !DIExpression()), !dbg !2703
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2707
  %45 = load i32, i32* %44, align 8, !dbg !2707, !tbaa !1696
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2708
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2709
  %48 = load i8*, i8** %47, align 8, !dbg !2709, !tbaa !1770
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2710
  %50 = load i8*, i8** %49, align 8, !dbg !2710, !tbaa !1773
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %51, metadata !2662, metadata !DIExpression()), !dbg !2703
  %52 = icmp ugt i64 %38, %51, !dbg !2712
  br i1 %52, label %63, label %53, !dbg !2714

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i64 %54, metadata !2658, metadata !DIExpression()), !dbg !2703
  store i64 %54, i64* %37, align 8, !dbg !2717, !tbaa !2624
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2718
  br i1 %55, label %57, label %56, !dbg !2720

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2721
  br label %57, !dbg !2721

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2560, metadata !DIExpression()) #18, !dbg !2722
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2724
  call void @llvm.dbg.value(metadata i8* %58, metadata !2660, metadata !DIExpression()), !dbg !2703
  store i8* %58, i8** %39, align 8, !dbg !2725, !tbaa !2611
  %59 = load i32, i32* %44, align 8, !dbg !2726, !tbaa !1696
  %60 = load i8*, i8** %47, align 8, !dbg !2727, !tbaa !1770
  %61 = load i8*, i8** %49, align 8, !dbg !2728, !tbaa !1773
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2729
  br label %63, !dbg !2730

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2703
  call void @llvm.dbg.value(metadata i8* %64, metadata !2660, metadata !DIExpression()), !dbg !2703
  store i32 %6, i32* %5, align 4, !dbg !2731, !tbaa !1331
  ret i8* %64, !dbg !2732
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !2738, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %2, metadata !2739, metadata !DIExpression()), !dbg !2740
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2741
  ret i8* %4, !dbg !2742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.dbg.value(metadata i8* %0, metadata !2640, metadata !DIExpression()) #18, !dbg !2747
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2749
  ret i8* %2, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 %1, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()) #18, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %0, metadata !2738, metadata !DIExpression()) #18, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()) #18, !dbg !2758
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2760
  ret i8* %3, !dbg !2761
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2762 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %1, metadata !2765, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %2, metadata !2766, metadata !DIExpression()), !dbg !2768
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2769
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2769
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2767, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %1, metadata !2771, metadata !DIExpression()) #18, !dbg !2777
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2776, metadata !DIExpression()) #18, !dbg !2779
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2779, !alias.scope !2780
  %6 = icmp eq i32 %1, 10, !dbg !2783
  br i1 %6, label %7, label %8, !dbg !2785

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2786, !noalias !2780
  unreachable, !dbg !2786

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2787
  store i32 %1, i32* %9, align 8, !dbg !2788, !tbaa !1696, !alias.scope !2780
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2789
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2790
  ret i8* %10, !dbg !2791
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2792 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %1, metadata !2797, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %2, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %3, metadata !2799, metadata !DIExpression()), !dbg !2801
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2802
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2802
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2800, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 %1, metadata !2771, metadata !DIExpression()) #18, !dbg !2804
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2776, metadata !DIExpression()) #18, !dbg !2806
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2806, !alias.scope !2807
  %7 = icmp eq i32 %1, 10, !dbg !2810
  br i1 %7, label %8, label %9, !dbg !2811

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2812, !noalias !2807
  unreachable, !dbg !2812

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2813
  store i32 %1, i32* %10, align 8, !dbg !2814, !tbaa !1696, !alias.scope !2807
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2815
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2816
  ret i8* %11, !dbg !2817
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2818 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2776, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2767, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %0, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i8* %1, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()) #18, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()) #18, !dbg !2829
  call void @llvm.dbg.value(metadata i8* %1, metadata !2766, metadata !DIExpression()) #18, !dbg !2829
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2830
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()) #18, !dbg !2831
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2824, !alias.scope !2832
  %5 = icmp eq i32 %0, 10, !dbg !2835
  br i1 %5, label %6, label %7, !dbg !2836

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2837, !noalias !2832
  unreachable, !dbg !2837

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2838
  store i32 %0, i32* %8, align 8, !dbg !2839, !tbaa !1696, !alias.scope !2832
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2840
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2841
  ret i8* %9, !dbg !2842
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2843 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2776, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2800, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2848, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %2, metadata !2849, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %0, metadata !2797, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %1, metadata !2798, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %2, metadata !2799, metadata !DIExpression()) #18, !dbg !2855
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()) #18, !dbg !2857
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2850, !alias.scope !2858
  %6 = icmp eq i32 %0, 10, !dbg !2861
  br i1 %6, label %7, label %8, !dbg !2862

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2863, !noalias !2858
  unreachable, !dbg !2863

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2864
  store i32 %0, i32* %9, align 8, !dbg !2865, !tbaa !1696, !alias.scope !2858
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2866
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2867
  ret i8* %10, !dbg !2868
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2869 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8 %2, metadata !2875, metadata !DIExpression()), !dbg !2877
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2878
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2880, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8 %2, metadata !1715, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8 %2, metadata !1717, metadata !DIExpression()), !dbg !2882
  %6 = lshr i8 %2, 5, !dbg !2884
  %7 = zext i8 %6 to i64, !dbg !2884
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2885
  call void @llvm.dbg.value(metadata i32* %8, metadata !1718, metadata !DIExpression()), !dbg !2882
  %9 = and i8 %2, 31, !dbg !2886
  %10 = zext i8 %9 to i32, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %10, metadata !1720, metadata !DIExpression()), !dbg !2882
  %11 = load i32, i32* %8, align 4, !dbg !2887, !tbaa !1331
  %12 = lshr i32 %11, %10, !dbg !2888
  %13 = and i32 %12, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %13, metadata !1721, metadata !DIExpression()), !dbg !2882
  %14 = xor i32 %13, 1, !dbg !2890
  %15 = shl i32 %14, %10, !dbg !2891
  %16 = xor i32 %15, %11, !dbg !2892
  store i32 %16, i32* %8, align 4, !dbg !2892, !tbaa !1331
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2894
  ret i8* %17, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2896 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2876, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8 %1, metadata !2901, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #18, !dbg !2905
  call void @llvm.dbg.value(metadata i64 -1, metadata !2874, metadata !DIExpression()) #18, !dbg !2905
  call void @llvm.dbg.value(metadata i8 %1, metadata !2875, metadata !DIExpression()) #18, !dbg !2905
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2906
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2907, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1714, metadata !DIExpression()) #18, !dbg !2908
  call void @llvm.dbg.value(metadata i8 %1, metadata !1715, metadata !DIExpression()) #18, !dbg !2908
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #18, !dbg !2908
  call void @llvm.dbg.value(metadata i8 %1, metadata !1717, metadata !DIExpression()) #18, !dbg !2908
  %5 = lshr i8 %1, 5, !dbg !2910
  %6 = zext i8 %5 to i64, !dbg !2910
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2911
  call void @llvm.dbg.value(metadata i32* %7, metadata !1718, metadata !DIExpression()) #18, !dbg !2908
  %8 = and i8 %1, 31, !dbg !2912
  %9 = zext i8 %8 to i32, !dbg !2912
  call void @llvm.dbg.value(metadata i32 %9, metadata !1720, metadata !DIExpression()) #18, !dbg !2908
  %10 = load i32, i32* %7, align 4, !dbg !2913, !tbaa !1331
  %11 = lshr i32 %10, %9, !dbg !2914
  %12 = and i32 %11, 1, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %12, metadata !1721, metadata !DIExpression()) #18, !dbg !2908
  %13 = xor i32 %12, 1, !dbg !2916
  %14 = shl i32 %13, %9, !dbg !2917
  %15 = xor i32 %14, %10, !dbg !2918
  store i32 %15, i32* %7, align 4, !dbg !2918, !tbaa !1331
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2920
  ret i8* %16, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2922 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2876, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()) #18, !dbg !2929
  call void @llvm.dbg.value(metadata i8 58, metadata !2901, metadata !DIExpression()) #18, !dbg !2929
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #18, !dbg !2930
  call void @llvm.dbg.value(metadata i64 -1, metadata !2874, metadata !DIExpression()) #18, !dbg !2930
  call void @llvm.dbg.value(metadata i8 58, metadata !2875, metadata !DIExpression()) #18, !dbg !2930
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2931
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2932, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1714, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()) #18, !dbg !2933
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2935
  call void @llvm.dbg.value(metadata i32* %4, metadata !1718, metadata !DIExpression()) #18, !dbg !2933
  call void @llvm.dbg.value(metadata i32 26, metadata !1720, metadata !DIExpression()) #18, !dbg !2933
  %5 = load i32, i32* %4, align 4, !dbg !2936, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %5, metadata !1721, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2933
  %6 = or i32 %5, 67108864, !dbg !2937
  store i32 %6, i32* %4, align 4, !dbg !2937, !tbaa !1331
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2938
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2939
  ret i8* %7, !dbg !2940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2941 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2876, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2873, metadata !DIExpression()) #18, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2874, metadata !DIExpression()) #18, !dbg !2948
  call void @llvm.dbg.value(metadata i8 58, metadata !2875, metadata !DIExpression()) #18, !dbg !2948
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2949
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2950, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1714, metadata !DIExpression()) #18, !dbg !2951
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()) #18, !dbg !2951
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()) #18, !dbg !2951
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()) #18, !dbg !2951
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2953
  call void @llvm.dbg.value(metadata i32* %5, metadata !1718, metadata !DIExpression()) #18, !dbg !2951
  call void @llvm.dbg.value(metadata i32 26, metadata !1720, metadata !DIExpression()) #18, !dbg !2951
  %6 = load i32, i32* %5, align 4, !dbg !2954, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %6, metadata !1721, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2951
  %7 = or i32 %6, 67108864, !dbg !2955
  store i32 %7, i32* %5, align 4, !dbg !2955, !tbaa !1331
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2956
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2957
  ret i8* %8, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2959 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2776, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2965
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2962, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i8* %2, metadata !2963, metadata !DIExpression()), !dbg !2967
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2968
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2964, metadata !DIExpression()), !dbg !2969
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2970
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2970
  call void @llvm.dbg.value(metadata i32 %1, metadata !2771, metadata !DIExpression()) #18, !dbg !2971
  call void @llvm.dbg.value(metadata i32 0, metadata !2776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2971
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2965, !alias.scope !2972
  %8 = icmp eq i32 %1, 10, !dbg !2975
  br i1 %8, label %9, label %10, !dbg !2976

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2977, !noalias !2972
  unreachable, !dbg !2977

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2776, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2971
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2970
  store i32 %1, i32* %11, align 8, !dbg !2970, !tbaa.struct !2881
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2970
  %13 = bitcast i32* %12 to i8*, !dbg !2970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2970, !tbaa.struct !2881
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2970
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1714, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 58, metadata !1715, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 1, metadata !1716, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i8 58, metadata !1717, metadata !DIExpression()), !dbg !2978
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2980
  call void @llvm.dbg.value(metadata i32* %14, metadata !1718, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 26, metadata !1720, metadata !DIExpression()), !dbg !2978
  %15 = load i32, i32* %14, align 4, !dbg !2981, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %15, metadata !1721, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2978
  %16 = or i32 %15, 67108864, !dbg !2982
  store i32 %16, i32* %14, align 4, !dbg !2982, !tbaa !1331
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2983
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2984
  ret i8* %17, !dbg !2985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2986 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2994, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %0, metadata !2990, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %1, metadata !2991, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %2, metadata !2992, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i8* %3, metadata !2993, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()) #18, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()) #18, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %2, metadata !3001, metadata !DIExpression()) #18, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %3, metadata !3002, metadata !DIExpression()) #18, !dbg !3007
  call void @llvm.dbg.value(metadata i64 -1, metadata !3003, metadata !DIExpression()) #18, !dbg !3007
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3009, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1754, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %1, metadata !1755, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %2, metadata !1756, metadata !DIExpression()) #18, !dbg !3010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1754, metadata !DIExpression()) #18, !dbg !3010
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3012
  store i32 10, i32* %7, align 8, !dbg !3013, !tbaa !1696
  %8 = icmp ne i8* %1, null, !dbg !3014
  %9 = icmp ne i8* %2, null, !dbg !3015
  %10 = and i1 %8, %9, !dbg !3016
  br i1 %10, label %12, label %11, !dbg !3016

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3017
  unreachable, !dbg !3017

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3018
  store i8* %1, i8** %13, align 8, !dbg !3019, !tbaa !1770
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3020
  store i8* %2, i8** %14, align 8, !dbg !3021, !tbaa !1773
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3022
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3023
  ret i8* %15, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2995 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %1, metadata !3000, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %2, metadata !3001, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i8* %3, metadata !3002, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %4, metadata !3003, metadata !DIExpression()), !dbg !3025
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3026
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3026
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2994, metadata !DIExpression()), !dbg !3027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3028, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1754, metadata !DIExpression()) #18, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %1, metadata !1755, metadata !DIExpression()) #18, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %2, metadata !1756, metadata !DIExpression()) #18, !dbg !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1754, metadata !DIExpression()) #18, !dbg !3029
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3031
  store i32 10, i32* %8, align 8, !dbg !3032, !tbaa !1696
  %9 = icmp ne i8* %1, null, !dbg !3033
  %10 = icmp ne i8* %2, null, !dbg !3034
  %11 = and i1 %9, %10, !dbg !3035
  br i1 %11, label %13, label %12, !dbg !3035

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3036
  unreachable, !dbg !3036

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3037
  store i8* %1, i8** %14, align 8, !dbg !3038, !tbaa !1770
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3039
  store i8* %2, i8** %15, align 8, !dbg !3040, !tbaa !1773
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3041
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3042
  ret i8* %16, !dbg !3043
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3044 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2994, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !3048, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %1, metadata !3049, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %2, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 0, metadata !2990, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()) #18, !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #18, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()) #18, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %1, metadata !3001, metadata !DIExpression()) #18, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %2, metadata !3002, metadata !DIExpression()) #18, !dbg !3056
  call void @llvm.dbg.value(metadata i64 -1, metadata !3003, metadata !DIExpression()) #18, !dbg !3056
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3057
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3057
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3058, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1754, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !1755, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1754, metadata !DIExpression()) #18, !dbg !3059
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3061
  store i32 10, i32* %6, align 8, !dbg !3062, !tbaa !1696
  %7 = icmp ne i8* %0, null, !dbg !3063
  %8 = icmp ne i8* %1, null, !dbg !3064
  %9 = and i1 %7, %8, !dbg !3065
  br i1 %9, label %11, label %10, !dbg !3065

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3066
  unreachable, !dbg !3066

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3067
  store i8* %0, i8** %12, align 8, !dbg !3068, !tbaa !1770
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3069
  store i8* %1, i8** %13, align 8, !dbg !3070, !tbaa !1773
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3071
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3072
  ret i8* %14, !dbg !3073
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3074 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2994, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %0, metadata !3078, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3079, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %3, metadata !3081, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()) #18, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %0, metadata !3000, metadata !DIExpression()) #18, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %1, metadata !3001, metadata !DIExpression()) #18, !dbg !3085
  call void @llvm.dbg.value(metadata i8* %2, metadata !3002, metadata !DIExpression()) #18, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %3, metadata !3003, metadata !DIExpression()) #18, !dbg !3085
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3087, !tbaa.struct !2881
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1754, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !1755, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !1756, metadata !DIExpression()) #18, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1754, metadata !DIExpression()) #18, !dbg !3088
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3090
  store i32 10, i32* %7, align 8, !dbg !3091, !tbaa !1696
  %8 = icmp ne i8* %0, null, !dbg !3092
  %9 = icmp ne i8* %1, null, !dbg !3093
  %10 = and i1 %8, %9, !dbg !3094
  br i1 %10, label %12, label %11, !dbg !3094

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3095
  unreachable, !dbg !3095

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3096
  store i8* %0, i8** %13, align 8, !dbg !3097, !tbaa !1770
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3098
  store i8* %1, i8** %14, align 8, !dbg !3099, !tbaa !1773
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3100
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3101
  ret i8* %15, !dbg !3102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %2, metadata !3109, metadata !DIExpression()), !dbg !3110
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3111
  ret i8* %4, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3107, metadata !DIExpression()) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()) #18, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()) #18, !dbg !3120
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3122
  ret i8* %3, !dbg !3123
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8* %1, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()) #18, !dbg !3131
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()) #18, !dbg !3131
  call void @llvm.dbg.value(metadata i64 -1, metadata !3109, metadata !DIExpression()) #18, !dbg !3131
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3133
  ret i8* %3, !dbg !3134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 0, metadata !3128, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i32 0, metadata !3107, metadata !DIExpression()) #18, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %0, metadata !3108, metadata !DIExpression()) #18, !dbg !3141
  call void @llvm.dbg.value(metadata i64 -1, metadata !3109, metadata !DIExpression()) #18, !dbg !3141
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3143
  ret i8* %2, !dbg !3144
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3152, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %1, metadata !3153, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %2, metadata !3154, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %3, metadata !3155, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8** %4, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %5, metadata !3157, metadata !DIExpression()), !dbg !3158
  %7 = icmp eq i8* %1, null, !dbg !3159
  br i1 %7, label %10, label %8, !dbg !3161

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3162
  br label %12, !dbg !3162

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3163
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #18, !dbg !3164
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3164
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3165
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #18, !dbg !3166
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #18, !dbg !3166
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3167
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
  ], !dbg !3168

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #18, !dbg !3169
  %21 = load i8*, i8** %4, align 8, !dbg !3169, !tbaa !1225
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3169
  br label %147, !dbg !3171

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #18, !dbg !3172
  %25 = load i8*, i8** %4, align 8, !dbg !3172, !tbaa !1225
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3172
  %27 = load i8*, i8** %26, align 8, !dbg !3172, !tbaa !1225
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3172
  br label %147, !dbg !3173

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #18, !dbg !3174
  %31 = load i8*, i8** %4, align 8, !dbg !3174, !tbaa !1225
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3174
  %33 = load i8*, i8** %32, align 8, !dbg !3174, !tbaa !1225
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3174
  %35 = load i8*, i8** %34, align 8, !dbg !3174, !tbaa !1225
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3174
  br label %147, !dbg !3175

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #18, !dbg !3176
  %39 = load i8*, i8** %4, align 8, !dbg !3176, !tbaa !1225
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3176
  %41 = load i8*, i8** %40, align 8, !dbg !3176, !tbaa !1225
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3176
  %43 = load i8*, i8** %42, align 8, !dbg !3176, !tbaa !1225
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3176
  %45 = load i8*, i8** %44, align 8, !dbg !3176, !tbaa !1225
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3176
  br label %147, !dbg !3177

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #18, !dbg !3178
  %49 = load i8*, i8** %4, align 8, !dbg !3178, !tbaa !1225
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3178
  %51 = load i8*, i8** %50, align 8, !dbg !3178, !tbaa !1225
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3178
  %53 = load i8*, i8** %52, align 8, !dbg !3178, !tbaa !1225
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3178
  %55 = load i8*, i8** %54, align 8, !dbg !3178, !tbaa !1225
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3178
  %57 = load i8*, i8** %56, align 8, !dbg !3178, !tbaa !1225
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3178
  br label %147, !dbg !3179

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #18, !dbg !3180
  %61 = load i8*, i8** %4, align 8, !dbg !3180, !tbaa !1225
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3180
  %63 = load i8*, i8** %62, align 8, !dbg !3180, !tbaa !1225
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3180
  %65 = load i8*, i8** %64, align 8, !dbg !3180, !tbaa !1225
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3180
  %67 = load i8*, i8** %66, align 8, !dbg !3180, !tbaa !1225
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3180
  %69 = load i8*, i8** %68, align 8, !dbg !3180, !tbaa !1225
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3180
  %71 = load i8*, i8** %70, align 8, !dbg !3180, !tbaa !1225
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3180
  br label %147, !dbg !3181

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #18, !dbg !3182
  %75 = load i8*, i8** %4, align 8, !dbg !3182, !tbaa !1225
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3182
  %77 = load i8*, i8** %76, align 8, !dbg !3182, !tbaa !1225
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3182
  %79 = load i8*, i8** %78, align 8, !dbg !3182, !tbaa !1225
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3182
  %81 = load i8*, i8** %80, align 8, !dbg !3182, !tbaa !1225
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3182
  %83 = load i8*, i8** %82, align 8, !dbg !3182, !tbaa !1225
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3182
  %85 = load i8*, i8** %84, align 8, !dbg !3182, !tbaa !1225
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3182
  %87 = load i8*, i8** %86, align 8, !dbg !3182, !tbaa !1225
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3182
  br label %147, !dbg !3183

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #18, !dbg !3184
  %91 = load i8*, i8** %4, align 8, !dbg !3184, !tbaa !1225
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3184
  %93 = load i8*, i8** %92, align 8, !dbg !3184, !tbaa !1225
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3184
  %95 = load i8*, i8** %94, align 8, !dbg !3184, !tbaa !1225
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3184
  %97 = load i8*, i8** %96, align 8, !dbg !3184, !tbaa !1225
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3184
  %99 = load i8*, i8** %98, align 8, !dbg !3184, !tbaa !1225
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3184
  %101 = load i8*, i8** %100, align 8, !dbg !3184, !tbaa !1225
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3184
  %103 = load i8*, i8** %102, align 8, !dbg !3184, !tbaa !1225
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3184
  %105 = load i8*, i8** %104, align 8, !dbg !3184, !tbaa !1225
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3184
  br label %147, !dbg !3185

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #18, !dbg !3186
  %109 = load i8*, i8** %4, align 8, !dbg !3186, !tbaa !1225
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3186
  %111 = load i8*, i8** %110, align 8, !dbg !3186, !tbaa !1225
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3186
  %113 = load i8*, i8** %112, align 8, !dbg !3186, !tbaa !1225
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3186
  %115 = load i8*, i8** %114, align 8, !dbg !3186, !tbaa !1225
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3186
  %117 = load i8*, i8** %116, align 8, !dbg !3186, !tbaa !1225
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3186
  %119 = load i8*, i8** %118, align 8, !dbg !3186, !tbaa !1225
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3186
  %121 = load i8*, i8** %120, align 8, !dbg !3186, !tbaa !1225
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3186
  %123 = load i8*, i8** %122, align 8, !dbg !3186, !tbaa !1225
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3186
  %125 = load i8*, i8** %124, align 8, !dbg !3186, !tbaa !1225
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3186
  br label %147, !dbg !3187

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #18, !dbg !3188
  %129 = load i8*, i8** %4, align 8, !dbg !3188, !tbaa !1225
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3188
  %131 = load i8*, i8** %130, align 8, !dbg !3188, !tbaa !1225
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3188
  %133 = load i8*, i8** %132, align 8, !dbg !3188, !tbaa !1225
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3188
  %135 = load i8*, i8** %134, align 8, !dbg !3188, !tbaa !1225
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3188
  %137 = load i8*, i8** %136, align 8, !dbg !3188, !tbaa !1225
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3188
  %139 = load i8*, i8** %138, align 8, !dbg !3188, !tbaa !1225
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3188
  %141 = load i8*, i8** %140, align 8, !dbg !3188, !tbaa !1225
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3188
  %143 = load i8*, i8** %142, align 8, !dbg !3188, !tbaa !1225
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3188
  %145 = load i8*, i8** %144, align 8, !dbg !3188, !tbaa !1225
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3188
  br label %147, !dbg !3189

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3191 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3195, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8* %3, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8** %4, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3201
  br label %6, !dbg !3202

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3204
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3205
  %9 = load i8*, i8** %8, align 8, !dbg !3205, !tbaa !1225
  %10 = icmp eq i8* %9, null, !dbg !3207
  %11 = add i64 %7, 1, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %11, metadata !3200, metadata !DIExpression()), !dbg !3201
  br i1 %10, label %12, label %6, !dbg !3207, !llvm.loop !3209

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %7, metadata !3200, metadata !DIExpression()), !dbg !3201
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3211
  ret void, !dbg !3212
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3213 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3224, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %3, metadata !3227, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3228, metadata !DIExpression()), !dbg !3232
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3233
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3230, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 0, metadata !3229, metadata !DIExpression()), !dbg !3232
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3235
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3235
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3235
  %11 = load i32, i32* %8, align 8, !dbg !3238
  %12 = icmp ult i32 %11, 41, !dbg !3238
  br i1 %12, label %13, label %18, !dbg !3238

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3238
  %15 = zext i32 %11 to i64, !dbg !3238
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3238
  %17 = add nuw nsw i32 %11, 8, !dbg !3238
  store i32 %17, i32* %8, align 8, !dbg !3238
  br label %21, !dbg !3238

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3238
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3238
  store i8* %20, i8** %9, align 8, !dbg !3238
  br label %21, !dbg !3238

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3238
  %25 = load i8*, i8** %24, align 8, !dbg !3238
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3239
  store i8* %25, i8** %26, align 16, !dbg !3240, !tbaa !1225
  %27 = icmp eq i8* %25, null, !dbg !3241
  br i1 %27, label %30, label %28, !dbg !3242

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3229, metadata !DIExpression()), !dbg !3232
  %29 = icmp ult i32 %22, 41, !dbg !3238
  br i1 %29, label %35, label %32, !dbg !3238

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3243
  call void @llvm.dbg.value(metadata i64 %31, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %31, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3245
  ret void, !dbg !3245

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3238
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3238
  store i8* %34, i8** %9, align 8, !dbg !3238
  br label %40, !dbg !3238

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3238
  %37 = zext i32 %22 to i64, !dbg !3238
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3238
  %39 = add nuw nsw i32 %22, 8, !dbg !3238
  store i32 %39, i32* %8, align 8, !dbg !3238
  br label %40, !dbg !3238

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3238
  %44 = load i8*, i8** %43, align 8, !dbg !3238
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3239
  store i8* %44, i8** %45, align 8, !dbg !3240, !tbaa !1225
  %46 = icmp eq i8* %44, null, !dbg !3241
  br i1 %46, label %30, label %47, !dbg !3242

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3229, metadata !DIExpression()), !dbg !3232
  %48 = icmp ult i32 %41, 41, !dbg !3238
  br i1 %48, label %52, label %49, !dbg !3238

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3238
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3238
  store i8* %51, i8** %9, align 8, !dbg !3238
  br label %57, !dbg !3238

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3238
  %54 = zext i32 %41 to i64, !dbg !3238
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3238
  %56 = add nuw nsw i32 %41, 8, !dbg !3238
  store i32 %56, i32* %8, align 8, !dbg !3238
  br label %57, !dbg !3238

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3238
  %61 = load i8*, i8** %60, align 8, !dbg !3238
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3239
  store i8* %61, i8** %62, align 16, !dbg !3240, !tbaa !1225
  %63 = icmp eq i8* %61, null, !dbg !3241
  br i1 %63, label %30, label %64, !dbg !3242

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3229, metadata !DIExpression()), !dbg !3232
  %65 = icmp ult i32 %58, 41, !dbg !3238
  br i1 %65, label %69, label %66, !dbg !3238

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3238
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3238
  store i8* %68, i8** %9, align 8, !dbg !3238
  br label %74, !dbg !3238

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3238
  %71 = zext i32 %58 to i64, !dbg !3238
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3238
  %73 = add nuw nsw i32 %58, 8, !dbg !3238
  store i32 %73, i32* %8, align 8, !dbg !3238
  br label %74, !dbg !3238

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3238
  %78 = load i8*, i8** %77, align 8, !dbg !3238
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3239
  store i8* %78, i8** %79, align 8, !dbg !3240, !tbaa !1225
  %80 = icmp eq i8* %78, null, !dbg !3241
  br i1 %80, label %30, label %81, !dbg !3242

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3229, metadata !DIExpression()), !dbg !3232
  %82 = icmp ult i32 %75, 41, !dbg !3238
  br i1 %82, label %86, label %83, !dbg !3238

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3238
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3238
  store i8* %85, i8** %9, align 8, !dbg !3238
  br label %91, !dbg !3238

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3238
  %88 = zext i32 %75 to i64, !dbg !3238
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3238
  %90 = add nuw nsw i32 %75, 8, !dbg !3238
  store i32 %90, i32* %8, align 8, !dbg !3238
  br label %91, !dbg !3238

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3238
  %95 = load i8*, i8** %94, align 8, !dbg !3238
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3239
  store i8* %95, i8** %96, align 16, !dbg !3240, !tbaa !1225
  %97 = icmp eq i8* %95, null, !dbg !3241
  br i1 %97, label %30, label %98, !dbg !3242

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3229, metadata !DIExpression()), !dbg !3232
  %99 = icmp ult i32 %92, 41, !dbg !3238
  br i1 %99, label %103, label %100, !dbg !3238

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3238
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3238
  store i8* %102, i8** %9, align 8, !dbg !3238
  br label %108, !dbg !3238

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3238
  %105 = zext i32 %92 to i64, !dbg !3238
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3238
  %107 = add nuw nsw i32 %92, 8, !dbg !3238
  store i32 %107, i32* %8, align 8, !dbg !3238
  br label %108, !dbg !3238

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3238
  %111 = load i8*, i8** %110, align 8, !dbg !3238
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3239
  store i8* %111, i8** %112, align 8, !dbg !3240, !tbaa !1225
  %113 = icmp eq i8* %111, null, !dbg !3241
  br i1 %113, label %30, label %114, !dbg !3242

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3229, metadata !DIExpression()), !dbg !3232
  %115 = load i8*, i8** %9, align 8, !dbg !3238
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3238
  store i8* %116, i8** %9, align 8, !dbg !3238
  %117 = bitcast i8* %115 to i8**, !dbg !3238
  %118 = load i8*, i8** %117, align 8, !dbg !3238
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3239
  store i8* %118, i8** %119, align 16, !dbg !3240, !tbaa !1225
  %120 = icmp eq i8* %118, null, !dbg !3241
  br i1 %120, label %30, label %121, !dbg !3242

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3229, metadata !DIExpression()), !dbg !3232
  %122 = load i8*, i8** %9, align 8, !dbg !3238
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3238
  store i8* %123, i8** %9, align 8, !dbg !3238
  %124 = bitcast i8* %122 to i8**, !dbg !3238
  %125 = load i8*, i8** %124, align 8, !dbg !3238
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3239
  store i8* %125, i8** %126, align 8, !dbg !3240, !tbaa !1225
  %127 = icmp eq i8* %125, null, !dbg !3241
  br i1 %127, label %30, label %128, !dbg !3242

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3229, metadata !DIExpression()), !dbg !3232
  %129 = load i8*, i8** %9, align 8, !dbg !3238
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3238
  store i8* %130, i8** %9, align 8, !dbg !3238
  %131 = bitcast i8* %129 to i8**, !dbg !3238
  %132 = load i8*, i8** %131, align 8, !dbg !3238
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3239
  store i8* %132, i8** %133, align 16, !dbg !3240, !tbaa !1225
  %134 = icmp eq i8* %132, null, !dbg !3241
  br i1 %134, label %30, label %135, !dbg !3242

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3229, metadata !DIExpression()), !dbg !3232
  %136 = load i8*, i8** %9, align 8, !dbg !3238
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3238
  store i8* %137, i8** %9, align 8, !dbg !3238
  %138 = bitcast i8* %136 to i8**, !dbg !3238
  %139 = load i8*, i8** %138, align 8, !dbg !3238
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3239
  store i8* %139, i8** %140, align 8, !dbg !3240, !tbaa !1225
  %141 = icmp eq i8* %139, null, !dbg !3241
  %142 = select i1 %141, i64 9, i64 10, !dbg !3242
  br label %30, !dbg !3242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3246 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3250, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %2, metadata !3252, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %3, metadata !3253, metadata !DIExpression()), !dbg !3260
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3261
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3261
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3254, metadata !DIExpression()), !dbg !3262
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3263
  call void @llvm.va_start(i8* nonnull %6), !dbg !3263
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3264
  call void @llvm.va_end(i8* nonnull %6), !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3266
  ret void, !dbg !3266
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3267 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3268, !tbaa !1225
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3268
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #18, !dbg !3269
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #18, !dbg !3269
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #18, !dbg !3270
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #18, !dbg !3270
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #18, !dbg !3271
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #18, !dbg !3271
  ret void, !dbg !3272
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3273 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3279
  %3 = udiv i64 9223372036854775807, %1, !dbg !3280
  %4 = icmp ult i64 %3, %0, !dbg !3280
  br i1 %4, label %5, label %6, !dbg !3282

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3283
  unreachable, !dbg !3283

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %7, metadata !3285, metadata !DIExpression()) #18, !dbg !3291
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %8, metadata !3290, metadata !DIExpression()) #18, !dbg !3291
  %9 = icmp eq i8* %8, null, !dbg !3294
  %10 = icmp ne i64 %7, 0, !dbg !3296
  %11 = and i1 %10, %9, !dbg !3297
  br i1 %11, label %12, label %13, !dbg !3297

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3298
  unreachable, !dbg !3298

13:                                               ; preds = %6
  ret i8* %8, !dbg !3299
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3286 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3285, metadata !DIExpression()), !dbg !3300
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3301
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()), !dbg !3300
  %3 = icmp eq i8* %2, null, !dbg !3302
  %4 = icmp ne i64 %0, 0, !dbg !3303
  %5 = and i1 %4, %3, !dbg !3304
  br i1 %5, label %6, label %7, !dbg !3304

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3305
  unreachable, !dbg !3305

7:                                                ; preds = %1
  ret i8* %2, !dbg !3306
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3307 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %2, metadata !3313, metadata !DIExpression()), !dbg !3314
  %4 = udiv i64 9223372036854775807, %2, !dbg !3315
  %5 = icmp ult i64 %4, %1, !dbg !3315
  br i1 %5, label %6, label %7, !dbg !3317

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3318
  unreachable, !dbg !3318

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #18, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %8, metadata !3325, metadata !DIExpression()) #18, !dbg !3326
  %9 = icmp eq i64 %8, 0, !dbg !3328
  %10 = icmp ne i8* %0, null, !dbg !3330
  %11 = and i1 %10, %9, !dbg !3331
  br i1 %11, label %12, label %13, !dbg !3331

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3332
  br label %19, !dbg !3334

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %14, metadata !3320, metadata !DIExpression()) #18, !dbg !3326
  %15 = icmp eq i8* %14, null, !dbg !3336
  %16 = icmp ne i64 %8, 0, !dbg !3338
  %17 = and i1 %16, %15, !dbg !3339
  br i1 %17, label %18, label %19, !dbg !3339

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3340
  unreachable, !dbg !3340

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3326
  ret i8* %20, !dbg !3341
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3342
  %3 = icmp eq i64 %1, 0, !dbg !3343
  %4 = icmp ne i8* %0, null, !dbg !3344
  %5 = and i1 %4, %3, !dbg !3345
  br i1 %5, label %6, label %7, !dbg !3345

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3346
  br label %13, !dbg !3347

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %8, metadata !3320, metadata !DIExpression()), !dbg !3342
  %9 = icmp eq i8* %8, null, !dbg !3349
  %10 = icmp ne i64 %1, 0, !dbg !3350
  %11 = and i1 %10, %9, !dbg !3351
  br i1 %11, label %12, label %13, !dbg !3351

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3352
  unreachable, !dbg !3352

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3342
  ret i8* %14, !dbg !3353
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !560, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64* %1, metadata !561, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %2, metadata !562, metadata !DIExpression()), !dbg !3354
  %4 = load i64, i64* %1, align 8, !dbg !3355, !tbaa !1400
  call void @llvm.dbg.value(metadata i64 %4, metadata !563, metadata !DIExpression()), !dbg !3354
  %5 = icmp eq i8* %0, null, !dbg !3356
  br i1 %5, label %6, label %20, !dbg !3358

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3359
  br i1 %7, label %8, label %13, !dbg !3362

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %9, metadata !563, metadata !DIExpression()), !dbg !3354
  %10 = icmp ugt i64 %2, 128, !dbg !3365
  %11 = zext i1 %10 to i64, !dbg !3365
  %12 = add nuw nsw i64 %9, %11, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %12, metadata !563, metadata !DIExpression()), !dbg !3354
  br label %13, !dbg !3367

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3354
  call void @llvm.dbg.value(metadata i64 %14, metadata !563, metadata !DIExpression()), !dbg !3354
  %15 = udiv i64 9223372036854775807, %2, !dbg !3368
  %16 = icmp ult i64 %15, %14, !dbg !3368
  br i1 %16, label %19, label %17, !dbg !3370

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !563, metadata !DIExpression()), !dbg !3354
  store i64 %14, i64* %1, align 8, !dbg !3371, !tbaa !1400
  %18 = mul i64 %14, %2, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #18, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %28, metadata !3325, metadata !DIExpression()) #18, !dbg !3373
  br label %31, !dbg !3375

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3376
  unreachable, !dbg !3376

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3377
  %22 = icmp ugt i64 %21, %4, !dbg !3380
  br i1 %22, label %24, label %23, !dbg !3381

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3382
  unreachable, !dbg !3382

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3383
  %26 = add nuw i64 %4, 1, !dbg !3384
  %27 = add i64 %26, %25, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %27, metadata !563, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %27, metadata !563, metadata !DIExpression()), !dbg !3354
  store i64 %27, i64* %1, align 8, !dbg !3371, !tbaa !1400
  %28 = mul i64 %27, %2, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #18, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %28, metadata !3325, metadata !DIExpression()) #18, !dbg !3373
  %29 = icmp eq i64 %28, 0, !dbg !3386
  br i1 %29, label %30, label %31, !dbg !3375

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3387
  br label %38, !dbg !3388

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3389
  call void @llvm.dbg.value(metadata i8* %33, metadata !3320, metadata !DIExpression()) #18, !dbg !3373
  %34 = icmp eq i8* %33, null, !dbg !3390
  %35 = icmp ne i64 %32, 0, !dbg !3391
  %36 = and i1 %35, %34, !dbg !3392
  br i1 %36, label %37, label %38, !dbg !3392

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3393
  unreachable, !dbg !3393

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3373
  ret i8* %39, !dbg !3394
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3395 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i64 %0, metadata !3285, metadata !DIExpression()) #18, !dbg !3399
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %2, metadata !3290, metadata !DIExpression()) #18, !dbg !3399
  %3 = icmp eq i8* %2, null, !dbg !3402
  %4 = icmp ne i64 %0, 0, !dbg !3403
  %5 = and i1 %4, %3, !dbg !3404
  br i1 %5, label %6, label %7, !dbg !3404

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3405
  unreachable, !dbg !3405

7:                                                ; preds = %1
  ret i8* %2, !dbg !3406
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3411, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i64* %1, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata i8* %0, metadata !560, metadata !DIExpression()) #18, !dbg !3414
  call void @llvm.dbg.value(metadata i64* %1, metadata !561, metadata !DIExpression()) #18, !dbg !3414
  call void @llvm.dbg.value(metadata i64 1, metadata !562, metadata !DIExpression()) #18, !dbg !3414
  %3 = load i64, i64* %1, align 8, !dbg !3416, !tbaa !1400
  call void @llvm.dbg.value(metadata i64 %3, metadata !563, metadata !DIExpression()) #18, !dbg !3414
  %4 = icmp eq i8* %0, null, !dbg !3417
  br i1 %4, label %5, label %12, !dbg !3418

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3419
  br i1 %6, label %9, label %7, !dbg !3420

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !563, metadata !DIExpression()) #18, !dbg !3414
  %8 = icmp slt i64 %3, 0, !dbg !3421
  br i1 %8, label %11, label %9, !dbg !3422

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !563, metadata !DIExpression()) #18, !dbg !3414
  store i64 %10, i64* %1, align 8, !dbg !3423, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #18, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %18, metadata !3325, metadata !DIExpression()) #18, !dbg !3424
  br label %21, !dbg !3426

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3427
  unreachable, !dbg !3427

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3428
  br i1 %13, label %15, label %14, !dbg !3429

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3430
  unreachable, !dbg !3430

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3431
  %17 = add nuw nsw i64 %3, 1, !dbg !3432
  %18 = add nuw nsw i64 %17, %16, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %18, metadata !563, metadata !DIExpression()) #18, !dbg !3414
  call void @llvm.dbg.value(metadata i64 %18, metadata !563, metadata !DIExpression()) #18, !dbg !3414
  store i64 %18, i64* %1, align 8, !dbg !3423, !tbaa !1400
  call void @llvm.dbg.value(metadata i8* %0, metadata !3320, metadata !DIExpression()) #18, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %18, metadata !3325, metadata !DIExpression()) #18, !dbg !3424
  %19 = icmp eq i64 %18, 0, !dbg !3434
  br i1 %19, label %20, label %21, !dbg !3426

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3435
  br label %28, !dbg !3436

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3437
  call void @llvm.dbg.value(metadata i8* %23, metadata !3320, metadata !DIExpression()) #18, !dbg !3424
  %24 = icmp eq i8* %23, null, !dbg !3438
  %25 = icmp ne i64 %22, 0, !dbg !3439
  %26 = and i1 %25, %24, !dbg !3440
  br i1 %26, label %27, label %28, !dbg !3440

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3441
  unreachable, !dbg !3441

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3424
  ret i8* %29, !dbg !3442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3443 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %0, metadata !3447, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i64 1, metadata !3450, metadata !DIExpression()) #18, !dbg !3452
  %2 = icmp slt i64 %0, 0, !dbg !3454
  br i1 %2, label %6, label %3, !dbg !3456

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %4, metadata !3451, metadata !DIExpression()) #18, !dbg !3452
  %5 = icmp eq i8* %4, null, !dbg !3458
  br i1 %5, label %6, label %7, !dbg !3459

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3460
  unreachable, !dbg !3460

7:                                                ; preds = %3
  ret i8* %4, !dbg !3461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3448 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3447, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3462
  %3 = udiv i64 9223372036854775807, %1, !dbg !3463
  %4 = icmp ult i64 %3, %0, !dbg !3463
  br i1 %4, label %8, label %5, !dbg !3464

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %6, metadata !3451, metadata !DIExpression()), !dbg !3462
  %7 = icmp eq i8* %6, null, !dbg !3466
  br i1 %7, label %8, label %9, !dbg !3467

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3468
  unreachable, !dbg !3468

9:                                                ; preds = %5
  ret i8* %6, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()) #18, !dbg !3477
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %3, metadata !3290, metadata !DIExpression()) #18, !dbg !3477
  %4 = icmp eq i8* %3, null, !dbg !3480
  %5 = icmp ne i64 %1, 0, !dbg !3481
  %6 = and i1 %5, %4, !dbg !3482
  br i1 %6, label %7, label %8, !dbg !3482

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3483
  unreachable, !dbg !3483

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3484, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3492, metadata !DIExpression()) #18, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3495
  ret i8* %3, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3497 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3501
  %3 = add i64 %2, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %0, metadata !3474, metadata !DIExpression()) #18, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %3, metadata !3475, metadata !DIExpression()) #18, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()) #18, !dbg !3505
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3507
  call void @llvm.dbg.value(metadata i8* %4, metadata !3290, metadata !DIExpression()) #18, !dbg !3505
  %5 = icmp eq i8* %4, null, !dbg !3508
  %6 = icmp ne i64 %3, 0, !dbg !3509
  %7 = and i1 %6, %5, !dbg !3510
  br i1 %7, label %8, label %9, !dbg !3510

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3511
  unreachable, !dbg !3511

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3484, metadata !DIExpression()) #18, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #18, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %3, metadata !3492, metadata !DIExpression()) #18, !dbg !3512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3514
  ret i8* %4, !dbg !3515
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3516 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3517, !tbaa !1331
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #18, !dbg !3518
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #18, !dbg !3519
  tail call void @abort() #22, !dbg !3520
  unreachable, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3521 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3529, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %1, metadata !3530, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %2, metadata !3531, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %3, metadata !3532, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %4, metadata !3533, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %5, metadata !3534, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 %6, metadata !3535, metadata !DIExpression()), !dbg !3539
  %9 = bitcast i64* %8 to i8*, !dbg !3540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #18, !dbg !3540
  call void @llvm.dbg.value(metadata i64* %8, metadata !3538, metadata !DIExpression(DW_OP_deref)), !dbg !3539
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #18, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %10, metadata !3536, metadata !DIExpression()), !dbg !3539
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3542

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #24, !dbg !3543
  br label %27, !dbg !3542

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3546, !tbaa !1400
  call void @llvm.dbg.value(metadata i64 %14, metadata !3538, metadata !DIExpression()), !dbg !3539
  %15 = icmp ult i64 %14, %2, !dbg !3550
  %16 = icmp ugt i64 %14, %3, !dbg !3551
  %17 = or i1 %15, %16, !dbg !3552
  br i1 %17, label %18, label %36, !dbg !3552

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3536, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %14, metadata !3538, metadata !DIExpression()), !dbg !3539
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3553
  %20 = tail call i32* @__errno_location() #24, !dbg !3556
  br i1 %19, label %21, label %22, !dbg !3557

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3558, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 undef, metadata !3536, metadata !DIExpression()), !dbg !3539
  br label %27, !dbg !3559

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3560, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 undef, metadata !3536, metadata !DIExpression()), !dbg !3539
  br label %27, !dbg !3559

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #24, !dbg !3561
  store i32 75, i32* %24, align 4, !dbg !3563, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 undef, metadata !3536, metadata !DIExpression()), !dbg !3539
  br label %27, !dbg !3559

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #24, !dbg !3564
  store i32 0, i32* %26, align 4, !dbg !3566, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 undef, metadata !3536, metadata !DIExpression()), !dbg !3539
  br label %27, !dbg !3559

27:                                               ; preds = %11, %25, %23, %22, %21
  %28 = phi i32* [ %12, %11 ], [ %26, %25 ], [ %24, %23 ], [ %20, %22 ], [ %20, %21 ], !dbg !3543
  %29 = icmp eq i32 %6, 0, !dbg !3567
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3567
  %31 = load i32, i32* %28, align 4, !dbg !3543, !tbaa !1331
  %32 = icmp eq i32 %31, 22, !dbg !3568
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3543
  %34 = call i8* @quote(i8* %0) #18, !dbg !3569
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %34) #18, !dbg !3570
  %35 = load i64, i64* %8, align 8, !dbg !3571, !tbaa !1400
  br label %36, !dbg !3572

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3571
  call void @llvm.dbg.value(metadata i64 %37, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #18, !dbg !3573
  ret i64 %37, !dbg !3574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3575 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %1, metadata !3580, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i64 %2, metadata !3581, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %3, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %4, metadata !3583, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %5, metadata !3584, metadata !DIExpression()), !dbg !3585
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3586
  ret i64 %7, !dbg !3587
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3588 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8** %1, metadata !3595, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i32 %2, metadata !3596, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64* %3, metadata !3597, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %4, metadata !3598, metadata !DIExpression()), !dbg !3612
  %7 = bitcast i8** %6 to i8*, !dbg !3613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3613
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()), !dbg !3612
  %8 = icmp ult i32 %2, 37, !dbg !3614
  br i1 %8, label %10, label %9, !dbg !3614

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #22, !dbg !3614
  unreachable, !dbg !3614

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3617
  call void @llvm.dbg.value(metadata i8** %25, metadata !3600, metadata !DIExpression()), !dbg !3612
  %12 = tail call i32* @__errno_location() #24, !dbg !3618
  store i32 0, i32* %12, align 4, !dbg !3619, !tbaa !1331
  call void @llvm.dbg.value(metadata i8* %0, metadata !3603, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8 undef, metadata !3606, metadata !DIExpression()), !dbg !3620
  %13 = tail call i16** @__ctype_b_loc() #24, !dbg !3620
  %14 = load i16*, i16** %13, align 8, !dbg !3620, !tbaa !1225
  br label %15, !dbg !3621

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3620
  %17 = load i8, i8* %16, align 1, !dbg !3620, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %17, metadata !3606, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %16, metadata !3603, metadata !DIExpression()), !dbg !3620
  %18 = zext i8 %17 to i64, !dbg !3622
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3622
  %20 = load i16, i16* %19, align 2, !dbg !3622, !tbaa !1453
  %21 = and i16 %20, 8192, !dbg !3622
  %22 = icmp eq i16 %21, 0, !dbg !3621
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3623
  call void @llvm.dbg.value(metadata i8* %23, metadata !3603, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8 undef, metadata !3606, metadata !DIExpression()), !dbg !3620
  br i1 %22, label %24, label %15, !dbg !3621, !llvm.loop !3624

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3617
  %26 = icmp eq i8 %17, 45, !dbg !3626
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %0, metadata !3628, metadata !DIExpression()) #18, !dbg !3638
  call void @llvm.dbg.value(metadata i8** %25, metadata !3636, metadata !DIExpression()) #18, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %2, metadata !3637, metadata !DIExpression()) #18, !dbg !3638
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #18, !dbg !3640
  call void @llvm.dbg.value(metadata i64 %28, metadata !3601, metadata !DIExpression()), !dbg !3612
  %29 = load i8*, i8** %25, align 8, !dbg !3641, !tbaa !1225
  %30 = icmp eq i8* %29, %0, !dbg !3643
  br i1 %30, label %31, label %40, !dbg !3644

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3645
  br i1 %32, label %285, label %33, !dbg !3648

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3649, !tbaa !1318
  %35 = icmp eq i8 %34, 0, !dbg !3649
  br i1 %35, label %285, label %36, !dbg !3650

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3649
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #21, !dbg !3651
  %39 = icmp eq i8* %38, null, !dbg !3651
  br i1 %39, label %285, label %47, !dbg !3652

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3653, !tbaa !1331
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3655

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()), !dbg !3612
  br label %43, !dbg !3656

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3612
  call void @llvm.dbg.value(metadata i32 %44, metadata !3602, metadata !DIExpression()), !dbg !3612
  %45 = icmp eq i8* %4, null, !dbg !3658
  br i1 %45, label %46, label %47, !dbg !3660

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3601, metadata !DIExpression()), !dbg !3612
  store i64 %28, i64* %3, align 8, !dbg !3661, !tbaa !1400
  br label %285, !dbg !3663

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3664, !tbaa !1318
  %51 = sext i8 %50 to i32, !dbg !3664
  %52 = icmp eq i8 %50, 0, !dbg !3665
  br i1 %52, label %282, label %53, !dbg !3666

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3607, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 1, metadata !3610, metadata !DIExpression()), !dbg !3667
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #21, !dbg !3668
  %55 = icmp eq i8* %54, null, !dbg !3668
  br i1 %55, label %56, label %58, !dbg !3670

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3601, metadata !DIExpression()), !dbg !3612
  store i64 %49, i64* %3, align 8, !dbg !3671, !tbaa !1400
  %57 = or i32 %48, 2, !dbg !3673
  br label %285, !dbg !3674

58:                                               ; preds = %53
  switch i32 %51, label %72 [
    i32 69, label %59
    i32 71, label %59
    i32 103, label %59
    i32 107, label %59
    i32 75, label %59
    i32 77, label %59
    i32 109, label %59
    i32 80, label %59
    i32 84, label %59
    i32 116, label %59
    i32 89, label %59
    i32 90, label %59
  ], !dbg !3675

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #21, !dbg !3676
  %61 = icmp eq i8* %60, null, !dbg !3676
  br i1 %61, label %72, label %62, !dbg !3679

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3680
  %64 = load i8, i8* %63, align 1, !dbg !3680, !tbaa !1318
  %65 = sext i8 %64 to i32, !dbg !3680
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3681

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3682
  %68 = load i8, i8* %67, align 1, !dbg !3682, !tbaa !1318
  %69 = icmp eq i8 %68, 66, !dbg !3685
  %70 = select i1 %69, i64 3, i64 1, !dbg !3686
  br label %72, !dbg !3686

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3607, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 2, metadata !3610, metadata !DIExpression()), !dbg !3667
  br label %72, !dbg !3687

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3610, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 undef, metadata !3607, metadata !DIExpression()), !dbg !3667
  switch i32 %51, label %270 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %230
    i32 75, label %230
    i32 77, label %235
    i32 109, label %235
    i32 80, label %150
    i32 84, label %245
    i32 116, label %245
    i32 119, label %265
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3688

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 6, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3706
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3708
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3708
  %78 = mul i64 %49, %73, !dbg !3710
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3710
  call void @llvm.dbg.value(metadata i1 %77, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 5, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #18, !dbg !3708
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3708
  %82 = mul i64 %79, %73, !dbg !3710
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3710
  %84 = or i1 %77, %81, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %84, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 4, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #18, !dbg !3708
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3708
  %87 = mul i64 %83, %73, !dbg !3710
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3710
  %89 = or i1 %84, %86, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %89, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 3, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #18, !dbg !3708
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3708
  %92 = mul i64 %88, %73, !dbg !3710
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3710
  %94 = or i1 %89, %91, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %94, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #18, !dbg !3708
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3708
  %97 = mul i64 %93, %73, !dbg !3710
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3710
  %99 = or i1 %94, %96, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %99, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #18, !dbg !3708
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3708
  %102 = mul i64 %98, %73, !dbg !3710
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3710
  %104 = or i1 %99, %101, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %104, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3697
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #18, !dbg !3708
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3708
  %107 = mul i64 %103, %73, !dbg !3710
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3710
  %109 = or i1 %104, %106, !dbg !3711
  call void @llvm.dbg.value(metadata i1 %109, metadata !3689, metadata !DIExpression()) #18, !dbg !3697
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3697
  br label %272, !dbg !3712

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 7, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3715
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3717
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3717
  %113 = mul i64 %49, %73, !dbg !3718
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3718
  call void @llvm.dbg.value(metadata i1 %112, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 6, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #18, !dbg !3717
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3717
  %117 = mul i64 %114, %73, !dbg !3718
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3718
  %119 = or i1 %112, %116, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %119, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 5, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #18, !dbg !3717
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3717
  %122 = mul i64 %118, %73, !dbg !3718
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3718
  %124 = or i1 %119, %121, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %124, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 4, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #18, !dbg !3717
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3717
  %127 = mul i64 %123, %73, !dbg !3718
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3718
  %129 = or i1 %124, %126, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %129, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 3, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #18, !dbg !3717
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3717
  %132 = mul i64 %128, %73, !dbg !3718
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3718
  %134 = or i1 %129, %131, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %134, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #18, !dbg !3717
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3717
  %137 = mul i64 %133, %73, !dbg !3718
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3718
  %139 = or i1 %134, %136, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %139, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #18, !dbg !3717
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3717
  %142 = mul i64 %138, %73, !dbg !3718
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3718
  %144 = or i1 %139, %141, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %144, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3713
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #18, !dbg !3717
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3717
  %147 = mul i64 %143, %73, !dbg !3718
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3718
  %149 = or i1 %144, %146, !dbg !3719
  call void @llvm.dbg.value(metadata i1 %149, metadata !3689, metadata !DIExpression()) #18, !dbg !3713
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3713
  br label %272, !dbg !3712

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 4, metadata !3696, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3722
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3724
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3724
  %153 = mul i64 %49, %73, !dbg !3725
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3725
  call void @llvm.dbg.value(metadata i1 %152, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 3, metadata !3696, metadata !DIExpression()) #18, !dbg !3720
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #18, !dbg !3724
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3724
  %157 = mul i64 %154, %73, !dbg !3725
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3725
  %159 = or i1 %152, %156, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %159, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3720
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #18, !dbg !3724
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3724
  %162 = mul i64 %158, %73, !dbg !3725
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3725
  %164 = or i1 %159, %161, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %164, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3720
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #18, !dbg !3724
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3724
  %167 = mul i64 %163, %73, !dbg !3725
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3725
  %169 = or i1 %164, %166, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %169, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3720
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #18, !dbg !3724
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3724
  %172 = mul i64 %168, %73, !dbg !3725
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3725
  %174 = or i1 %169, %171, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %174, metadata !3689, metadata !DIExpression()) #18, !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3720
  br label %272, !dbg !3712

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 5, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3729
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3731
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3731
  %178 = mul i64 %49, %73, !dbg !3732
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3732
  call void @llvm.dbg.value(metadata i1 %177, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 4, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #18, !dbg !3731
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3731
  %182 = mul i64 %179, %73, !dbg !3732
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3732
  %184 = or i1 %177, %181, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %184, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 3, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #18, !dbg !3731
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3731
  %187 = mul i64 %183, %73, !dbg !3732
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3732
  %189 = or i1 %184, %186, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %189, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #18, !dbg !3731
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3731
  %192 = mul i64 %188, %73, !dbg !3732
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3732
  %194 = or i1 %189, %191, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %194, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #18, !dbg !3731
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3731
  %197 = mul i64 %193, %73, !dbg !3732
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3732
  %199 = or i1 %194, %196, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %199, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3727
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #18, !dbg !3731
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3731
  %202 = mul i64 %198, %73, !dbg !3732
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3732
  %204 = or i1 %199, %201, !dbg !3733
  call void @llvm.dbg.value(metadata i1 %204, metadata !3689, metadata !DIExpression()) #18, !dbg !3727
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3727
  br label %272, !dbg !3712

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !3700, metadata !DIExpression()) #18, !dbg !3734
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #18, !dbg !3736
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3736
  %208 = shl i64 %49, 9, !dbg !3737
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3737
  call void @llvm.dbg.value(metadata i1 %207, metadata !3611, metadata !DIExpression()), !dbg !3667
  br label %272, !dbg !3738

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !3700, metadata !DIExpression()) #18, !dbg !3739
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #18, !dbg !3741
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3741
  %213 = shl i64 %49, 10, !dbg !3742
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3742
  call void @llvm.dbg.value(metadata i1 %212, metadata !3611, metadata !DIExpression()), !dbg !3667
  br label %272, !dbg !3743

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3695, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3746
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3748
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3748
  %218 = mul i64 %49, %73, !dbg !3749
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3749
  call void @llvm.dbg.value(metadata i1 %217, metadata !3689, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3744
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #18, !dbg !3748
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3748
  %222 = mul i64 %219, %73, !dbg !3749
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3749
  %224 = or i1 %217, %221, !dbg !3750
  call void @llvm.dbg.value(metadata i1 %224, metadata !3689, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3744
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #18, !dbg !3748
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3748
  %227 = mul i64 %223, %73, !dbg !3749
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3749
  %229 = or i1 %224, %226, !dbg !3750
  call void @llvm.dbg.value(metadata i1 %229, metadata !3689, metadata !DIExpression()) #18, !dbg !3744
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3744
  br label %272, !dbg !3712

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3695, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3753
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3755
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3755
  %233 = mul i64 %49, %73, !dbg !3756
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3756
  call void @llvm.dbg.value(metadata i1 %232, metadata !3689, metadata !DIExpression()) #18, !dbg !3751
  call void @llvm.dbg.value(metadata i32 undef, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3751
  br label %272, !dbg !3712

235:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3695, metadata !DIExpression()) #18, !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3757
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3757
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3759
  %236 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3761
  %237 = extractvalue { i64, i1 } %236, 1, !dbg !3761
  %238 = mul i64 %49, %73, !dbg !3762
  %239 = select i1 %237, i64 -1, i64 %238, !dbg !3762
  call void @llvm.dbg.value(metadata i1 %237, metadata !3689, metadata !DIExpression()) #18, !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3757
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %239) #18, !dbg !3761
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3761
  %242 = mul i64 %239, %73, !dbg !3762
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3762
  %244 = or i1 %237, %241, !dbg !3763
  call void @llvm.dbg.value(metadata i1 %244, metadata !3689, metadata !DIExpression()) #18, !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3757
  br label %272, !dbg !3712

245:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 undef, metadata !3695, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 3, metadata !3696, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 undef, metadata !3700, metadata !DIExpression()) #18, !dbg !3766
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #18, !dbg !3768
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !3768
  %248 = mul i64 %49, %73, !dbg !3769
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !3769
  call void @llvm.dbg.value(metadata i1 %247, metadata !3689, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 2, metadata !3696, metadata !DIExpression()) #18, !dbg !3764
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %249) #18, !dbg !3768
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3768
  %252 = mul i64 %249, %73, !dbg !3769
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3769
  %254 = or i1 %247, %251, !dbg !3770
  call void @llvm.dbg.value(metadata i1 %254, metadata !3689, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 1, metadata !3696, metadata !DIExpression()) #18, !dbg !3764
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #18, !dbg !3768
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3768
  %257 = mul i64 %253, %73, !dbg !3769
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3769
  %259 = or i1 %254, %256, !dbg !3770
  call void @llvm.dbg.value(metadata i1 %259, metadata !3689, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #18, !dbg !3764
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %258) #18, !dbg !3768
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !3768
  %262 = mul i64 %258, %73, !dbg !3769
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !3769
  %264 = or i1 %259, %261, !dbg !3770
  call void @llvm.dbg.value(metadata i1 %264, metadata !3689, metadata !DIExpression()) #18, !dbg !3764
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #18, !dbg !3764
  br label %272, !dbg !3712

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !3700, metadata !DIExpression()) #18, !dbg !3771
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #18, !dbg !3773
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3773
  %268 = shl i64 %49, 1, !dbg !3774
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3774
  call void @llvm.dbg.value(metadata i1 %267, metadata !3611, metadata !DIExpression()), !dbg !3667
  br label %272, !dbg !3775

270:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3601, metadata !DIExpression()), !dbg !3612
  store i64 %49, i64* %3, align 8, !dbg !3776, !tbaa !1400
  %271 = or i32 %48, 2, !dbg !3777
  br label %285, !dbg !3778

272:                                              ; preds = %75, %110, %245, %150, %235, %230, %215, %175, %205, %210, %265, %72
  %273 = phi i64 [ %269, %265 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %234, %230 ], [ %243, %235 ], [ %173, %150 ], [ %263, %245 ], [ %148, %110 ], [ %108, %75 ], !dbg !3612
  %274 = phi i1 [ %267, %265 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %232, %230 ], [ %244, %235 ], [ %174, %150 ], [ %264, %245 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %275, metadata !3611, metadata !DIExpression()), !dbg !3667
  %276 = or i32 %48, %275, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %276, metadata !3602, metadata !DIExpression()), !dbg !3612
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3780
  store i8* %277, i8** %25, align 8, !dbg !3780, !tbaa !1225
  %278 = load i8, i8* %277, align 1, !dbg !3781, !tbaa !1318
  %279 = icmp eq i8 %278, 0, !dbg !3781
  %280 = or i32 %276, 2, !dbg !3783
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3784
  call void @llvm.dbg.value(metadata i32 %281, metadata !3602, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i32 %281, metadata !3602, metadata !DIExpression()), !dbg !3612
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3785
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3786
  call void @llvm.dbg.value(metadata i32 %284, metadata !3602, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %283, metadata !3601, metadata !DIExpression()), !dbg !3612
  store i64 %283, i64* %3, align 8, !dbg !3787, !tbaa !1400
  br label %285, !dbg !3788

285:                                              ; preds = %24, %56, %270, %40, %31, %33, %36, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %271, %270 ], !dbg !3612
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #18, !dbg !3789
  ret i32 %286, !dbg !3789
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3790 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %1, metadata !3793, metadata !DIExpression()), !dbg !3798
  %3 = icmp eq i64 %0, 0, !dbg !3799
  %4 = icmp eq i64 %1, 0, !dbg !3800
  %5 = or i1 %3, %4, !dbg !3801
  br i1 %5, label %11, label %6, !dbg !3801

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3795, metadata !DIExpression()), !dbg !3802
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3803
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3803
  br i1 %8, label %9, label %11, !dbg !3805

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3806
  store i32 12, i32* %10, align 4, !dbg !3808, !tbaa !1331
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %12, metadata !3793, metadata !DIExpression()), !dbg !3798
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %14, metadata !3794, metadata !DIExpression()), !dbg !3798
  br label %15, !dbg !3810

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3798
  ret i8* %16, !dbg !3811
}

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3812 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3818, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3819, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 0, metadata !3821, metadata !DIExpression()), !dbg !3822
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3823
  call void @llvm.dbg.value(metadata i32 %2, metadata !3820, metadata !DIExpression()), !dbg !3822
  %3 = icmp slt i32 %2, 0, !dbg !3824
  br i1 %3, label %4, label %6, !dbg !3826

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3827
  br label %24, !dbg !3828

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3829
  %8 = icmp eq i32 %7, 0, !dbg !3829
  br i1 %8, label %13, label %9, !dbg !3831

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3832
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3833
  %12 = icmp eq i64 %11, -1, !dbg !3834
  br i1 %12, label %16, label %13, !dbg !3835

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3836
  %15 = icmp eq i32 %14, 0, !dbg !3836
  br i1 %15, label %16, label %18, !dbg !3837

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3819, metadata !DIExpression()), !dbg !3822
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %21, metadata !3821, metadata !DIExpression()), !dbg !3822
  br label %24, !dbg !3839

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3840
  %20 = load i32, i32* %19, align 4, !dbg !3840, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 %20, metadata !3819, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i32 %20, metadata !3819, metadata !DIExpression()), !dbg !3822
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %21, metadata !3821, metadata !DIExpression()), !dbg !3822
  %22 = icmp eq i32 %20, 0, !dbg !3841
  br i1 %22, label %24, label %23, !dbg !3839

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3843, !tbaa !1331
  call void @llvm.dbg.value(metadata i32 -1, metadata !3821, metadata !DIExpression()), !dbg !3822
  br label %24, !dbg !3845

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3822
  ret i32 %25, !dbg !3846
}

; Function Attrs: nofree nounwind
declare !dbg !640 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !641 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3847 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3853, metadata !DIExpression()), !dbg !3854
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3855
  br i1 %2, label %6, label %3, !dbg !3857

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3858
  %5 = icmp eq i32 %4, 0, !dbg !3858
  br i1 %5, label %6, label %8, !dbg !3859

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3860
  br label %17, !dbg !3861

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3862, metadata !DIExpression()) #18, !dbg !3867
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3869
  %10 = load i32, i32* %9, align 8, !dbg !3869, !tbaa !1531
  %11 = and i32 %10, 256, !dbg !3871
  %12 = icmp eq i32 %11, 0, !dbg !3871
  br i1 %12, label %15, label %13, !dbg !3872

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3873
  br label %15, !dbg !3873

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3874
  br label %17, !dbg !3875

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3854
  ret i32 %18, !dbg !3876
}

; Function Attrs: nofree nounwind
declare !dbg !649 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3877 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3883, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3884, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i32 %2, metadata !3885, metadata !DIExpression()), !dbg !3889
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3890
  %5 = load i8*, i8** %4, align 8, !dbg !3890, !tbaa !1393
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3891
  %7 = load i8*, i8** %6, align 8, !dbg !3891, !tbaa !1389
  %8 = icmp eq i8* %5, %7, !dbg !3892
  br i1 %8, label %9, label %28, !dbg !3893

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3894
  %11 = load i8*, i8** %10, align 8, !dbg !3894, !tbaa !1467
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3895
  %13 = load i8*, i8** %12, align 8, !dbg !3895, !tbaa !3896
  %14 = icmp eq i8* %11, %13, !dbg !3897
  br i1 %14, label %15, label %28, !dbg !3898

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3899
  %17 = load i8*, i8** %16, align 8, !dbg !3899, !tbaa !3900
  %18 = icmp eq i8* %17, null, !dbg !3901
  br i1 %18, label %19, label %28, !dbg !3902

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3903
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3904
  call void @llvm.dbg.value(metadata i64 %21, metadata !3886, metadata !DIExpression()), !dbg !3905
  %22 = icmp eq i64 %21, -1, !dbg !3906
  br i1 %22, label %30, label %23, !dbg !3908

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3909
  %25 = load i32, i32* %24, align 8, !dbg !3910, !tbaa !1531
  %26 = and i32 %25, -17, !dbg !3910
  store i32 %26, i32* %24, align 8, !dbg !3910, !tbaa !1531
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3911
  store i64 %21, i64* %27, align 8, !dbg !3912, !tbaa !3913
  br label %30, !dbg !3914

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3915
  br label %30, !dbg !3916

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3889
  ret i32 %31, !dbg !3917
}

; Function Attrs: nofree nounwind
declare !dbg !725 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3918 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3926, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i8* %1, metadata !3927, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %2, metadata !3928, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3929, metadata !DIExpression()), !dbg !3935
  %6 = bitcast i32* %5 to i8*, !dbg !3936
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3936
  %7 = icmp eq i32* %0, null, !dbg !3937
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3939
  call void @llvm.dbg.value(metadata i32* %8, metadata !3926, metadata !DIExpression()), !dbg !3935
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3940
  call void @llvm.dbg.value(metadata i64 %9, metadata !3930, metadata !DIExpression()), !dbg !3935
  %10 = icmp ugt i64 %9, -3, !dbg !3941
  %11 = icmp ne i64 %2, 0, !dbg !3942
  %12 = and i1 %11, %10, !dbg !3943
  br i1 %12, label %13, label %18, !dbg !3943

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3944
  br i1 %14, label %18, label %15, !dbg !3945

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3946, !tbaa !1318
  call void @llvm.dbg.value(metadata i8 %16, metadata !3932, metadata !DIExpression()), !dbg !3947
  %17 = zext i8 %16 to i32, !dbg !3948
  store i32 %17, i32* %8, align 4, !dbg !3949, !tbaa !1331
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3935
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3950
  ret i64 %19, !dbg !3950
}

; Function Attrs: nounwind
declare !dbg !731 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3951 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3957, metadata !DIExpression()), !dbg !3962
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3963
  call void @llvm.dbg.value(metadata i1 undef, metadata !3958, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3964, metadata !DIExpression()), !dbg !3967
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3969
  %4 = load i32, i32* %3, align 8, !dbg !3969, !tbaa !1531
  %5 = and i32 %4, 32, !dbg !3969
  %6 = icmp eq i32 %5, 0, !dbg !3970
  call void @llvm.dbg.value(metadata i1 %6, metadata !3960, metadata !DIExpression()), !dbg !3962
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3971
  %8 = icmp ne i32 %7, 0, !dbg !3972
  call void @llvm.dbg.value(metadata i1 %8, metadata !3961, metadata !DIExpression()), !dbg !3962
  br i1 %6, label %9, label %19, !dbg !3973

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3975
  call void @llvm.dbg.value(metadata i1 %10, metadata !3958, metadata !DIExpression()), !dbg !3962
  %11 = xor i1 %8, true, !dbg !3976
  %12 = or i1 %10, %11, !dbg !3976
  %13 = sext i1 %8 to i32, !dbg !3976
  br i1 %12, label %22, label %14, !dbg !3976

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3977
  %16 = load i32, i32* %15, align 4, !dbg !3977, !tbaa !1331
  %17 = icmp ne i32 %16, 9, !dbg !3978
  %18 = sext i1 %17 to i32, !dbg !3979
  br label %22, !dbg !3979

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3980

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3982
  store i32 0, i32* %21, align 4, !dbg !3984, !tbaa !1331
  br label %22, !dbg !3982

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3962
  ret i32 %23, !dbg !3985
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3986 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !3993
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3994
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3994
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3989, metadata !DIExpression()), !dbg !3995
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3996
  %5 = icmp eq i32 %4, 0, !dbg !3996
  br i1 %5, label %6, label %13, !dbg !3998

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3999
  %8 = load i16, i16* %7, align 16, !dbg !3999
  %9 = icmp eq i16 %8, 67, !dbg !3999
  br i1 %9, label %13, label %10, !dbg !4000

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !4001
  %12 = icmp ne i32 %11, 0, !dbg !4002
  br label %13, !dbg !4000

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3993
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !4003
  ret i1 %14, !dbg !4003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4004 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !4007
  call void @llvm.dbg.value(metadata i8* %1, metadata !4006, metadata !DIExpression()), !dbg !4008
  %2 = icmp eq i8* %1, null, !dbg !4009
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %3, metadata !4006, metadata !DIExpression()), !dbg !4008
  %4 = load i8, i8* %3, align 1, !dbg !4012, !tbaa !1318
  %5 = icmp eq i8 %4, 0, !dbg !4016
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %6, metadata !4006, metadata !DIExpression()), !dbg !4008
  ret i8* %6, !dbg !4018
}

; Function Attrs: nounwind
declare !dbg !1182 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4019 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4023, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i8* %1, metadata !4024, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %2, metadata !4025, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i32 %0, metadata !4027, metadata !DIExpression()) #18, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %1, metadata !4030, metadata !DIExpression()) #18, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %2, metadata !4031, metadata !DIExpression()) #18, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()) #18, !dbg !4044
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4046
  call void @llvm.dbg.value(metadata i8* %4, metadata !4043, metadata !DIExpression()) #18, !dbg !4044
  call void @llvm.dbg.value(metadata i8* %4, metadata !4032, metadata !DIExpression()) #18, !dbg !4036
  %5 = icmp eq i8* %4, null, !dbg !4047
  br i1 %5, label %6, label %9, !dbg !4048

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4049
  br i1 %7, label %19, label %8, !dbg !4052

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4053, !tbaa !1318
  br label %19, !dbg !4054

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %10, metadata !4033, metadata !DIExpression()) #18, !dbg !4056
  %11 = icmp ult i64 %10, %2, !dbg !4057
  br i1 %11, label %12, label %14, !dbg !4059

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4060
  call void @llvm.dbg.value(metadata i8* %1, metadata !4062, metadata !DIExpression()) #18, !dbg !4067
  call void @llvm.dbg.value(metadata i8* %4, metadata !4065, metadata !DIExpression()) #18, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %13, metadata !4066, metadata !DIExpression()) #18, !dbg !4067
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !4069
  br label %19, !dbg !4070

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4071
  br i1 %15, label %19, label %16, !dbg !4074

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4075
  call void @llvm.dbg.value(metadata i8* %1, metadata !4062, metadata !DIExpression()) #18, !dbg !4077
  call void @llvm.dbg.value(metadata i8* %4, metadata !4065, metadata !DIExpression()) #18, !dbg !4077
  call void @llvm.dbg.value(metadata i64 %17, metadata !4066, metadata !DIExpression()) #18, !dbg !4077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !4079
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4080
  store i8 0, i8* %18, align 1, !dbg !4081, !tbaa !1318
  br label %19, !dbg !4082

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4083
  ret i32 %20, !dbg !4084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4087, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()) #18, !dbg !4089
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %2, metadata !4043, metadata !DIExpression()) #18, !dbg !4089
  ret i8* %2, !dbg !4092
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

!llvm.dbg.cu = !{!2, !255, !260, !305, !466, !311, !352, !509, !460, !551, !572, !575, !595, !599, !602, !646, !687, !728, !747, !785, !792, !1185}
!llvm.ident = !{!1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188, !1188}
!llvm.module.flags = !{!1189, !1190, !1191, !1192, !1193}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 45, type: !189, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !186, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fold.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 46, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!36 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!37 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!38 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!39 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!40 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!44 = !{!45, !55, !116, !120, !124, !127, !130, !137, !152, !49, !106, !156, !160, !164, !168, !171, !174, !108, !51, !179, !53, !86, !184, !185}
!45 = !DISubprogram(name: "dcgettext", scope: !46, file: !46, line: 51, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!46 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !51, !51, !53}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!56 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!57 = !DISubroutineType(types: !58)
!58 = !{!53, !51, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !62)
!61 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !78, !79, !80, !81, !85, !87, !89, !93, !96, !98, !101, !104, !105, !107, !111, !112}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !61, line: 51, baseType: !53, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !60, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !60, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !60, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !60, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !60, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !60, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !60, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !60, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !60, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !60, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !60, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !60, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !61, line: 36, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !60, file: !61, line: 70, baseType: !59, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !60, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !60, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!83 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !60, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !60, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !60, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !61, line: 43, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !83, line: 153, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !60, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !61, line: 37, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !60, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !61, line: 38, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !60, file: !61, line: 93, baseType: !59, size: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !60, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !60, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !60, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !60, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DISubprogram(name: "set_program_name", scope: !117, file: !117, line: 37, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!117 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !51}
!120 = !DISubprogram(name: "setlocale", scope: !121, file: !121, line: 122, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!121 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!122 = !DISubroutineType(types: !123)
!123 = !{!49, !53, !51}
!124 = !DISubprogram(name: "bindtextdomain", scope: !46, file: !46, line: 86, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!125 = !DISubroutineType(types: !126)
!126 = !{!49, !51, !51}
!127 = !DISubprogram(name: "textdomain", scope: !46, file: !46, line: 82, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!128 = !DISubroutineType(types: !129)
!129 = !{!49, !51}
!130 = !DISubprogram(name: "atexit", scope: !131, file: !131, line: 595, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!131 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!132 = !DISubroutineType(types: !133)
!133 = !{!53, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null}
!137 = !DISubprogram(name: "getopt_long", scope: !138, file: !138, line: 66, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!138 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!139 = !DISubroutineType(types: !140)
!140 = !{!53, !53, !141, !51, !143, !150}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !138, line: 50, size: 256, elements: !146)
!146 = !{!147, !148, !149, !151}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !138, line: 52, baseType: !51, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !145, file: !138, line: 55, baseType: !53, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !145, file: !138, line: 56, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !138, line: 57, baseType: !53, size: 32, offset: 192)
!152 = !DISubprogram(name: "xdectoumax", scope: !153, file: !153, line: 31, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!153 = !DIFile(filename: "./lib/xdectoint.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !DISubroutineType(types: !155)
!155 = !{!110, !51, !110, !110, !51, !51, !53}
!156 = !DISubprogram(name: "version_etc", scope: !157, file: !157, line: 69, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!157 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{null, !59, !51, !51, !51, null}
!160 = !DISubprogram(name: "rpl_fclose", scope: !161, file: !161, line: 672, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!161 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !DISubroutineType(types: !163)
!163 = !{!53, !59}
!164 = !DISubprogram(name: "error", scope: !165, file: !165, line: 52, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!165 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !DISubroutineType(types: !167)
!167 = !{null, !53, !53, !51, null}
!168 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!169 = !DISubroutineType(types: !170)
!170 = !{!49, !53, !5, !51}
!171 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !59, !20}
!174 = !DISubprogram(name: "x2realloc", scope: !175, file: !175, line: 61, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!175 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !DISubroutineType(types: !177)
!177 = !{!106, !106, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!179 = !DISubprogram(name: "fwrite_unlocked", scope: !56, file: !56, line: 675, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!180 = !DISubroutineType(types: !181)
!181 = !{!110, !182, !110, !110, !59}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !{!187, !190, !192, !193, !198, !203, !249}
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 39, type: !189, isLocal: true, isDefinition: true)
!189 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "count_bytes", scope: !2, file: !3, line: 42, type: !189, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 47, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 280, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 35)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1536, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 6)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "line_out", scope: !205, file: !3, line: 126, type: !49, isLocal: true, isDefinition: true)
!205 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 120, type: !206, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!189, !51, !108}
!208 = !{!209, !210, !211, !215, !216, !217, !218, !219, !224, !225, !226, !231, !232, !235, !237, !238, !239, !241, !242, !243, !246, !247, !248}
!209 = !DILocalVariable(name: "filename", arg: 1, scope: !205, file: !3, line: 120, type: !51)
!210 = !DILocalVariable(name: "width", arg: 2, scope: !205, file: !3, line: 120, type: !108)
!211 = !DILocalVariable(name: "istream", scope: !205, file: !3, line: 122, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !60)
!214 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!215 = !DILocalVariable(name: "c", scope: !205, file: !3, line: 123, type: !53)
!216 = !DILocalVariable(name: "column", scope: !205, file: !3, line: 124, type: !108)
!217 = !DILocalVariable(name: "offset_out", scope: !205, file: !3, line: 125, type: !108)
!218 = !DILocalVariable(name: "saved_errno", scope: !205, file: !3, line: 128, type: !53)
!219 = !DILocalVariable(name: "__ptr", scope: !220, file: !3, line: 154, type: !51)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 154, column: 11)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 152, column: 9)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 151, column: 11)
!223 = distinct !DILexicalBlock(scope: !205, file: !3, line: 147, column: 5)
!224 = !DILocalVariable(name: "__stream", scope: !220, file: !3, line: 154, type: !212)
!225 = !DILocalVariable(name: "__cnt", scope: !220, file: !3, line: 154, type: !108)
!226 = !DILocalVariable(name: "found_blank", scope: !227, file: !3, line: 169, type: !189)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 168, column: 13)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 167, column: 15)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 163, column: 9)
!230 = distinct !DILexicalBlock(scope: !223, file: !3, line: 162, column: 11)
!231 = !DILocalVariable(name: "logical_end", scope: !227, file: !3, line: 170, type: !108)
!232 = !DILocalVariable(name: "i", scope: !233, file: !3, line: 185, type: !108)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 184, column: 17)
!234 = distinct !DILexicalBlock(scope: !227, file: !3, line: 183, column: 19)
!235 = !DILocalVariable(name: "__ptr", scope: !236, file: !3, line: 189, type: !51)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 189, column: 19)
!237 = !DILocalVariable(name: "__stream", scope: !236, file: !3, line: 189, type: !212)
!238 = !DILocalVariable(name: "__cnt", scope: !236, file: !3, line: 189, type: !108)
!239 = !DILocalVariable(name: "__ptr", scope: !240, file: !3, line: 210, type: !51)
!240 = distinct !DILexicalBlock(scope: !229, file: !3, line: 210, column: 11)
!241 = !DILocalVariable(name: "__stream", scope: !240, file: !3, line: 210, type: !212)
!242 = !DILocalVariable(name: "__cnt", scope: !240, file: !3, line: 210, type: !108)
!243 = !DILocalVariable(name: "__ptr", scope: !244, file: !3, line: 221, type: !51)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 221, column: 5)
!245 = distinct !DILexicalBlock(scope: !205, file: !3, line: 220, column: 7)
!246 = !DILocalVariable(name: "__stream", scope: !244, file: !3, line: 221, type: !212)
!247 = !DILocalVariable(name: "__cnt", scope: !244, file: !3, line: 221, type: !108)
!248 = !DILabel(scope: !223, name: "rescan", file: !3, line: 159)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "allocated_out", scope: !205, file: !3, line: 127, type: !108, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!252 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "Version", scope: !255, file: !256, line: 2, type: !51, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !257, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!257 = !{!253}
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "file_name", scope: !260, file: !261, line: 46, type: !51, isLocal: true, isDefinition: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !262, globals: !300, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!262 = !{!263, !45, !299, !164}
!263 = !DISubprogram(name: "close_stream", scope: !264, file: !264, line: 2, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!264 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!265 = !DISubroutineType(types: !266)
!266 = !{!53, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !268, file: !61, line: 51, baseType: !53, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !268, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !268, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !268, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !268, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !268, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !268, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !268, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !268, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !268, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !268, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !268, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !268, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !268, file: !61, line: 70, baseType: !267, size: 64, offset: 832)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !268, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !268, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !268, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !268, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !268, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !268, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !268, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !268, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !268, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !268, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !268, file: !61, line: 93, baseType: !267, size: 64, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !268, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !268, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !268, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !268, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!299 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!300 = !{!258, !301}
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !260, file: !261, line: 56, type: !189, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "exit_failure", scope: !305, file: !306, line: 24, type: !308, isLocal: false, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !307, splitDebugInlining: false, nameTableKind: None)
!306 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!307 = !{!303}
!308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "program_name", scope: !311, file: !312, line: 33, type: !51, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !313, globals: !349, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!313 = !{!106, !314, !49}
!314 = !DISubprogram(name: "fputs", scope: !56, file: !56, line: 626, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!315 = !DISubroutineType(types: !316)
!316 = !{!53, !51, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !318, file: !61, line: 51, baseType: !53, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !318, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !318, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !318, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !318, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !318, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !318, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !318, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !318, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !318, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !318, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !318, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !318, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !318, file: !61, line: 70, baseType: !317, size: 64, offset: 832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !318, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !318, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !318, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !318, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !318, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !318, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !318, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !318, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !318, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !318, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !318, file: !61, line: 93, baseType: !317, size: 64, offset: 1344)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !318, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !318, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !318, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !318, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!349 = !{!309}
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !352, file: !353, line: 85, type: !454, isLocal: false, isDefinition: true)
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !354, retainedTypes: !360, globals: !427, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !{!5, !355, !29}
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !356)
!356 = !{!357, !358, !359}
!357 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!360 = !{!361, !364, !379, !382, !53, !86, !385, !108, !402, !406, !45, !412, !416, !49, !420, !423, !424}
!361 = !DISubprogram(name: "xmemdup", scope: !175, file: !175, line: 62, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!362 = !DISubroutineType(types: !363)
!363 = !{!106, !182, !110}
!364 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!365 = !DISubroutineType(types: !366)
!366 = !{!49, !51, !110, !178, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !353, line: 65, size: 448, elements: !370)
!370 = !{!371, !372, !373, !377, !378}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !369, file: !353, line: 68, baseType: !5, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !353, line: 71, baseType: !53, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !369, file: !353, line: 75, baseType: !374, size: 256, offset: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !369, file: !353, line: 78, baseType: !51, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !369, file: !353, line: 81, baseType: !51, size: 64, offset: 384)
!379 = !DISubprogram(name: "free", scope: !131, file: !131, line: 565, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !106}
!382 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!383 = !DISubroutineType(types: !384)
!384 = !{!49, !53, !51, !51, !51, !110}
!385 = !DISubprogram(name: "rpl_mbrtowc", scope: !386, file: !386, line: 717, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!386 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!387 = !DISubroutineType(types: !388)
!388 = !{!110, !150, !51, !110, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 13, size: 64, elements: !392)
!391 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !390, file: !391, line: 15, baseType: !53, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !390, file: !391, line: 20, baseType: !395, size: 32, offset: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !391, line: 16, size: 32, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !395, file: !391, line: 18, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !395, file: !391, line: 19, baseType: !399, size: 32)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 4)
!402 = !DISubprogram(name: "iswprint", scope: !403, file: !403, line: 120, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!403 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!404 = !DISubroutineType(types: !405)
!405 = !{!53, !7}
!406 = !DISubprogram(name: "mbsinit", scope: !407, file: !407, line: 292, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!407 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!408 = !DISubroutineType(types: !409)
!409 = !{!53, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!412 = !DISubprogram(name: "locale_charset", scope: !413, file: !413, line: 35, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!413 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!414 = !DISubroutineType(types: !415)
!415 = !{!51}
!416 = !DISubprogram(name: "c_strcasecmp", scope: !417, file: !417, line: 42, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!417 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !DISubroutineType(types: !419)
!419 = !{!53, !51, !51}
!420 = !DISubprogram(name: "xmalloc", scope: !175, file: !175, line: 53, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!421 = !DISubroutineType(types: !422)
!422 = !{!106, !110}
!423 = !DISubprogram(name: "xalloc_die", scope: !175, file: !175, line: 51, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !54)
!424 = !DISubprogram(name: "xrealloc", scope: !175, file: !175, line: 59, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!425 = !DISubroutineType(types: !426)
!426 = !{!106, !106, !110}
!427 = !{!350, !428, !434, !436, !438, !443, !450, !452}
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !352, file: !353, line: 101, type: !430, isLocal: false, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 320, elements: !432)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!432 = !{!433}
!433 = !DISubrange(count: 10)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !352, file: !353, line: 1052, type: !369, isLocal: false, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !352, file: !353, line: 116, type: !369, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "slot0", scope: !352, file: !353, line: 842, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 256)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "slotvec", scope: !352, file: !353, line: 845, type: !445, isLocal: true, isDefinition: true)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !353, line: 834, size: 128, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !446, file: !353, line: 836, baseType: !108, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !446, file: !353, line: 837, baseType: !49, size: 64, offset: 64)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "nslots", scope: !352, file: !353, line: 843, type: !53, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "slotvec0", scope: !352, file: !353, line: 844, type: !446, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 704, elements: !456)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!456 = !{!457}
!457 = !DISubrange(count: 11)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !460, file: !461, line: 26, type: !463, isLocal: false, isDefinition: true)
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !462, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!462 = !{!458}
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 47)
!466 = distinct !DICompileUnit(language: DW_LANG_C99, file: !467, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !468, retainedTypes: !469, splitDebugInlining: false, nameTableKind: None)
!467 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!468 = !{!20}
!469 = !{!470, !474}
!470 = !DISubprogram(name: "posix_fadvise", scope: !471, file: !471, line: 288, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!471 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!472 = !DISubroutineType(types: !473)
!473 = !{!53, !53, !84, !84, !53}
!474 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!475 = !DISubroutineType(types: !476)
!476 = !{!53, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !478, file: !61, line: 51, baseType: !53, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !478, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !478, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !478, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !478, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !478, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !478, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !478, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !478, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !478, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !478, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !478, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !478, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !478, file: !61, line: 70, baseType: !477, size: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !478, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !478, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !478, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !478, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !478, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !478, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !478, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !478, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !478, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !478, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !478, file: !61, line: 93, baseType: !477, size: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !478, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !478, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !478, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !478, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !511, retainedTypes: !515, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!512}
!512 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !510, line: 40, baseType: !7, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!515 = !{!45, !516, !106}
!516 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!517 = !DISubroutineType(types: !518)
!518 = !{!53, !51, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !520, file: !61, line: 51, baseType: !53, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !520, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !520, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !520, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !520, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !520, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !520, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !520, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !520, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !520, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !520, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !520, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !520, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !520, file: !61, line: 70, baseType: !519, size: 64, offset: 832)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !520, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !520, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !520, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !520, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !520, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !520, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !520, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !520, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !520, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !520, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !520, file: !61, line: 93, baseType: !519, size: 64, offset: 1344)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !520, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !520, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !520, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !520, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!551 = distinct !DICompileUnit(language: DW_LANG_C99, file: !552, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !553, retainedTypes: !566, splitDebugInlining: false, nameTableKind: None)
!552 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!553 = !{!554}
!554 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !555, file: !175, line: 186, baseType: !7, size: 32, elements: !564)
!555 = distinct !DISubprogram(name: "x2nrealloc", scope: !175, file: !175, line: 174, type: !556, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !559)
!556 = !DISubroutineType(types: !557)
!557 = !{!106, !106, !558, !108}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(name: "p", arg: 1, scope: !555, file: !175, line: 174, type: !106)
!561 = !DILocalVariable(name: "pn", arg: 2, scope: !555, file: !175, line: 174, type: !558)
!562 = !DILocalVariable(name: "s", arg: 3, scope: !555, file: !175, line: 174, type: !108)
!563 = !DILocalVariable(name: "n", scope: !555, file: !175, line: 176, type: !108)
!564 = !{!565}
!565 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!566 = !{!108, !423, !420, !424, !49, !379, !106, !567, !570}
!567 = !DISubprogram(name: "xcalloc", scope: !175, file: !175, line: 57, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!568 = !DISubroutineType(types: !569)
!569 = !{!106, !110, !110}
!570 = !DISubprogram(name: "rpl_calloc", scope: !571, file: !571, line: 688, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!571 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !574, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!574 = !{!45, !164}
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !577, retainedTypes: !586, splitDebugInlining: false, nameTableKind: None)
!576 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!577 = !{!578}
!578 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !579, line: 25, baseType: !7, size: 32, elements: !580)
!579 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!581, !582, !583, !584, !585}
!581 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!582 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!583 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!584 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!585 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!586 = !{!587, !591, !164}
!587 = !DISubprogram(name: "xstrtoumax", scope: !579, file: !579, line: 48, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!588 = !DISubroutineType(types: !589)
!589 = !{!578, !51, !590, !53, !178, !51}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!591 = !DISubprogram(name: "quote", scope: !592, file: !592, line: 44, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!592 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = !DISubroutineType(types: !594)
!594 = !{!51, !51}
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !597, retainedTypes: !598, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !{!578, !29}
!598 = !{!53, !86}
!599 = distinct !DICompileUnit(language: DW_LANG_C99, file: !600, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !601, splitDebugInlining: false, nameTableKind: None)
!600 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!601 = !{!106}
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !604, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!604 = !{!605, !640, !641, !645}
!605 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!606 = !DISubroutineType(types: !607)
!607 = !{!53, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !609, file: !61, line: 51, baseType: !53, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !609, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !609, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !609, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !609, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !609, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !609, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !609, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !609, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !609, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !609, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !609, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !609, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !609, file: !61, line: 70, baseType: !608, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !609, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !609, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !609, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !609, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !609, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !609, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !609, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !609, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !609, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !609, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !609, file: !61, line: 93, baseType: !608, size: 64, offset: 1344)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !609, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !609, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !609, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !609, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!640 = !DISubprogram(name: "fclose", scope: !56, file: !56, line: 213, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!641 = !DISubprogram(name: "lseek", scope: !642, file: !642, line: 334, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!642 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!643 = !DISubroutineType(types: !644)
!644 = !{!84, !53, !84, !53}
!645 = !DISubprogram(name: "rpl_fflush", scope: !161, file: !161, line: 718, type: !606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!646 = distinct !DICompileUnit(language: DW_LANG_C99, file: !647, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !648, splitDebugInlining: false, nameTableKind: None)
!647 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!648 = !{!106, !649, !684}
!649 = !DISubprogram(name: "fflush", scope: !56, file: !56, line: 218, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!650 = !DISubroutineType(types: !651)
!651 = !{!53, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !653, file: !61, line: 51, baseType: !53, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !653, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !653, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !653, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !653, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !653, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !653, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !653, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !653, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !653, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !653, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !653, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !653, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !653, file: !61, line: 70, baseType: !652, size: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !653, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !653, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !653, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !653, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !653, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !653, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !653, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !653, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !653, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !653, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !653, file: !61, line: 93, baseType: !652, size: 64, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !653, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !653, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !653, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !653, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!684 = !DISubprogram(name: "rpl_fseeko", scope: !161, file: !161, line: 1034, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!685 = !DISubroutineType(types: !686)
!686 = !{!53, !652, !84, !53}
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !689, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!689 = !{!106, !690, !641, !725}
!690 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!691 = !DISubroutineType(types: !692)
!692 = !{!53, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !694, file: !61, line: 51, baseType: !53, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !694, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !694, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !694, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !694, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !694, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !694, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !694, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !694, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !694, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !694, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !694, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !694, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !694, file: !61, line: 70, baseType: !693, size: 64, offset: 832)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !694, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !694, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !694, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !694, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !694, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !694, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !694, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !694, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !694, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !694, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !694, file: !61, line: 93, baseType: !693, size: 64, offset: 1344)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !694, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !694, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !694, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !694, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!725 = !DISubprogram(name: "fseeko", scope: !56, file: !56, line: 707, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!726 = !DISubroutineType(types: !727)
!727 = !{!53, !693, !84, !53}
!728 = distinct !DICompileUnit(language: DW_LANG_C99, file: !729, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !730, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!730 = !{!731, !108, !743}
!731 = !DISubprogram(name: "mbrtowc", scope: !407, file: !407, line: 296, type: !732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!732 = !DISubroutineType(types: !733)
!733 = !{!110, !150, !51, !110, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 13, size: 64, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !735, file: !391, line: 15, baseType: !53, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !735, file: !391, line: 20, baseType: !739, size: 32, offset: 32)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !735, file: !391, line: 16, size: 32, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !739, file: !391, line: 18, baseType: !7, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !739, file: !391, line: 19, baseType: !399, size: 32)
!743 = !DISubprogram(name: "hard_locale", scope: !744, file: !744, line: 26, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!744 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!745 = !DISubroutineType(types: !746)
!746 = !{!189, !53}
!747 = distinct !DICompileUnit(language: DW_LANG_C99, file: !748, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !749, splitDebugInlining: false, nameTableKind: None)
!748 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!749 = !{!750}
!750 = !DISubprogram(name: "rpl_fclose", scope: !161, file: !161, line: 672, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!751 = !DISubroutineType(types: !752)
!752 = !{!53, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !754, file: !61, line: 51, baseType: !53, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !754, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !754, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !754, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !754, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !754, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !754, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !754, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !754, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !754, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !754, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !754, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !754, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !754, file: !61, line: 70, baseType: !753, size: 64, offset: 832)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !754, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !754, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !754, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !754, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !754, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !754, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !754, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !754, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !754, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !754, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !754, file: !61, line: 93, baseType: !753, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !754, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !754, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !754, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !754, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!785 = distinct !DICompileUnit(language: DW_LANG_C99, file: !786, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !787, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!787 = !{!788}
!788 = !DISubprogram(name: "setlocale_null_r", scope: !789, file: !789, line: 64, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!789 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!790 = !DISubroutineType(types: !791)
!791 = !{!53, !53, !49, !110}
!792 = distinct !DICompileUnit(language: DW_LANG_C99, file: !793, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !794, retainedTypes: !1181, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!794 = !{!795}
!795 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !796, line: 41, baseType: !7, size: 32, elements: !797)
!796 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!798 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!799 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!800 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!801 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!802 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!803 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!804 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!805 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!806 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!807 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!808 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!809 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!810 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!811 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!812 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!813 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!814 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!815 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!816 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!817 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!818 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!819 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!820 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!821 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!822 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!823 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!824 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!825 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!826 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!827 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!828 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!829 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!830 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!831 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!832 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!833 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!834 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!835 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!836 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!837 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!838 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!839 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!840 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!841 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!842 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!843 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!844 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!845 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!846 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!847 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!906 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!909 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!910 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!911 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!912 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!913 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!914 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!915 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!916 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!917 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!918 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!919 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!920 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!993 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1066 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1067 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1068 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1069 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1070 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1071 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1072 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1073 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1074 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1075 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1076 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1077 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1078 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1079 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1080 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1082 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1083 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1084 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1085 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1086 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1087 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1113 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1114 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1115 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1116 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1117 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1122 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1123 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1124 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1125 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1168 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1169 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1170 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1171 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1172 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1173 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1174 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1175 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1176 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1177 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1178 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1179 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1180 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1181 = !{!1182, !106}
!1182 = !DISubprogram(name: "nl_langinfo", scope: !796, file: !796, line: 661, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!49, !53}
!1185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1186, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !1187, splitDebugInlining: false, nameTableKind: None)
!1186 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1187 = !{!106, !120}
!1188 = !{!"clang version 10.0.0 "}
!1189 = !{i32 7, !"Dwarf Version", i32 4}
!1190 = !{i32 2, !"Debug Info Version", i32 3}
!1191 = !{i32 1, !"wchar_size", i32 4}
!1192 = !{i32 7, !"PIC Level", i32 2}
!1193 = !{i32 7, !"PIE Level", i32 2}
!1194 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 60, type: !1195, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !53}
!1197 = !{!1198}
!1198 = !DILocalVariable(name: "status", arg: 1, scope: !1194, file: !3, line: 60, type: !53)
!1199 = !DILocalVariable(name: "infomap", scope: !1200, file: !1201, line: 636, type: !1213)
!1200 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1201, file: !1201, line: 634, type: !118, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1201 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1202 = !{!1203, !1199, !1204, !1205, !1212}
!1203 = !DILocalVariable(name: "program", arg: 1, scope: !1200, file: !1201, line: 634, type: !51)
!1204 = !DILocalVariable(name: "node", scope: !1200, file: !1201, line: 646, type: !51)
!1205 = !DILocalVariable(name: "map_prog", scope: !1200, file: !1201, line: 647, type: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1200, file: !1201, line: 636, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1208, file: !1201, line: 636, baseType: !51, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !1201, line: 636, baseType: !51, size: 64, offset: 64)
!1212 = !DILocalVariable(name: "lc_messages", scope: !1200, file: !1201, line: 659, type: !51)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 896, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 7)
!1216 = !DILocation(line: 636, column: 67, scope: !1200, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 84, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 65, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 62, column: 7)
!1220 = !DILocation(line: 0, scope: !1194)
!1221 = !DILocation(line: 62, column: 14, scope: !1219)
!1222 = !DILocation(line: 62, column: 7, scope: !1194)
!1223 = !DILocation(line: 63, column: 5, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 63, column: 5)
!1225 = !{!1226, !1226, i64 0}
!1226 = !{!"any pointer", !1227, i64 0}
!1227 = !{!"omnipotent char", !1228, i64 0}
!1228 = !{!"Simple C/C++ TBAA"}
!1229 = !DILocation(line: 66, column: 7, scope: !1218)
!1230 = !DILocation(line: 70, column: 7, scope: !1218)
!1231 = !DILocation(line: 583, column: 3, scope: !1232, inlinedAt: !1233)
!1232 = distinct !DISubprogram(name: "emit_stdin_note", scope: !1201, file: !1201, line: 581, type: !135, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!1233 = distinct !DILocation(line: 74, column: 7, scope: !1218)
!1234 = !DILocation(line: 590, column: 3, scope: !1235, inlinedAt: !1236)
!1235 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1201, file: !1201, line: 588, type: !135, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!1236 = distinct !DILocation(line: 75, column: 7, scope: !1218)
!1237 = !DILocation(line: 77, column: 7, scope: !1218)
!1238 = !DILocation(line: 82, column: 7, scope: !1218)
!1239 = !DILocation(line: 83, column: 7, scope: !1218)
!1240 = !DILocation(line: 0, scope: !1200, inlinedAt: !1217)
!1241 = !DILocation(line: 636, column: 3, scope: !1200, inlinedAt: !1217)
!1242 = !DILocation(line: 647, column: 36, scope: !1200, inlinedAt: !1217)
!1243 = !DILocation(line: 649, column: 3, scope: !1200, inlinedAt: !1217)
!1244 = !DILocation(line: 649, column: 33, scope: !1200, inlinedAt: !1217)
!1245 = !DILocation(line: 650, column: 13, scope: !1200, inlinedAt: !1217)
!1246 = !DILocation(line: 649, column: 20, scope: !1200, inlinedAt: !1217)
!1247 = !{!1248, !1226, i64 0}
!1248 = !{!"infomap", !1226, i64 0, !1226, i64 8}
!1249 = !DILocation(line: 649, column: 10, scope: !1200, inlinedAt: !1217)
!1250 = !DILocation(line: 649, column: 28, scope: !1200, inlinedAt: !1217)
!1251 = distinct !{!1251, !1243, !1245}
!1252 = !DILocation(line: 652, column: 17, scope: !1253, inlinedAt: !1217)
!1253 = distinct !DILexicalBlock(scope: !1200, file: !1201, line: 652, column: 7)
!1254 = !{!1248, !1226, i64 8}
!1255 = !DILocation(line: 652, column: 7, scope: !1253, inlinedAt: !1217)
!1256 = !DILocation(line: 652, column: 7, scope: !1200, inlinedAt: !1217)
!1257 = !DILocation(line: 655, column: 3, scope: !1200, inlinedAt: !1217)
!1258 = !DILocation(line: 659, column: 29, scope: !1200, inlinedAt: !1217)
!1259 = !DILocation(line: 660, column: 7, scope: !1260, inlinedAt: !1217)
!1260 = distinct !DILexicalBlock(scope: !1200, file: !1201, line: 660, column: 7)
!1261 = !DILocation(line: 660, column: 19, scope: !1260, inlinedAt: !1217)
!1262 = !DILocation(line: 660, column: 22, scope: !1260, inlinedAt: !1217)
!1263 = !DILocation(line: 660, column: 7, scope: !1200, inlinedAt: !1217)
!1264 = !DILocation(line: 666, column: 7, scope: !1265, inlinedAt: !1217)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !1201, line: 661, column: 5)
!1266 = !DILocation(line: 668, column: 5, scope: !1265, inlinedAt: !1217)
!1267 = !DILocation(line: 669, column: 3, scope: !1200, inlinedAt: !1217)
!1268 = !DILocation(line: 671, column: 3, scope: !1200, inlinedAt: !1217)
!1269 = !DILocation(line: 673, column: 1, scope: !1200, inlinedAt: !1217)
!1270 = !DILocation(line: 86, column: 3, scope: !1194)
!1271 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 240, type: !1272, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!53, !53, !590}
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1275 = !DILocalVariable(name: "argc", arg: 1, scope: !1271, file: !3, line: 240, type: !53)
!1276 = !DILocalVariable(name: "argv", arg: 2, scope: !1271, file: !3, line: 240, type: !590)
!1277 = !DILocalVariable(name: "width", scope: !1271, file: !3, line: 242, type: !108)
!1278 = !DILocalVariable(name: "i", scope: !1271, file: !3, line: 243, type: !53)
!1279 = !DILocalVariable(name: "optc", scope: !1271, file: !3, line: 244, type: !53)
!1280 = !DILocalVariable(name: "ok", scope: !1271, file: !3, line: 245, type: !189)
!1281 = !DILocalVariable(name: "optargbuf", scope: !1282, file: !3, line: 259, type: !1283)
!1282 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 258, column: 5)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 16, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 2)
!1286 = !DILocation(line: 0, scope: !1271)
!1287 = !DILocation(line: 248, column: 21, scope: !1271)
!1288 = !DILocation(line: 248, column: 3, scope: !1271)
!1289 = !DILocation(line: 249, column: 3, scope: !1271)
!1290 = !DILocation(line: 250, column: 3, scope: !1271)
!1291 = !DILocation(line: 251, column: 3, scope: !1271)
!1292 = !DILocation(line: 253, column: 3, scope: !1271)
!1293 = !DILocation(line: 255, column: 48, scope: !1271)
!1294 = !DILocation(line: 255, column: 30, scope: !1271)
!1295 = !DILocation(line: 255, column: 16, scope: !1271)
!1296 = !DILocation(line: 257, column: 18, scope: !1271)
!1297 = !DILocation(line: 257, column: 71, scope: !1271)
!1298 = !DILocation(line: 257, column: 3, scope: !1271)
!1299 = !DILocation(line: 0, scope: !1282)
!1300 = !DILocation(line: 0, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 276, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 273, column: 15)
!1303 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 262, column: 9)
!1304 = !DILocation(line: 259, column: 7, scope: !1282)
!1305 = !DILocation(line: 259, column: 12, scope: !1282)
!1306 = !DILocation(line: 261, column: 7, scope: !1282)
!1307 = !DILocation(line: 283, column: 31, scope: !1303)
!1308 = !DILocation(line: 264, column: 23, scope: !1303)
!1309 = !DILocation(line: 265, column: 11, scope: !1303)
!1310 = !DILocation(line: 268, column: 24, scope: !1303)
!1311 = !DILocation(line: 269, column: 11, scope: !1303)
!1312 = !DILocation(line: 273, column: 15, scope: !1302)
!1313 = !DILocation(line: 273, column: 15, scope: !1303)
!1314 = !DILocation(line: 274, column: 19, scope: !1302)
!1315 = !DILocation(line: 274, column: 13, scope: !1302)
!1316 = !DILocation(line: 277, column: 30, scope: !1301)
!1317 = !DILocation(line: 277, column: 28, scope: !1301)
!1318 = !{!1227, !1227, i64 0}
!1319 = !DILocation(line: 278, column: 28, scope: !1301)
!1320 = !DILocation(line: 279, column: 22, scope: !1301)
!1321 = !DILocation(line: 284, column: 31, scope: !1303)
!1322 = !DILocation(line: 283, column: 19, scope: !1303)
!1323 = !DILocation(line: 285, column: 11, scope: !1303)
!1324 = !DILocation(line: 287, column: 9, scope: !1303)
!1325 = !DILocation(line: 289, column: 9, scope: !1303)
!1326 = !DILocation(line: 292, column: 11, scope: !1303)
!1327 = !DILocation(line: 294, column: 5, scope: !1271)
!1328 = distinct !{!1328, !1298, !1327}
!1329 = !DILocation(line: 296, column: 15, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 296, column: 7)
!1331 = !{!1332, !1332, i64 0}
!1332 = !{!"int", !1227, i64 0}
!1333 = !DILocation(line: 296, column: 12, scope: !1330)
!1334 = !DILocation(line: 296, column: 7, scope: !1271)
!1335 = !DILocation(line: 301, column: 26, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 301, column: 7)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 301, column: 7)
!1338 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 299, column: 5)
!1339 = !DILocation(line: 301, column: 7, scope: !1337)
!1340 = !DILocation(line: 297, column: 10, scope: !1330)
!1341 = !DILocation(line: 297, column: 8, scope: !1330)
!1342 = !DILocation(line: 297, column: 5, scope: !1330)
!1343 = !DILocation(line: 302, column: 26, scope: !1336)
!1344 = !DILocation(line: 302, column: 15, scope: !1336)
!1345 = !DILocation(line: 302, column: 12, scope: !1336)
!1346 = !DILocation(line: 301, column: 35, scope: !1336)
!1347 = distinct !{!1347, !1339, !1348}
!1348 = !DILocation(line: 302, column: 40, scope: !1337)
!1349 = !DILocation(line: 0, scope: !1330)
!1350 = !DILocation(line: 305, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 305, column: 7)
!1352 = !DILocation(line: 305, column: 23, scope: !1351)
!1353 = !DILocation(line: 305, column: 34, scope: !1351)
!1354 = !DILocation(line: 305, column: 26, scope: !1351)
!1355 = !DILocation(line: 305, column: 41, scope: !1351)
!1356 = !DILocation(line: 305, column: 7, scope: !1271)
!1357 = !DILocation(line: 306, column: 5, scope: !1351)
!1358 = !DILocation(line: 308, column: 10, scope: !1271)
!1359 = !DILocation(line: 308, column: 3, scope: !1271)
!1360 = !DILocation(line: 0, scope: !205)
!1361 = !DILocation(line: 130, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !205, file: !3, line: 130, column: 7)
!1363 = !DILocation(line: 130, column: 7, scope: !205)
!1364 = !DILocation(line: 132, column: 17, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 131, column: 5)
!1366 = !DILocation(line: 133, column: 23, scope: !1365)
!1367 = !DILocation(line: 134, column: 5, scope: !1365)
!1368 = !DILocation(line: 136, column: 15, scope: !1362)
!1369 = !DILocation(line: 0, scope: !1362)
!1370 = !DILocation(line: 138, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !205, file: !3, line: 138, column: 7)
!1372 = !DILocation(line: 138, column: 7, scope: !205)
!1373 = !DILocation(line: 140, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 139, column: 5)
!1375 = !DILocation(line: 140, column: 30, scope: !1374)
!1376 = !DILocation(line: 140, column: 7, scope: !1374)
!1377 = !DILocation(line: 141, column: 7, scope: !1374)
!1378 = !DILocation(line: 144, column: 3, scope: !205)
!1379 = !DILocation(line: 0, scope: !1380, inlinedAt: !1386)
!1380 = distinct !DISubprogram(name: "getc_unlocked", scope: !1381, file: !1381, line: 66, type: !1382, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1384)
!1381 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!53, !212}
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "__fp", arg: 1, scope: !1380, file: !1381, line: 66, type: !212)
!1386 = distinct !DILocation(line: 146, column: 15, scope: !205)
!1387 = !DILocation(line: 146, column: 3, scope: !205)
!1388 = !DILocation(line: 68, column: 10, scope: !1380, inlinedAt: !1386)
!1389 = !{!1390, !1226, i64 8}
!1390 = !{!"_IO_FILE", !1332, i64 0, !1226, i64 8, !1226, i64 16, !1226, i64 24, !1226, i64 32, !1226, i64 40, !1226, i64 48, !1226, i64 56, !1226, i64 64, !1226, i64 72, !1226, i64 80, !1226, i64 88, !1226, i64 96, !1226, i64 104, !1332, i64 112, !1332, i64 116, !1391, i64 120, !1392, i64 128, !1227, i64 130, !1227, i64 131, !1226, i64 136, !1391, i64 144, !1226, i64 152, !1226, i64 160, !1226, i64 168, !1226, i64 176, !1391, i64 184, !1332, i64 192, !1227, i64 196}
!1391 = !{!"long", !1227, i64 0}
!1392 = !{!"short", !1227, i64 0}
!1393 = !{!1390, !1226, i64 16}
!1394 = !{!"branch_weights", i32 2000, i32 1}
!1395 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1396 = !DILocation(line: 146, column: 31, scope: !205)
!1397 = !DILocation(line: 148, column: 22, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !223, file: !3, line: 148, column: 11)
!1399 = !DILocation(line: 148, column: 29, scope: !1398)
!1400 = !{!1391, !1391, i64 0}
!1401 = !DILocation(line: 148, column: 26, scope: !1398)
!1402 = !DILocation(line: 148, column: 11, scope: !223)
!1403 = !DILocation(line: 149, column: 20, scope: !1398)
!1404 = !DILocation(line: 149, column: 18, scope: !1398)
!1405 = !DILocation(line: 149, column: 9, scope: !1398)
!1406 = !DILocation(line: 151, column: 13, scope: !222)
!1407 = !DILocation(line: 151, column: 11, scope: !223)
!1408 = !DILocation(line: 0, scope: !223)
!1409 = !DILocation(line: 96, column: 7, scope: !1410, inlinedAt: !1416)
!1410 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 94, type: !1411, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!108, !108, !50}
!1413 = !{!1414, !1415}
!1414 = !DILocalVariable(name: "column", arg: 1, scope: !1410, file: !3, line: 94, type: !108)
!1415 = !DILocalVariable(name: "c", arg: 2, scope: !1410, file: !3, line: 94, type: !50)
!1416 = distinct !DILocation(line: 160, column: 16, scope: !223)
!1417 = !DILocation(line: 153, column: 11, scope: !221)
!1418 = !DILocation(line: 153, column: 34, scope: !221)
!1419 = !DILocation(line: 154, column: 11, scope: !221)
!1420 = distinct !{!1420, !1387, !1421}
!1421 = !DILocation(line: 216, column: 5, scope: !205)
!1422 = !DILocation(line: 159, column: 5, scope: !223)
!1423 = !DILocation(line: 0, scope: !1410, inlinedAt: !1416)
!1424 = !DILocation(line: 96, column: 8, scope: !1425, inlinedAt: !1416)
!1425 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 96, column: 7)
!1426 = !DILocation(line: 98, column: 11, scope: !1427, inlinedAt: !1416)
!1427 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 97, column: 5)
!1428 = !DILocation(line: 100, column: 22, scope: !1429, inlinedAt: !1416)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 100, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 99, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 98, column: 11)
!1432 = !DILocation(line: 101, column: 19, scope: !1429, inlinedAt: !1416)
!1433 = !DILocation(line: 100, column: 15, scope: !1430, inlinedAt: !1416)
!1434 = !DILocation(line: 106, column: 38, scope: !1435, inlinedAt: !1416)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 105, column: 16)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 103, column: 16)
!1437 = !DILocation(line: 106, column: 29, scope: !1435, inlinedAt: !1416)
!1438 = !DILocation(line: 106, column: 16, scope: !1435, inlinedAt: !1416)
!1439 = !DILocation(line: 106, column: 9, scope: !1435, inlinedAt: !1416)
!1440 = !DILocation(line: 108, column: 15, scope: !1435, inlinedAt: !1416)
!1441 = !DILocation(line: 111, column: 11, scope: !1425, inlinedAt: !1416)
!1442 = !DILocation(line: 162, column: 18, scope: !230)
!1443 = !DILocation(line: 162, column: 11, scope: !223)
!1444 = !DILocation(line: 167, column: 15, scope: !228)
!1445 = !DILocation(line: 0, scope: !229)
!1446 = !DILocation(line: 167, column: 15, scope: !229)
!1447 = !DILocation(line: 0, scope: !227)
!1448 = !DILocation(line: 173, column: 15, scope: !227)
!1449 = !DILocation(line: 175, column: 19, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !227, file: !3, line: 174, column: 17)
!1451 = !DILocation(line: 176, column: 23, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 176, column: 23)
!1453 = !{!1392, !1392, i64 0}
!1454 = !DILocation(line: 176, column: 23, scope: !1450)
!1455 = distinct !{!1455, !1448, !1456}
!1456 = !DILocation(line: 181, column: 17, scope: !227)
!1457 = !DILocation(line: 0, scope: !233)
!1458 = !DILocation(line: 189, column: 19, scope: !233)
!1459 = !DILocalVariable(name: "__c", arg: 1, scope: !1460, file: !1381, line: 108, type: !53)
!1460 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1381, file: !1381, line: 108, type: !1461, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!53, !53}
!1463 = !{!1459}
!1464 = !DILocation(line: 0, scope: !1460, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 191, column: 19, scope: !233)
!1466 = !DILocation(line: 110, column: 10, scope: !1460, inlinedAt: !1465)
!1467 = !{!1390, !1226, i64 40}
!1468 = !{!1390, !1226, i64 48}
!1469 = !DILocation(line: 194, column: 28, scope: !233)
!1470 = !DILocation(line: 194, column: 47, scope: !233)
!1471 = !DILocation(line: 195, column: 39, scope: !233)
!1472 = !DILocalVariable(name: "__dest", arg: 1, scope: !1473, file: !1474, line: 38, type: !106)
!1473 = distinct !DISubprogram(name: "memmove", scope: !1474, file: !1474, line: 38, type: !1475, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1474 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!106, !106, !182, !108}
!1477 = !{!1472, !1478, !1479}
!1478 = !DILocalVariable(name: "__src", arg: 2, scope: !1473, file: !1474, line: 38, type: !182)
!1479 = !DILocalVariable(name: "__len", arg: 3, scope: !1473, file: !1474, line: 38, type: !108)
!1480 = !DILocation(line: 0, scope: !1473, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 194, column: 19, scope: !233)
!1482 = !DILocation(line: 40, column: 10, scope: !1473, inlinedAt: !1481)
!1483 = !DILocation(line: 197, column: 42, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 197, column: 19)
!1485 = distinct !DILexicalBlock(scope: !233, file: !3, line: 197, column: 19)
!1486 = !DILocation(line: 197, column: 19, scope: !1485)
!1487 = !DILocation(line: 0, scope: !1425, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 198, column: 30, scope: !1484)
!1489 = !DILocation(line: 0, scope: !1484)
!1490 = !DILocation(line: 0, scope: !1410, inlinedAt: !1488)
!1491 = !DILocation(line: 96, column: 7, scope: !1410, inlinedAt: !1488)
!1492 = !DILocation(line: 198, column: 53, scope: !1484)
!1493 = !DILocation(line: 98, column: 11, scope: !1427, inlinedAt: !1488)
!1494 = !DILocation(line: 100, column: 22, scope: !1429, inlinedAt: !1488)
!1495 = !DILocation(line: 101, column: 19, scope: !1429, inlinedAt: !1488)
!1496 = !DILocation(line: 100, column: 15, scope: !1430, inlinedAt: !1488)
!1497 = !DILocation(line: 106, column: 38, scope: !1435, inlinedAt: !1488)
!1498 = !DILocation(line: 106, column: 29, scope: !1435, inlinedAt: !1488)
!1499 = !DILocation(line: 106, column: 16, scope: !1435, inlinedAt: !1488)
!1500 = !DILocation(line: 106, column: 9, scope: !1435, inlinedAt: !1488)
!1501 = !DILocation(line: 108, column: 15, scope: !1435, inlinedAt: !1488)
!1502 = !DILocation(line: 111, column: 11, scope: !1425, inlinedAt: !1488)
!1503 = !DILocation(line: 197, column: 57, scope: !1484)
!1504 = distinct !{!1504, !1486, !1505}
!1505 = !DILocation(line: 198, column: 64, scope: !1485)
!1506 = !DILocation(line: 203, column: 26, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !229, file: !3, line: 203, column: 15)
!1508 = !DILocation(line: 203, column: 15, scope: !229)
!1509 = !DILocation(line: 205, column: 38, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 204, column: 13)
!1511 = !DILocation(line: 206, column: 15, scope: !1510)
!1512 = !DILocation(line: 209, column: 30, scope: !229)
!1513 = !DILocation(line: 209, column: 11, scope: !229)
!1514 = !DILocation(line: 209, column: 34, scope: !229)
!1515 = !DILocation(line: 210, column: 11, scope: !229)
!1516 = !DILocation(line: 215, column: 7, scope: !223)
!1517 = !DILocation(line: 215, column: 26, scope: !223)
!1518 = !DILocation(line: 215, column: 30, scope: !223)
!1519 = !DILocation(line: 218, column: 17, scope: !205)
!1520 = !DILocation(line: 220, column: 7, scope: !245)
!1521 = !DILocation(line: 220, column: 7, scope: !205)
!1522 = !DILocation(line: 0, scope: !245)
!1523 = !DILocation(line: 221, column: 5, scope: !245)
!1524 = !DILocalVariable(name: "__stream", arg: 1, scope: !1525, file: !1381, line: 135, type: !212)
!1525 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1381, file: !1381, line: 135, type: !1382, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1526)
!1526 = !{!1524}
!1527 = !DILocation(line: 0, scope: !1525, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 223, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !205, file: !3, line: 223, column: 7)
!1530 = !DILocation(line: 137, column: 10, scope: !1525, inlinedAt: !1528)
!1531 = !{!1390, !1332, i64 0}
!1532 = !DILocation(line: 223, column: 7, scope: !1529)
!1533 = !DILocation(line: 223, column: 7, scope: !205)
!1534 = !DILocation(line: 225, column: 36, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 224, column: 5)
!1536 = !DILocation(line: 225, column: 7, scope: !1535)
!1537 = !DILocation(line: 226, column: 12, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 226, column: 11)
!1539 = !DILocation(line: 226, column: 11, scope: !1535)
!1540 = !DILocation(line: 227, column: 9, scope: !1538)
!1541 = !DILocation(line: 230, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !205, file: !3, line: 230, column: 7)
!1543 = !DILocation(line: 230, column: 30, scope: !1542)
!1544 = !DILocation(line: 230, column: 33, scope: !1542)
!1545 = !DILocation(line: 230, column: 50, scope: !1542)
!1546 = !DILocation(line: 230, column: 7, scope: !205)
!1547 = !DILocation(line: 232, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 231, column: 5)
!1549 = !DILocation(line: 232, column: 30, scope: !1548)
!1550 = !DILocation(line: 232, column: 7, scope: !1548)
!1551 = !DILocation(line: 233, column: 7, scope: !1548)
!1552 = !DILocation(line: 237, column: 1, scope: !205)
!1553 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !261, file: !261, line: 51, type: !118, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !1554)
!1554 = !{!1555}
!1555 = !DILocalVariable(name: "file", arg: 1, scope: !1553, file: !261, line: 51, type: !51)
!1556 = !DILocation(line: 0, scope: !1553)
!1557 = !DILocation(line: 53, column: 13, scope: !1553)
!1558 = !DILocation(line: 54, column: 1, scope: !1553)
!1559 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !261, file: !261, line: 88, type: !1560, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !189}
!1562 = !{!1563}
!1563 = !DILocalVariable(name: "ignore", arg: 1, scope: !1559, file: !261, line: 88, type: !189)
!1564 = !DILocation(line: 0, scope: !1559)
!1565 = !DILocation(line: 90, column: 16, scope: !1559)
!1566 = !{!1567, !1567, i64 0}
!1567 = !{!"_Bool", !1227, i64 0}
!1568 = !DILocation(line: 91, column: 1, scope: !1559)
!1569 = distinct !DISubprogram(name: "close_stdout", scope: !261, file: !261, line: 117, type: !135, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !260, retainedNodes: !1570)
!1570 = !{!1571}
!1571 = !DILocalVariable(name: "write_error", scope: !1572, file: !261, line: 122, type: !51)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !261, line: 121, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !261, line: 119, column: 7)
!1574 = !DILocation(line: 119, column: 21, scope: !1573)
!1575 = !DILocation(line: 119, column: 7, scope: !1573)
!1576 = !DILocation(line: 119, column: 29, scope: !1573)
!1577 = !DILocation(line: 120, column: 7, scope: !1573)
!1578 = !DILocation(line: 120, column: 12, scope: !1573)
!1579 = !{i8 0, i8 2}
!1580 = !DILocation(line: 120, column: 25, scope: !1573)
!1581 = !DILocation(line: 120, column: 28, scope: !1573)
!1582 = !DILocation(line: 120, column: 34, scope: !1573)
!1583 = !DILocation(line: 119, column: 7, scope: !1569)
!1584 = !DILocation(line: 122, column: 33, scope: !1572)
!1585 = !DILocation(line: 0, scope: !1572)
!1586 = !DILocation(line: 123, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1572, file: !261, line: 123, column: 11)
!1588 = !DILocation(line: 0, scope: !1587)
!1589 = !DILocation(line: 123, column: 11, scope: !1572)
!1590 = !DILocation(line: 124, column: 36, scope: !1587)
!1591 = !DILocation(line: 124, column: 9, scope: !1587)
!1592 = !DILocation(line: 127, column: 9, scope: !1587)
!1593 = !DILocation(line: 129, column: 14, scope: !1572)
!1594 = !DILocation(line: 129, column: 7, scope: !1572)
!1595 = !DILocation(line: 134, column: 42, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1569, file: !261, line: 134, column: 7)
!1597 = !DILocation(line: 134, column: 28, scope: !1596)
!1598 = !DILocation(line: 134, column: 50, scope: !1596)
!1599 = !DILocation(line: 134, column: 7, scope: !1569)
!1600 = !DILocation(line: 135, column: 12, scope: !1596)
!1601 = !DILocation(line: 135, column: 5, scope: !1596)
!1602 = !DILocation(line: 136, column: 1, scope: !1569)
!1603 = distinct !DISubprogram(name: "fdadvise", scope: !467, file: !467, line: 31, type: !1604, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1608)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !53, !1606, !1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !56, line: 63, baseType: !82)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1608 = !{!1609, !1610, !1611, !1612, !1613}
!1609 = !DILocalVariable(name: "fd", arg: 1, scope: !1603, file: !467, line: 31, type: !53)
!1610 = !DILocalVariable(name: "offset", arg: 2, scope: !1603, file: !467, line: 31, type: !1606)
!1611 = !DILocalVariable(name: "len", arg: 3, scope: !1603, file: !467, line: 31, type: !1606)
!1612 = !DILocalVariable(name: "advice", arg: 4, scope: !1603, file: !467, line: 31, type: !1607)
!1613 = !DILocalVariable(name: "__x", scope: !1614, file: !467, line: 34, type: !53)
!1614 = distinct !DILexicalBlock(scope: !1603, file: !467, line: 34, column: 3)
!1615 = !DILocation(line: 0, scope: !1603)
!1616 = !DILocation(line: 34, column: 3, scope: !1614)
!1617 = !DILocation(line: 0, scope: !1614)
!1618 = !DILocation(line: 36, column: 1, scope: !1603)
!1619 = distinct !DISubprogram(name: "fadvise", scope: !467, file: !467, line: 39, type: !1620, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1624)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1622, !1607}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !478)
!1624 = !{!1625, !1626}
!1625 = !DILocalVariable(name: "fp", arg: 1, scope: !1619, file: !467, line: 39, type: !1622)
!1626 = !DILocalVariable(name: "advice", arg: 2, scope: !1619, file: !467, line: 39, type: !1607)
!1627 = !DILocation(line: 0, scope: !1619)
!1628 = !DILocation(line: 41, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !467, line: 41, column: 7)
!1630 = !DILocation(line: 41, column: 7, scope: !1619)
!1631 = !DILocation(line: 42, column: 15, scope: !1629)
!1632 = !DILocation(line: 0, scope: !1603, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 42, column: 5, scope: !1629)
!1634 = !DILocation(line: 34, column: 3, scope: !1614, inlinedAt: !1633)
!1635 = !DILocation(line: 0, scope: !1614, inlinedAt: !1633)
!1636 = !DILocation(line: 42, column: 5, scope: !1629)
!1637 = !DILocation(line: 43, column: 1, scope: !1619)
!1638 = distinct !DISubprogram(name: "set_program_name", scope: !312, file: !312, line: 39, type: !118, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1639)
!1639 = !{!1640, !1641, !1642}
!1640 = !DILocalVariable(name: "argv0", arg: 1, scope: !1638, file: !312, line: 39, type: !51)
!1641 = !DILocalVariable(name: "slash", scope: !1638, file: !312, line: 46, type: !51)
!1642 = !DILocalVariable(name: "base", scope: !1638, file: !312, line: 47, type: !51)
!1643 = !DILocation(line: 0, scope: !1638)
!1644 = !DILocation(line: 51, column: 13, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1638, file: !312, line: 51, column: 7)
!1646 = !DILocation(line: 51, column: 7, scope: !1638)
!1647 = !DILocation(line: 55, column: 14, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !312, line: 52, column: 5)
!1649 = !DILocation(line: 54, column: 7, scope: !1648)
!1650 = !DILocation(line: 56, column: 7, scope: !1648)
!1651 = !DILocation(line: 59, column: 11, scope: !1638)
!1652 = !DILocation(line: 60, column: 17, scope: !1638)
!1653 = !DILocation(line: 60, column: 11, scope: !1638)
!1654 = !DILocation(line: 61, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1638, file: !312, line: 61, column: 7)
!1656 = !DILocation(line: 61, column: 20, scope: !1655)
!1657 = !DILocation(line: 61, column: 25, scope: !1655)
!1658 = !DILocation(line: 61, column: 42, scope: !1655)
!1659 = !DILocation(line: 61, column: 28, scope: !1655)
!1660 = !DILocation(line: 61, column: 61, scope: !1655)
!1661 = !DILocation(line: 61, column: 7, scope: !1638)
!1662 = !DILocation(line: 64, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !312, line: 64, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !312, line: 62, column: 5)
!1665 = !DILocation(line: 64, column: 36, scope: !1663)
!1666 = !DILocation(line: 64, column: 11, scope: !1664)
!1667 = !DILocation(line: 66, column: 24, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !312, line: 65, column: 9)
!1669 = !DILocation(line: 70, column: 41, scope: !1668)
!1670 = !DILocation(line: 72, column: 9, scope: !1668)
!1671 = !DILocation(line: 84, column: 16, scope: !1638)
!1672 = !DILocation(line: 90, column: 27, scope: !1638)
!1673 = !DILocation(line: 92, column: 1, scope: !1638)
!1674 = distinct !DISubprogram(name: "clone_quoting_options", scope: !353, file: !353, line: 122, type: !1675, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1678)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1678 = !{!1679, !1680, !1681}
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1674, file: !353, line: 122, type: !1677)
!1680 = !DILocalVariable(name: "e", scope: !1674, file: !353, line: 124, type: !53)
!1681 = !DILocalVariable(name: "p", scope: !1674, file: !353, line: 125, type: !1677)
!1682 = !DILocation(line: 0, scope: !1674)
!1683 = !DILocation(line: 124, column: 11, scope: !1674)
!1684 = !DILocation(line: 125, column: 40, scope: !1674)
!1685 = !DILocation(line: 125, column: 31, scope: !1674)
!1686 = !DILocation(line: 127, column: 9, scope: !1674)
!1687 = !DILocation(line: 128, column: 3, scope: !1674)
!1688 = distinct !DISubprogram(name: "get_quoting_style", scope: !353, file: !353, line: 133, type: !1689, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!5, !367}
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1688, file: !353, line: 133, type: !367)
!1693 = !DILocation(line: 0, scope: !1688)
!1694 = !DILocation(line: 135, column: 11, scope: !1688)
!1695 = !DILocation(line: 135, column: 46, scope: !1688)
!1696 = !{!1697, !1227, i64 0}
!1697 = !{!"quoting_options", !1227, i64 0, !1332, i64 4, !1227, i64 8, !1226, i64 40, !1226, i64 48}
!1698 = !DILocation(line: 135, column: 3, scope: !1688)
!1699 = distinct !DISubprogram(name: "set_quoting_style", scope: !353, file: !353, line: 141, type: !1700, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1702)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1677, !5}
!1702 = !{!1703, !1704}
!1703 = !DILocalVariable(name: "o", arg: 1, scope: !1699, file: !353, line: 141, type: !1677)
!1704 = !DILocalVariable(name: "s", arg: 2, scope: !1699, file: !353, line: 141, type: !5)
!1705 = !DILocation(line: 0, scope: !1699)
!1706 = !DILocation(line: 143, column: 4, scope: !1699)
!1707 = !DILocation(line: 143, column: 39, scope: !1699)
!1708 = !DILocation(line: 143, column: 45, scope: !1699)
!1709 = !DILocation(line: 144, column: 1, scope: !1699)
!1710 = distinct !DISubprogram(name: "set_char_quoting", scope: !353, file: !353, line: 152, type: !1711, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1713)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!53, !1677, !50, !53}
!1713 = !{!1714, !1715, !1716, !1717, !1718, !1720, !1721}
!1714 = !DILocalVariable(name: "o", arg: 1, scope: !1710, file: !353, line: 152, type: !1677)
!1715 = !DILocalVariable(name: "c", arg: 2, scope: !1710, file: !353, line: 152, type: !50)
!1716 = !DILocalVariable(name: "i", arg: 3, scope: !1710, file: !353, line: 152, type: !53)
!1717 = !DILocalVariable(name: "uc", scope: !1710, file: !353, line: 154, type: !185)
!1718 = !DILocalVariable(name: "p", scope: !1710, file: !353, line: 155, type: !1719)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1720 = !DILocalVariable(name: "shift", scope: !1710, file: !353, line: 157, type: !53)
!1721 = !DILocalVariable(name: "r", scope: !1710, file: !353, line: 158, type: !53)
!1722 = !DILocation(line: 0, scope: !1710)
!1723 = !DILocation(line: 156, column: 6, scope: !1710)
!1724 = !DILocation(line: 156, column: 62, scope: !1710)
!1725 = !DILocation(line: 156, column: 57, scope: !1710)
!1726 = !DILocation(line: 157, column: 15, scope: !1710)
!1727 = !DILocation(line: 158, column: 12, scope: !1710)
!1728 = !DILocation(line: 158, column: 15, scope: !1710)
!1729 = !DILocation(line: 158, column: 25, scope: !1710)
!1730 = !DILocation(line: 159, column: 13, scope: !1710)
!1731 = !DILocation(line: 159, column: 18, scope: !1710)
!1732 = !DILocation(line: 159, column: 23, scope: !1710)
!1733 = !DILocation(line: 159, column: 6, scope: !1710)
!1734 = !DILocation(line: 160, column: 3, scope: !1710)
!1735 = distinct !DISubprogram(name: "set_quoting_flags", scope: !353, file: !353, line: 168, type: !1736, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!53, !1677, !53}
!1738 = !{!1739, !1740, !1741}
!1739 = !DILocalVariable(name: "o", arg: 1, scope: !1735, file: !353, line: 168, type: !1677)
!1740 = !DILocalVariable(name: "i", arg: 2, scope: !1735, file: !353, line: 168, type: !53)
!1741 = !DILocalVariable(name: "r", scope: !1735, file: !353, line: 170, type: !53)
!1742 = !DILocation(line: 0, scope: !1735)
!1743 = !DILocation(line: 171, column: 8, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !353, line: 171, column: 7)
!1745 = !DILocation(line: 171, column: 7, scope: !1735)
!1746 = !DILocation(line: 173, column: 10, scope: !1735)
!1747 = !{!1697, !1332, i64 4}
!1748 = !DILocation(line: 174, column: 12, scope: !1735)
!1749 = !DILocation(line: 175, column: 3, scope: !1735)
!1750 = distinct !DISubprogram(name: "set_custom_quoting", scope: !353, file: !353, line: 179, type: !1751, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1677, !51, !51}
!1753 = !{!1754, !1755, !1756}
!1754 = !DILocalVariable(name: "o", arg: 1, scope: !1750, file: !353, line: 179, type: !1677)
!1755 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1750, file: !353, line: 180, type: !51)
!1756 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1750, file: !353, line: 180, type: !51)
!1757 = !DILocation(line: 0, scope: !1750)
!1758 = !DILocation(line: 182, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1750, file: !353, line: 182, column: 7)
!1760 = !DILocation(line: 182, column: 7, scope: !1750)
!1761 = !DILocation(line: 184, column: 6, scope: !1750)
!1762 = !DILocation(line: 184, column: 12, scope: !1750)
!1763 = !DILocation(line: 185, column: 8, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1750, file: !353, line: 185, column: 7)
!1765 = !DILocation(line: 185, column: 23, scope: !1764)
!1766 = !DILocation(line: 185, column: 19, scope: !1764)
!1767 = !DILocation(line: 186, column: 5, scope: !1764)
!1768 = !DILocation(line: 187, column: 6, scope: !1750)
!1769 = !DILocation(line: 187, column: 17, scope: !1750)
!1770 = !{!1697, !1226, i64 40}
!1771 = !DILocation(line: 188, column: 6, scope: !1750)
!1772 = !DILocation(line: 188, column: 18, scope: !1750)
!1773 = !{!1697, !1226, i64 48}
!1774 = !DILocation(line: 189, column: 1, scope: !1750)
!1775 = distinct !DISubprogram(name: "quotearg_buffer", scope: !353, file: !353, line: 784, type: !1776, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!108, !49, !108, !51, !108, !367}
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1779 = !DILocalVariable(name: "buffer", arg: 1, scope: !1775, file: !353, line: 784, type: !49)
!1780 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1775, file: !353, line: 784, type: !108)
!1781 = !DILocalVariable(name: "arg", arg: 3, scope: !1775, file: !353, line: 785, type: !51)
!1782 = !DILocalVariable(name: "argsize", arg: 4, scope: !1775, file: !353, line: 785, type: !108)
!1783 = !DILocalVariable(name: "o", arg: 5, scope: !1775, file: !353, line: 786, type: !367)
!1784 = !DILocalVariable(name: "p", scope: !1775, file: !353, line: 788, type: !367)
!1785 = !DILocalVariable(name: "e", scope: !1775, file: !353, line: 789, type: !53)
!1786 = !DILocalVariable(name: "r", scope: !1775, file: !353, line: 790, type: !108)
!1787 = !DILocation(line: 0, scope: !1775)
!1788 = !DILocation(line: 788, column: 37, scope: !1775)
!1789 = !DILocation(line: 789, column: 11, scope: !1775)
!1790 = !DILocation(line: 791, column: 43, scope: !1775)
!1791 = !DILocation(line: 791, column: 53, scope: !1775)
!1792 = !DILocation(line: 791, column: 60, scope: !1775)
!1793 = !DILocation(line: 792, column: 43, scope: !1775)
!1794 = !DILocation(line: 792, column: 58, scope: !1775)
!1795 = !DILocation(line: 790, column: 14, scope: !1775)
!1796 = !DILocation(line: 793, column: 9, scope: !1775)
!1797 = !DILocation(line: 794, column: 3, scope: !1775)
!1798 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !353, file: !353, line: 256, type: !1799, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !1803)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!108, !49, !108, !51, !108, !5, !53, !1801, !51, !51}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1828, !1829, !1830, !1831, !1832, !1835, !1836, !1842, !1845, !1846, !1853, !1856, !1857, !1858, !1859, !1860, !1861}
!1804 = !DILocalVariable(name: "buffer", arg: 1, scope: !1798, file: !353, line: 256, type: !49)
!1805 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1798, file: !353, line: 256, type: !108)
!1806 = !DILocalVariable(name: "arg", arg: 3, scope: !1798, file: !353, line: 257, type: !51)
!1807 = !DILocalVariable(name: "argsize", arg: 4, scope: !1798, file: !353, line: 257, type: !108)
!1808 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1798, file: !353, line: 258, type: !5)
!1809 = !DILocalVariable(name: "flags", arg: 6, scope: !1798, file: !353, line: 258, type: !53)
!1810 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1798, file: !353, line: 259, type: !1801)
!1811 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1798, file: !353, line: 260, type: !51)
!1812 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1798, file: !353, line: 261, type: !51)
!1813 = !DILocalVariable(name: "i", scope: !1798, file: !353, line: 263, type: !108)
!1814 = !DILocalVariable(name: "len", scope: !1798, file: !353, line: 264, type: !108)
!1815 = !DILocalVariable(name: "orig_buffersize", scope: !1798, file: !353, line: 265, type: !108)
!1816 = !DILocalVariable(name: "quote_string", scope: !1798, file: !353, line: 266, type: !51)
!1817 = !DILocalVariable(name: "quote_string_len", scope: !1798, file: !353, line: 267, type: !108)
!1818 = !DILocalVariable(name: "backslash_escapes", scope: !1798, file: !353, line: 268, type: !189)
!1819 = !DILocalVariable(name: "unibyte_locale", scope: !1798, file: !353, line: 269, type: !189)
!1820 = !DILocalVariable(name: "elide_outer_quotes", scope: !1798, file: !353, line: 270, type: !189)
!1821 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1798, file: !353, line: 271, type: !189)
!1822 = !DILocalVariable(name: "encountered_single_quote", scope: !1798, file: !353, line: 272, type: !189)
!1823 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1798, file: !353, line: 273, type: !189)
!1824 = !DILocalVariable(name: "c", scope: !1825, file: !353, line: 402, type: !185)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !353, line: 401, column: 5)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !353, line: 400, column: 3)
!1827 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 400, column: 3)
!1828 = !DILocalVariable(name: "esc", scope: !1825, file: !353, line: 403, type: !185)
!1829 = !DILocalVariable(name: "is_right_quote", scope: !1825, file: !353, line: 404, type: !189)
!1830 = !DILocalVariable(name: "escaping", scope: !1825, file: !353, line: 405, type: !189)
!1831 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1825, file: !353, line: 406, type: !189)
!1832 = !DILocalVariable(name: "m", scope: !1833, file: !353, line: 610, type: !108)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 608, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 426, column: 9)
!1835 = !DILocalVariable(name: "printable", scope: !1833, file: !353, line: 612, type: !189)
!1836 = !DILocalVariable(name: "mbstate", scope: !1837, file: !353, line: 621, type: !1839)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !353, line: 620, column: 15)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !353, line: 614, column: 17)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1840, line: 6, baseType: !1841)
!1840 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !391, line: 21, baseType: !390)
!1842 = !DILocalVariable(name: "w", scope: !1843, file: !353, line: 631, type: !1844)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !353, line: 630, column: 19)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !53)
!1845 = !DILocalVariable(name: "bytes", scope: !1843, file: !353, line: 632, type: !108)
!1846 = !DILocalVariable(name: "j", scope: !1847, file: !353, line: 657, type: !108)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !353, line: 656, column: 27)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !353, line: 654, column: 29)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !353, line: 649, column: 23)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !353, line: 641, column: 30)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !353, line: 636, column: 30)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !353, line: 634, column: 25)
!1853 = !DILocalVariable(name: "ilim", scope: !1854, file: !353, line: 684, type: !108)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !353, line: 681, column: 15)
!1855 = distinct !DILexicalBlock(scope: !1833, file: !353, line: 680, column: 17)
!1856 = !DILabel(scope: !1798, name: "process_input", file: !353, line: 314)
!1857 = !DILabel(scope: !1834, name: "c_and_shell_escape", file: !353, line: 512)
!1858 = !DILabel(scope: !1834, name: "c_escape", file: !353, line: 517)
!1859 = !DILabel(scope: !1825, name: "store_escape", file: !353, line: 719)
!1860 = !DILabel(scope: !1825, name: "store_c", file: !353, line: 722)
!1861 = !DILabel(scope: !1798, name: "force_outer_quoting_style", file: !353, line: 763)
!1862 = !DILocation(line: 0, scope: !1798)
!1863 = !DILocation(line: 269, column: 25, scope: !1798)
!1864 = !DILocation(line: 269, column: 36, scope: !1798)
!1865 = !DILocation(line: 270, column: 8, scope: !1798)
!1866 = !DILocation(line: 0, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 526, column: 15)
!1868 = !DILocation(line: 0, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !353, line: 462, column: 19)
!1870 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 455, column: 13)
!1871 = !DILocation(line: 0, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !353, line: 449, column: 20)
!1873 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 428, column: 15)
!1874 = !DILocation(line: 0, scope: !1837)
!1875 = !DILocation(line: 0, scope: !1843)
!1876 = !DILocation(line: 0, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 712, column: 11)
!1878 = !DILocation(line: 273, column: 3, scope: !1798)
!1879 = !DILocation(line: 265, column: 10, scope: !1798)
!1880 = !DILocation(line: 266, column: 15, scope: !1798)
!1881 = !DILocation(line: 267, column: 10, scope: !1798)
!1882 = !DILocation(line: 268, column: 8, scope: !1798)
!1883 = !DILocation(line: 271, column: 8, scope: !1798)
!1884 = !DILocation(line: 272, column: 8, scope: !1798)
!1885 = !DILocation(line: 273, column: 8, scope: !1798)
!1886 = !DILocation(line: 314, column: 2, scope: !1798)
!1887 = !DILocation(line: 316, column: 3, scope: !1798)
!1888 = !DILocation(line: 323, column: 11, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 317, column: 5)
!1890 = !DILocation(line: 323, column: 12, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1889, file: !353, line: 323, column: 11)
!1892 = !DILocation(line: 324, column: 9, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !353, line: 324, column: 9)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !353, line: 324, column: 9)
!1895 = !DILocation(line: 324, column: 9, scope: !1894)
!1896 = !DILocation(line: 362, column: 26, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !353, line: 340, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !353, line: 339, column: 13)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !353, line: 338, column: 7)
!1900 = !DILocation(line: 363, column: 27, scope: !1897)
!1901 = !DILocation(line: 364, column: 11, scope: !1897)
!1902 = !DILocation(line: 365, column: 14, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1899, file: !353, line: 365, column: 13)
!1904 = !DILocation(line: 365, column: 13, scope: !1899)
!1905 = !DILocation(line: 366, column: 43, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !353, line: 366, column: 11)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !353, line: 366, column: 11)
!1908 = !DILocation(line: 366, column: 11, scope: !1907)
!1909 = !DILocation(line: 367, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !353, line: 367, column: 13)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !353, line: 367, column: 13)
!1912 = !DILocation(line: 367, column: 13, scope: !1911)
!1913 = !DILocation(line: 366, column: 70, scope: !1906)
!1914 = distinct !{!1914, !1908, !1915}
!1915 = !DILocation(line: 367, column: 13, scope: !1907)
!1916 = !DILocation(line: 264, column: 10, scope: !1798)
!1917 = !DILocation(line: 370, column: 28, scope: !1899)
!1918 = !DILocation(line: 372, column: 7, scope: !1889)
!1919 = !DILocation(line: 376, column: 7, scope: !1889)
!1920 = !DILocation(line: 379, column: 7, scope: !1889)
!1921 = !DILocation(line: 381, column: 12, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1889, file: !353, line: 381, column: 11)
!1923 = !DILocation(line: 381, column: 11, scope: !1889)
!1924 = !DILocation(line: 386, column: 12, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1889, file: !353, line: 386, column: 11)
!1926 = !DILocation(line: 386, column: 11, scope: !1889)
!1927 = !DILocation(line: 387, column: 9, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !353, line: 387, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !353, line: 387, column: 9)
!1930 = !DILocation(line: 387, column: 9, scope: !1929)
!1931 = !DILocation(line: 394, column: 7, scope: !1889)
!1932 = !DILocation(line: 397, column: 7, scope: !1889)
!1933 = !DILocation(line: 0, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 408, column: 11)
!1935 = !DILocation(line: 0, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !353, line: 419, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !353, line: 418, column: 9)
!1938 = !DILocation(line: 0, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 556, column: 15)
!1940 = !DILocation(line: 0, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 548, column: 15)
!1942 = !DILocation(line: 0, scope: !1848)
!1943 = !DILocation(line: 0, scope: !1855)
!1944 = !DILocation(line: 0, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 509, column: 15)
!1946 = !DILocation(line: 400, column: 8, scope: !1827)
!1947 = !DILocation(line: 0, scope: !1827)
!1948 = !DILocation(line: 400, column: 27, scope: !1826)
!1949 = !DILocation(line: 400, column: 19, scope: !1826)
!1950 = !DILocation(line: 400, column: 41, scope: !1826)
!1951 = !DILocation(line: 400, column: 48, scope: !1826)
!1952 = !DILocation(line: 400, column: 3, scope: !1827)
!1953 = !DILocation(line: 400, column: 60, scope: !1826)
!1954 = !DILocation(line: 0, scope: !1825)
!1955 = !DILocation(line: 409, column: 11, scope: !1934)
!1956 = !DILocation(line: 411, column: 17, scope: !1934)
!1957 = !DILocation(line: 412, column: 39, scope: !1934)
!1958 = !DILocation(line: 416, column: 32, scope: !1934)
!1959 = !DILocation(line: 412, column: 19, scope: !1934)
!1960 = !DILocation(line: 412, column: 15, scope: !1934)
!1961 = !DILocation(line: 417, column: 11, scope: !1934)
!1962 = !DILocation(line: 417, column: 26, scope: !1934)
!1963 = !DILocation(line: 417, column: 14, scope: !1934)
!1964 = !DILocation(line: 417, column: 63, scope: !1934)
!1965 = !DILocation(line: 408, column: 11, scope: !1825)
!1966 = !DILocation(line: 424, column: 11, scope: !1825)
!1967 = !DILocation(line: 425, column: 7, scope: !1825)
!1968 = !DILocation(line: 428, column: 15, scope: !1834)
!1969 = !DILocation(line: 430, column: 15, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !353, line: 430, column: 15)
!1971 = distinct !DILexicalBlock(scope: !1873, file: !353, line: 429, column: 13)
!1972 = !DILocation(line: 430, column: 15, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1970, file: !353, line: 430, column: 15)
!1974 = !DILocation(line: 430, column: 15, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !353, line: 430, column: 15)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !353, line: 430, column: 15)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !353, line: 430, column: 15)
!1978 = !DILocation(line: 430, column: 15, scope: !1976)
!1979 = !DILocation(line: 430, column: 15, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !353, line: 430, column: 15)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !353, line: 430, column: 15)
!1982 = !DILocation(line: 430, column: 15, scope: !1981)
!1983 = !DILocation(line: 430, column: 15, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !353, line: 430, column: 15)
!1985 = distinct !DILexicalBlock(scope: !1977, file: !353, line: 430, column: 15)
!1986 = !DILocation(line: 430, column: 15, scope: !1985)
!1987 = !DILocation(line: 430, column: 15, scope: !1977)
!1988 = !DILocation(line: 430, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !353, line: 430, column: 15)
!1990 = distinct !DILexicalBlock(scope: !1970, file: !353, line: 430, column: 15)
!1991 = !DILocation(line: 430, column: 15, scope: !1990)
!1992 = !DILocation(line: 438, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1971, file: !353, line: 437, column: 19)
!1994 = !DILocation(line: 438, column: 24, scope: !1993)
!1995 = !DILocation(line: 438, column: 28, scope: !1993)
!1996 = !DILocation(line: 438, column: 38, scope: !1993)
!1997 = !DILocation(line: 438, column: 48, scope: !1993)
!1998 = !DILocation(line: 438, column: 59, scope: !1993)
!1999 = !DILocation(line: 440, column: 19, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !353, line: 440, column: 19)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !353, line: 440, column: 19)
!2002 = distinct !DILexicalBlock(scope: !1993, file: !353, line: 439, column: 17)
!2003 = !DILocation(line: 440, column: 19, scope: !2001)
!2004 = !DILocation(line: 441, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !353, line: 441, column: 19)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !353, line: 441, column: 19)
!2007 = !DILocation(line: 441, column: 19, scope: !2006)
!2008 = !DILocation(line: 442, column: 17, scope: !2002)
!2009 = !DILocation(line: 449, column: 20, scope: !1873)
!2010 = !DILocation(line: 454, column: 11, scope: !1834)
!2011 = !DILocation(line: 457, column: 19, scope: !1870)
!2012 = !DILocation(line: 463, column: 19, scope: !1869)
!2013 = !DILocation(line: 463, column: 24, scope: !1869)
!2014 = !DILocation(line: 463, column: 28, scope: !1869)
!2015 = !DILocation(line: 463, column: 38, scope: !1869)
!2016 = !DILocation(line: 463, column: 47, scope: !1869)
!2017 = !DILocation(line: 463, column: 41, scope: !1869)
!2018 = !DILocation(line: 463, column: 52, scope: !1869)
!2019 = !DILocation(line: 462, column: 19, scope: !1870)
!2020 = !DILocation(line: 464, column: 25, scope: !1869)
!2021 = !DILocation(line: 464, column: 17, scope: !1869)
!2022 = !DILocation(line: 471, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1869, file: !353, line: 465, column: 19)
!2024 = !DILocation(line: 475, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !353, line: 475, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !353, line: 475, column: 21)
!2027 = !DILocation(line: 475, column: 21, scope: !2026)
!2028 = !DILocation(line: 476, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !353, line: 476, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !353, line: 476, column: 21)
!2031 = !DILocation(line: 476, column: 21, scope: !2030)
!2032 = !DILocation(line: 477, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !353, line: 477, column: 21)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !353, line: 477, column: 21)
!2035 = !DILocation(line: 477, column: 21, scope: !2034)
!2036 = !DILocation(line: 478, column: 21, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !353, line: 478, column: 21)
!2038 = distinct !DILexicalBlock(scope: !2023, file: !353, line: 478, column: 21)
!2039 = !DILocation(line: 478, column: 21, scope: !2038)
!2040 = !DILocation(line: 479, column: 21, scope: !2023)
!2041 = !DILocation(line: 492, column: 31, scope: !1834)
!2042 = !DILocation(line: 493, column: 31, scope: !1834)
!2043 = !DILocation(line: 495, column: 31, scope: !1834)
!2044 = !DILocation(line: 496, column: 31, scope: !1834)
!2045 = !DILocation(line: 497, column: 31, scope: !1834)
!2046 = !DILocation(line: 500, column: 15, scope: !1834)
!2047 = !DILocation(line: 502, column: 19, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !353, line: 501, column: 13)
!2049 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 500, column: 15)
!2050 = !DILocation(line: 509, column: 33, scope: !1945)
!2051 = !DILocation(line: 0, scope: !1834)
!2052 = !DILocation(line: 512, column: 9, scope: !1834)
!2053 = !DILocation(line: 514, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 513, column: 15)
!2055 = !DILocation(line: 517, column: 9, scope: !1834)
!2056 = !DILocation(line: 518, column: 15, scope: !1834)
!2057 = !DILocation(line: 526, column: 15, scope: !1834)
!2058 = !DILocation(line: 526, column: 40, scope: !1867)
!2059 = !DILocation(line: 526, column: 47, scope: !1867)
!2060 = !DILocation(line: 526, column: 18, scope: !1867)
!2061 = !DILocation(line: 530, column: 17, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1834, file: !353, line: 530, column: 15)
!2063 = !DILocation(line: 530, column: 15, scope: !1834)
!2064 = !DILocation(line: 535, column: 11, scope: !1834)
!2065 = !DILocation(line: 549, column: 15, scope: !1941)
!2066 = !DILocation(line: 556, column: 15, scope: !1834)
!2067 = !DILocation(line: 558, column: 19, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1939, file: !353, line: 557, column: 13)
!2069 = !DILocation(line: 561, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2068, file: !353, line: 561, column: 19)
!2071 = !DILocation(line: 561, column: 35, scope: !2070)
!2072 = !DILocation(line: 561, column: 30, scope: !2070)
!2073 = !DILocation(line: 570, column: 15, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !353, line: 570, column: 15)
!2075 = distinct !DILexicalBlock(scope: !2068, file: !353, line: 570, column: 15)
!2076 = !DILocation(line: 570, column: 15, scope: !2075)
!2077 = !DILocation(line: 571, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !353, line: 571, column: 15)
!2079 = distinct !DILexicalBlock(scope: !2068, file: !353, line: 571, column: 15)
!2080 = !DILocation(line: 571, column: 15, scope: !2079)
!2081 = !DILocation(line: 572, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !353, line: 572, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2068, file: !353, line: 572, column: 15)
!2084 = !DILocation(line: 572, column: 15, scope: !2083)
!2085 = !DILocation(line: 574, column: 13, scope: !2068)
!2086 = !DILocation(line: 614, column: 17, scope: !1833)
!2087 = !DILocation(line: 0, scope: !1833)
!2088 = !DILocation(line: 617, column: 29, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1838, file: !353, line: 615, column: 15)
!2090 = !DILocation(line: 617, column: 27, scope: !2089)
!2091 = !DILocation(line: 618, column: 15, scope: !2089)
!2092 = !DILocation(line: 621, column: 17, scope: !1837)
!2093 = !DILocation(line: 621, column: 27, scope: !1837)
!2094 = !DILocalVariable(name: "__dest", arg: 1, scope: !2095, file: !1474, line: 59, type: !106)
!2095 = distinct !DISubprogram(name: "memset", scope: !1474, file: !1474, line: 59, type: !2096, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!106, !106, !53, !108}
!2098 = !{!2094, !2099, !2100}
!2099 = !DILocalVariable(name: "__ch", arg: 2, scope: !2095, file: !1474, line: 59, type: !53)
!2100 = !DILocalVariable(name: "__len", arg: 3, scope: !2095, file: !1474, line: 59, type: !108)
!2101 = !DILocation(line: 0, scope: !2095, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 622, column: 17, scope: !1837)
!2103 = !DILocation(line: 71, column: 10, scope: !2095, inlinedAt: !2102)
!2104 = !DILocation(line: 626, column: 29, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1837, file: !353, line: 626, column: 21)
!2106 = !DILocation(line: 626, column: 21, scope: !1837)
!2107 = !DILocation(line: 627, column: 29, scope: !2105)
!2108 = !DILocation(line: 627, column: 19, scope: !2105)
!2109 = !DILocation(line: 629, column: 17, scope: !1837)
!2110 = !DILocation(line: 624, column: 19, scope: !1837)
!2111 = !DILocation(line: 625, column: 27, scope: !1837)
!2112 = !DILocation(line: 631, column: 21, scope: !1843)
!2113 = !DILocation(line: 632, column: 56, scope: !1843)
!2114 = !DILocation(line: 632, column: 50, scope: !1843)
!2115 = !DILocation(line: 633, column: 53, scope: !1843)
!2116 = !DILocation(line: 632, column: 36, scope: !1843)
!2117 = !DILocation(line: 634, column: 25, scope: !1843)
!2118 = !DILocation(line: 644, column: 38, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1850, file: !353, line: 642, column: 23)
!2120 = !DILocation(line: 644, column: 48, scope: !2119)
!2121 = !DILocation(line: 644, column: 25, scope: !2119)
!2122 = !DILocation(line: 644, column: 51, scope: !2119)
!2123 = !DILocation(line: 645, column: 28, scope: !2119)
!2124 = !DILocation(line: 644, column: 34, scope: !2119)
!2125 = distinct !{!2125, !2121, !2123}
!2126 = !DILocation(line: 658, column: 43, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !353, line: 658, column: 29)
!2128 = distinct !DILexicalBlock(scope: !1847, file: !353, line: 658, column: 29)
!2129 = !DILocation(line: 655, column: 29, scope: !1848)
!2130 = !DILocation(line: 0, scope: !1847)
!2131 = !DILocation(line: 659, column: 49, scope: !2127)
!2132 = !DILocation(line: 659, column: 39, scope: !2127)
!2133 = !DILocation(line: 659, column: 31, scope: !2127)
!2134 = !DILocation(line: 658, column: 53, scope: !2127)
!2135 = !DILocation(line: 658, column: 29, scope: !2128)
!2136 = distinct !{!2136, !2135, !2137}
!2137 = !DILocation(line: 667, column: 33, scope: !2128)
!2138 = !DILocation(line: 674, column: 19, scope: !1837)
!2139 = !DILocation(line: 670, column: 41, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1849, file: !353, line: 670, column: 29)
!2141 = !DILocation(line: 670, column: 31, scope: !2140)
!2142 = !DILocation(line: 670, column: 29, scope: !1849)
!2143 = !DILocation(line: 672, column: 27, scope: !1849)
!2144 = !DILocation(line: 675, column: 26, scope: !1837)
!2145 = !DILocation(line: 675, column: 24, scope: !1837)
!2146 = !DILocation(line: 674, column: 19, scope: !1843)
!2147 = distinct !{!2147, !2109, !2148}
!2148 = !DILocation(line: 675, column: 44, scope: !1837)
!2149 = !DILocation(line: 676, column: 15, scope: !1838)
!2150 = !DILocation(line: 0, scope: !1838)
!2151 = !DILocation(line: 678, column: 40, scope: !1833)
!2152 = !DILocation(line: 680, column: 19, scope: !1855)
!2153 = !DILocation(line: 680, column: 45, scope: !1855)
!2154 = !DILocation(line: 680, column: 23, scope: !1855)
!2155 = !DILocation(line: 684, column: 33, scope: !1854)
!2156 = !DILocation(line: 0, scope: !1854)
!2157 = !DILocation(line: 686, column: 17, scope: !1854)
!2158 = !DILocation(line: 405, column: 12, scope: !1825)
!2159 = !DILocation(line: 688, column: 43, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !353, line: 688, column: 25)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !353, line: 687, column: 19)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !353, line: 686, column: 17)
!2163 = distinct !DILexicalBlock(scope: !1854, file: !353, line: 686, column: 17)
!2164 = !DILocation(line: 690, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !353, line: 690, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2160, file: !353, line: 689, column: 23)
!2167 = !DILocation(line: 690, column: 25, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !353, line: 690, column: 25)
!2169 = !DILocation(line: 690, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !353, line: 690, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !353, line: 690, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2168, file: !353, line: 690, column: 25)
!2173 = !DILocation(line: 690, column: 25, scope: !2171)
!2174 = !DILocation(line: 690, column: 25, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !353, line: 690, column: 25)
!2176 = distinct !DILexicalBlock(scope: !2172, file: !353, line: 690, column: 25)
!2177 = !DILocation(line: 690, column: 25, scope: !2176)
!2178 = !DILocation(line: 690, column: 25, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !353, line: 690, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2172, file: !353, line: 690, column: 25)
!2181 = !DILocation(line: 690, column: 25, scope: !2180)
!2182 = !DILocation(line: 690, column: 25, scope: !2172)
!2183 = !DILocation(line: 690, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !353, line: 690, column: 25)
!2185 = distinct !DILexicalBlock(scope: !2165, file: !353, line: 690, column: 25)
!2186 = !DILocation(line: 690, column: 25, scope: !2185)
!2187 = !DILocation(line: 691, column: 25, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !353, line: 691, column: 25)
!2189 = distinct !DILexicalBlock(scope: !2166, file: !353, line: 691, column: 25)
!2190 = !DILocation(line: 691, column: 25, scope: !2189)
!2191 = !DILocation(line: 692, column: 25, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !353, line: 692, column: 25)
!2193 = distinct !DILexicalBlock(scope: !2166, file: !353, line: 692, column: 25)
!2194 = !DILocation(line: 692, column: 25, scope: !2193)
!2195 = !DILocation(line: 693, column: 38, scope: !2166)
!2196 = !DILocation(line: 693, column: 33, scope: !2166)
!2197 = !DILocation(line: 694, column: 23, scope: !2166)
!2198 = !DILocation(line: 695, column: 30, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2160, file: !353, line: 695, column: 30)
!2200 = !DILocation(line: 695, column: 30, scope: !2160)
!2201 = !DILocation(line: 697, column: 25, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !353, line: 697, column: 25)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !353, line: 697, column: 25)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !353, line: 696, column: 23)
!2205 = !DILocation(line: 697, column: 25, scope: !2203)
!2206 = !DILocation(line: 699, column: 23, scope: !2204)
!2207 = !DILocation(line: 700, column: 35, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2161, file: !353, line: 700, column: 25)
!2209 = !DILocation(line: 700, column: 30, scope: !2208)
!2210 = !DILocation(line: 700, column: 25, scope: !2161)
!2211 = !DILocation(line: 702, column: 21, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !353, line: 702, column: 21)
!2213 = distinct !DILexicalBlock(scope: !2161, file: !353, line: 702, column: 21)
!2214 = !DILocation(line: 702, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !353, line: 702, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !353, line: 702, column: 21)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !353, line: 702, column: 21)
!2218 = !DILocation(line: 702, column: 21, scope: !2216)
!2219 = !DILocation(line: 702, column: 21, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !353, line: 702, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !353, line: 702, column: 21)
!2222 = !DILocation(line: 702, column: 21, scope: !2221)
!2223 = !DILocation(line: 702, column: 21, scope: !2217)
!2224 = !DILocation(line: 0, scope: !2161)
!2225 = !DILocation(line: 703, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !353, line: 703, column: 21)
!2227 = distinct !DILexicalBlock(scope: !2161, file: !353, line: 703, column: 21)
!2228 = !DILocation(line: 703, column: 21, scope: !2227)
!2229 = !DILocation(line: 704, column: 25, scope: !2161)
!2230 = !DILocation(line: 686, column: 17, scope: !2162)
!2231 = distinct !{!2231, !2232, !2233}
!2232 = !DILocation(line: 686, column: 17, scope: !2163)
!2233 = !DILocation(line: 705, column: 19, scope: !2163)
!2234 = !DILocation(line: 416, column: 30, scope: !1934)
!2235 = !DILocation(line: 712, column: 34, scope: !1877)
!2236 = !DILocation(line: 715, column: 35, scope: !1877)
!2237 = !DILocation(line: 715, column: 17, scope: !1877)
!2238 = !DILocation(line: 715, column: 47, scope: !1877)
!2239 = !DILocation(line: 715, column: 65, scope: !1877)
!2240 = !DILocation(line: 716, column: 15, scope: !1877)
!2241 = !DILocation(line: 716, column: 11, scope: !1877)
!2242 = !DILocation(line: 712, column: 11, scope: !1825)
!2243 = !DILocation(line: 400, column: 10, scope: !1827)
!2244 = !DILocation(line: 719, column: 5, scope: !1825)
!2245 = !DILocation(line: 720, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 720, column: 7)
!2247 = !DILocation(line: 720, column: 7, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2246, file: !353, line: 720, column: 7)
!2249 = !DILocation(line: 720, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !353, line: 720, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !353, line: 720, column: 7)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !353, line: 720, column: 7)
!2253 = !DILocation(line: 720, column: 7, scope: !2251)
!2254 = !DILocation(line: 720, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !353, line: 720, column: 7)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !353, line: 720, column: 7)
!2257 = !DILocation(line: 720, column: 7, scope: !2256)
!2258 = !DILocation(line: 720, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !353, line: 720, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2252, file: !353, line: 720, column: 7)
!2261 = !DILocation(line: 720, column: 7, scope: !2260)
!2262 = !DILocation(line: 720, column: 7, scope: !2252)
!2263 = !DILocation(line: 720, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !353, line: 720, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2246, file: !353, line: 720, column: 7)
!2266 = !DILocation(line: 720, column: 7, scope: !2265)
!2267 = !DILocation(line: 722, column: 5, scope: !1825)
!2268 = !DILocation(line: 723, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !353, line: 723, column: 7)
!2270 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 723, column: 7)
!2271 = !DILocation(line: 424, column: 9, scope: !1825)
!2272 = !DILocation(line: 723, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !353, line: 723, column: 7)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !353, line: 723, column: 7)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !353, line: 723, column: 7)
!2276 = !DILocation(line: 723, column: 7, scope: !2274)
!2277 = !DILocation(line: 723, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !353, line: 723, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2275, file: !353, line: 723, column: 7)
!2280 = !DILocation(line: 723, column: 7, scope: !2279)
!2281 = !DILocation(line: 723, column: 7, scope: !2275)
!2282 = !DILocation(line: 724, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !353, line: 724, column: 7)
!2284 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 724, column: 7)
!2285 = !DILocation(line: 724, column: 7, scope: !2284)
!2286 = !DILocation(line: 726, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !1825, file: !353, line: 726, column: 11)
!2288 = !DILocation(line: 726, column: 11, scope: !1825)
!2289 = !DILocation(line: 728, column: 5, scope: !1826)
!2290 = !DILocation(line: 400, column: 75, scope: !1826)
!2291 = !DILocation(line: 400, column: 3, scope: !1826)
!2292 = distinct !{!2292, !1952, !2293}
!2293 = !DILocation(line: 728, column: 5, scope: !1827)
!2294 = !DILocation(line: 730, column: 11, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 730, column: 7)
!2296 = !DILocation(line: 730, column: 16, scope: !2295)
!2297 = !DILocation(line: 738, column: 51, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 738, column: 7)
!2299 = !DILocation(line: 739, column: 10, scope: !2298)
!2300 = !DILocation(line: 741, column: 11, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !353, line: 741, column: 11)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !353, line: 740, column: 5)
!2303 = !DILocation(line: 741, column: 11, scope: !2302)
!2304 = !DILocation(line: 742, column: 16, scope: !2301)
!2305 = !DILocation(line: 742, column: 9, scope: !2301)
!2306 = !DILocation(line: 746, column: 18, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2301, file: !353, line: 746, column: 16)
!2308 = !DILocation(line: 746, column: 32, scope: !2307)
!2309 = !DILocation(line: 746, column: 29, scope: !2307)
!2310 = !DILocation(line: 755, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 755, column: 7)
!2312 = !DILocation(line: 755, column: 20, scope: !2311)
!2313 = !DILocation(line: 756, column: 12, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !353, line: 756, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !353, line: 756, column: 5)
!2316 = !DILocation(line: 756, column: 5, scope: !2315)
!2317 = !DILocation(line: 757, column: 7, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !353, line: 757, column: 7)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !353, line: 757, column: 7)
!2320 = !DILocation(line: 757, column: 7, scope: !2319)
!2321 = !DILocation(line: 756, column: 39, scope: !2314)
!2322 = distinct !{!2322, !2316, !2323}
!2323 = !DILocation(line: 757, column: 7, scope: !2315)
!2324 = !DILocation(line: 759, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 759, column: 7)
!2326 = !DILocation(line: 759, column: 7, scope: !1798)
!2327 = !DILocation(line: 760, column: 5, scope: !2325)
!2328 = !DILocation(line: 760, column: 17, scope: !2325)
!2329 = !DILocation(line: 763, column: 2, scope: !1798)
!2330 = !DILocation(line: 766, column: 51, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !1798, file: !353, line: 766, column: 7)
!2332 = !DILocation(line: 766, column: 21, scope: !2331)
!2333 = !DILocation(line: 770, column: 42, scope: !1798)
!2334 = !DILocation(line: 768, column: 10, scope: !1798)
!2335 = !DILocation(line: 768, column: 3, scope: !1798)
!2336 = !DILocation(line: 772, column: 1, scope: !1798)
!2337 = distinct !DISubprogram(name: "gettext_quote", scope: !353, file: !353, line: 207, type: !2338, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!51, !51, !5}
!2340 = !{!2341, !2342, !2343, !2344}
!2341 = !DILocalVariable(name: "msgid", arg: 1, scope: !2337, file: !353, line: 207, type: !51)
!2342 = !DILocalVariable(name: "s", arg: 2, scope: !2337, file: !353, line: 207, type: !5)
!2343 = !DILocalVariable(name: "translation", scope: !2337, file: !353, line: 209, type: !51)
!2344 = !DILocalVariable(name: "locale_code", scope: !2337, file: !353, line: 210, type: !51)
!2345 = !DILocation(line: 0, scope: !2337)
!2346 = !DILocation(line: 209, column: 29, scope: !2337)
!2347 = !DILocation(line: 212, column: 19, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2337, file: !353, line: 212, column: 7)
!2349 = !DILocation(line: 212, column: 7, scope: !2337)
!2350 = !DILocation(line: 233, column: 17, scope: !2337)
!2351 = !DILocalVariable(name: "s1", arg: 1, scope: !2352, file: !2353, line: 160, type: !51)
!2352 = distinct !DISubprogram(name: "strcaseeq0", scope: !2353, file: !2353, line: 160, type: !2354, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2356)
!2353 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50, !50}
!2356 = !{!2351, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366}
!2357 = !DILocalVariable(name: "s2", arg: 2, scope: !2352, file: !2353, line: 160, type: !51)
!2358 = !DILocalVariable(name: "s20", arg: 3, scope: !2352, file: !2353, line: 160, type: !50)
!2359 = !DILocalVariable(name: "s21", arg: 4, scope: !2352, file: !2353, line: 160, type: !50)
!2360 = !DILocalVariable(name: "s22", arg: 5, scope: !2352, file: !2353, line: 160, type: !50)
!2361 = !DILocalVariable(name: "s23", arg: 6, scope: !2352, file: !2353, line: 160, type: !50)
!2362 = !DILocalVariable(name: "s24", arg: 7, scope: !2352, file: !2353, line: 160, type: !50)
!2363 = !DILocalVariable(name: "s25", arg: 8, scope: !2352, file: !2353, line: 160, type: !50)
!2364 = !DILocalVariable(name: "s26", arg: 9, scope: !2352, file: !2353, line: 160, type: !50)
!2365 = !DILocalVariable(name: "s27", arg: 10, scope: !2352, file: !2353, line: 160, type: !50)
!2366 = !DILocalVariable(name: "s28", arg: 11, scope: !2352, file: !2353, line: 160, type: !50)
!2367 = !DILocation(line: 0, scope: !2352, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 234, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2337, file: !353, line: 234, column: 7)
!2370 = !DILocation(line: 162, column: 7, scope: !2371, inlinedAt: !2368)
!2371 = distinct !DILexicalBlock(scope: !2352, file: !2353, line: 162, column: 7)
!2372 = !DILocalVariable(name: "s1", arg: 1, scope: !2373, file: !2353, line: 146, type: !51)
!2373 = distinct !DISubprogram(name: "strcaseeq1", scope: !2353, file: !2353, line: 146, type: !2374, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50}
!2376 = !{!2372, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2377 = !DILocalVariable(name: "s2", arg: 2, scope: !2373, file: !2353, line: 146, type: !51)
!2378 = !DILocalVariable(name: "s21", arg: 3, scope: !2373, file: !2353, line: 146, type: !50)
!2379 = !DILocalVariable(name: "s22", arg: 4, scope: !2373, file: !2353, line: 146, type: !50)
!2380 = !DILocalVariable(name: "s23", arg: 5, scope: !2373, file: !2353, line: 146, type: !50)
!2381 = !DILocalVariable(name: "s24", arg: 6, scope: !2373, file: !2353, line: 146, type: !50)
!2382 = !DILocalVariable(name: "s25", arg: 7, scope: !2373, file: !2353, line: 146, type: !50)
!2383 = !DILocalVariable(name: "s26", arg: 8, scope: !2373, file: !2353, line: 146, type: !50)
!2384 = !DILocalVariable(name: "s27", arg: 9, scope: !2373, file: !2353, line: 146, type: !50)
!2385 = !DILocalVariable(name: "s28", arg: 10, scope: !2373, file: !2353, line: 146, type: !50)
!2386 = !DILocation(line: 0, scope: !2373, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 167, column: 16, scope: !2388, inlinedAt: !2368)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !2353, line: 164, column: 11)
!2389 = distinct !DILexicalBlock(scope: !2371, file: !2353, line: 163, column: 5)
!2390 = !DILocation(line: 148, column: 7, scope: !2391, inlinedAt: !2387)
!2391 = distinct !DILexicalBlock(scope: !2373, file: !2353, line: 148, column: 7)
!2392 = !DILocalVariable(name: "s1", arg: 1, scope: !2393, file: !2353, line: 132, type: !51)
!2393 = distinct !DISubprogram(name: "strcaseeq2", scope: !2353, file: !2353, line: 132, type: !2394, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50}
!2396 = !{!2392, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2397 = !DILocalVariable(name: "s2", arg: 2, scope: !2393, file: !2353, line: 132, type: !51)
!2398 = !DILocalVariable(name: "s22", arg: 3, scope: !2393, file: !2353, line: 132, type: !50)
!2399 = !DILocalVariable(name: "s23", arg: 4, scope: !2393, file: !2353, line: 132, type: !50)
!2400 = !DILocalVariable(name: "s24", arg: 5, scope: !2393, file: !2353, line: 132, type: !50)
!2401 = !DILocalVariable(name: "s25", arg: 6, scope: !2393, file: !2353, line: 132, type: !50)
!2402 = !DILocalVariable(name: "s26", arg: 7, scope: !2393, file: !2353, line: 132, type: !50)
!2403 = !DILocalVariable(name: "s27", arg: 8, scope: !2393, file: !2353, line: 132, type: !50)
!2404 = !DILocalVariable(name: "s28", arg: 9, scope: !2393, file: !2353, line: 132, type: !50)
!2405 = !DILocation(line: 0, scope: !2393, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 153, column: 16, scope: !2407, inlinedAt: !2387)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !2353, line: 150, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2391, file: !2353, line: 149, column: 5)
!2409 = !DILocation(line: 134, column: 7, scope: !2410, inlinedAt: !2406)
!2410 = distinct !DILexicalBlock(scope: !2393, file: !2353, line: 134, column: 7)
!2411 = !DILocalVariable(name: "s1", arg: 1, scope: !2412, file: !2353, line: 118, type: !51)
!2412 = distinct !DISubprogram(name: "strcaseeq3", scope: !2353, file: !2353, line: 118, type: !2413, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50}
!2415 = !{!2411, !2416, !2417, !2418, !2419, !2420, !2421, !2422}
!2416 = !DILocalVariable(name: "s2", arg: 2, scope: !2412, file: !2353, line: 118, type: !51)
!2417 = !DILocalVariable(name: "s23", arg: 3, scope: !2412, file: !2353, line: 118, type: !50)
!2418 = !DILocalVariable(name: "s24", arg: 4, scope: !2412, file: !2353, line: 118, type: !50)
!2419 = !DILocalVariable(name: "s25", arg: 5, scope: !2412, file: !2353, line: 118, type: !50)
!2420 = !DILocalVariable(name: "s26", arg: 6, scope: !2412, file: !2353, line: 118, type: !50)
!2421 = !DILocalVariable(name: "s27", arg: 7, scope: !2412, file: !2353, line: 118, type: !50)
!2422 = !DILocalVariable(name: "s28", arg: 8, scope: !2412, file: !2353, line: 118, type: !50)
!2423 = !DILocation(line: 0, scope: !2412, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 139, column: 16, scope: !2425, inlinedAt: !2406)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !2353, line: 136, column: 11)
!2426 = distinct !DILexicalBlock(scope: !2410, file: !2353, line: 135, column: 5)
!2427 = !DILocation(line: 120, column: 7, scope: !2428, inlinedAt: !2424)
!2428 = distinct !DILexicalBlock(scope: !2412, file: !2353, line: 120, column: 7)
!2429 = !DILocation(line: 120, column: 7, scope: !2412, inlinedAt: !2424)
!2430 = !DILocalVariable(name: "s1", arg: 1, scope: !2431, file: !2353, line: 104, type: !51)
!2431 = distinct !DISubprogram(name: "strcaseeq4", scope: !2353, file: !2353, line: 104, type: !2432, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!53, !51, !51, !50, !50, !50, !50, !50}
!2434 = !{!2430, !2435, !2436, !2437, !2438, !2439, !2440}
!2435 = !DILocalVariable(name: "s2", arg: 2, scope: !2431, file: !2353, line: 104, type: !51)
!2436 = !DILocalVariable(name: "s24", arg: 3, scope: !2431, file: !2353, line: 104, type: !50)
!2437 = !DILocalVariable(name: "s25", arg: 4, scope: !2431, file: !2353, line: 104, type: !50)
!2438 = !DILocalVariable(name: "s26", arg: 5, scope: !2431, file: !2353, line: 104, type: !50)
!2439 = !DILocalVariable(name: "s27", arg: 6, scope: !2431, file: !2353, line: 104, type: !50)
!2440 = !DILocalVariable(name: "s28", arg: 7, scope: !2431, file: !2353, line: 104, type: !50)
!2441 = !DILocation(line: 0, scope: !2431, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 125, column: 16, scope: !2443, inlinedAt: !2424)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !2353, line: 122, column: 11)
!2444 = distinct !DILexicalBlock(scope: !2428, file: !2353, line: 121, column: 5)
!2445 = !DILocation(line: 106, column: 7, scope: !2446, inlinedAt: !2442)
!2446 = distinct !DILexicalBlock(scope: !2431, file: !2353, line: 106, column: 7)
!2447 = !DILocation(line: 106, column: 7, scope: !2431, inlinedAt: !2442)
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2449, file: !2353, line: 90, type: !51)
!2449 = distinct !DISubprogram(name: "strcaseeq5", scope: !2353, file: !2353, line: 90, type: !2450, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!53, !51, !51, !50, !50, !50, !50}
!2452 = !{!2448, !2453, !2454, !2455, !2456, !2457}
!2453 = !DILocalVariable(name: "s2", arg: 2, scope: !2449, file: !2353, line: 90, type: !51)
!2454 = !DILocalVariable(name: "s25", arg: 3, scope: !2449, file: !2353, line: 90, type: !50)
!2455 = !DILocalVariable(name: "s26", arg: 4, scope: !2449, file: !2353, line: 90, type: !50)
!2456 = !DILocalVariable(name: "s27", arg: 5, scope: !2449, file: !2353, line: 90, type: !50)
!2457 = !DILocalVariable(name: "s28", arg: 6, scope: !2449, file: !2353, line: 90, type: !50)
!2458 = !DILocation(line: 0, scope: !2449, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 111, column: 16, scope: !2460, inlinedAt: !2442)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !2353, line: 108, column: 11)
!2461 = distinct !DILexicalBlock(scope: !2446, file: !2353, line: 107, column: 5)
!2462 = !DILocation(line: 92, column: 7, scope: !2463, inlinedAt: !2459)
!2463 = distinct !DILexicalBlock(scope: !2449, file: !2353, line: 92, column: 7)
!2464 = !DILocation(line: 92, column: 7, scope: !2449, inlinedAt: !2459)
!2465 = !DILocation(line: 235, column: 12, scope: !2369)
!2466 = !DILocation(line: 235, column: 21, scope: !2369)
!2467 = !DILocation(line: 235, column: 5, scope: !2369)
!2468 = !DILocation(line: 0, scope: !2373, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 167, column: 16, scope: !2388, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 236, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2337, file: !353, line: 236, column: 7)
!2472 = !DILocation(line: 148, column: 7, scope: !2391, inlinedAt: !2469)
!2473 = !DILocation(line: 0, scope: !2393, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 153, column: 16, scope: !2407, inlinedAt: !2469)
!2475 = !DILocation(line: 134, column: 7, scope: !2410, inlinedAt: !2474)
!2476 = !DILocation(line: 134, column: 7, scope: !2393, inlinedAt: !2474)
!2477 = !DILocation(line: 0, scope: !2412, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 139, column: 16, scope: !2425, inlinedAt: !2474)
!2479 = !DILocation(line: 120, column: 7, scope: !2428, inlinedAt: !2478)
!2480 = !DILocation(line: 120, column: 7, scope: !2412, inlinedAt: !2478)
!2481 = !DILocation(line: 0, scope: !2431, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 125, column: 16, scope: !2443, inlinedAt: !2478)
!2483 = !DILocation(line: 106, column: 7, scope: !2446, inlinedAt: !2482)
!2484 = !DILocation(line: 106, column: 7, scope: !2431, inlinedAt: !2482)
!2485 = !DILocation(line: 0, scope: !2449, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 111, column: 16, scope: !2460, inlinedAt: !2482)
!2487 = !DILocation(line: 92, column: 7, scope: !2463, inlinedAt: !2486)
!2488 = !DILocation(line: 92, column: 7, scope: !2449, inlinedAt: !2486)
!2489 = !DILocalVariable(name: "s1", arg: 1, scope: !2490, file: !2353, line: 76, type: !51)
!2490 = distinct !DISubprogram(name: "strcaseeq6", scope: !2353, file: !2353, line: 76, type: !2491, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!53, !51, !51, !50, !50, !50}
!2493 = !{!2489, !2494, !2495, !2496, !2497}
!2494 = !DILocalVariable(name: "s2", arg: 2, scope: !2490, file: !2353, line: 76, type: !51)
!2495 = !DILocalVariable(name: "s26", arg: 3, scope: !2490, file: !2353, line: 76, type: !50)
!2496 = !DILocalVariable(name: "s27", arg: 4, scope: !2490, file: !2353, line: 76, type: !50)
!2497 = !DILocalVariable(name: "s28", arg: 5, scope: !2490, file: !2353, line: 76, type: !50)
!2498 = !DILocation(line: 0, scope: !2490, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 97, column: 16, scope: !2500, inlinedAt: !2486)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !2353, line: 94, column: 11)
!2501 = distinct !DILexicalBlock(scope: !2463, file: !2353, line: 93, column: 5)
!2502 = !DILocation(line: 78, column: 7, scope: !2503, inlinedAt: !2499)
!2503 = distinct !DILexicalBlock(scope: !2490, file: !2353, line: 78, column: 7)
!2504 = !DILocation(line: 78, column: 7, scope: !2490, inlinedAt: !2499)
!2505 = !DILocalVariable(name: "s1", arg: 1, scope: !2506, file: !2353, line: 62, type: !51)
!2506 = distinct !DISubprogram(name: "strcaseeq7", scope: !2353, file: !2353, line: 62, type: !2507, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!53, !51, !51, !50, !50}
!2509 = !{!2505, !2510, !2511, !2512}
!2510 = !DILocalVariable(name: "s2", arg: 2, scope: !2506, file: !2353, line: 62, type: !51)
!2511 = !DILocalVariable(name: "s27", arg: 3, scope: !2506, file: !2353, line: 62, type: !50)
!2512 = !DILocalVariable(name: "s28", arg: 4, scope: !2506, file: !2353, line: 62, type: !50)
!2513 = !DILocation(line: 0, scope: !2506, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 83, column: 16, scope: !2515, inlinedAt: !2499)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !2353, line: 80, column: 11)
!2516 = distinct !DILexicalBlock(scope: !2503, file: !2353, line: 79, column: 5)
!2517 = !DILocation(line: 64, column: 7, scope: !2518, inlinedAt: !2514)
!2518 = distinct !DILexicalBlock(scope: !2506, file: !2353, line: 64, column: 7)
!2519 = !DILocation(line: 236, column: 7, scope: !2337)
!2520 = !DILocation(line: 237, column: 12, scope: !2471)
!2521 = !DILocation(line: 237, column: 21, scope: !2471)
!2522 = !DILocation(line: 237, column: 5, scope: !2471)
!2523 = !DILocation(line: 239, column: 13, scope: !2337)
!2524 = !DILocation(line: 239, column: 11, scope: !2337)
!2525 = !DILocation(line: 239, column: 3, scope: !2337)
!2526 = !DILocation(line: 240, column: 1, scope: !2337)
!2527 = distinct !DISubprogram(name: "quotearg_alloc", scope: !353, file: !353, line: 799, type: !2528, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!49, !51, !108, !367}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2527, file: !353, line: 799, type: !51)
!2532 = !DILocalVariable(name: "argsize", arg: 2, scope: !2527, file: !353, line: 799, type: !108)
!2533 = !DILocalVariable(name: "o", arg: 3, scope: !2527, file: !353, line: 800, type: !367)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocalVariable(name: "arg", arg: 1, scope: !2536, file: !353, line: 812, type: !51)
!2536 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !353, file: !353, line: 812, type: !2537, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!49, !51, !108, !558, !367}
!2539 = !{!2535, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2540 = !DILocalVariable(name: "argsize", arg: 2, scope: !2536, file: !353, line: 812, type: !108)
!2541 = !DILocalVariable(name: "size", arg: 3, scope: !2536, file: !353, line: 812, type: !558)
!2542 = !DILocalVariable(name: "o", arg: 4, scope: !2536, file: !353, line: 813, type: !367)
!2543 = !DILocalVariable(name: "p", scope: !2536, file: !353, line: 815, type: !367)
!2544 = !DILocalVariable(name: "e", scope: !2536, file: !353, line: 816, type: !53)
!2545 = !DILocalVariable(name: "flags", scope: !2536, file: !353, line: 818, type: !53)
!2546 = !DILocalVariable(name: "bufsize", scope: !2536, file: !353, line: 819, type: !108)
!2547 = !DILocalVariable(name: "buf", scope: !2536, file: !353, line: 823, type: !49)
!2548 = !DILocation(line: 0, scope: !2536, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 802, column: 10, scope: !2527)
!2550 = !DILocation(line: 815, column: 37, scope: !2536, inlinedAt: !2549)
!2551 = !DILocation(line: 816, column: 11, scope: !2536, inlinedAt: !2549)
!2552 = !DILocation(line: 818, column: 18, scope: !2536, inlinedAt: !2549)
!2553 = !DILocation(line: 818, column: 24, scope: !2536, inlinedAt: !2549)
!2554 = !DILocation(line: 819, column: 69, scope: !2536, inlinedAt: !2549)
!2555 = !DILocation(line: 820, column: 53, scope: !2536, inlinedAt: !2549)
!2556 = !DILocation(line: 821, column: 49, scope: !2536, inlinedAt: !2549)
!2557 = !DILocation(line: 822, column: 49, scope: !2536, inlinedAt: !2549)
!2558 = !DILocation(line: 819, column: 20, scope: !2536, inlinedAt: !2549)
!2559 = !DILocation(line: 822, column: 62, scope: !2536, inlinedAt: !2549)
!2560 = !DILocalVariable(name: "n", arg: 1, scope: !2561, file: !175, line: 216, type: !108)
!2561 = distinct !DISubprogram(name: "xcharalloc", scope: !175, file: !175, line: 216, type: !2562, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2564)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!49, !108}
!2564 = !{!2560}
!2565 = !DILocation(line: 0, scope: !2561, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 823, column: 15, scope: !2536, inlinedAt: !2549)
!2567 = !DILocation(line: 218, column: 10, scope: !2561, inlinedAt: !2566)
!2568 = !DILocation(line: 824, column: 60, scope: !2536, inlinedAt: !2549)
!2569 = !DILocation(line: 826, column: 32, scope: !2536, inlinedAt: !2549)
!2570 = !DILocation(line: 826, column: 47, scope: !2536, inlinedAt: !2549)
!2571 = !DILocation(line: 824, column: 3, scope: !2536, inlinedAt: !2549)
!2572 = !DILocation(line: 827, column: 9, scope: !2536, inlinedAt: !2549)
!2573 = !DILocation(line: 802, column: 3, scope: !2527)
!2574 = !DILocation(line: 0, scope: !2536)
!2575 = !DILocation(line: 815, column: 37, scope: !2536)
!2576 = !DILocation(line: 816, column: 11, scope: !2536)
!2577 = !DILocation(line: 818, column: 18, scope: !2536)
!2578 = !DILocation(line: 818, column: 27, scope: !2536)
!2579 = !DILocation(line: 818, column: 24, scope: !2536)
!2580 = !DILocation(line: 819, column: 69, scope: !2536)
!2581 = !DILocation(line: 820, column: 53, scope: !2536)
!2582 = !DILocation(line: 821, column: 49, scope: !2536)
!2583 = !DILocation(line: 822, column: 49, scope: !2536)
!2584 = !DILocation(line: 819, column: 20, scope: !2536)
!2585 = !DILocation(line: 822, column: 62, scope: !2536)
!2586 = !DILocation(line: 0, scope: !2561, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 823, column: 15, scope: !2536)
!2588 = !DILocation(line: 218, column: 10, scope: !2561, inlinedAt: !2587)
!2589 = !DILocation(line: 824, column: 60, scope: !2536)
!2590 = !DILocation(line: 826, column: 32, scope: !2536)
!2591 = !DILocation(line: 826, column: 47, scope: !2536)
!2592 = !DILocation(line: 824, column: 3, scope: !2536)
!2593 = !DILocation(line: 827, column: 9, scope: !2536)
!2594 = !DILocation(line: 828, column: 7, scope: !2536)
!2595 = !DILocation(line: 829, column: 11, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2536, file: !353, line: 828, column: 7)
!2597 = !DILocation(line: 829, column: 5, scope: !2596)
!2598 = !DILocation(line: 830, column: 3, scope: !2536)
!2599 = distinct !DISubprogram(name: "quotearg_free", scope: !353, file: !353, line: 848, type: !135, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2600)
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "sv", scope: !2599, file: !353, line: 850, type: !445)
!2602 = !DILocalVariable(name: "i", scope: !2599, file: !353, line: 851, type: !53)
!2603 = !DILocation(line: 850, column: 24, scope: !2599)
!2604 = !DILocation(line: 0, scope: !2599)
!2605 = !DILocation(line: 852, column: 19, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !353, line: 852, column: 3)
!2607 = distinct !DILexicalBlock(scope: !2599, file: !353, line: 852, column: 3)
!2608 = !DILocation(line: 852, column: 17, scope: !2606)
!2609 = !DILocation(line: 852, column: 3, scope: !2607)
!2610 = !DILocation(line: 853, column: 17, scope: !2606)
!2611 = !{!2612, !1226, i64 8}
!2612 = !{!"slotvec", !1391, i64 0, !1226, i64 8}
!2613 = !DILocation(line: 853, column: 5, scope: !2606)
!2614 = !DILocation(line: 852, column: 28, scope: !2606)
!2615 = distinct !{!2615, !2609, !2616}
!2616 = !DILocation(line: 853, column: 20, scope: !2607)
!2617 = !DILocation(line: 854, column: 13, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2599, file: !353, line: 854, column: 7)
!2619 = !DILocation(line: 854, column: 17, scope: !2618)
!2620 = !DILocation(line: 854, column: 7, scope: !2599)
!2621 = !DILocation(line: 856, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !353, line: 855, column: 5)
!2623 = !DILocation(line: 857, column: 21, scope: !2622)
!2624 = !{!2612, !1391, i64 0}
!2625 = !DILocation(line: 858, column: 20, scope: !2622)
!2626 = !DILocation(line: 859, column: 5, scope: !2622)
!2627 = !DILocation(line: 860, column: 10, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2599, file: !353, line: 860, column: 7)
!2629 = !DILocation(line: 860, column: 7, scope: !2599)
!2630 = !DILocation(line: 862, column: 13, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !353, line: 861, column: 5)
!2632 = !DILocation(line: 862, column: 7, scope: !2631)
!2633 = !DILocation(line: 863, column: 15, scope: !2631)
!2634 = !DILocation(line: 864, column: 5, scope: !2631)
!2635 = !DILocation(line: 865, column: 10, scope: !2599)
!2636 = !DILocation(line: 866, column: 1, scope: !2599)
!2637 = distinct !DISubprogram(name: "quotearg_n", scope: !353, file: !353, line: 931, type: !122, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2638)
!2638 = !{!2639, !2640}
!2639 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !353, line: 931, type: !53)
!2640 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !353, line: 931, type: !51)
!2641 = !DILocation(line: 0, scope: !2637)
!2642 = !DILocation(line: 933, column: 10, scope: !2637)
!2643 = !DILocation(line: 933, column: 3, scope: !2637)
!2644 = distinct !DISubprogram(name: "quotearg_n_options", scope: !353, file: !353, line: 877, type: !2645, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!49, !53, !51, !108, !367}
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654, !2657, !2658, !2660, !2661, !2662}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !353, line: 877, type: !53)
!2649 = !DILocalVariable(name: "arg", arg: 2, scope: !2644, file: !353, line: 877, type: !51)
!2650 = !DILocalVariable(name: "argsize", arg: 3, scope: !2644, file: !353, line: 877, type: !108)
!2651 = !DILocalVariable(name: "options", arg: 4, scope: !2644, file: !353, line: 878, type: !367)
!2652 = !DILocalVariable(name: "e", scope: !2644, file: !353, line: 880, type: !53)
!2653 = !DILocalVariable(name: "sv", scope: !2644, file: !353, line: 882, type: !445)
!2654 = !DILocalVariable(name: "preallocated", scope: !2655, file: !353, line: 889, type: !189)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !353, line: 888, column: 5)
!2656 = distinct !DILexicalBlock(scope: !2644, file: !353, line: 887, column: 7)
!2657 = !DILocalVariable(name: "nmax", scope: !2655, file: !353, line: 890, type: !53)
!2658 = !DILocalVariable(name: "size", scope: !2659, file: !353, line: 903, type: !108)
!2659 = distinct !DILexicalBlock(scope: !2644, file: !353, line: 902, column: 3)
!2660 = !DILocalVariable(name: "val", scope: !2659, file: !353, line: 904, type: !49)
!2661 = !DILocalVariable(name: "flags", scope: !2659, file: !353, line: 906, type: !53)
!2662 = !DILocalVariable(name: "qsize", scope: !2659, file: !353, line: 907, type: !108)
!2663 = !DILocation(line: 0, scope: !2644)
!2664 = !DILocation(line: 880, column: 11, scope: !2644)
!2665 = !DILocation(line: 882, column: 24, scope: !2644)
!2666 = !DILocation(line: 884, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2644, file: !353, line: 884, column: 7)
!2668 = !DILocation(line: 884, column: 7, scope: !2644)
!2669 = !DILocation(line: 885, column: 5, scope: !2667)
!2670 = !DILocation(line: 887, column: 7, scope: !2656)
!2671 = !DILocation(line: 887, column: 14, scope: !2656)
!2672 = !DILocation(line: 887, column: 7, scope: !2644)
!2673 = !DILocation(line: 889, column: 31, scope: !2655)
!2674 = !DILocation(line: 0, scope: !2655)
!2675 = !DILocation(line: 892, column: 16, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2655, file: !353, line: 892, column: 11)
!2677 = !DILocation(line: 892, column: 11, scope: !2655)
!2678 = !DILocation(line: 893, column: 9, scope: !2676)
!2679 = !DILocation(line: 895, column: 32, scope: !2655)
!2680 = !DILocation(line: 895, column: 61, scope: !2655)
!2681 = !DILocation(line: 895, column: 58, scope: !2655)
!2682 = !DILocation(line: 895, column: 66, scope: !2655)
!2683 = !DILocation(line: 895, column: 22, scope: !2655)
!2684 = !DILocation(line: 895, column: 15, scope: !2655)
!2685 = !DILocation(line: 896, column: 11, scope: !2655)
!2686 = !DILocation(line: 897, column: 15, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2655, file: !353, line: 896, column: 11)
!2688 = !{i64 0, i64 8, !1400, i64 8, i64 8, !1225}
!2689 = !DILocation(line: 897, column: 9, scope: !2687)
!2690 = !DILocation(line: 898, column: 20, scope: !2655)
!2691 = !DILocation(line: 898, column: 18, scope: !2655)
!2692 = !DILocation(line: 898, column: 15, scope: !2655)
!2693 = !DILocation(line: 898, column: 38, scope: !2655)
!2694 = !DILocation(line: 898, column: 31, scope: !2655)
!2695 = !DILocation(line: 898, column: 48, scope: !2655)
!2696 = !DILocation(line: 0, scope: !2095, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 898, column: 7, scope: !2655)
!2698 = !DILocation(line: 71, column: 10, scope: !2095, inlinedAt: !2697)
!2699 = !DILocation(line: 899, column: 14, scope: !2655)
!2700 = !DILocation(line: 900, column: 5, scope: !2655)
!2701 = !DILocation(line: 903, column: 19, scope: !2659)
!2702 = !DILocation(line: 903, column: 25, scope: !2659)
!2703 = !DILocation(line: 0, scope: !2659)
!2704 = !DILocation(line: 904, column: 23, scope: !2659)
!2705 = !DILocation(line: 906, column: 26, scope: !2659)
!2706 = !DILocation(line: 906, column: 32, scope: !2659)
!2707 = !DILocation(line: 908, column: 55, scope: !2659)
!2708 = !DILocation(line: 909, column: 46, scope: !2659)
!2709 = !DILocation(line: 910, column: 55, scope: !2659)
!2710 = !DILocation(line: 911, column: 55, scope: !2659)
!2711 = !DILocation(line: 907, column: 20, scope: !2659)
!2712 = !DILocation(line: 913, column: 14, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2659, file: !353, line: 913, column: 9)
!2714 = !DILocation(line: 913, column: 9, scope: !2659)
!2715 = !DILocation(line: 915, column: 35, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !353, line: 914, column: 7)
!2717 = !DILocation(line: 915, column: 20, scope: !2716)
!2718 = !DILocation(line: 916, column: 17, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !353, line: 916, column: 13)
!2720 = !DILocation(line: 916, column: 13, scope: !2716)
!2721 = !DILocation(line: 917, column: 11, scope: !2719)
!2722 = !DILocation(line: 0, scope: !2561, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 918, column: 27, scope: !2716)
!2724 = !DILocation(line: 218, column: 10, scope: !2561, inlinedAt: !2723)
!2725 = !DILocation(line: 918, column: 19, scope: !2716)
!2726 = !DILocation(line: 919, column: 69, scope: !2716)
!2727 = !DILocation(line: 921, column: 44, scope: !2716)
!2728 = !DILocation(line: 922, column: 44, scope: !2716)
!2729 = !DILocation(line: 919, column: 9, scope: !2716)
!2730 = !DILocation(line: 923, column: 7, scope: !2716)
!2731 = !DILocation(line: 925, column: 11, scope: !2659)
!2732 = !DILocation(line: 926, column: 5, scope: !2659)
!2733 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !353, file: !353, line: 937, type: !2734, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!49, !53, !51, !108}
!2736 = !{!2737, !2738, !2739}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !353, line: 937, type: !53)
!2738 = !DILocalVariable(name: "arg", arg: 2, scope: !2733, file: !353, line: 937, type: !51)
!2739 = !DILocalVariable(name: "argsize", arg: 3, scope: !2733, file: !353, line: 937, type: !108)
!2740 = !DILocation(line: 0, scope: !2733)
!2741 = !DILocation(line: 939, column: 10, scope: !2733)
!2742 = !DILocation(line: 939, column: 3, scope: !2733)
!2743 = distinct !DISubprogram(name: "quotearg", scope: !353, file: !353, line: 943, type: !128, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2744)
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !353, line: 943, type: !51)
!2746 = !DILocation(line: 0, scope: !2743)
!2747 = !DILocation(line: 0, scope: !2637, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 945, column: 10, scope: !2743)
!2749 = !DILocation(line: 933, column: 10, scope: !2637, inlinedAt: !2748)
!2750 = !DILocation(line: 945, column: 3, scope: !2743)
!2751 = distinct !DISubprogram(name: "quotearg_mem", scope: !353, file: !353, line: 949, type: !2752, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!49, !51, !108}
!2754 = !{!2755, !2756}
!2755 = !DILocalVariable(name: "arg", arg: 1, scope: !2751, file: !353, line: 949, type: !51)
!2756 = !DILocalVariable(name: "argsize", arg: 2, scope: !2751, file: !353, line: 949, type: !108)
!2757 = !DILocation(line: 0, scope: !2751)
!2758 = !DILocation(line: 0, scope: !2733, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 951, column: 10, scope: !2751)
!2760 = !DILocation(line: 939, column: 10, scope: !2733, inlinedAt: !2759)
!2761 = !DILocation(line: 951, column: 3, scope: !2751)
!2762 = distinct !DISubprogram(name: "quotearg_n_style", scope: !353, file: !353, line: 955, type: !169, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2763)
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2762, file: !353, line: 955, type: !53)
!2765 = !DILocalVariable(name: "s", arg: 2, scope: !2762, file: !353, line: 955, type: !5)
!2766 = !DILocalVariable(name: "arg", arg: 3, scope: !2762, file: !353, line: 955, type: !51)
!2767 = !DILocalVariable(name: "o", scope: !2762, file: !353, line: 957, type: !368)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 957, column: 3, scope: !2762)
!2770 = !DILocation(line: 957, column: 32, scope: !2762)
!2771 = !DILocalVariable(name: "style", arg: 1, scope: !2772, file: !353, line: 193, type: !5)
!2772 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !353, file: !353, line: 193, type: !2773, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!369, !5}
!2775 = !{!2771, !2776}
!2776 = !DILocalVariable(name: "o", scope: !2772, file: !353, line: 195, type: !369)
!2777 = !DILocation(line: 0, scope: !2772, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 957, column: 36, scope: !2762)
!2779 = !DILocation(line: 195, column: 26, scope: !2772, inlinedAt: !2778)
!2780 = !{!2781}
!2781 = distinct !{!2781, !2782, !"quoting_options_from_style: argument 0"}
!2782 = distinct !{!2782, !"quoting_options_from_style"}
!2783 = !DILocation(line: 196, column: 13, scope: !2784, inlinedAt: !2778)
!2784 = distinct !DILexicalBlock(scope: !2772, file: !353, line: 196, column: 7)
!2785 = !DILocation(line: 196, column: 7, scope: !2772, inlinedAt: !2778)
!2786 = !DILocation(line: 197, column: 5, scope: !2784, inlinedAt: !2778)
!2787 = !DILocation(line: 198, column: 5, scope: !2772, inlinedAt: !2778)
!2788 = !DILocation(line: 198, column: 11, scope: !2772, inlinedAt: !2778)
!2789 = !DILocation(line: 958, column: 10, scope: !2762)
!2790 = !DILocation(line: 959, column: 1, scope: !2762)
!2791 = !DILocation(line: 958, column: 3, scope: !2762)
!2792 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !353, file: !353, line: 962, type: !2793, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!49, !53, !5, !51, !108}
!2795 = !{!2796, !2797, !2798, !2799, !2800}
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !353, line: 962, type: !53)
!2797 = !DILocalVariable(name: "s", arg: 2, scope: !2792, file: !353, line: 962, type: !5)
!2798 = !DILocalVariable(name: "arg", arg: 3, scope: !2792, file: !353, line: 963, type: !51)
!2799 = !DILocalVariable(name: "argsize", arg: 4, scope: !2792, file: !353, line: 963, type: !108)
!2800 = !DILocalVariable(name: "o", scope: !2792, file: !353, line: 965, type: !368)
!2801 = !DILocation(line: 0, scope: !2792)
!2802 = !DILocation(line: 965, column: 3, scope: !2792)
!2803 = !DILocation(line: 965, column: 32, scope: !2792)
!2804 = !DILocation(line: 0, scope: !2772, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 965, column: 36, scope: !2792)
!2806 = !DILocation(line: 195, column: 26, scope: !2772, inlinedAt: !2805)
!2807 = !{!2808}
!2808 = distinct !{!2808, !2809, !"quoting_options_from_style: argument 0"}
!2809 = distinct !{!2809, !"quoting_options_from_style"}
!2810 = !DILocation(line: 196, column: 13, scope: !2784, inlinedAt: !2805)
!2811 = !DILocation(line: 196, column: 7, scope: !2772, inlinedAt: !2805)
!2812 = !DILocation(line: 197, column: 5, scope: !2784, inlinedAt: !2805)
!2813 = !DILocation(line: 198, column: 5, scope: !2772, inlinedAt: !2805)
!2814 = !DILocation(line: 198, column: 11, scope: !2772, inlinedAt: !2805)
!2815 = !DILocation(line: 966, column: 10, scope: !2792)
!2816 = !DILocation(line: 967, column: 1, scope: !2792)
!2817 = !DILocation(line: 966, column: 3, scope: !2792)
!2818 = distinct !DISubprogram(name: "quotearg_style", scope: !353, file: !353, line: 970, type: !2819, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!49, !5, !51}
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "s", arg: 1, scope: !2818, file: !353, line: 970, type: !5)
!2823 = !DILocalVariable(name: "arg", arg: 2, scope: !2818, file: !353, line: 970, type: !51)
!2824 = !DILocation(line: 195, column: 26, scope: !2772, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 957, column: 36, scope: !2762, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 972, column: 10, scope: !2818)
!2827 = !DILocation(line: 957, column: 32, scope: !2762, inlinedAt: !2826)
!2828 = !DILocation(line: 0, scope: !2818)
!2829 = !DILocation(line: 0, scope: !2762, inlinedAt: !2826)
!2830 = !DILocation(line: 957, column: 3, scope: !2762, inlinedAt: !2826)
!2831 = !DILocation(line: 0, scope: !2772, inlinedAt: !2825)
!2832 = !{!2833}
!2833 = distinct !{!2833, !2834, !"quoting_options_from_style: argument 0"}
!2834 = distinct !{!2834, !"quoting_options_from_style"}
!2835 = !DILocation(line: 196, column: 13, scope: !2784, inlinedAt: !2825)
!2836 = !DILocation(line: 196, column: 7, scope: !2772, inlinedAt: !2825)
!2837 = !DILocation(line: 197, column: 5, scope: !2784, inlinedAt: !2825)
!2838 = !DILocation(line: 198, column: 5, scope: !2772, inlinedAt: !2825)
!2839 = !DILocation(line: 198, column: 11, scope: !2772, inlinedAt: !2825)
!2840 = !DILocation(line: 958, column: 10, scope: !2762, inlinedAt: !2826)
!2841 = !DILocation(line: 959, column: 1, scope: !2762, inlinedAt: !2826)
!2842 = !DILocation(line: 972, column: 3, scope: !2818)
!2843 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !353, file: !353, line: 976, type: !2844, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!49, !5, !51, !108}
!2846 = !{!2847, !2848, !2849}
!2847 = !DILocalVariable(name: "s", arg: 1, scope: !2843, file: !353, line: 976, type: !5)
!2848 = !DILocalVariable(name: "arg", arg: 2, scope: !2843, file: !353, line: 976, type: !51)
!2849 = !DILocalVariable(name: "argsize", arg: 3, scope: !2843, file: !353, line: 976, type: !108)
!2850 = !DILocation(line: 195, column: 26, scope: !2772, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 965, column: 36, scope: !2792, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 978, column: 10, scope: !2843)
!2853 = !DILocation(line: 965, column: 32, scope: !2792, inlinedAt: !2852)
!2854 = !DILocation(line: 0, scope: !2843)
!2855 = !DILocation(line: 0, scope: !2792, inlinedAt: !2852)
!2856 = !DILocation(line: 965, column: 3, scope: !2792, inlinedAt: !2852)
!2857 = !DILocation(line: 0, scope: !2772, inlinedAt: !2851)
!2858 = !{!2859}
!2859 = distinct !{!2859, !2860, !"quoting_options_from_style: argument 0"}
!2860 = distinct !{!2860, !"quoting_options_from_style"}
!2861 = !DILocation(line: 196, column: 13, scope: !2784, inlinedAt: !2851)
!2862 = !DILocation(line: 196, column: 7, scope: !2772, inlinedAt: !2851)
!2863 = !DILocation(line: 197, column: 5, scope: !2784, inlinedAt: !2851)
!2864 = !DILocation(line: 198, column: 5, scope: !2772, inlinedAt: !2851)
!2865 = !DILocation(line: 198, column: 11, scope: !2772, inlinedAt: !2851)
!2866 = !DILocation(line: 966, column: 10, scope: !2792, inlinedAt: !2852)
!2867 = !DILocation(line: 967, column: 1, scope: !2792, inlinedAt: !2852)
!2868 = !DILocation(line: 978, column: 3, scope: !2843)
!2869 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !353, file: !353, line: 982, type: !2870, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!49, !51, !108, !50}
!2872 = !{!2873, !2874, !2875, !2876}
!2873 = !DILocalVariable(name: "arg", arg: 1, scope: !2869, file: !353, line: 982, type: !51)
!2874 = !DILocalVariable(name: "argsize", arg: 2, scope: !2869, file: !353, line: 982, type: !108)
!2875 = !DILocalVariable(name: "ch", arg: 3, scope: !2869, file: !353, line: 982, type: !50)
!2876 = !DILocalVariable(name: "options", scope: !2869, file: !353, line: 984, type: !369)
!2877 = !DILocation(line: 0, scope: !2869)
!2878 = !DILocation(line: 984, column: 3, scope: !2869)
!2879 = !DILocation(line: 984, column: 26, scope: !2869)
!2880 = !DILocation(line: 985, column: 13, scope: !2869)
!2881 = !{i64 0, i64 4, !1318, i64 4, i64 4, !1331, i64 8, i64 32, !1318, i64 40, i64 8, !1225, i64 48, i64 8, !1225}
!2882 = !DILocation(line: 0, scope: !1710, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 986, column: 3, scope: !2869)
!2884 = !DILocation(line: 156, column: 62, scope: !1710, inlinedAt: !2883)
!2885 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2883)
!2886 = !DILocation(line: 157, column: 15, scope: !1710, inlinedAt: !2883)
!2887 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2883)
!2888 = !DILocation(line: 158, column: 15, scope: !1710, inlinedAt: !2883)
!2889 = !DILocation(line: 158, column: 25, scope: !1710, inlinedAt: !2883)
!2890 = !DILocation(line: 159, column: 18, scope: !1710, inlinedAt: !2883)
!2891 = !DILocation(line: 159, column: 23, scope: !1710, inlinedAt: !2883)
!2892 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2883)
!2893 = !DILocation(line: 987, column: 10, scope: !2869)
!2894 = !DILocation(line: 988, column: 1, scope: !2869)
!2895 = !DILocation(line: 987, column: 3, scope: !2869)
!2896 = distinct !DISubprogram(name: "quotearg_char", scope: !353, file: !353, line: 991, type: !2897, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!49, !51, !50}
!2899 = !{!2900, !2901}
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2896, file: !353, line: 991, type: !51)
!2901 = !DILocalVariable(name: "ch", arg: 2, scope: !2896, file: !353, line: 991, type: !50)
!2902 = !DILocation(line: 984, column: 26, scope: !2869, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 993, column: 10, scope: !2896)
!2904 = !DILocation(line: 0, scope: !2896)
!2905 = !DILocation(line: 0, scope: !2869, inlinedAt: !2903)
!2906 = !DILocation(line: 984, column: 3, scope: !2869, inlinedAt: !2903)
!2907 = !DILocation(line: 985, column: 13, scope: !2869, inlinedAt: !2903)
!2908 = !DILocation(line: 0, scope: !1710, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 986, column: 3, scope: !2869, inlinedAt: !2903)
!2910 = !DILocation(line: 156, column: 62, scope: !1710, inlinedAt: !2909)
!2911 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2909)
!2912 = !DILocation(line: 157, column: 15, scope: !1710, inlinedAt: !2909)
!2913 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2909)
!2914 = !DILocation(line: 158, column: 15, scope: !1710, inlinedAt: !2909)
!2915 = !DILocation(line: 158, column: 25, scope: !1710, inlinedAt: !2909)
!2916 = !DILocation(line: 159, column: 18, scope: !1710, inlinedAt: !2909)
!2917 = !DILocation(line: 159, column: 23, scope: !1710, inlinedAt: !2909)
!2918 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2909)
!2919 = !DILocation(line: 987, column: 10, scope: !2869, inlinedAt: !2903)
!2920 = !DILocation(line: 988, column: 1, scope: !2869, inlinedAt: !2903)
!2921 = !DILocation(line: 993, column: 3, scope: !2896)
!2922 = distinct !DISubprogram(name: "quotearg_colon", scope: !353, file: !353, line: 997, type: !128, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2923)
!2923 = !{!2924}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2922, file: !353, line: 997, type: !51)
!2925 = !DILocation(line: 984, column: 26, scope: !2869, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 993, column: 10, scope: !2896, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 999, column: 10, scope: !2922)
!2928 = !DILocation(line: 0, scope: !2922)
!2929 = !DILocation(line: 0, scope: !2896, inlinedAt: !2927)
!2930 = !DILocation(line: 0, scope: !2869, inlinedAt: !2926)
!2931 = !DILocation(line: 984, column: 3, scope: !2869, inlinedAt: !2926)
!2932 = !DILocation(line: 985, column: 13, scope: !2869, inlinedAt: !2926)
!2933 = !DILocation(line: 0, scope: !1710, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 986, column: 3, scope: !2869, inlinedAt: !2926)
!2935 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2934)
!2936 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2934)
!2937 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2934)
!2938 = !DILocation(line: 987, column: 10, scope: !2869, inlinedAt: !2926)
!2939 = !DILocation(line: 988, column: 1, scope: !2869, inlinedAt: !2926)
!2940 = !DILocation(line: 999, column: 3, scope: !2922)
!2941 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !353, file: !353, line: 1003, type: !2752, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2942)
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "arg", arg: 1, scope: !2941, file: !353, line: 1003, type: !51)
!2944 = !DILocalVariable(name: "argsize", arg: 2, scope: !2941, file: !353, line: 1003, type: !108)
!2945 = !DILocation(line: 984, column: 26, scope: !2869, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 1005, column: 10, scope: !2941)
!2947 = !DILocation(line: 0, scope: !2941)
!2948 = !DILocation(line: 0, scope: !2869, inlinedAt: !2946)
!2949 = !DILocation(line: 984, column: 3, scope: !2869, inlinedAt: !2946)
!2950 = !DILocation(line: 985, column: 13, scope: !2869, inlinedAt: !2946)
!2951 = !DILocation(line: 0, scope: !1710, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 986, column: 3, scope: !2869, inlinedAt: !2946)
!2953 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2952)
!2954 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2952)
!2955 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2952)
!2956 = !DILocation(line: 987, column: 10, scope: !2869, inlinedAt: !2946)
!2957 = !DILocation(line: 988, column: 1, scope: !2869, inlinedAt: !2946)
!2958 = !DILocation(line: 1005, column: 3, scope: !2941)
!2959 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !353, file: !353, line: 1009, type: !169, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2960)
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !353, line: 1009, type: !53)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2959, file: !353, line: 1009, type: !5)
!2963 = !DILocalVariable(name: "arg", arg: 3, scope: !2959, file: !353, line: 1009, type: !51)
!2964 = !DILocalVariable(name: "options", scope: !2959, file: !353, line: 1011, type: !369)
!2965 = !DILocation(line: 195, column: 26, scope: !2772, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1012, column: 13, scope: !2959)
!2967 = !DILocation(line: 0, scope: !2959)
!2968 = !DILocation(line: 1011, column: 3, scope: !2959)
!2969 = !DILocation(line: 1011, column: 26, scope: !2959)
!2970 = !DILocation(line: 1012, column: 13, scope: !2959)
!2971 = !DILocation(line: 0, scope: !2772, inlinedAt: !2966)
!2972 = !{!2973}
!2973 = distinct !{!2973, !2974, !"quoting_options_from_style: argument 0"}
!2974 = distinct !{!2974, !"quoting_options_from_style"}
!2975 = !DILocation(line: 196, column: 13, scope: !2784, inlinedAt: !2966)
!2976 = !DILocation(line: 196, column: 7, scope: !2772, inlinedAt: !2966)
!2977 = !DILocation(line: 197, column: 5, scope: !2784, inlinedAt: !2966)
!2978 = !DILocation(line: 0, scope: !1710, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 1013, column: 3, scope: !2959)
!2980 = !DILocation(line: 156, column: 57, scope: !1710, inlinedAt: !2979)
!2981 = !DILocation(line: 158, column: 12, scope: !1710, inlinedAt: !2979)
!2982 = !DILocation(line: 159, column: 6, scope: !1710, inlinedAt: !2979)
!2983 = !DILocation(line: 1014, column: 10, scope: !2959)
!2984 = !DILocation(line: 1015, column: 1, scope: !2959)
!2985 = !DILocation(line: 1014, column: 3, scope: !2959)
!2986 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !353, file: !353, line: 1018, type: !2987, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!49, !53, !51, !51, !51}
!2989 = !{!2990, !2991, !2992, !2993}
!2990 = !DILocalVariable(name: "n", arg: 1, scope: !2986, file: !353, line: 1018, type: !53)
!2991 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2986, file: !353, line: 1018, type: !51)
!2992 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2986, file: !353, line: 1019, type: !51)
!2993 = !DILocalVariable(name: "arg", arg: 4, scope: !2986, file: !353, line: 1019, type: !51)
!2994 = !DILocalVariable(name: "o", scope: !2995, file: !353, line: 1030, type: !369)
!2995 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !353, file: !353, line: 1026, type: !2996, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!49, !53, !51, !51, !51, !108}
!2998 = !{!2999, !3000, !3001, !3002, !3003, !2994}
!2999 = !DILocalVariable(name: "n", arg: 1, scope: !2995, file: !353, line: 1026, type: !53)
!3000 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2995, file: !353, line: 1026, type: !51)
!3001 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2995, file: !353, line: 1027, type: !51)
!3002 = !DILocalVariable(name: "arg", arg: 4, scope: !2995, file: !353, line: 1028, type: !51)
!3003 = !DILocalVariable(name: "argsize", arg: 5, scope: !2995, file: !353, line: 1028, type: !108)
!3004 = !DILocation(line: 1030, column: 26, scope: !2995, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 1021, column: 10, scope: !2986)
!3006 = !DILocation(line: 0, scope: !2986)
!3007 = !DILocation(line: 0, scope: !2995, inlinedAt: !3005)
!3008 = !DILocation(line: 1030, column: 3, scope: !2995, inlinedAt: !3005)
!3009 = !DILocation(line: 1030, column: 30, scope: !2995, inlinedAt: !3005)
!3010 = !DILocation(line: 0, scope: !1750, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1031, column: 3, scope: !2995, inlinedAt: !3005)
!3012 = !DILocation(line: 184, column: 6, scope: !1750, inlinedAt: !3011)
!3013 = !DILocation(line: 184, column: 12, scope: !1750, inlinedAt: !3011)
!3014 = !DILocation(line: 185, column: 8, scope: !1764, inlinedAt: !3011)
!3015 = !DILocation(line: 185, column: 23, scope: !1764, inlinedAt: !3011)
!3016 = !DILocation(line: 185, column: 19, scope: !1764, inlinedAt: !3011)
!3017 = !DILocation(line: 186, column: 5, scope: !1764, inlinedAt: !3011)
!3018 = !DILocation(line: 187, column: 6, scope: !1750, inlinedAt: !3011)
!3019 = !DILocation(line: 187, column: 17, scope: !1750, inlinedAt: !3011)
!3020 = !DILocation(line: 188, column: 6, scope: !1750, inlinedAt: !3011)
!3021 = !DILocation(line: 188, column: 18, scope: !1750, inlinedAt: !3011)
!3022 = !DILocation(line: 1032, column: 10, scope: !2995, inlinedAt: !3005)
!3023 = !DILocation(line: 1033, column: 1, scope: !2995, inlinedAt: !3005)
!3024 = !DILocation(line: 1021, column: 3, scope: !2986)
!3025 = !DILocation(line: 0, scope: !2995)
!3026 = !DILocation(line: 1030, column: 3, scope: !2995)
!3027 = !DILocation(line: 1030, column: 26, scope: !2995)
!3028 = !DILocation(line: 1030, column: 30, scope: !2995)
!3029 = !DILocation(line: 0, scope: !1750, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1031, column: 3, scope: !2995)
!3031 = !DILocation(line: 184, column: 6, scope: !1750, inlinedAt: !3030)
!3032 = !DILocation(line: 184, column: 12, scope: !1750, inlinedAt: !3030)
!3033 = !DILocation(line: 185, column: 8, scope: !1764, inlinedAt: !3030)
!3034 = !DILocation(line: 185, column: 23, scope: !1764, inlinedAt: !3030)
!3035 = !DILocation(line: 185, column: 19, scope: !1764, inlinedAt: !3030)
!3036 = !DILocation(line: 186, column: 5, scope: !1764, inlinedAt: !3030)
!3037 = !DILocation(line: 187, column: 6, scope: !1750, inlinedAt: !3030)
!3038 = !DILocation(line: 187, column: 17, scope: !1750, inlinedAt: !3030)
!3039 = !DILocation(line: 188, column: 6, scope: !1750, inlinedAt: !3030)
!3040 = !DILocation(line: 188, column: 18, scope: !1750, inlinedAt: !3030)
!3041 = !DILocation(line: 1032, column: 10, scope: !2995)
!3042 = !DILocation(line: 1033, column: 1, scope: !2995)
!3043 = !DILocation(line: 1032, column: 3, scope: !2995)
!3044 = distinct !DISubprogram(name: "quotearg_custom", scope: !353, file: !353, line: 1036, type: !3045, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!49, !51, !51, !51}
!3047 = !{!3048, !3049, !3050}
!3048 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3044, file: !353, line: 1036, type: !51)
!3049 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3044, file: !353, line: 1036, type: !51)
!3050 = !DILocalVariable(name: "arg", arg: 3, scope: !3044, file: !353, line: 1037, type: !51)
!3051 = !DILocation(line: 1030, column: 26, scope: !2995, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1021, column: 10, scope: !2986, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 1039, column: 10, scope: !3044)
!3054 = !DILocation(line: 0, scope: !3044)
!3055 = !DILocation(line: 0, scope: !2986, inlinedAt: !3053)
!3056 = !DILocation(line: 0, scope: !2995, inlinedAt: !3052)
!3057 = !DILocation(line: 1030, column: 3, scope: !2995, inlinedAt: !3052)
!3058 = !DILocation(line: 1030, column: 30, scope: !2995, inlinedAt: !3052)
!3059 = !DILocation(line: 0, scope: !1750, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1031, column: 3, scope: !2995, inlinedAt: !3052)
!3061 = !DILocation(line: 184, column: 6, scope: !1750, inlinedAt: !3060)
!3062 = !DILocation(line: 184, column: 12, scope: !1750, inlinedAt: !3060)
!3063 = !DILocation(line: 185, column: 8, scope: !1764, inlinedAt: !3060)
!3064 = !DILocation(line: 185, column: 23, scope: !1764, inlinedAt: !3060)
!3065 = !DILocation(line: 185, column: 19, scope: !1764, inlinedAt: !3060)
!3066 = !DILocation(line: 186, column: 5, scope: !1764, inlinedAt: !3060)
!3067 = !DILocation(line: 187, column: 6, scope: !1750, inlinedAt: !3060)
!3068 = !DILocation(line: 187, column: 17, scope: !1750, inlinedAt: !3060)
!3069 = !DILocation(line: 188, column: 6, scope: !1750, inlinedAt: !3060)
!3070 = !DILocation(line: 188, column: 18, scope: !1750, inlinedAt: !3060)
!3071 = !DILocation(line: 1032, column: 10, scope: !2995, inlinedAt: !3052)
!3072 = !DILocation(line: 1033, column: 1, scope: !2995, inlinedAt: !3052)
!3073 = !DILocation(line: 1039, column: 3, scope: !3044)
!3074 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !353, file: !353, line: 1043, type: !3075, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!49, !51, !51, !51, !108}
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3074, file: !353, line: 1043, type: !51)
!3079 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3074, file: !353, line: 1043, type: !51)
!3080 = !DILocalVariable(name: "arg", arg: 3, scope: !3074, file: !353, line: 1044, type: !51)
!3081 = !DILocalVariable(name: "argsize", arg: 4, scope: !3074, file: !353, line: 1044, type: !108)
!3082 = !DILocation(line: 1030, column: 26, scope: !2995, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 1046, column: 10, scope: !3074)
!3084 = !DILocation(line: 0, scope: !3074)
!3085 = !DILocation(line: 0, scope: !2995, inlinedAt: !3083)
!3086 = !DILocation(line: 1030, column: 3, scope: !2995, inlinedAt: !3083)
!3087 = !DILocation(line: 1030, column: 30, scope: !2995, inlinedAt: !3083)
!3088 = !DILocation(line: 0, scope: !1750, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 1031, column: 3, scope: !2995, inlinedAt: !3083)
!3090 = !DILocation(line: 184, column: 6, scope: !1750, inlinedAt: !3089)
!3091 = !DILocation(line: 184, column: 12, scope: !1750, inlinedAt: !3089)
!3092 = !DILocation(line: 185, column: 8, scope: !1764, inlinedAt: !3089)
!3093 = !DILocation(line: 185, column: 23, scope: !1764, inlinedAt: !3089)
!3094 = !DILocation(line: 185, column: 19, scope: !1764, inlinedAt: !3089)
!3095 = !DILocation(line: 186, column: 5, scope: !1764, inlinedAt: !3089)
!3096 = !DILocation(line: 187, column: 6, scope: !1750, inlinedAt: !3089)
!3097 = !DILocation(line: 187, column: 17, scope: !1750, inlinedAt: !3089)
!3098 = !DILocation(line: 188, column: 6, scope: !1750, inlinedAt: !3089)
!3099 = !DILocation(line: 188, column: 18, scope: !1750, inlinedAt: !3089)
!3100 = !DILocation(line: 1032, column: 10, scope: !2995, inlinedAt: !3083)
!3101 = !DILocation(line: 1033, column: 1, scope: !2995, inlinedAt: !3083)
!3102 = !DILocation(line: 1046, column: 3, scope: !3074)
!3103 = distinct !DISubprogram(name: "quote_n_mem", scope: !353, file: !353, line: 1061, type: !3104, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!51, !53, !51, !108}
!3106 = !{!3107, !3108, !3109}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !353, line: 1061, type: !53)
!3108 = !DILocalVariable(name: "arg", arg: 2, scope: !3103, file: !353, line: 1061, type: !51)
!3109 = !DILocalVariable(name: "argsize", arg: 3, scope: !3103, file: !353, line: 1061, type: !108)
!3110 = !DILocation(line: 0, scope: !3103)
!3111 = !DILocation(line: 1063, column: 10, scope: !3103)
!3112 = !DILocation(line: 1063, column: 3, scope: !3103)
!3113 = distinct !DISubprogram(name: "quote_mem", scope: !353, file: !353, line: 1067, type: !3114, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!51, !51, !108}
!3116 = !{!3117, !3118}
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !353, line: 1067, type: !51)
!3118 = !DILocalVariable(name: "argsize", arg: 2, scope: !3113, file: !353, line: 1067, type: !108)
!3119 = !DILocation(line: 0, scope: !3113)
!3120 = !DILocation(line: 0, scope: !3103, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 1069, column: 10, scope: !3113)
!3122 = !DILocation(line: 1063, column: 10, scope: !3103, inlinedAt: !3121)
!3123 = !DILocation(line: 1069, column: 3, scope: !3113)
!3124 = distinct !DISubprogram(name: "quote_n", scope: !353, file: !353, line: 1073, type: !3125, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!51, !53, !51}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !353, line: 1073, type: !53)
!3129 = !DILocalVariable(name: "arg", arg: 2, scope: !3124, file: !353, line: 1073, type: !51)
!3130 = !DILocation(line: 0, scope: !3124)
!3131 = !DILocation(line: 0, scope: !3103, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 1075, column: 10, scope: !3124)
!3133 = !DILocation(line: 1063, column: 10, scope: !3103, inlinedAt: !3132)
!3134 = !DILocation(line: 1075, column: 3, scope: !3124)
!3135 = distinct !DISubprogram(name: "quote", scope: !353, file: !353, line: 1079, type: !593, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !3136)
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "arg", arg: 1, scope: !3135, file: !353, line: 1079, type: !51)
!3138 = !DILocation(line: 0, scope: !3135)
!3139 = !DILocation(line: 0, scope: !3124, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1081, column: 10, scope: !3135)
!3141 = !DILocation(line: 0, scope: !3103, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 1075, column: 10, scope: !3124, inlinedAt: !3140)
!3143 = !DILocation(line: 1063, column: 10, scope: !3103, inlinedAt: !3142)
!3144 = !DILocation(line: 1081, column: 3, scope: !3135)
!3145 = distinct !DISubprogram(name: "version_etc_arn", scope: !510, file: !510, line: 61, type: !3146, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3151)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !3148, !51, !51, !51, !3150, !108}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !520)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157}
!3152 = !DILocalVariable(name: "stream", arg: 1, scope: !3145, file: !510, line: 61, type: !3148)
!3153 = !DILocalVariable(name: "command_name", arg: 2, scope: !3145, file: !510, line: 62, type: !51)
!3154 = !DILocalVariable(name: "package", arg: 3, scope: !3145, file: !510, line: 62, type: !51)
!3155 = !DILocalVariable(name: "version", arg: 4, scope: !3145, file: !510, line: 63, type: !51)
!3156 = !DILocalVariable(name: "authors", arg: 5, scope: !3145, file: !510, line: 64, type: !3150)
!3157 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3145, file: !510, line: 64, type: !108)
!3158 = !DILocation(line: 0, scope: !3145)
!3159 = !DILocation(line: 66, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3145, file: !510, line: 66, column: 7)
!3161 = !DILocation(line: 66, column: 7, scope: !3145)
!3162 = !DILocation(line: 67, column: 5, scope: !3160)
!3163 = !DILocation(line: 69, column: 5, scope: !3160)
!3164 = !DILocation(line: 83, column: 3, scope: !3145)
!3165 = !DILocation(line: 85, column: 3, scope: !3145)
!3166 = !DILocation(line: 88, column: 3, scope: !3145)
!3167 = !DILocation(line: 95, column: 3, scope: !3145)
!3168 = !DILocation(line: 97, column: 3, scope: !3145)
!3169 = !DILocation(line: 105, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3145, file: !510, line: 98, column: 5)
!3171 = !DILocation(line: 106, column: 7, scope: !3170)
!3172 = !DILocation(line: 109, column: 7, scope: !3170)
!3173 = !DILocation(line: 110, column: 7, scope: !3170)
!3174 = !DILocation(line: 113, column: 7, scope: !3170)
!3175 = !DILocation(line: 115, column: 7, scope: !3170)
!3176 = !DILocation(line: 120, column: 7, scope: !3170)
!3177 = !DILocation(line: 122, column: 7, scope: !3170)
!3178 = !DILocation(line: 127, column: 7, scope: !3170)
!3179 = !DILocation(line: 129, column: 7, scope: !3170)
!3180 = !DILocation(line: 134, column: 7, scope: !3170)
!3181 = !DILocation(line: 137, column: 7, scope: !3170)
!3182 = !DILocation(line: 142, column: 7, scope: !3170)
!3183 = !DILocation(line: 145, column: 7, scope: !3170)
!3184 = !DILocation(line: 150, column: 7, scope: !3170)
!3185 = !DILocation(line: 154, column: 7, scope: !3170)
!3186 = !DILocation(line: 159, column: 7, scope: !3170)
!3187 = !DILocation(line: 163, column: 7, scope: !3170)
!3188 = !DILocation(line: 170, column: 7, scope: !3170)
!3189 = !DILocation(line: 174, column: 7, scope: !3170)
!3190 = !DILocation(line: 176, column: 1, scope: !3145)
!3191 = distinct !DISubprogram(name: "version_etc_ar", scope: !510, file: !510, line: 183, type: !3192, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{null, !3148, !51, !51, !51, !3150}
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200}
!3195 = !DILocalVariable(name: "stream", arg: 1, scope: !3191, file: !510, line: 183, type: !3148)
!3196 = !DILocalVariable(name: "command_name", arg: 2, scope: !3191, file: !510, line: 184, type: !51)
!3197 = !DILocalVariable(name: "package", arg: 3, scope: !3191, file: !510, line: 184, type: !51)
!3198 = !DILocalVariable(name: "version", arg: 4, scope: !3191, file: !510, line: 185, type: !51)
!3199 = !DILocalVariable(name: "authors", arg: 5, scope: !3191, file: !510, line: 185, type: !3150)
!3200 = !DILocalVariable(name: "n_authors", scope: !3191, file: !510, line: 187, type: !108)
!3201 = !DILocation(line: 0, scope: !3191)
!3202 = !DILocation(line: 189, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3191, file: !510, line: 189, column: 3)
!3204 = !DILocation(line: 0, scope: !3203)
!3205 = !DILocation(line: 189, column: 23, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !510, line: 189, column: 3)
!3207 = !DILocation(line: 189, column: 3, scope: !3203)
!3208 = !DILocation(line: 189, column: 52, scope: !3206)
!3209 = distinct !{!3209, !3207, !3210}
!3210 = !DILocation(line: 190, column: 5, scope: !3203)
!3211 = !DILocation(line: 191, column: 3, scope: !3191)
!3212 = !DILocation(line: 192, column: 1, scope: !3191)
!3213 = distinct !DISubprogram(name: "version_etc_va", scope: !510, file: !510, line: 199, type: !3214, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3223)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3148, !51, !51, !51, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !510, line: 192, size: 192, elements: !3218)
!3218 = !{!3219, !3220, !3221, !3222}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3217, file: !510, line: 192, baseType: !7, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3217, file: !510, line: 192, baseType: !7, size: 32, offset: 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3217, file: !510, line: 192, baseType: !106, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3217, file: !510, line: 192, baseType: !106, size: 64, offset: 128)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230}
!3224 = !DILocalVariable(name: "stream", arg: 1, scope: !3213, file: !510, line: 199, type: !3148)
!3225 = !DILocalVariable(name: "command_name", arg: 2, scope: !3213, file: !510, line: 200, type: !51)
!3226 = !DILocalVariable(name: "package", arg: 3, scope: !3213, file: !510, line: 200, type: !51)
!3227 = !DILocalVariable(name: "version", arg: 4, scope: !3213, file: !510, line: 201, type: !51)
!3228 = !DILocalVariable(name: "authors", arg: 5, scope: !3213, file: !510, line: 201, type: !3216)
!3229 = !DILocalVariable(name: "n_authors", scope: !3213, file: !510, line: 203, type: !108)
!3230 = !DILocalVariable(name: "authtab", scope: !3213, file: !510, line: 204, type: !3231)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !432)
!3232 = !DILocation(line: 0, scope: !3213)
!3233 = !DILocation(line: 204, column: 3, scope: !3213)
!3234 = !DILocation(line: 204, column: 15, scope: !3213)
!3235 = !DILocation(line: 0, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !510, line: 206, column: 3)
!3237 = distinct !DILexicalBlock(scope: !3213, file: !510, line: 206, column: 3)
!3238 = !DILocation(line: 208, column: 35, scope: !3236)
!3239 = !DILocation(line: 208, column: 14, scope: !3236)
!3240 = !DILocation(line: 208, column: 33, scope: !3236)
!3241 = !DILocation(line: 208, column: 67, scope: !3236)
!3242 = !DILocation(line: 206, column: 3, scope: !3237)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 211, column: 3, scope: !3213)
!3245 = !DILocation(line: 213, column: 1, scope: !3213)
!3246 = distinct !DISubprogram(name: "version_etc", scope: !510, file: !510, line: 230, type: !3247, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3148, !51, !51, !51, null}
!3249 = !{!3250, !3251, !3252, !3253, !3254}
!3250 = !DILocalVariable(name: "stream", arg: 1, scope: !3246, file: !510, line: 230, type: !3148)
!3251 = !DILocalVariable(name: "command_name", arg: 2, scope: !3246, file: !510, line: 231, type: !51)
!3252 = !DILocalVariable(name: "package", arg: 3, scope: !3246, file: !510, line: 231, type: !51)
!3253 = !DILocalVariable(name: "version", arg: 4, scope: !3246, file: !510, line: 232, type: !51)
!3254 = !DILocalVariable(name: "authors", scope: !3246, file: !510, line: 234, type: !3255)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !56, line: 52, baseType: !3256)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3257, line: 32, baseType: !3258)
!3257 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !510, line: 234, baseType: !3259)
!3259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3217, size: 192, elements: !91)
!3260 = !DILocation(line: 0, scope: !3246)
!3261 = !DILocation(line: 234, column: 3, scope: !3246)
!3262 = !DILocation(line: 234, column: 11, scope: !3246)
!3263 = !DILocation(line: 236, column: 3, scope: !3246)
!3264 = !DILocation(line: 237, column: 3, scope: !3246)
!3265 = !DILocation(line: 238, column: 3, scope: !3246)
!3266 = !DILocation(line: 239, column: 1, scope: !3246)
!3267 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !510, file: !510, line: 242, type: !135, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !54)
!3268 = !DILocation(line: 244, column: 3, scope: !3267)
!3269 = !DILocation(line: 249, column: 3, scope: !3267)
!3270 = !DILocation(line: 255, column: 3, scope: !3267)
!3271 = !DILocation(line: 260, column: 3, scope: !3267)
!3272 = !DILocation(line: 262, column: 1, scope: !3267)
!3273 = distinct !DISubprogram(name: "xnmalloc", scope: !175, file: !175, line: 99, type: !3274, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!106, !108, !108}
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !175, line: 99, type: !108)
!3278 = !DILocalVariable(name: "s", arg: 2, scope: !3273, file: !175, line: 99, type: !108)
!3279 = !DILocation(line: 0, scope: !3273)
!3280 = !DILocation(line: 101, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !175, line: 101, column: 7)
!3282 = !DILocation(line: 101, column: 7, scope: !3273)
!3283 = !DILocation(line: 102, column: 5, scope: !3281)
!3284 = !DILocation(line: 103, column: 21, scope: !3273)
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3286, file: !552, line: 39, type: !108)
!3286 = distinct !DISubprogram(name: "xmalloc", scope: !552, file: !552, line: 39, type: !3287, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!106, !108}
!3289 = !{!3285, !3290}
!3290 = !DILocalVariable(name: "p", scope: !3286, file: !552, line: 41, type: !106)
!3291 = !DILocation(line: 0, scope: !3286, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 103, column: 10, scope: !3273)
!3293 = !DILocation(line: 41, column: 13, scope: !3286, inlinedAt: !3292)
!3294 = !DILocation(line: 42, column: 8, scope: !3295, inlinedAt: !3292)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !552, line: 42, column: 7)
!3296 = !DILocation(line: 42, column: 15, scope: !3295, inlinedAt: !3292)
!3297 = !DILocation(line: 42, column: 10, scope: !3295, inlinedAt: !3292)
!3298 = !DILocation(line: 43, column: 5, scope: !3295, inlinedAt: !3292)
!3299 = !DILocation(line: 103, column: 3, scope: !3273)
!3300 = !DILocation(line: 0, scope: !3286)
!3301 = !DILocation(line: 41, column: 13, scope: !3286)
!3302 = !DILocation(line: 42, column: 8, scope: !3295)
!3303 = !DILocation(line: 42, column: 15, scope: !3295)
!3304 = !DILocation(line: 42, column: 10, scope: !3295)
!3305 = !DILocation(line: 43, column: 5, scope: !3295)
!3306 = !DILocation(line: 44, column: 3, scope: !3286)
!3307 = distinct !DISubprogram(name: "xnrealloc", scope: !175, file: !175, line: 112, type: !3308, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!106, !106, !108, !108}
!3310 = !{!3311, !3312, !3313}
!3311 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !175, line: 112, type: !106)
!3312 = !DILocalVariable(name: "n", arg: 2, scope: !3307, file: !175, line: 112, type: !108)
!3313 = !DILocalVariable(name: "s", arg: 3, scope: !3307, file: !175, line: 112, type: !108)
!3314 = !DILocation(line: 0, scope: !3307)
!3315 = !DILocation(line: 114, column: 7, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3307, file: !175, line: 114, column: 7)
!3317 = !DILocation(line: 114, column: 7, scope: !3307)
!3318 = !DILocation(line: 115, column: 5, scope: !3316)
!3319 = !DILocation(line: 116, column: 25, scope: !3307)
!3320 = !DILocalVariable(name: "p", arg: 1, scope: !3321, file: !552, line: 51, type: !106)
!3321 = distinct !DISubprogram(name: "xrealloc", scope: !552, file: !552, line: 51, type: !3322, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!106, !106, !108}
!3324 = !{!3320, !3325}
!3325 = !DILocalVariable(name: "n", arg: 2, scope: !3321, file: !552, line: 51, type: !108)
!3326 = !DILocation(line: 0, scope: !3321, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 116, column: 10, scope: !3307)
!3328 = !DILocation(line: 53, column: 8, scope: !3329, inlinedAt: !3327)
!3329 = distinct !DILexicalBlock(scope: !3321, file: !552, line: 53, column: 7)
!3330 = !DILocation(line: 53, column: 13, scope: !3329, inlinedAt: !3327)
!3331 = !DILocation(line: 53, column: 10, scope: !3329, inlinedAt: !3327)
!3332 = !DILocation(line: 57, column: 7, scope: !3333, inlinedAt: !3327)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !552, line: 54, column: 5)
!3334 = !DILocation(line: 58, column: 7, scope: !3333, inlinedAt: !3327)
!3335 = !DILocation(line: 61, column: 7, scope: !3321, inlinedAt: !3327)
!3336 = !DILocation(line: 62, column: 8, scope: !3337, inlinedAt: !3327)
!3337 = distinct !DILexicalBlock(scope: !3321, file: !552, line: 62, column: 7)
!3338 = !DILocation(line: 62, column: 13, scope: !3337, inlinedAt: !3327)
!3339 = !DILocation(line: 62, column: 10, scope: !3337, inlinedAt: !3327)
!3340 = !DILocation(line: 63, column: 5, scope: !3337, inlinedAt: !3327)
!3341 = !DILocation(line: 116, column: 3, scope: !3307)
!3342 = !DILocation(line: 0, scope: !3321)
!3343 = !DILocation(line: 53, column: 8, scope: !3329)
!3344 = !DILocation(line: 53, column: 13, scope: !3329)
!3345 = !DILocation(line: 53, column: 10, scope: !3329)
!3346 = !DILocation(line: 57, column: 7, scope: !3333)
!3347 = !DILocation(line: 58, column: 7, scope: !3333)
!3348 = !DILocation(line: 61, column: 7, scope: !3321)
!3349 = !DILocation(line: 62, column: 8, scope: !3337)
!3350 = !DILocation(line: 62, column: 13, scope: !3337)
!3351 = !DILocation(line: 62, column: 10, scope: !3337)
!3352 = !DILocation(line: 63, column: 5, scope: !3337)
!3353 = !DILocation(line: 65, column: 1, scope: !3321)
!3354 = !DILocation(line: 0, scope: !555)
!3355 = !DILocation(line: 176, column: 14, scope: !555)
!3356 = !DILocation(line: 178, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !555, file: !175, line: 178, column: 7)
!3358 = !DILocation(line: 178, column: 7, scope: !555)
!3359 = !DILocation(line: 180, column: 13, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3361, file: !175, line: 180, column: 11)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !175, line: 179, column: 5)
!3362 = !DILocation(line: 180, column: 11, scope: !3361)
!3363 = !DILocation(line: 188, column: 30, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3360, file: !175, line: 181, column: 9)
!3365 = !DILocation(line: 189, column: 16, scope: !3364)
!3366 = !DILocation(line: 189, column: 13, scope: !3364)
!3367 = !DILocation(line: 190, column: 9, scope: !3364)
!3368 = !DILocation(line: 191, column: 11, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3361, file: !175, line: 191, column: 11)
!3370 = !DILocation(line: 191, column: 11, scope: !3361)
!3371 = !DILocation(line: 206, column: 7, scope: !555)
!3372 = !DILocation(line: 207, column: 25, scope: !555)
!3373 = !DILocation(line: 0, scope: !3321, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 207, column: 10, scope: !555)
!3375 = !DILocation(line: 53, column: 10, scope: !3329, inlinedAt: !3374)
!3376 = !DILocation(line: 192, column: 9, scope: !3369)
!3377 = !DILocation(line: 200, column: 69, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !175, line: 200, column: 11)
!3379 = distinct !DILexicalBlock(scope: !3357, file: !175, line: 195, column: 5)
!3380 = !DILocation(line: 201, column: 11, scope: !3378)
!3381 = !DILocation(line: 200, column: 11, scope: !3379)
!3382 = !DILocation(line: 202, column: 9, scope: !3378)
!3383 = !DILocation(line: 203, column: 14, scope: !3379)
!3384 = !DILocation(line: 203, column: 18, scope: !3379)
!3385 = !DILocation(line: 203, column: 9, scope: !3379)
!3386 = !DILocation(line: 53, column: 8, scope: !3329, inlinedAt: !3374)
!3387 = !DILocation(line: 57, column: 7, scope: !3333, inlinedAt: !3374)
!3388 = !DILocation(line: 58, column: 7, scope: !3333, inlinedAt: !3374)
!3389 = !DILocation(line: 61, column: 7, scope: !3321, inlinedAt: !3374)
!3390 = !DILocation(line: 62, column: 8, scope: !3337, inlinedAt: !3374)
!3391 = !DILocation(line: 62, column: 13, scope: !3337, inlinedAt: !3374)
!3392 = !DILocation(line: 62, column: 10, scope: !3337, inlinedAt: !3374)
!3393 = !DILocation(line: 63, column: 5, scope: !3337, inlinedAt: !3374)
!3394 = !DILocation(line: 207, column: 3, scope: !555)
!3395 = distinct !DISubprogram(name: "xcharalloc", scope: !175, file: !175, line: 216, type: !2562, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3396)
!3396 = !{!3397}
!3397 = !DILocalVariable(name: "n", arg: 1, scope: !3395, file: !175, line: 216, type: !108)
!3398 = !DILocation(line: 0, scope: !3395)
!3399 = !DILocation(line: 0, scope: !3286, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 218, column: 10, scope: !3395)
!3401 = !DILocation(line: 41, column: 13, scope: !3286, inlinedAt: !3400)
!3402 = !DILocation(line: 42, column: 8, scope: !3295, inlinedAt: !3400)
!3403 = !DILocation(line: 42, column: 15, scope: !3295, inlinedAt: !3400)
!3404 = !DILocation(line: 42, column: 10, scope: !3295, inlinedAt: !3400)
!3405 = !DILocation(line: 43, column: 5, scope: !3295, inlinedAt: !3400)
!3406 = !DILocation(line: 218, column: 3, scope: !3395)
!3407 = distinct !DISubprogram(name: "x2realloc", scope: !552, file: !552, line: 74, type: !3408, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!106, !106, !558}
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "p", arg: 1, scope: !3407, file: !552, line: 74, type: !106)
!3412 = !DILocalVariable(name: "pn", arg: 2, scope: !3407, file: !552, line: 74, type: !558)
!3413 = !DILocation(line: 0, scope: !3407)
!3414 = !DILocation(line: 0, scope: !555, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 76, column: 10, scope: !3407)
!3416 = !DILocation(line: 176, column: 14, scope: !555, inlinedAt: !3415)
!3417 = !DILocation(line: 178, column: 9, scope: !3357, inlinedAt: !3415)
!3418 = !DILocation(line: 178, column: 7, scope: !555, inlinedAt: !3415)
!3419 = !DILocation(line: 180, column: 13, scope: !3360, inlinedAt: !3415)
!3420 = !DILocation(line: 180, column: 11, scope: !3361, inlinedAt: !3415)
!3421 = !DILocation(line: 191, column: 11, scope: !3369, inlinedAt: !3415)
!3422 = !DILocation(line: 191, column: 11, scope: !3361, inlinedAt: !3415)
!3423 = !DILocation(line: 206, column: 7, scope: !555, inlinedAt: !3415)
!3424 = !DILocation(line: 0, scope: !3321, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 207, column: 10, scope: !555, inlinedAt: !3415)
!3426 = !DILocation(line: 53, column: 10, scope: !3329, inlinedAt: !3425)
!3427 = !DILocation(line: 192, column: 9, scope: !3369, inlinedAt: !3415)
!3428 = !DILocation(line: 201, column: 11, scope: !3378, inlinedAt: !3415)
!3429 = !DILocation(line: 200, column: 11, scope: !3379, inlinedAt: !3415)
!3430 = !DILocation(line: 202, column: 9, scope: !3378, inlinedAt: !3415)
!3431 = !DILocation(line: 203, column: 14, scope: !3379, inlinedAt: !3415)
!3432 = !DILocation(line: 203, column: 18, scope: !3379, inlinedAt: !3415)
!3433 = !DILocation(line: 203, column: 9, scope: !3379, inlinedAt: !3415)
!3434 = !DILocation(line: 53, column: 8, scope: !3329, inlinedAt: !3425)
!3435 = !DILocation(line: 57, column: 7, scope: !3333, inlinedAt: !3425)
!3436 = !DILocation(line: 58, column: 7, scope: !3333, inlinedAt: !3425)
!3437 = !DILocation(line: 61, column: 7, scope: !3321, inlinedAt: !3425)
!3438 = !DILocation(line: 62, column: 8, scope: !3337, inlinedAt: !3425)
!3439 = !DILocation(line: 62, column: 13, scope: !3337, inlinedAt: !3425)
!3440 = !DILocation(line: 62, column: 10, scope: !3337, inlinedAt: !3425)
!3441 = !DILocation(line: 63, column: 5, scope: !3337, inlinedAt: !3425)
!3442 = !DILocation(line: 76, column: 3, scope: !3407)
!3443 = distinct !DISubprogram(name: "xzalloc", scope: !552, file: !552, line: 84, type: !3287, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3444)
!3444 = !{!3445}
!3445 = !DILocalVariable(name: "n", arg: 1, scope: !3443, file: !552, line: 84, type: !108)
!3446 = !DILocation(line: 0, scope: !3443)
!3447 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !552, line: 93, type: !108)
!3448 = distinct !DISubprogram(name: "xcalloc", scope: !552, file: !552, line: 93, type: !3274, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3449)
!3449 = !{!3447, !3450, !3451}
!3450 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !552, line: 93, type: !108)
!3451 = !DILocalVariable(name: "p", scope: !3448, file: !552, line: 95, type: !106)
!3452 = !DILocation(line: 0, scope: !3448, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 86, column: 10, scope: !3443)
!3454 = !DILocation(line: 100, column: 7, scope: !3455, inlinedAt: !3453)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !552, line: 100, column: 7)
!3456 = !DILocation(line: 101, column: 7, scope: !3455, inlinedAt: !3453)
!3457 = !DILocation(line: 101, column: 18, scope: !3455, inlinedAt: !3453)
!3458 = !DILocation(line: 101, column: 16, scope: !3455, inlinedAt: !3453)
!3459 = !DILocation(line: 100, column: 7, scope: !3448, inlinedAt: !3453)
!3460 = !DILocation(line: 102, column: 5, scope: !3455, inlinedAt: !3453)
!3461 = !DILocation(line: 86, column: 3, scope: !3443)
!3462 = !DILocation(line: 0, scope: !3448)
!3463 = !DILocation(line: 100, column: 7, scope: !3455)
!3464 = !DILocation(line: 101, column: 7, scope: !3455)
!3465 = !DILocation(line: 101, column: 18, scope: !3455)
!3466 = !DILocation(line: 101, column: 16, scope: !3455)
!3467 = !DILocation(line: 100, column: 7, scope: !3448)
!3468 = !DILocation(line: 102, column: 5, scope: !3455)
!3469 = !DILocation(line: 103, column: 3, scope: !3448)
!3470 = distinct !DISubprogram(name: "xmemdup", scope: !552, file: !552, line: 111, type: !3471, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!106, !182, !108}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "p", arg: 1, scope: !3470, file: !552, line: 111, type: !182)
!3475 = !DILocalVariable(name: "s", arg: 2, scope: !3470, file: !552, line: 111, type: !108)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 0, scope: !3286, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 113, column: 18, scope: !3470)
!3479 = !DILocation(line: 41, column: 13, scope: !3286, inlinedAt: !3478)
!3480 = !DILocation(line: 42, column: 8, scope: !3295, inlinedAt: !3478)
!3481 = !DILocation(line: 42, column: 15, scope: !3295, inlinedAt: !3478)
!3482 = !DILocation(line: 42, column: 10, scope: !3295, inlinedAt: !3478)
!3483 = !DILocation(line: 43, column: 5, scope: !3295, inlinedAt: !3478)
!3484 = !DILocalVariable(name: "__dest", arg: 1, scope: !3485, file: !1474, line: 31, type: !3488)
!3485 = distinct !DISubprogram(name: "memcpy", scope: !1474, file: !1474, line: 31, type: !3486, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3490)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!106, !3488, !3489, !108}
!3488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !182)
!3490 = !{!3484, !3491, !3492}
!3491 = !DILocalVariable(name: "__src", arg: 2, scope: !3485, file: !1474, line: 31, type: !3489)
!3492 = !DILocalVariable(name: "__len", arg: 3, scope: !3485, file: !1474, line: 31, type: !108)
!3493 = !DILocation(line: 0, scope: !3485, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 113, column: 10, scope: !3470)
!3495 = !DILocation(line: 34, column: 10, scope: !3485, inlinedAt: !3494)
!3496 = !DILocation(line: 113, column: 3, scope: !3470)
!3497 = distinct !DISubprogram(name: "xstrdup", scope: !552, file: !552, line: 119, type: !128, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !551, retainedNodes: !3498)
!3498 = !{!3499}
!3499 = !DILocalVariable(name: "string", arg: 1, scope: !3497, file: !552, line: 119, type: !51)
!3500 = !DILocation(line: 0, scope: !3497)
!3501 = !DILocation(line: 121, column: 27, scope: !3497)
!3502 = !DILocation(line: 121, column: 43, scope: !3497)
!3503 = !DILocation(line: 0, scope: !3470, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 121, column: 10, scope: !3497)
!3505 = !DILocation(line: 0, scope: !3286, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 113, column: 18, scope: !3470, inlinedAt: !3504)
!3507 = !DILocation(line: 41, column: 13, scope: !3286, inlinedAt: !3506)
!3508 = !DILocation(line: 42, column: 8, scope: !3295, inlinedAt: !3506)
!3509 = !DILocation(line: 42, column: 15, scope: !3295, inlinedAt: !3506)
!3510 = !DILocation(line: 42, column: 10, scope: !3295, inlinedAt: !3506)
!3511 = !DILocation(line: 43, column: 5, scope: !3295, inlinedAt: !3506)
!3512 = !DILocation(line: 0, scope: !3485, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 113, column: 10, scope: !3470, inlinedAt: !3504)
!3514 = !DILocation(line: 34, column: 10, scope: !3485, inlinedAt: !3513)
!3515 = !DILocation(line: 121, column: 3, scope: !3497)
!3516 = distinct !DISubprogram(name: "xalloc_die", scope: !573, file: !573, line: 32, type: !135, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !54)
!3517 = !DILocation(line: 34, column: 10, scope: !3516)
!3518 = !DILocation(line: 34, column: 33, scope: !3516)
!3519 = !DILocation(line: 34, column: 3, scope: !3516)
!3520 = !DILocation(line: 40, column: 3, scope: !3516)
!3521 = distinct !DISubprogram(name: "xnumtoumax", scope: !3522, file: !3522, line: 36, type: !3523, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3528)
!3522 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!3525, !51, !53, !3525, !3525, !51, !51, !53}
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3526, line: 102, baseType: !3527)
!3526 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !83, line: 73, baseType: !110)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3538}
!3529 = !DILocalVariable(name: "n_str", arg: 1, scope: !3521, file: !3522, line: 36, type: !51)
!3530 = !DILocalVariable(name: "base", arg: 2, scope: !3521, file: !3522, line: 36, type: !53)
!3531 = !DILocalVariable(name: "min", arg: 3, scope: !3521, file: !3522, line: 36, type: !3525)
!3532 = !DILocalVariable(name: "max", arg: 4, scope: !3521, file: !3522, line: 36, type: !3525)
!3533 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3521, file: !3522, line: 37, type: !51)
!3534 = !DILocalVariable(name: "err", arg: 6, scope: !3521, file: !3522, line: 37, type: !51)
!3535 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3521, file: !3522, line: 37, type: !53)
!3536 = !DILocalVariable(name: "s_err", scope: !3521, file: !3522, line: 39, type: !3537)
!3537 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !579, line: 38, baseType: !578)
!3538 = !DILocalVariable(name: "tnum", scope: !3521, file: !3522, line: 41, type: !3525)
!3539 = !DILocation(line: 0, scope: !3521)
!3540 = !DILocation(line: 41, column: 3, scope: !3521)
!3541 = !DILocation(line: 42, column: 11, scope: !3521)
!3542 = !DILocation(line: 44, column: 7, scope: !3521)
!3543 = !DILocation(line: 69, column: 50, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !3522, line: 67, column: 5)
!3545 = distinct !DILexicalBlock(scope: !3521, file: !3522, line: 66, column: 7)
!3546 = !DILocation(line: 46, column: 11, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3522, line: 46, column: 11)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3522, line: 45, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3521, file: !3522, line: 44, column: 7)
!3550 = !DILocation(line: 46, column: 16, scope: !3547)
!3551 = !DILocation(line: 46, column: 29, scope: !3547)
!3552 = !DILocation(line: 46, column: 22, scope: !3547)
!3553 = !DILocation(line: 51, column: 20, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3522, line: 51, column: 15)
!3555 = distinct !DILexicalBlock(scope: !3547, file: !3522, line: 47, column: 9)
!3556 = !DILocation(line: 0, scope: !3554)
!3557 = !DILocation(line: 51, column: 15, scope: !3555)
!3558 = !DILocation(line: 52, column: 19, scope: !3554)
!3559 = !DILocation(line: 66, column: 7, scope: !3521)
!3560 = !DILocation(line: 58, column: 19, scope: !3554)
!3561 = !DILocation(line: 62, column: 5, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3549, file: !3522, line: 61, column: 12)
!3563 = !DILocation(line: 62, column: 11, scope: !3562)
!3564 = !DILocation(line: 64, column: 5, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !3522, line: 63, column: 12)
!3566 = !DILocation(line: 64, column: 11, scope: !3565)
!3567 = !DILocation(line: 69, column: 14, scope: !3544)
!3568 = !DILocation(line: 69, column: 56, scope: !3544)
!3569 = !DILocation(line: 70, column: 29, scope: !3544)
!3570 = !DILocation(line: 69, column: 7, scope: !3544)
!3571 = !DILocation(line: 73, column: 10, scope: !3521)
!3572 = !DILocation(line: 71, column: 5, scope: !3544)
!3573 = !DILocation(line: 74, column: 1, scope: !3521)
!3574 = !DILocation(line: 73, column: 3, scope: !3521)
!3575 = distinct !DISubprogram(name: "xdectoumax", scope: !3522, file: !3522, line: 82, type: !3576, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !575, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!3525, !51, !3525, !3525, !51, !51, !53}
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584}
!3579 = !DILocalVariable(name: "n_str", arg: 1, scope: !3575, file: !3522, line: 82, type: !51)
!3580 = !DILocalVariable(name: "min", arg: 2, scope: !3575, file: !3522, line: 82, type: !3525)
!3581 = !DILocalVariable(name: "max", arg: 3, scope: !3575, file: !3522, line: 82, type: !3525)
!3582 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3575, file: !3522, line: 83, type: !51)
!3583 = !DILocalVariable(name: "err", arg: 5, scope: !3575, file: !3522, line: 83, type: !51)
!3584 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3575, file: !3522, line: 83, type: !53)
!3585 = !DILocation(line: 0, scope: !3575)
!3586 = !DILocation(line: 85, column: 10, scope: !3575)
!3587 = !DILocation(line: 85, column: 3, scope: !3575)
!3588 = distinct !DISubprogram(name: "xstrtoumax", scope: !3589, file: !3589, line: 76, type: !3590, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3593)
!3589 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!3537, !51, !590, !53, !3592, !51}
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3593 = !{!3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3606, !3607, !3610, !3611}
!3594 = !DILocalVariable(name: "s", arg: 1, scope: !3588, file: !3589, line: 76, type: !51)
!3595 = !DILocalVariable(name: "ptr", arg: 2, scope: !3588, file: !3589, line: 76, type: !590)
!3596 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3588, file: !3589, line: 76, type: !53)
!3597 = !DILocalVariable(name: "val", arg: 4, scope: !3588, file: !3589, line: 77, type: !3592)
!3598 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3588, file: !3589, line: 77, type: !51)
!3599 = !DILocalVariable(name: "t_ptr", scope: !3588, file: !3589, line: 79, type: !49)
!3600 = !DILocalVariable(name: "p", scope: !3588, file: !3589, line: 80, type: !590)
!3601 = !DILocalVariable(name: "tmp", scope: !3588, file: !3589, line: 81, type: !3525)
!3602 = !DILocalVariable(name: "err", scope: !3588, file: !3589, line: 82, type: !3537)
!3603 = !DILocalVariable(name: "q", scope: !3604, file: !3589, line: 92, type: !51)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !3589, line: 91, column: 5)
!3605 = distinct !DILexicalBlock(scope: !3588, file: !3589, line: 90, column: 7)
!3606 = !DILocalVariable(name: "ch", scope: !3604, file: !3589, line: 93, type: !185)
!3607 = !DILocalVariable(name: "base", scope: !3608, file: !3589, line: 129, type: !53)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !3589, line: 128, column: 5)
!3609 = distinct !DILexicalBlock(scope: !3588, file: !3589, line: 127, column: 7)
!3610 = !DILocalVariable(name: "suffixes", scope: !3608, file: !3589, line: 130, type: !53)
!3611 = !DILocalVariable(name: "overflow", scope: !3608, file: !3589, line: 131, type: !3537)
!3612 = !DILocation(line: 0, scope: !3588)
!3613 = !DILocation(line: 79, column: 3, scope: !3588)
!3614 = !DILocation(line: 84, column: 3, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3589, line: 84, column: 3)
!3616 = distinct !DILexicalBlock(scope: !3588, file: !3589, line: 84, column: 3)
!3617 = !DILocation(line: 86, column: 8, scope: !3588)
!3618 = !DILocation(line: 88, column: 3, scope: !3588)
!3619 = !DILocation(line: 88, column: 9, scope: !3588)
!3620 = !DILocation(line: 0, scope: !3604)
!3621 = !DILocation(line: 94, column: 7, scope: !3604)
!3622 = !DILocation(line: 94, column: 14, scope: !3604)
!3623 = !DILocation(line: 95, column: 15, scope: !3604)
!3624 = distinct !{!3624, !3621, !3625}
!3625 = !DILocation(line: 95, column: 17, scope: !3604)
!3626 = !DILocation(line: 96, column: 14, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3604, file: !3589, line: 96, column: 11)
!3628 = !DILocalVariable(name: "nptr", arg: 1, scope: !3629, file: !3630, line: 336, type: !3633)
!3629 = distinct !DISubprogram(name: "strtoumax", scope: !3630, file: !3630, line: 336, type: !3631, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3635)
!3630 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!3525, !3633, !3634, !53}
!3633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!3634 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !590)
!3635 = !{!3628, !3636, !3637}
!3636 = !DILocalVariable(name: "endptr", arg: 2, scope: !3629, file: !3630, line: 336, type: !3634)
!3637 = !DILocalVariable(name: "base", arg: 3, scope: !3629, file: !3630, line: 336, type: !53)
!3638 = !DILocation(line: 0, scope: !3629, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 100, column: 9, scope: !3588)
!3640 = !DILocation(line: 339, column: 10, scope: !3629, inlinedAt: !3639)
!3641 = !DILocation(line: 102, column: 7, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3588, file: !3589, line: 102, column: 7)
!3643 = !DILocation(line: 102, column: 10, scope: !3642)
!3644 = !DILocation(line: 102, column: 7, scope: !3588)
!3645 = !DILocation(line: 106, column: 11, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !3589, line: 106, column: 11)
!3647 = distinct !DILexicalBlock(scope: !3642, file: !3589, line: 103, column: 5)
!3648 = !DILocation(line: 106, column: 26, scope: !3646)
!3649 = !DILocation(line: 106, column: 29, scope: !3646)
!3650 = !DILocation(line: 106, column: 33, scope: !3646)
!3651 = !DILocation(line: 106, column: 36, scope: !3646)
!3652 = !DILocation(line: 106, column: 11, scope: !3647)
!3653 = !DILocation(line: 111, column: 12, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3642, file: !3589, line: 111, column: 12)
!3655 = !DILocation(line: 111, column: 12, scope: !3642)
!3656 = !DILocation(line: 116, column: 5, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !3589, line: 112, column: 5)
!3658 = !DILocation(line: 121, column: 8, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3588, file: !3589, line: 121, column: 7)
!3660 = !DILocation(line: 121, column: 7, scope: !3588)
!3661 = !DILocation(line: 123, column: 12, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3659, file: !3589, line: 122, column: 5)
!3663 = !DILocation(line: 124, column: 7, scope: !3662)
!3664 = !DILocation(line: 127, column: 7, scope: !3609)
!3665 = !DILocation(line: 127, column: 11, scope: !3609)
!3666 = !DILocation(line: 127, column: 7, scope: !3588)
!3667 = !DILocation(line: 0, scope: !3608)
!3668 = !DILocation(line: 133, column: 12, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3608, file: !3589, line: 133, column: 11)
!3670 = !DILocation(line: 133, column: 11, scope: !3608)
!3671 = !DILocation(line: 135, column: 16, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3669, file: !3589, line: 134, column: 9)
!3673 = !DILocation(line: 136, column: 22, scope: !3672)
!3674 = !DILocation(line: 136, column: 11, scope: !3672)
!3675 = !DILocation(line: 139, column: 7, scope: !3608)
!3676 = !DILocation(line: 151, column: 15, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3589, line: 151, column: 15)
!3678 = distinct !DILexicalBlock(scope: !3608, file: !3589, line: 140, column: 9)
!3679 = !DILocation(line: 151, column: 15, scope: !3678)
!3680 = !DILocation(line: 152, column: 21, scope: !3677)
!3681 = !DILocation(line: 152, column: 13, scope: !3677)
!3682 = !DILocation(line: 155, column: 21, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !3589, line: 155, column: 21)
!3684 = distinct !DILexicalBlock(scope: !3677, file: !3589, line: 153, column: 15)
!3685 = !DILocation(line: 155, column: 29, scope: !3683)
!3686 = !DILocation(line: 155, column: 21, scope: !3684)
!3687 = !DILocation(line: 163, column: 17, scope: !3684)
!3688 = !DILocation(line: 167, column: 7, scope: !3608)
!3689 = !DILocalVariable(name: "err", scope: !3690, file: !3589, line: 67, type: !3537)
!3690 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3589, file: !3589, line: 65, type: !3691, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3537, !3592, !53, !53}
!3693 = !{!3694, !3695, !3696, !3689}
!3694 = !DILocalVariable(name: "x", arg: 1, scope: !3690, file: !3589, line: 65, type: !3592)
!3695 = !DILocalVariable(name: "base", arg: 2, scope: !3690, file: !3589, line: 65, type: !53)
!3696 = !DILocalVariable(name: "power", arg: 3, scope: !3690, file: !3589, line: 65, type: !53)
!3697 = !DILocation(line: 0, scope: !3690, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 221, column: 22, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3608, file: !3589, line: 168, column: 9)
!3700 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3701, file: !3589, line: 48, type: !53)
!3701 = distinct !DISubprogram(name: "bkm_scale", scope: !3589, file: !3589, line: 48, type: !3702, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3704)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!3537, !3592, !53}
!3704 = !{!3705, !3700}
!3705 = !DILocalVariable(name: "x", arg: 1, scope: !3701, file: !3589, line: 48, type: !3592)
!3706 = !DILocation(line: 0, scope: !3701, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3698)
!3708 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3707)
!3709 = distinct !DILexicalBlock(scope: !3701, file: !3589, line: 55, column: 7)
!3710 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3707)
!3711 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3698)
!3712 = !DILocation(line: 229, column: 11, scope: !3608)
!3713 = !DILocation(line: 0, scope: !3690, inlinedAt: !3714)
!3714 = distinct !DILocation(line: 217, column: 22, scope: !3699)
!3715 = !DILocation(line: 0, scope: !3701, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3714)
!3717 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3716)
!3718 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3716)
!3719 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3714)
!3720 = !DILocation(line: 0, scope: !3690, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 204, column: 22, scope: !3699)
!3722 = !DILocation(line: 0, scope: !3701, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3721)
!3724 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3723)
!3725 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3723)
!3726 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3721)
!3727 = !DILocation(line: 0, scope: !3690, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 185, column: 22, scope: !3699)
!3729 = !DILocation(line: 0, scope: !3701, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3728)
!3731 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3730)
!3732 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3730)
!3733 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3728)
!3734 = !DILocation(line: 0, scope: !3701, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 170, column: 22, scope: !3699)
!3736 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3735)
!3737 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3735)
!3738 = !DILocation(line: 171, column: 11, scope: !3699)
!3739 = !DILocation(line: 0, scope: !3701, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 177, column: 22, scope: !3699)
!3741 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3740)
!3742 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3740)
!3743 = !DILocation(line: 178, column: 11, scope: !3699)
!3744 = !DILocation(line: 0, scope: !3690, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 190, column: 22, scope: !3699)
!3746 = !DILocation(line: 0, scope: !3701, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3745)
!3748 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3747)
!3749 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3747)
!3750 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3745)
!3751 = !DILocation(line: 0, scope: !3690, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 195, column: 22, scope: !3699)
!3753 = !DILocation(line: 0, scope: !3701, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3752)
!3755 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3754)
!3756 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3754)
!3757 = !DILocation(line: 0, scope: !3690, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 200, column: 22, scope: !3699)
!3759 = !DILocation(line: 0, scope: !3701, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3758)
!3761 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3760)
!3762 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3760)
!3763 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3758)
!3764 = !DILocation(line: 0, scope: !3690, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 209, column: 22, scope: !3699)
!3766 = !DILocation(line: 0, scope: !3701, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 69, column: 12, scope: !3690, inlinedAt: !3765)
!3768 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3767)
!3769 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3767)
!3770 = !DILocation(line: 69, column: 9, scope: !3690, inlinedAt: !3765)
!3771 = !DILocation(line: 0, scope: !3701, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 213, column: 22, scope: !3699)
!3773 = !DILocation(line: 55, column: 39, scope: !3709, inlinedAt: !3772)
!3774 = !DILocation(line: 55, column: 7, scope: !3701, inlinedAt: !3772)
!3775 = !DILocation(line: 214, column: 11, scope: !3699)
!3776 = !DILocation(line: 225, column: 16, scope: !3699)
!3777 = !DILocation(line: 226, column: 22, scope: !3699)
!3778 = !DILocation(line: 226, column: 11, scope: !3699)
!3779 = !DILocation(line: 0, scope: !3699)
!3780 = !DILocation(line: 230, column: 10, scope: !3608)
!3781 = !DILocation(line: 231, column: 11, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3608, file: !3589, line: 231, column: 11)
!3783 = !DILocation(line: 232, column: 13, scope: !3782)
!3784 = !DILocation(line: 231, column: 11, scope: !3608)
!3785 = !DILocation(line: 107, column: 13, scope: !3646)
!3786 = !DILocation(line: 82, column: 16, scope: !3588)
!3787 = !DILocation(line: 235, column: 8, scope: !3588)
!3788 = !DILocation(line: 236, column: 3, scope: !3588)
!3789 = !DILocation(line: 237, column: 1, scope: !3588)
!3790 = distinct !DISubprogram(name: "rpl_calloc", scope: !600, file: !600, line: 42, type: !3274, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !599, retainedNodes: !3791)
!3791 = !{!3792, !3793, !3794, !3795}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !600, line: 42, type: !108)
!3793 = !DILocalVariable(name: "s", arg: 2, scope: !3790, file: !600, line: 42, type: !108)
!3794 = !DILocalVariable(name: "result", scope: !3790, file: !600, line: 44, type: !106)
!3795 = !DILocalVariable(name: "bytes", scope: !3796, file: !600, line: 56, type: !108)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !600, line: 53, column: 5)
!3797 = distinct !DILexicalBlock(scope: !3790, file: !600, line: 47, column: 7)
!3798 = !DILocation(line: 0, scope: !3790)
!3799 = !DILocation(line: 47, column: 9, scope: !3797)
!3800 = !DILocation(line: 47, column: 19, scope: !3797)
!3801 = !DILocation(line: 47, column: 14, scope: !3797)
!3802 = !DILocation(line: 0, scope: !3796)
!3803 = !DILocation(line: 57, column: 21, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3796, file: !600, line: 57, column: 11)
!3805 = !DILocation(line: 57, column: 11, scope: !3796)
!3806 = !DILocation(line: 59, column: 11, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3804, file: !600, line: 58, column: 9)
!3808 = !DILocation(line: 59, column: 17, scope: !3807)
!3809 = !DILocation(line: 65, column: 12, scope: !3790)
!3810 = !DILocation(line: 72, column: 3, scope: !3790)
!3811 = !DILocation(line: 73, column: 1, scope: !3790)
!3812 = distinct !DISubprogram(name: "rpl_fclose", scope: !603, file: !603, line: 58, type: !3813, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3817)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!53, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !609)
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DILocalVariable(name: "fp", arg: 1, scope: !3812, file: !603, line: 58, type: !3815)
!3819 = !DILocalVariable(name: "saved_errno", scope: !3812, file: !603, line: 60, type: !53)
!3820 = !DILocalVariable(name: "fd", scope: !3812, file: !603, line: 61, type: !53)
!3821 = !DILocalVariable(name: "result", scope: !3812, file: !603, line: 62, type: !53)
!3822 = !DILocation(line: 0, scope: !3812)
!3823 = !DILocation(line: 65, column: 8, scope: !3812)
!3824 = !DILocation(line: 66, column: 10, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3812, file: !603, line: 66, column: 7)
!3826 = !DILocation(line: 66, column: 7, scope: !3812)
!3827 = !DILocation(line: 67, column: 12, scope: !3825)
!3828 = !DILocation(line: 67, column: 5, scope: !3825)
!3829 = !DILocation(line: 72, column: 9, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3812, file: !603, line: 72, column: 7)
!3831 = !DILocation(line: 72, column: 23, scope: !3830)
!3832 = !DILocation(line: 72, column: 33, scope: !3830)
!3833 = !DILocation(line: 72, column: 26, scope: !3830)
!3834 = !DILocation(line: 72, column: 59, scope: !3830)
!3835 = !DILocation(line: 73, column: 7, scope: !3830)
!3836 = !DILocation(line: 73, column: 10, scope: !3830)
!3837 = !DILocation(line: 72, column: 7, scope: !3812)
!3838 = !DILocation(line: 100, column: 12, scope: !3812)
!3839 = !DILocation(line: 105, column: 7, scope: !3812)
!3840 = !DILocation(line: 74, column: 19, scope: !3830)
!3841 = !DILocation(line: 105, column: 19, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3812, file: !603, line: 105, column: 7)
!3843 = !DILocation(line: 107, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3842, file: !603, line: 106, column: 5)
!3845 = !DILocation(line: 109, column: 5, scope: !3844)
!3846 = !DILocation(line: 112, column: 1, scope: !3812)
!3847 = distinct !DISubprogram(name: "rpl_fflush", scope: !647, file: !647, line: 129, type: !3848, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3852)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!53, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !653)
!3852 = !{!3853}
!3853 = !DILocalVariable(name: "stream", arg: 1, scope: !3847, file: !647, line: 129, type: !3850)
!3854 = !DILocation(line: 0, scope: !3847)
!3855 = !DILocation(line: 150, column: 14, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3847, file: !647, line: 150, column: 7)
!3857 = !DILocation(line: 150, column: 22, scope: !3856)
!3858 = !DILocation(line: 150, column: 27, scope: !3856)
!3859 = !DILocation(line: 150, column: 7, scope: !3847)
!3860 = !DILocation(line: 151, column: 12, scope: !3856)
!3861 = !DILocation(line: 151, column: 5, scope: !3856)
!3862 = !DILocalVariable(name: "fp", arg: 1, scope: !3863, file: !647, line: 41, type: !3850)
!3863 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !647, file: !647, line: 41, type: !3864, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !646, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3850}
!3866 = !{!3862}
!3867 = !DILocation(line: 0, scope: !3863, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 156, column: 3, scope: !3847)
!3869 = !DILocation(line: 43, column: 11, scope: !3870, inlinedAt: !3868)
!3870 = distinct !DILexicalBlock(scope: !3863, file: !647, line: 43, column: 7)
!3871 = !DILocation(line: 43, column: 18, scope: !3870, inlinedAt: !3868)
!3872 = !DILocation(line: 43, column: 7, scope: !3863, inlinedAt: !3868)
!3873 = !DILocation(line: 45, column: 5, scope: !3870, inlinedAt: !3868)
!3874 = !DILocation(line: 158, column: 10, scope: !3847)
!3875 = !DILocation(line: 158, column: 3, scope: !3847)
!3876 = !DILocation(line: 235, column: 1, scope: !3847)
!3877 = distinct !DISubprogram(name: "rpl_fseeko", scope: !688, file: !688, line: 28, type: !3878, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3882)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!53, !3880, !1606, !53}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !694)
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DILocalVariable(name: "fp", arg: 1, scope: !3877, file: !688, line: 28, type: !3880)
!3884 = !DILocalVariable(name: "offset", arg: 2, scope: !3877, file: !688, line: 28, type: !1606)
!3885 = !DILocalVariable(name: "whence", arg: 3, scope: !3877, file: !688, line: 28, type: !53)
!3886 = !DILocalVariable(name: "pos", scope: !3887, file: !688, line: 117, type: !1606)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !688, line: 113, column: 5)
!3888 = distinct !DILexicalBlock(scope: !3877, file: !688, line: 52, column: 7)
!3889 = !DILocation(line: 0, scope: !3877)
!3890 = !DILocation(line: 52, column: 11, scope: !3888)
!3891 = !DILocation(line: 52, column: 31, scope: !3888)
!3892 = !DILocation(line: 52, column: 24, scope: !3888)
!3893 = !DILocation(line: 53, column: 7, scope: !3888)
!3894 = !DILocation(line: 53, column: 14, scope: !3888)
!3895 = !DILocation(line: 53, column: 35, scope: !3888)
!3896 = !{!1390, !1226, i64 32}
!3897 = !DILocation(line: 53, column: 28, scope: !3888)
!3898 = !DILocation(line: 54, column: 7, scope: !3888)
!3899 = !DILocation(line: 54, column: 14, scope: !3888)
!3900 = !{!1390, !1226, i64 72}
!3901 = !DILocation(line: 54, column: 28, scope: !3888)
!3902 = !DILocation(line: 52, column: 7, scope: !3877)
!3903 = !DILocation(line: 117, column: 26, scope: !3887)
!3904 = !DILocation(line: 117, column: 19, scope: !3887)
!3905 = !DILocation(line: 0, scope: !3887)
!3906 = !DILocation(line: 118, column: 15, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3887, file: !688, line: 118, column: 11)
!3908 = !DILocation(line: 118, column: 11, scope: !3887)
!3909 = !DILocation(line: 129, column: 11, scope: !3887)
!3910 = !DILocation(line: 129, column: 18, scope: !3887)
!3911 = !DILocation(line: 130, column: 11, scope: !3887)
!3912 = !DILocation(line: 130, column: 19, scope: !3887)
!3913 = !{!1390, !1391, i64 144}
!3914 = !DILocation(line: 161, column: 7, scope: !3887)
!3915 = !DILocation(line: 163, column: 10, scope: !3877)
!3916 = !DILocation(line: 163, column: 3, scope: !3877)
!3917 = !DILocation(line: 164, column: 1, scope: !3877)
!3918 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !729, file: !729, line: 86, type: !3919, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3925)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!108, !3921, !51, !108, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1840, line: 6, baseType: !3924)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !391, line: 21, baseType: !735)
!3925 = !{!3926, !3927, !3928, !3929, !3930, !3931, !3932}
!3926 = !DILocalVariable(name: "pwc", arg: 1, scope: !3918, file: !729, line: 86, type: !3921)
!3927 = !DILocalVariable(name: "s", arg: 2, scope: !3918, file: !729, line: 86, type: !51)
!3928 = !DILocalVariable(name: "n", arg: 3, scope: !3918, file: !729, line: 86, type: !108)
!3929 = !DILocalVariable(name: "ps", arg: 4, scope: !3918, file: !729, line: 86, type: !3922)
!3930 = !DILocalVariable(name: "ret", scope: !3918, file: !729, line: 88, type: !108)
!3931 = !DILocalVariable(name: "wc", scope: !3918, file: !729, line: 89, type: !1844)
!3932 = !DILocalVariable(name: "uc", scope: !3933, file: !729, line: 156, type: !185)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !729, line: 155, column: 5)
!3934 = distinct !DILexicalBlock(scope: !3918, file: !729, line: 154, column: 7)
!3935 = !DILocation(line: 0, scope: !3918)
!3936 = !DILocation(line: 89, column: 3, scope: !3918)
!3937 = !DILocation(line: 105, column: 9, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3918, file: !729, line: 105, column: 7)
!3939 = !DILocation(line: 105, column: 7, scope: !3918)
!3940 = !DILocation(line: 145, column: 9, scope: !3918)
!3941 = !DILocation(line: 154, column: 19, scope: !3934)
!3942 = !DILocation(line: 154, column: 31, scope: !3934)
!3943 = !DILocation(line: 154, column: 26, scope: !3934)
!3944 = !DILocation(line: 154, column: 41, scope: !3934)
!3945 = !DILocation(line: 154, column: 7, scope: !3918)
!3946 = !DILocation(line: 156, column: 26, scope: !3933)
!3947 = !DILocation(line: 0, scope: !3933)
!3948 = !DILocation(line: 157, column: 14, scope: !3933)
!3949 = !DILocation(line: 157, column: 12, scope: !3933)
!3950 = !DILocation(line: 163, column: 1, scope: !3918)
!3951 = distinct !DISubprogram(name: "close_stream", scope: !748, file: !748, line: 56, type: !3952, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3956)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!53, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !214, line: 7, baseType: !754)
!3956 = !{!3957, !3958, !3960, !3961}
!3957 = !DILocalVariable(name: "stream", arg: 1, scope: !3951, file: !748, line: 56, type: !3954)
!3958 = !DILocalVariable(name: "some_pending", scope: !3951, file: !748, line: 58, type: !3959)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!3960 = !DILocalVariable(name: "prev_fail", scope: !3951, file: !748, line: 59, type: !3959)
!3961 = !DILocalVariable(name: "fclose_fail", scope: !3951, file: !748, line: 60, type: !3959)
!3962 = !DILocation(line: 0, scope: !3951)
!3963 = !DILocation(line: 58, column: 30, scope: !3951)
!3964 = !DILocalVariable(name: "__stream", arg: 1, scope: !3965, file: !1381, line: 135, type: !3954)
!3965 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1381, file: !1381, line: 135, type: !3952, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !747, retainedNodes: !3966)
!3966 = !{!3964}
!3967 = !DILocation(line: 0, scope: !3965, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 59, column: 27, scope: !3951)
!3969 = !DILocation(line: 137, column: 10, scope: !3965, inlinedAt: !3968)
!3970 = !DILocation(line: 59, column: 43, scope: !3951)
!3971 = !DILocation(line: 60, column: 29, scope: !3951)
!3972 = !DILocation(line: 60, column: 45, scope: !3951)
!3973 = !DILocation(line: 70, column: 17, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3951, file: !748, line: 70, column: 7)
!3975 = !DILocation(line: 58, column: 50, scope: !3951)
!3976 = !DILocation(line: 70, column: 33, scope: !3974)
!3977 = !DILocation(line: 70, column: 53, scope: !3974)
!3978 = !DILocation(line: 70, column: 59, scope: !3974)
!3979 = !DILocation(line: 70, column: 7, scope: !3951)
!3980 = !DILocation(line: 72, column: 11, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3974, file: !748, line: 71, column: 5)
!3982 = !DILocation(line: 73, column: 9, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3981, file: !748, line: 72, column: 11)
!3984 = !DILocation(line: 73, column: 15, scope: !3983)
!3985 = !DILocation(line: 78, column: 1, scope: !3951)
!3986 = distinct !DISubprogram(name: "hard_locale", scope: !786, file: !786, line: 27, type: !745, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3987)
!3987 = !{!3988, !3989}
!3988 = !DILocalVariable(name: "category", arg: 1, scope: !3986, file: !786, line: 27, type: !53)
!3989 = !DILocalVariable(name: "locale", scope: !3986, file: !786, line: 29, type: !3990)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2056, elements: !3991)
!3991 = !{!3992}
!3992 = !DISubrange(count: 257)
!3993 = !DILocation(line: 0, scope: !3986)
!3994 = !DILocation(line: 29, column: 3, scope: !3986)
!3995 = !DILocation(line: 29, column: 8, scope: !3986)
!3996 = !DILocation(line: 31, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3986, file: !786, line: 31, column: 7)
!3998 = !DILocation(line: 31, column: 7, scope: !3986)
!3999 = !DILocation(line: 34, column: 12, scope: !3986)
!4000 = !DILocation(line: 34, column: 38, scope: !3986)
!4001 = !DILocation(line: 34, column: 41, scope: !3986)
!4002 = !DILocation(line: 34, column: 66, scope: !3986)
!4003 = !DILocation(line: 35, column: 1, scope: !3986)
!4004 = distinct !DISubprogram(name: "locale_charset", scope: !793, file: !793, line: 831, type: !414, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4005)
!4005 = !{!4006}
!4006 = !DILocalVariable(name: "codeset", scope: !4004, file: !793, line: 833, type: !51)
!4007 = !DILocation(line: 847, column: 13, scope: !4004)
!4008 = !DILocation(line: 0, scope: !4004)
!4009 = !DILocation(line: 911, column: 15, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4004, file: !793, line: 911, column: 7)
!4011 = !DILocation(line: 911, column: 7, scope: !4004)
!4012 = !DILocation(line: 1070, column: 13, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !793, line: 1070, column: 13)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !793, line: 1060, column: 7)
!4015 = distinct !DILexicalBlock(scope: !4004, file: !793, line: 1019, column: 3)
!4016 = !DILocation(line: 1070, column: 24, scope: !4013)
!4017 = !DILocation(line: 1070, column: 13, scope: !4014)
!4018 = !DILocation(line: 1158, column: 3, scope: !4004)
!4019 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1186, file: !1186, line: 269, type: !4020, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4022)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!53, !53, !49, !108}
!4022 = !{!4023, !4024, !4025}
!4023 = !DILocalVariable(name: "category", arg: 1, scope: !4019, file: !1186, line: 269, type: !53)
!4024 = !DILocalVariable(name: "buf", arg: 2, scope: !4019, file: !1186, line: 269, type: !49)
!4025 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4019, file: !1186, line: 269, type: !108)
!4026 = !DILocation(line: 0, scope: !4019)
!4027 = !DILocalVariable(name: "category", arg: 1, scope: !4028, file: !1186, line: 91, type: !53)
!4028 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1186, file: !1186, line: 91, type: !4020, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4029)
!4029 = !{!4027, !4030, !4031, !4032, !4033}
!4030 = !DILocalVariable(name: "buf", arg: 2, scope: !4028, file: !1186, line: 91, type: !49)
!4031 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4028, file: !1186, line: 91, type: !108)
!4032 = !DILocalVariable(name: "result", scope: !4028, file: !1186, line: 140, type: !51)
!4033 = !DILocalVariable(name: "length", scope: !4034, file: !1186, line: 154, type: !108)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !1186, line: 153, column: 5)
!4035 = distinct !DILexicalBlock(scope: !4028, file: !1186, line: 142, column: 7)
!4036 = !DILocation(line: 0, scope: !4028, inlinedAt: !4037)
!4037 = distinct !DILocation(line: 274, column: 10, scope: !4019)
!4038 = !DILocalVariable(name: "category", arg: 1, scope: !4039, file: !1186, line: 60, type: !53)
!4039 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1186, file: !1186, line: 60, type: !4040, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!51, !53}
!4042 = !{!4038, !4043}
!4043 = !DILocalVariable(name: "result", scope: !4039, file: !1186, line: 62, type: !51)
!4044 = !DILocation(line: 0, scope: !4039, inlinedAt: !4045)
!4045 = distinct !DILocation(line: 140, column: 24, scope: !4028, inlinedAt: !4037)
!4046 = !DILocation(line: 62, column: 24, scope: !4039, inlinedAt: !4045)
!4047 = !DILocation(line: 142, column: 14, scope: !4035, inlinedAt: !4037)
!4048 = !DILocation(line: 142, column: 7, scope: !4028, inlinedAt: !4037)
!4049 = !DILocation(line: 145, column: 19, scope: !4050, inlinedAt: !4037)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !1186, line: 145, column: 11)
!4051 = distinct !DILexicalBlock(scope: !4035, file: !1186, line: 143, column: 5)
!4052 = !DILocation(line: 145, column: 11, scope: !4051, inlinedAt: !4037)
!4053 = !DILocation(line: 149, column: 16, scope: !4050, inlinedAt: !4037)
!4054 = !DILocation(line: 149, column: 9, scope: !4050, inlinedAt: !4037)
!4055 = !DILocation(line: 154, column: 23, scope: !4034, inlinedAt: !4037)
!4056 = !DILocation(line: 0, scope: !4034, inlinedAt: !4037)
!4057 = !DILocation(line: 155, column: 18, scope: !4058, inlinedAt: !4037)
!4058 = distinct !DILexicalBlock(scope: !4034, file: !1186, line: 155, column: 11)
!4059 = !DILocation(line: 155, column: 11, scope: !4034, inlinedAt: !4037)
!4060 = !DILocation(line: 157, column: 39, scope: !4061, inlinedAt: !4037)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !1186, line: 156, column: 9)
!4062 = !DILocalVariable(name: "__dest", arg: 1, scope: !4063, file: !1474, line: 31, type: !3488)
!4063 = distinct !DISubprogram(name: "memcpy", scope: !1474, file: !1474, line: 31, type: !3486, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4064)
!4064 = !{!4062, !4065, !4066}
!4065 = !DILocalVariable(name: "__src", arg: 2, scope: !4063, file: !1474, line: 31, type: !3489)
!4066 = !DILocalVariable(name: "__len", arg: 3, scope: !4063, file: !1474, line: 31, type: !108)
!4067 = !DILocation(line: 0, scope: !4063, inlinedAt: !4068)
!4068 = distinct !DILocation(line: 157, column: 11, scope: !4061, inlinedAt: !4037)
!4069 = !DILocation(line: 34, column: 10, scope: !4063, inlinedAt: !4068)
!4070 = !DILocation(line: 158, column: 11, scope: !4061, inlinedAt: !4037)
!4071 = !DILocation(line: 162, column: 23, scope: !4072, inlinedAt: !4037)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !1186, line: 162, column: 15)
!4073 = distinct !DILexicalBlock(scope: !4058, file: !1186, line: 161, column: 9)
!4074 = !DILocation(line: 162, column: 15, scope: !4073, inlinedAt: !4037)
!4075 = !DILocation(line: 167, column: 44, scope: !4076, inlinedAt: !4037)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !1186, line: 163, column: 13)
!4077 = !DILocation(line: 0, scope: !4063, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 167, column: 15, scope: !4076, inlinedAt: !4037)
!4079 = !DILocation(line: 34, column: 10, scope: !4063, inlinedAt: !4078)
!4080 = !DILocation(line: 168, column: 15, scope: !4076, inlinedAt: !4037)
!4081 = !DILocation(line: 168, column: 32, scope: !4076, inlinedAt: !4037)
!4082 = !DILocation(line: 169, column: 13, scope: !4076, inlinedAt: !4037)
!4083 = !DILocation(line: 0, scope: !4035, inlinedAt: !4037)
!4084 = !DILocation(line: 274, column: 3, scope: !4019)
!4085 = distinct !DISubprogram(name: "setlocale_null", scope: !1186, file: !1186, line: 301, type: !4040, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1185, retainedNodes: !4086)
!4086 = !{!4087}
!4087 = !DILocalVariable(name: "category", arg: 1, scope: !4085, file: !1186, line: 301, type: !53)
!4088 = !DILocation(line: 0, scope: !4085)
!4089 = !DILocation(line: 0, scope: !4039, inlinedAt: !4090)
!4090 = distinct !DILocation(line: 304, column: 10, scope: !4085)
!4091 = !DILocation(line: 62, column: 24, scope: !4039, inlinedAt: !4090)
!4092 = !DILocation(line: 304, column: 3, scope: !4085)
