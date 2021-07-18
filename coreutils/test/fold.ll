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
@count_bytes = internal unnamed_addr global i1 false, align 1, !dbg !183
@break_spaces = internal unnamed_addr global i1 false, align 1, !dbg !184
@shortopts = internal constant [35 x i8] c"bsw:0::1::2::3::4::5::6::7::8::9::\00", align 16, !dbg !64
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !69
@optarg = external local_unnamed_addr global i8*, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid number of columns\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fold_file.allocated_out = internal global i64 0, align 8, !dbg !181
@fold_file.line_out = internal unnamed_addr global i8* null, align 8, !dbg !83
@.str.31 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !185
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !191
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !196
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !198
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !204
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !210
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !222
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !228
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !240
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !247
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !254
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !242
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !256
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !262
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
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !726 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !730, metadata !DIExpression()), !dbg !731
  %3 = icmp eq i32 %0, 0, !dbg !732
  br i1 %3, label %9, label %4, !dbg !734

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !735, !tbaa !737
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !735
  %7 = load i8*, i8** @program_name, align 8, !dbg !735, !tbaa !737
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !735
  br label %67, !dbg !735

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !741
  %11 = load i8*, i8** @program_name, align 8, !dbg !741, !tbaa !737
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !741
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !743
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !737
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !743
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 5) #24, !dbg !744
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !737
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #24, !dbg !744
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0), i32 5) #24, !dbg !750
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !737
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #24, !dbg !750
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !753
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !737
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !753
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !754
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !737
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !754
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !755
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !737
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !755
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !756, metadata !DIExpression()) #24, !dbg !774
  %31 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !776
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %31) #24, !dbg !776
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !761, metadata !DIExpression()) #24, !dbg !777
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %31, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !777
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), metadata !770, metadata !DIExpression()) #24, !dbg !774
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !771, metadata !DIExpression()) #24, !dbg !774
  %32 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !778
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !771, metadata !DIExpression()) #24, !dbg !774
  br label %33, !dbg !779

33:                                               ; preds = %38, %9
  %34 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %35 = phi %struct.infomap* [ %39, %38 ], [ %32, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !771, metadata !DIExpression()) #24, !dbg !774
  %36 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %34) #25, !dbg !780
  %37 = icmp eq i32 %36, 0, !dbg !780
  br i1 %37, label %43, label %38, !dbg !779

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 1, !dbg !781
  call void @llvm.dbg.value(metadata %struct.infomap* %39, metadata !771, metadata !DIExpression()) #24, !dbg !774
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 0, !dbg !782
  %41 = load i8*, i8** %40, align 8, !dbg !782, !tbaa !783
  %42 = icmp eq i8* %41, null, !dbg !785
  br i1 %42, label %43, label %33, !dbg !786, !llvm.loop !787

43:                                               ; preds = %38, %33
  %44 = phi %struct.infomap* [ %35, %33 ], [ %39, %38 ]
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 1, !dbg !789
  %46 = load i8*, i8** %45, align 8, !dbg !789, !tbaa !791
  %47 = icmp eq i8* %46, null, !dbg !792
  %48 = select i1 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %46, !dbg !793
  call void @llvm.dbg.value(metadata i8* %48, metadata !770, metadata !DIExpression()) #24, !dbg !774
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #24, !dbg !794
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #24, !dbg !794
  %51 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !795
  call void @llvm.dbg.value(metadata i8* %51, metadata !773, metadata !DIExpression()) #24, !dbg !774
  %52 = icmp eq i8* %51, null, !dbg !796
  br i1 %52, label %60, label %53, !dbg !798

53:                                               ; preds = %43
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #25, !dbg !799
  %55 = icmp eq i32 %54, 0, !dbg !799
  br i1 %55, label %60, label %56, !dbg !800

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !801
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !801, !tbaa !737
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #24, !dbg !801
  br label %60, !dbg !803

60:                                               ; preds = %43, %53, %56
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #24, !dbg !804
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #24, !dbg !804
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #24, !dbg !805
  %64 = icmp eq i8* %48, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), !dbg !805
  %65 = select i1 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !805
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* %48, i8* %65) #24, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %31) #24, !dbg !806
  br label %67

67:                                               ; preds = %60, %4
  tail call void @exit(i32 %0) #26, !dbg !807
  unreachable, !dbg !807
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !808 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !812 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !816 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !820 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !825, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8** %1, metadata !826, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 80, metadata !827, metadata !DIExpression()), !dbg !836
  %4 = load i8*, i8** %1, align 8, !dbg !837, !tbaa !737
  tail call void @set_program_name(i8* %4) #24, !dbg !838
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !839
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !840
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #24, !dbg !841
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !842
  store i1 false, i1* @have_read_stdin, align 1, !dbg !843
  store i1 false, i1* @count_bytes, align 1, !dbg !844
  store i1 false, i1* @break_spaces, align 1, !dbg !845
  call void @llvm.dbg.value(metadata i64 80, metadata !827, metadata !DIExpression()), !dbg !836
  %9 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !846
  call void @llvm.dbg.value(metadata i32 %9, metadata !829, metadata !DIExpression()), !dbg !836
  %10 = icmp eq i32 %9, -1, !dbg !847
  br i1 %10, label %41, label %11, !dbg !848

11:                                               ; preds = %2
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  br label %14, !dbg !848

14:                                               ; preds = %11, %37
  %15 = phi i32 [ %9, %11 ], [ %39, %37 ]
  %16 = phi i64 [ 80, %11 ], [ %38, %37 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !827, metadata !DIExpression()), !dbg !836
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #24, !dbg !849
  call void @llvm.dbg.declare(metadata [2 x i8]* %3, metadata !831, metadata !DIExpression()), !dbg !850
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
  ], !dbg !851

17:                                               ; preds = %14
  %18 = load i8*, i8** @optarg, align 8, !dbg !852, !tbaa !737
  br label %28, !dbg !851

19:                                               ; preds = %14
  store i1 true, i1* @count_bytes, align 1, !dbg !854
  br label %37, !dbg !855

20:                                               ; preds = %14
  store i1 true, i1* @break_spaces, align 1, !dbg !856
  br label %37, !dbg !857

21:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %22 = load i8*, i8** @optarg, align 8, !dbg !858, !tbaa !737
  %23 = icmp eq i8* %22, null, !dbg !858
  br i1 %23, label %26, label %24, !dbg !860

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !861
  store i8* %25, i8** @optarg, align 8, !dbg !861, !tbaa !737
  br label %28, !dbg !862

26:                                               ; preds = %21
  %27 = trunc i32 %15 to i8, !dbg !863
  store i8 %27, i8* %12, align 1, !dbg !865, !tbaa !866
  store i8 0, i8* %13, align 1, !dbg !867, !tbaa !866
  store i8* %12, i8** @optarg, align 8, !dbg !868, !tbaa !737
  br label %28

28:                                               ; preds = %17, %24, %26
  %29 = phi i8* [ %18, %17 ], [ %25, %24 ], [ %12, %26 ], !dbg !852
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 5) #24, !dbg !869
  %31 = call i64 @xdectoumax(i8* %29, i64 1, i64 -10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* %30, i32 0) #24, !dbg !870
  call void @llvm.dbg.value(metadata i64 %31, metadata !827, metadata !DIExpression()), !dbg !836
  br label %37, !dbg !871

32:                                               ; preds = %14
  call void @usage(i32 0) #27, !dbg !872
  unreachable, !dbg !872

33:                                               ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !873, !tbaa !737
  %35 = load i8*, i8** @Version, align 8, !dbg !873, !tbaa !737
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #24, !dbg !873
  call void @exit(i32 0) #26, !dbg !873
  unreachable, !dbg !873

36:                                               ; preds = %14
  call void @usage(i32 1) #27, !dbg !874
  unreachable, !dbg !874

37:                                               ; preds = %28, %20, %19
  %38 = phi i64 [ %31, %28 ], [ %16, %20 ], [ %16, %19 ], !dbg !836
  call void @llvm.dbg.value(metadata i64 %38, metadata !827, metadata !DIExpression()), !dbg !836
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #24, !dbg !875
  %39 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @shortopts, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !846
  call void @llvm.dbg.value(metadata i32 %39, metadata !829, metadata !DIExpression()), !dbg !836
  %40 = icmp eq i32 %39, -1, !dbg !847
  br i1 %40, label %41, label %14, !dbg !848, !llvm.loop !876

41:                                               ; preds = %37, %2
  %42 = phi i64 [ 80, %2 ], [ %38, %37 ], !dbg !836
  %43 = load i32, i32* @optind, align 4, !dbg !877, !tbaa !879
  %44 = icmp eq i32 %43, %0, !dbg !881
  br i1 %44, label %49, label %45, !dbg !882

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8 1, metadata !830, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 %43, metadata !828, metadata !DIExpression()), !dbg !836
  %46 = icmp slt i32 %43, %0, !dbg !883
  br i1 %46, label %47, label %63, !dbg !887

47:                                               ; preds = %45
  %48 = sext i32 %43 to i64, !dbg !887
  br label %52, !dbg !887

49:                                               ; preds = %41
  %50 = call fastcc zeroext i1 @fold_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 %42), !dbg !888
  %51 = zext i1 %50 to i8, !dbg !889
  call void @llvm.dbg.value(metadata i8 %51, metadata !830, metadata !DIExpression()), !dbg !836
  br label %63, !dbg !890

52:                                               ; preds = %47, %52
  %53 = phi i64 [ %48, %47 ], [ %60, %52 ]
  %54 = phi i8 [ 1, %47 ], [ %59, %52 ]
  call void @llvm.dbg.value(metadata i8 %54, metadata !830, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 %53, metadata !828, metadata !DIExpression()), !dbg !836
  %55 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !891
  %56 = load i8*, i8** %55, align 8, !dbg !891, !tbaa !737
  %57 = call fastcc zeroext i1 @fold_file(i8* %56, i64 %42), !dbg !892
  %58 = zext i1 %57 to i8, !dbg !892
  %59 = and i8 %54, %58, !dbg !893
  call void @llvm.dbg.value(metadata i8 %59, metadata !830, metadata !DIExpression()), !dbg !836
  %60 = add nsw i64 %53, 1, !dbg !894
  call void @llvm.dbg.value(metadata i64 %60, metadata !828, metadata !DIExpression()), !dbg !836
  %61 = trunc i64 %60 to i32, !dbg !883
  %62 = icmp eq i32 %61, %0, !dbg !883
  br i1 %62, label %63, label %52, !dbg !887, !llvm.loop !895

63:                                               ; preds = %52, %45, %49
  %64 = phi i8 [ %51, %49 ], [ 1, %45 ], [ %59, %52 ], !dbg !897
  call void @llvm.dbg.value(metadata i8 %64, metadata !830, metadata !DIExpression()), !dbg !836
  %65 = load i1, i1* @have_read_stdin, align 1, !dbg !898
  br i1 %65, label %66, label %73, !dbg !900

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !901, !tbaa !737
  %68 = call i32 @rpl_fclose(%struct._IO_FILE* %67) #24, !dbg !902
  %69 = icmp eq i32 %68, -1, !dbg !903
  br i1 %69, label %70, label %73, !dbg !904

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #28, !dbg !905
  %72 = load i32, i32* %71, align 4, !dbg !905, !tbaa !879
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #24, !dbg !905
  unreachable, !dbg !905

73:                                               ; preds = %66, %63
  %74 = xor i8 %64, 1, !dbg !906
  %75 = zext i8 %74 to i32, !dbg !906
  ret i32 %75, !dbg !907
}

; Function Attrs: nounwind
declare !dbg !908 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !911 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !914 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !919 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fold_file(i8* %0, i64 %1) unnamed_addr #8 !dbg !85 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !89, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %1, metadata !90, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !149, metadata !DIExpression()), !dbg !925
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !926
  %4 = icmp eq i32 %3, 0, !dbg !926
  br i1 %4, label %5, label %7, !dbg !928

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !929, !tbaa !737
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !91, metadata !DIExpression()), !dbg !925
  store i1 true, i1* @have_read_stdin, align 1, !dbg !931
  br label %9, !dbg !932

7:                                                ; preds = %2
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !933
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %8, metadata !91, metadata !DIExpression()), !dbg !925
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ], !dbg !934
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !91, metadata !DIExpression()), !dbg !925
  %11 = icmp eq %struct._IO_FILE* %10, null, !dbg !935
  br i1 %11, label %12, label %16, !dbg !937

12:                                               ; preds = %9
  %13 = tail call i32* @__errno_location() #28, !dbg !938
  %14 = load i32, i32* %13, align 4, !dbg !938, !tbaa !879
  %15 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #24, !dbg !940
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %15) #24, !dbg !941
  br label %176, !dbg !942

16:                                               ; preds = %9
  tail call void @fadvise(%struct._IO_FILE* nonnull %10, i32 2) #24, !dbg !943
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 1
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 2
  br label %19, !dbg !944

19:                                               ; preds = %49, %16
  %20 = phi i64 [ 0, %16 ], [ %50, %49 ], !dbg !925
  %21 = phi i64 [ 0, %16 ], [ %51, %49 ], !dbg !925
  call void @llvm.dbg.value(metadata i64 %21, metadata !148, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %20, metadata !149, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !945, metadata !DIExpression()) #24, !dbg !951
  %22 = load i8*, i8** %17, align 8, !dbg !953, !tbaa !954
  %23 = load i8*, i8** %18, align 8, !dbg !953, !tbaa !958
  %24 = icmp ult i8* %22, %23, !dbg !953
  br i1 %24, label %25, label %29, !dbg !953, !prof !959

25:                                               ; preds = %19
  %26 = getelementptr inbounds i8, i8* %22, i64 1, !dbg !953
  store i8* %26, i8** %17, align 8, !dbg !953, !tbaa !954
  %27 = load i8, i8* %22, align 1, !dbg !953, !tbaa !866
  %28 = zext i8 %27 to i32, !dbg !953
  call void @llvm.dbg.value(metadata i32 %30, metadata !147, metadata !DIExpression()), !dbg !925
  br label %32, !dbg !944

29:                                               ; preds = %19
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %10) #24, !dbg !953
  call void @llvm.dbg.value(metadata i32 %30, metadata !147, metadata !DIExpression()), !dbg !925
  %31 = icmp eq i32 %30, -1, !dbg !960
  br i1 %31, label %148, label %32, !dbg !944

32:                                               ; preds = %25, %29
  %33 = phi i32 [ %28, %25 ], [ %30, %29 ]
  %34 = add i64 %20, 1, !dbg !961
  %35 = load i64, i64* @fold_file.allocated_out, align 8, !dbg !963, !tbaa !964
  %36 = icmp ult i64 %34, %35, !dbg !965
  br i1 %36, label %40, label %37, !dbg !966

37:                                               ; preds = %32
  %38 = load i8*, i8** @fold_file.line_out, align 8, !dbg !967, !tbaa !737
  %39 = tail call i8* @x2realloc(i8* %38, i64* nonnull @fold_file.allocated_out) #24, !dbg !967
  store i8* %39, i8** @fold_file.line_out, align 8, !dbg !968, !tbaa !737
  br label %40, !dbg !969

40:                                               ; preds = %37, %32
  %41 = icmp eq i32 %33, 10, !dbg !970
  br i1 %41, label %44, label %42, !dbg !971

42:                                               ; preds = %40
  %43 = trunc i32 %33 to i8
  br label %52, !dbg !972

44:                                               ; preds = %40
  %45 = load i8*, i8** @fold_file.line_out, align 8, !dbg !980, !tbaa !737
  call void @llvm.dbg.value(metadata i64 %34, metadata !149, metadata !DIExpression()), !dbg !925
  %46 = getelementptr inbounds i8, i8* %45, i64 %20, !dbg !980
  store i8 10, i8* %46, align 1, !dbg !981, !tbaa !866
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !982, !tbaa !737
  %48 = tail call i64 @fwrite_unlocked(i8* nonnull %45, i64 1, i64 %34, %struct._IO_FILE* %47), !dbg !982
  br label %49, !dbg !982

49:                                               ; preds = %44, %137, %143
  %50 = phi i64 [ 1, %137 ], [ %146, %143 ], [ 0, %44 ]
  %51 = phi i64 [ %69, %137 ], [ %144, %143 ], [ 0, %44 ]
  br label %19, !dbg !925, !llvm.loop !983

52:                                               ; preds = %107, %42
  %53 = phi i64 [ %20, %42 ], [ %108, %107 ], !dbg !925
  %54 = phi i64 [ %21, %42 ], [ %109, %107 ], !dbg !925
  call void @llvm.dbg.value(metadata i64 %54, metadata !148, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.label(metadata !180), !dbg !985
  call void @llvm.dbg.value(metadata i64 %54, metadata !977, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8 %43, metadata !978, metadata !DIExpression()), !dbg !986
  %55 = load i1, i1* @count_bytes, align 1, !dbg !987
  br i1 %55, label %66, label %56, !dbg !972

56:                                               ; preds = %52
  switch i8 %43, label %64 [
    i8 8, label %57
    i8 13, label %143
    i8 9, label %61
  ], !dbg !989

57:                                               ; preds = %56
  %58 = icmp eq i64 %54, 0, !dbg !991
  %59 = add i64 %54, -1
  %60 = select i1 %58, i64 0, i64 %59, !dbg !995
  br label %68, !dbg !995

61:                                               ; preds = %56
  %62 = add i64 %54, 8, !dbg !996
  %63 = and i64 %62, -8, !dbg !999
  call void @llvm.dbg.value(metadata i64 %63, metadata !977, metadata !DIExpression()), !dbg !986
  br label %68, !dbg !1000

64:                                               ; preds = %56
  %65 = add i64 %54, 1, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %65, metadata !977, metadata !DIExpression()), !dbg !986
  br label %68

66:                                               ; preds = %52
  %67 = add i64 %54, 1, !dbg !1002
  call void @llvm.dbg.value(metadata i64 %67, metadata !977, metadata !DIExpression()), !dbg !986
  br label %68

68:                                               ; preds = %61, %64, %66, %57
  %69 = phi i64 [ %60, %57 ], [ %67, %66 ], [ %63, %61 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !925
  %70 = icmp ugt i64 %69, %1, !dbg !1003
  br i1 %70, label %71, label %143, !dbg !1004

71:                                               ; preds = %68
  %72 = load i1, i1* @break_spaces, align 1, !dbg !1005
  br i1 %72, label %73, label %134, !dbg !1006

73:                                               ; preds = %71
  %74 = load i8*, i8** @fold_file.line_out, align 8
  br label %75, !dbg !1007

75:                                               ; preds = %73, %78
  %76 = phi i64 [ %79, %78 ], [ %53, %73 ], !dbg !1008
  call void @llvm.dbg.value(metadata i64 %76, metadata !163, metadata !DIExpression()), !dbg !1008
  %77 = icmp eq i64 %76, 0, !dbg !1007
  br i1 %77, label %134, label %78, !dbg !1007

78:                                               ; preds = %75
  %79 = add i64 %76, -1, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %79, metadata !163, metadata !DIExpression()), !dbg !1008
  %80 = tail call i16** @__ctype_b_loc() #28, !dbg !1011
  %81 = load i16*, i16** %80, align 8, !dbg !1011, !tbaa !737
  %82 = getelementptr inbounds i8, i8* %74, i64 %79, !dbg !1011
  %83 = load i8, i8* %82, align 1, !dbg !1011, !tbaa !866
  %84 = zext i8 %83 to i64, !dbg !1011
  %85 = getelementptr inbounds i16, i16* %81, i64 %84, !dbg !1011
  %86 = load i16, i16* %85, align 2, !dbg !1011, !tbaa !1013
  %87 = and i16 %86, 1, !dbg !1011
  %88 = icmp eq i16 %87, 0, !dbg !1011
  br i1 %88, label %75, label %89, !dbg !1014, !llvm.loop !1015

89:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i8 undef, metadata !158, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i64 %76, metadata !163, metadata !DIExpression()), !dbg !1008
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1017, !tbaa !737
  %91 = tail call i64 @fwrite_unlocked(i8* nonnull %74, i64 1, i64 %76, %struct._IO_FILE* %90), !dbg !1017
  call void @llvm.dbg.value(metadata i32 10, metadata !1018, metadata !DIExpression()) #24, !dbg !1023
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1025, !tbaa !737
  %93 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 5, !dbg !1025
  %94 = load i8*, i8** %93, align 8, !dbg !1025, !tbaa !1026
  %95 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %92, i64 0, i32 6, !dbg !1025
  %96 = load i8*, i8** %95, align 8, !dbg !1025, !tbaa !1027
  %97 = icmp ult i8* %94, %96, !dbg !1025
  br i1 %97, label %100, label %98, !dbg !1025, !prof !959

98:                                               ; preds = %89
  %99 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %92, i32 10) #24, !dbg !1025
  br label %102, !dbg !1025

100:                                              ; preds = %89
  %101 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !1025
  store i8* %101, i8** %93, align 8, !dbg !1025, !tbaa !1026
  store i8 10, i8* %94, align 1, !dbg !1025, !tbaa !866
  br label %102, !dbg !1025

102:                                              ; preds = %98, %100
  %103 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1028, !tbaa !737
  %104 = getelementptr inbounds i8, i8* %103, i64 %76, !dbg !1029
  %105 = sub i64 %53, %76, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %103, metadata !1031, metadata !DIExpression()) #24, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %104, metadata !1039, metadata !DIExpression()) #24, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %105, metadata !1040, metadata !DIExpression()) #24, !dbg !1041
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 1 %103, i8* nonnull align 1 %104, i64 %105, i1 false) #24, !dbg !1043
  call void @llvm.dbg.value(metadata i64 %105, metadata !149, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 0, metadata !164, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 0, metadata !148, metadata !DIExpression()), !dbg !925
  %106 = icmp eq i64 %105, 0, !dbg !1045
  br i1 %106, label %107, label %110, !dbg !1048

107:                                              ; preds = %130, %102, %138
  %108 = phi i64 [ 0, %138 ], [ 0, %102 ], [ %105, %130 ]
  %109 = phi i64 [ 0, %138 ], [ 0, %102 ], [ %131, %130 ]
  br label %52, !dbg !925

110:                                              ; preds = %102
  %111 = load i1, i1* @count_bytes, align 1
  %112 = load i8*, i8** @fold_file.line_out, align 8
  br label %113, !dbg !1048

113:                                              ; preds = %110, %130
  %114 = phi i64 [ 0, %110 ], [ %131, %130 ]
  %115 = phi i64 [ 0, %110 ], [ %132, %130 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !148, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %115, metadata !164, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i64 %114, metadata !977, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i8 undef, metadata !978, metadata !DIExpression()), !dbg !1049
  br i1 %111, label %128, label %116, !dbg !1051

116:                                              ; preds = %113
  %117 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !1052
  %118 = load i8, i8* %117, align 1, !dbg !1052, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %118, metadata !978, metadata !DIExpression()), !dbg !1049
  switch i8 %118, label %126 [
    i8 8, label %119
    i8 13, label %130
    i8 9, label %123
  ], !dbg !1053

119:                                              ; preds = %116
  %120 = icmp eq i64 %114, 0, !dbg !1054
  %121 = add i64 %114, -1
  %122 = select i1 %120, i64 0, i64 %121, !dbg !1055
  br label %130, !dbg !1055

123:                                              ; preds = %116
  %124 = add i64 %114, 8, !dbg !1056
  %125 = and i64 %124, -8, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %125, metadata !977, metadata !DIExpression()), !dbg !1049
  br label %130, !dbg !1058

126:                                              ; preds = %116
  %127 = add i64 %114, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %127, metadata !977, metadata !DIExpression()), !dbg !1049
  br label %130

128:                                              ; preds = %113
  %129 = add i64 %114, 1, !dbg !1060
  call void @llvm.dbg.value(metadata i64 %129, metadata !977, metadata !DIExpression()), !dbg !1049
  br label %130

130:                                              ; preds = %116, %123, %126, %128, %119
  %131 = phi i64 [ %122, %119 ], [ %129, %128 ], [ %125, %123 ], [ %127, %126 ], [ 0, %116 ]
  call void @llvm.dbg.value(metadata i64 %131, metadata !148, metadata !DIExpression()), !dbg !925
  %132 = add nuw i64 %115, 1, !dbg !1061
  call void @llvm.dbg.value(metadata i64 %132, metadata !164, metadata !DIExpression()), !dbg !1044
  %133 = icmp eq i64 %132, %105, !dbg !1045
  br i1 %133, label %107, label %113, !dbg !1048, !llvm.loop !1062

134:                                              ; preds = %75, %71
  call void @llvm.dbg.value(metadata i64 %69, metadata !148, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.value(metadata i64 %53, metadata !149, metadata !DIExpression()), !dbg !925
  %135 = icmp eq i64 %53, 0, !dbg !1064
  %136 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1066, !tbaa !737
  br i1 %135, label %137, label %138, !dbg !1067

137:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i64 1, metadata !149, metadata !DIExpression()), !dbg !925
  store i8 %43, i8* %136, align 1, !dbg !1068, !tbaa !866
  br label %49, !dbg !1070

138:                                              ; preds = %134
  %139 = add i64 %53, 1, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %139, metadata !149, metadata !DIExpression()), !dbg !925
  %140 = getelementptr inbounds i8, i8* %136, i64 %53, !dbg !1072
  store i8 10, i8* %140, align 1, !dbg !1073, !tbaa !866
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1074, !tbaa !737
  %142 = tail call i64 @fwrite_unlocked(i8* nonnull %136, i64 1, i64 %139, %struct._IO_FILE* %141), !dbg !1074
  br label %107, !dbg !1074

143:                                              ; preds = %56, %68
  %144 = phi i64 [ %69, %68 ], [ 0, %56 ]
  %145 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1075, !tbaa !737
  %146 = add i64 %53, 1, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %146, metadata !149, metadata !DIExpression()), !dbg !925
  %147 = getelementptr inbounds i8, i8* %145, i64 %53, !dbg !1075
  store i8 %43, i8* %147, align 1, !dbg !1077, !tbaa !866
  br label %49, !dbg !944

148:                                              ; preds = %29
  %149 = tail call i32* @__errno_location() #28, !dbg !1078
  %150 = load i32, i32* %149, align 4, !dbg !1078, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %150, metadata !150, metadata !DIExpression()), !dbg !925
  %151 = icmp eq i64 %20, 0, !dbg !1079
  br i1 %151, label %156, label %152, !dbg !1080

152:                                              ; preds = %148
  %153 = load i8*, i8** @fold_file.line_out, align 8, !dbg !1081, !tbaa !737
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1081, !tbaa !737
  %155 = tail call i64 @fwrite_unlocked(i8* %153, i64 1, i64 %20, %struct._IO_FILE* %154), !dbg !1081
  br label %156, !dbg !1081

156:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1082, metadata !DIExpression()), !dbg !1085
  %157 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %10, i64 0, i32 0, !dbg !1088
  %158 = load i32, i32* %157, align 8, !dbg !1088, !tbaa !1089
  %159 = and i32 %158, 32, !dbg !1090
  %160 = icmp eq i32 %159, 0, !dbg !1090
  br i1 %160, label %167, label %161, !dbg !1091

161:                                              ; preds = %156
  %162 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #24, !dbg !1092
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %162) #24, !dbg !1094
  %163 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !1095
  %164 = icmp eq i32 %163, 0, !dbg !1095
  br i1 %164, label %176, label %165, !dbg !1097

165:                                              ; preds = %161
  %166 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #24, !dbg !1098
  br label %176, !dbg !1098

167:                                              ; preds = %156
  %168 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #25, !dbg !1099
  %169 = icmp eq i32 %168, 0, !dbg !1099
  br i1 %169, label %176, label %170, !dbg !1101

170:                                              ; preds = %167
  %171 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %10) #24, !dbg !1102
  %172 = icmp eq i32 %171, -1, !dbg !1103
  br i1 %172, label %173, label %176, !dbg !1104

173:                                              ; preds = %170
  %174 = load i32, i32* %149, align 4, !dbg !1105, !tbaa !879
  %175 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #24, !dbg !1107
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0), i8* %175) #24, !dbg !1108
  br label %176, !dbg !1109

176:                                              ; preds = %167, %170, %161, %165, %173, %12
  %177 = phi i1 [ false, %12 ], [ false, %173 ], [ false, %165 ], [ false, %161 ], [ true, %170 ], [ true, %167 ], !dbg !925
  ret i1 %177, !dbg !1110
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !1111 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1115 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i8* %0, i8** @file_name, align 8, !dbg !1122, !tbaa !737
  ret void, !dbg !1123
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1124 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1128, metadata !DIExpression()), !dbg !1129
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1130, !tbaa !1131
  ret void, !dbg !1133
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1134 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !737
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !1140
  %3 = icmp eq i32 %2, 0, !dbg !1141
  br i1 %3, label %22, label %4, !dbg !1142

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1143, !tbaa !1131, !range !1144
  %6 = icmp eq i8 %5, 0, !dbg !1143
  br i1 %6, label %11, label %7, !dbg !1145

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !1146
  %9 = load i32, i32* %8, align 4, !dbg !1146, !tbaa !879
  %10 = icmp eq i32 %9, 32, !dbg !1147
  br i1 %10, label %22, label %11, !dbg !1148

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #24, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %12, metadata !1136, metadata !DIExpression()), !dbg !1150
  %13 = load i8*, i8** @file_name, align 8, !dbg !1151, !tbaa !737
  %14 = icmp eq i8* %13, null, !dbg !1151
  %15 = tail call i32* @__errno_location() #28, !dbg !1153
  %16 = load i32, i32* %15, align 4, !dbg !1153, !tbaa !879
  br i1 %14, label %19, label %17, !dbg !1154

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !1155
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !1156
  br label %20, !dbg !1156

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #24, !dbg !1157
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1158, !tbaa !879
  tail call void @_exit(i32 %21) #26, !dbg !1159
  unreachable, !dbg !1159

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1160, !tbaa !737
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !1162
  %25 = icmp eq i32 %24, 0, !dbg !1163
  br i1 %25, label %28, label %26, !dbg !1164

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1165, !tbaa !879
  tail call void @_exit(i32 %27) #26, !dbg !1166
  unreachable, !dbg !1166

28:                                               ; preds = %22
  ret void, !dbg !1167
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1174, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %1, metadata !1175, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %2, metadata !1176, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 %3, metadata !1177, metadata !DIExpression()), !dbg !1180
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #24, !dbg !1181
  call void @llvm.dbg.value(metadata i32 %5, metadata !1178, metadata !DIExpression()), !dbg !1182
  ret void, !dbg !1183
}

; Function Attrs: nounwind
declare !dbg !1184 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1188 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1226, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 %1, metadata !1227, metadata !DIExpression()), !dbg !1228
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1229
  br i1 %3, label %7, label %4, !dbg !1231

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %5, metadata !1174, metadata !DIExpression()) #24, !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()) #24, !dbg !1233
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()) #24, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %1, metadata !1177, metadata !DIExpression()) #24, !dbg !1233
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #24, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %6, metadata !1178, metadata !DIExpression()) #24, !dbg !1236
  br label %7, !dbg !1237

7:                                                ; preds = %4, %2
  ret void, !dbg !1238
}

; Function Attrs: nofree nounwind
declare !dbg !1239 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1242 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1244, metadata !DIExpression()), !dbg !1247
  %2 = icmp eq i8* %0, null, !dbg !1248
  br i1 %2, label %3, label %6, !dbg !1250

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1251, !tbaa !737
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !1253
  tail call void @abort() #26, !dbg !1254
  unreachable, !dbg !1254

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !1255
  call void @llvm.dbg.value(metadata i8* %7, metadata !1245, metadata !DIExpression()), !dbg !1247
  %8 = icmp eq i8* %7, null, !dbg !1256
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1257
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %10, metadata !1246, metadata !DIExpression()), !dbg !1247
  %11 = ptrtoint i8* %10 to i64, !dbg !1258
  %12 = ptrtoint i8* %0 to i64, !dbg !1258
  %13 = sub i64 %11, %12, !dbg !1258
  %14 = icmp sgt i64 %13, 6, !dbg !1260
  br i1 %14, label %15, label %24, !dbg !1261

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1262
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #25, !dbg !1263
  %18 = icmp eq i32 %17, 0, !dbg !1264
  br i1 %18, label %19, label %24, !dbg !1265

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1244, metadata !DIExpression()), !dbg !1247
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #25, !dbg !1266
  %21 = icmp eq i32 %20, 0, !dbg !1269
  br i1 %21, label %22, label %24, !dbg !1270

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1271
  call void @llvm.dbg.value(metadata i8* %23, metadata !1244, metadata !DIExpression()), !dbg !1247
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1273, !tbaa !737
  br label %24, !dbg !1274

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1244, metadata !DIExpression()), !dbg !1247
  store i8* %25, i8** @program_name, align 8, !dbg !1275, !tbaa !737
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1276, !tbaa !737
  ret void, !dbg !1277
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1278 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1283, metadata !DIExpression()), !dbg !1286
  %2 = tail call i32* @__errno_location() #28, !dbg !1287
  %3 = load i32, i32* %2, align 4, !dbg !1287, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %3, metadata !1284, metadata !DIExpression()), !dbg !1286
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1288
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1288
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !1289
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1285, metadata !DIExpression()), !dbg !1286
  store i32 %3, i32* %2, align 4, !dbg !1290, !tbaa !879
  ret %struct.quoting_options* %8, !dbg !1291
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1292 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1298, metadata !DIExpression()), !dbg !1299
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1300
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1300
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1301
  %5 = load i32, i32* %4, align 8, !dbg !1301, !tbaa !1302
  ret i32 %5, !dbg !1304
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1305 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1309, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i32 %1, metadata !1310, metadata !DIExpression()), !dbg !1311
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1312
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1312
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1313
  store i32 %1, i32* %5, align 8, !dbg !1314, !tbaa !1302
  ret void, !dbg !1315
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1316 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1320, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %1, metadata !1321, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i32 %2, metadata !1322, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %1, metadata !1323, metadata !DIExpression()), !dbg !1328
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1329
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1329
  %6 = lshr i8 %1, 5, !dbg !1330
  %7 = zext i8 %6 to i64, !dbg !1330
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1331
  call void @llvm.dbg.value(metadata i32* %8, metadata !1324, metadata !DIExpression()), !dbg !1328
  %9 = and i8 %1, 31, !dbg !1332
  %10 = zext i8 %9 to i32, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %10, metadata !1326, metadata !DIExpression()), !dbg !1328
  %11 = load i32, i32* %8, align 4, !dbg !1333, !tbaa !879
  %12 = lshr i32 %11, %10, !dbg !1334
  %13 = and i32 %12, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %13, metadata !1327, metadata !DIExpression()), !dbg !1328
  %14 = and i32 %2, 1, !dbg !1336
  %15 = xor i32 %13, %14, !dbg !1337
  %16 = shl i32 %15, %10, !dbg !1338
  %17 = xor i32 %16, %11, !dbg !1339
  store i32 %17, i32* %8, align 4, !dbg !1339, !tbaa !879
  ret i32 %13, !dbg !1340
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1341 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1345, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i32 %1, metadata !1346, metadata !DIExpression()), !dbg !1348
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1349
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1345, metadata !DIExpression()), !dbg !1348
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1352
  %6 = load i32, i32* %5, align 4, !dbg !1352, !tbaa !1353
  call void @llvm.dbg.value(metadata i32 %6, metadata !1347, metadata !DIExpression()), !dbg !1348
  store i32 %1, i32* %5, align 4, !dbg !1354, !tbaa !1353
  ret i32 %6, !dbg !1355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1356 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1360, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()), !dbg !1363
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1364
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()), !dbg !1363
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1367
  store i32 10, i32* %6, align 8, !dbg !1368, !tbaa !1302
  %7 = icmp ne i8* %1, null, !dbg !1369
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1371
  br i1 %9, label %11, label %10, !dbg !1371

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1372
  unreachable, !dbg !1372

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1373
  store i8* %1, i8** %12, align 8, !dbg !1374, !tbaa !1375
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1376
  store i8* %2, i8** %13, align 8, !dbg !1377, !tbaa !1378
  ret void, !dbg !1379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1380 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1384, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %1, metadata !1385, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %2, metadata !1386, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i64 %3, metadata !1387, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1388, metadata !DIExpression()), !dbg !1392
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1393
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1393
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1389, metadata !DIExpression()), !dbg !1392
  %8 = tail call i32* @__errno_location() #28, !dbg !1394
  %9 = load i32, i32* %8, align 4, !dbg !1394, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %9, metadata !1390, metadata !DIExpression()), !dbg !1392
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1395
  %11 = load i32, i32* %10, align 8, !dbg !1395, !tbaa !1302
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1396
  %13 = load i32, i32* %12, align 4, !dbg !1396, !tbaa !1353
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1397
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1398
  %16 = load i8*, i8** %15, align 8, !dbg !1398, !tbaa !1375
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1399
  %18 = load i8*, i8** %17, align 8, !dbg !1399, !tbaa !1378
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %19, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i32 %9, i32* %8, align 4, !dbg !1401, !tbaa !879
  ret i64 %19, !dbg !1402
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1403 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1409, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %1, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %2, metadata !1411, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %3, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %4, metadata !1413, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %5, metadata !1414, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32* %6, metadata !1415, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %7, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %8, metadata !1417, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* null, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1422, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1423, metadata !DIExpression()), !dbg !1479
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1480
  %14 = icmp eq i64 %13, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i1 %14, metadata !1424, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1479
  %15 = lshr i32 %5, 1, !dbg !1482
  %16 = trunc i32 %15 to i8, !dbg !1482
  %17 = and i8 %16, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i8 %17, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1428, metadata !DIExpression()), !dbg !1479
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1483

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1484
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1485
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1486
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1487
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1479
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1488
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1489
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1490
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %38, metadata !1428, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %37, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %36, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %35, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %34, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %33, metadata !1423, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %32, metadata !1422, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %31, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %30, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %29, metadata !1417, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %28, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %27, metadata !1413, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1473), !dbg !1491
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
  ], !dbg !1492

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 5, metadata !1413, metadata !DIExpression()), !dbg !1479
  br label %92, !dbg !1493

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 5, metadata !1413, metadata !DIExpression()), !dbg !1479
  %42 = and i8 %35, 1, !dbg !1495
  %43 = icmp eq i8 %42, 0, !dbg !1495
  br i1 %43, label %44, label %92, !dbg !1493

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1497
  br i1 %45, label %92, label %46, !dbg !1500

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1497, !tbaa !866
  br label %92, !dbg !1497

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1501
  call void @llvm.dbg.value(metadata i8* %48, metadata !1416, metadata !DIExpression()), !dbg !1479
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %49, metadata !1417, metadata !DIExpression()), !dbg !1479
  br label %50, !dbg !1506

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1417, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %51, metadata !1416, metadata !DIExpression()), !dbg !1479
  %53 = and i8 %35, 1, !dbg !1507
  %54 = icmp eq i8 %53, 0, !dbg !1507
  br i1 %54, label %55, label %70, !dbg !1509

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1419, metadata !DIExpression()), !dbg !1479
  %56 = load i8, i8* %51, align 1, !dbg !1510, !tbaa !866
  %57 = icmp eq i8 %56, 0, !dbg !1513
  br i1 %57, label %70, label %58, !dbg !1513

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %61, metadata !1419, metadata !DIExpression()), !dbg !1479
  %62 = icmp ult i64 %61, %39, !dbg !1514
  br i1 %62, label %63, label %65, !dbg !1517

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1514
  store i8 %59, i8* %64, align 1, !dbg !1514, !tbaa !866
  br label %65, !dbg !1514

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %66, metadata !1419, metadata !DIExpression()), !dbg !1479
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1518
  call void @llvm.dbg.value(metadata i8* %67, metadata !1421, metadata !DIExpression()), !dbg !1479
  %68 = load i8, i8* %67, align 1, !dbg !1510, !tbaa !866
  %69 = icmp eq i8 %68, 0, !dbg !1513
  br i1 %69, label %70, label %58, !dbg !1513, !llvm.loop !1519

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1521
  call void @llvm.dbg.value(metadata i64 %71, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %52, metadata !1421, metadata !DIExpression()), !dbg !1479
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %72, metadata !1422, metadata !DIExpression()), !dbg !1479
  br label %92, !dbg !1523

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1423, metadata !DIExpression()), !dbg !1479
  br label %74, !dbg !1524

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %75, metadata !1423, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1425, metadata !DIExpression()), !dbg !1479
  br label %76, !dbg !1525

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1487
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %78, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %77, metadata !1423, metadata !DIExpression()), !dbg !1479
  %79 = and i8 %78, 1, !dbg !1526
  %80 = icmp eq i8 %79, 0, !dbg !1526
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1528
  br label %82, !dbg !1528

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1479
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1482
  call void @llvm.dbg.value(metadata i8 %84, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %83, metadata !1423, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 2, metadata !1413, metadata !DIExpression()), !dbg !1479
  %85 = and i8 %84, 1, !dbg !1529
  %86 = icmp eq i8 %85, 0, !dbg !1529
  br i1 %86, label %87, label %92, !dbg !1531

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1532
  br i1 %88, label %92, label %89, !dbg !1535

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1532, !tbaa !866
  br label %92, !dbg !1532

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1425, metadata !DIExpression()), !dbg !1479
  br label %92, !dbg !1536

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1537
  unreachable, !dbg !1537

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1521
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1479
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1479
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1479
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %100, metadata !1425, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %99, metadata !1423, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %98, metadata !1422, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %97, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %96, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %95, metadata !1417, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8* %94, metadata !1416, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %93, metadata !1413, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 0, metadata !1418, metadata !DIExpression()), !dbg !1479
  %101 = and i8 %99, 1
  %102 = icmp ne i8 %101, 0
  %103 = icmp ne i32 %93, 2
  %104 = and i1 %103, %102
  %105 = icmp ne i64 %98, 0
  %106 = and i1 %105, %104
  %107 = icmp ugt i64 %98, 1
  %108 = and i8 %100, 1
  %109 = icmp eq i8 %108, 0
  %110 = icmp eq i32 %93, 2
  %111 = or i1 %103, %109
  %112 = icmp ne i8 %108, 0
  %113 = and i1 %110, %112
  %114 = xor i1 %104, true
  %115 = and i1 %109, %114
  %116 = or i1 %25, %115
  %117 = and i8 %99, %100
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %105
  br label %121, !dbg !1538

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1539
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1521
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1484
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1488
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1489
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1490
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %128, metadata !1428, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %127, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %126, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %125, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %124, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %122, metadata !1418, metadata !DIExpression()), !dbg !1479
  %130 = icmp eq i64 %125, -1, !dbg !1540
  br i1 %130, label %131, label %135, !dbg !1541

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1542
  %133 = load i8, i8* %132, align 1, !dbg !1542, !tbaa !866
  %134 = icmp eq i8 %133, 0, !dbg !1543
  br i1 %134, label %587, label %137, !dbg !1544

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1545
  br i1 %136, label %587, label %137, !dbg !1544

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 0, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 0, metadata !1436, metadata !DIExpression()), !dbg !1546
  br i1 %106, label %138, label %153, !dbg !1547

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1549
  %140 = and i1 %107, %130, !dbg !1550
  br i1 %140, label %141, label %143, !dbg !1550

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1551
  call void @llvm.dbg.value(metadata i64 %142, metadata !1412, metadata !DIExpression()), !dbg !1479
  br label %143, !dbg !1552

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1552
  call void @llvm.dbg.value(metadata i64 %144, metadata !1412, metadata !DIExpression()), !dbg !1479
  %145 = icmp ugt i64 %139, %144, !dbg !1553
  br i1 %145, label %153, label %146, !dbg !1554

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1555
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1556
  %149 = icmp ne i32 %148, 0, !dbg !1557
  %150 = or i1 %149, %109, !dbg !1558
  %151 = xor i1 %149, true, !dbg !1558
  %152 = zext i1 %151 to i8, !dbg !1558
  br i1 %150, label %153, label %646, !dbg !1558

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1546
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1546
  call void @llvm.dbg.value(metadata i8 %156, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %154, metadata !1412, metadata !DIExpression()), !dbg !1479
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1559
  %158 = load i8, i8* %157, align 1, !dbg !1559, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %158, metadata !1429, metadata !DIExpression()), !dbg !1546
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
    i8 37, label %473
    i8 43, label %473
    i8 44, label %473
    i8 45, label %473
    i8 46, label %473
    i8 47, label %473
    i8 48, label %473
    i8 49, label %473
    i8 50, label %473
    i8 51, label %473
    i8 52, label %473
    i8 53, label %473
    i8 54, label %473
    i8 55, label %473
    i8 56, label %473
    i8 57, label %473
    i8 58, label %473
    i8 65, label %473
    i8 66, label %473
    i8 67, label %473
    i8 68, label %473
    i8 69, label %473
    i8 70, label %473
    i8 71, label %473
    i8 72, label %473
    i8 73, label %473
    i8 74, label %473
    i8 75, label %473
    i8 76, label %473
    i8 77, label %473
    i8 78, label %473
    i8 79, label %473
    i8 80, label %473
    i8 81, label %473
    i8 82, label %473
    i8 83, label %473
    i8 84, label %473
    i8 85, label %473
    i8 86, label %473
    i8 87, label %473
    i8 88, label %473
    i8 89, label %473
    i8 90, label %473
    i8 93, label %473
    i8 95, label %473
    i8 97, label %473
    i8 98, label %473
    i8 99, label %473
    i8 100, label %473
    i8 101, label %473
    i8 102, label %473
    i8 103, label %473
    i8 104, label %473
    i8 105, label %473
    i8 106, label %473
    i8 107, label %473
    i8 108, label %473
    i8 109, label %473
    i8 110, label %473
    i8 111, label %473
    i8 112, label %473
    i8 113, label %473
    i8 114, label %473
    i8 115, label %473
    i8 116, label %473
    i8 117, label %473
    i8 118, label %473
    i8 119, label %473
    i8 120, label %473
    i8 121, label %473
    i8 122, label %473
  ], !dbg !1560

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1561

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1562

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1435, metadata !DIExpression()), !dbg !1546
  %162 = and i8 %126, 1, !dbg !1566
  %163 = icmp eq i8 %162, 0, !dbg !1566
  %164 = and i1 %110, %163, !dbg !1566
  br i1 %164, label %165, label %181, !dbg !1566

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1568
  br i1 %166, label %167, label %169, !dbg !1572

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1568
  store i8 39, i8* %168, align 1, !dbg !1568, !tbaa !866
  br label %169, !dbg !1568

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %170, metadata !1419, metadata !DIExpression()), !dbg !1479
  %171 = icmp ult i64 %170, %129, !dbg !1573
  br i1 %171, label %172, label %174, !dbg !1576

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1573
  store i8 36, i8* %173, align 1, !dbg !1573, !tbaa !866
  br label %174, !dbg !1573

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %175, metadata !1419, metadata !DIExpression()), !dbg !1479
  %176 = icmp ult i64 %175, %129, !dbg !1577
  br i1 %176, label %177, label %179, !dbg !1580

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1577
  store i8 39, i8* %178, align 1, !dbg !1577, !tbaa !866
  br label %179, !dbg !1577

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %180, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %181, !dbg !1581

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1479
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %183, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %182, metadata !1419, metadata !DIExpression()), !dbg !1479
  %184 = icmp ult i64 %182, %129, !dbg !1582
  br i1 %184, label %185, label %187, !dbg !1585

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1582
  store i8 92, i8* %186, align 1, !dbg !1582, !tbaa !866
  br label %187, !dbg !1582

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1585
  call void @llvm.dbg.value(metadata i64 %188, metadata !1419, metadata !DIExpression()), !dbg !1479
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1586
  br i1 %191, label %192, label %473, !dbg !1586

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1588
  %194 = load i8, i8* %193, align 1, !dbg !1588, !tbaa !866
  %195 = add i8 %194, -48, !dbg !1589
  %196 = icmp ult i8 %195, 10, !dbg !1589
  br i1 %196, label %197, label %473, !dbg !1589

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1590
  br i1 %198, label %199, label %201, !dbg !1594

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1590
  store i8 48, i8* %200, align 1, !dbg !1590, !tbaa !866
  br label %201, !dbg !1590

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %202, metadata !1419, metadata !DIExpression()), !dbg !1479
  %203 = icmp ult i64 %202, %129, !dbg !1595
  br i1 %203, label %204, label %206, !dbg !1598

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1595
  store i8 48, i8* %205, align 1, !dbg !1595, !tbaa !866
  br label %206, !dbg !1595

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %207, metadata !1419, metadata !DIExpression()), !dbg !1479
  br label %473, !dbg !1599

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1600

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1601

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1602

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1604
  br i1 %214, label %215, label %473, !dbg !1604

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1606
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1607
  %218 = load i8, i8* %217, align 1, !dbg !1607, !tbaa !866
  %219 = icmp eq i8 %218, 63, !dbg !1608
  br i1 %219, label %220, label %473, !dbg !1609

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1610
  %222 = load i8, i8* %221, align 1, !dbg !1610, !tbaa !866
  %223 = sext i8 %222 to i32, !dbg !1610
  switch i32 %223, label %473 [
    i32 33, label %224
    i32 39, label %224
    i32 40, label %224
    i32 41, label %224
    i32 45, label %224
    i32 47, label %224
    i32 60, label %224
    i32 61, label %224
    i32 62, label %224
  ], !dbg !1611

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1612

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 undef, metadata !1418, metadata !DIExpression()), !dbg !1479
  %226 = icmp ult i64 %123, %129, !dbg !1614
  br i1 %226, label %227, label %229, !dbg !1617

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1614
  store i8 63, i8* %228, align 1, !dbg !1614, !tbaa !866
  br label %229, !dbg !1614

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %230, metadata !1419, metadata !DIExpression()), !dbg !1479
  %231 = icmp ult i64 %230, %129, !dbg !1618
  br i1 %231, label %232, label %234, !dbg !1621

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1618
  store i8 34, i8* %233, align 1, !dbg !1618, !tbaa !866
  br label %234, !dbg !1618

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1621
  call void @llvm.dbg.value(metadata i64 %235, metadata !1419, metadata !DIExpression()), !dbg !1479
  %236 = icmp ult i64 %235, %129, !dbg !1622
  br i1 %236, label %237, label %239, !dbg !1625

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1622
  store i8 34, i8* %238, align 1, !dbg !1622, !tbaa !866
  br label %239, !dbg !1622

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %240, metadata !1419, metadata !DIExpression()), !dbg !1479
  %241 = icmp ult i64 %240, %129, !dbg !1626
  br i1 %241, label %242, label %244, !dbg !1629

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1626
  store i8 63, i8* %243, align 1, !dbg !1626, !tbaa !866
  br label %244, !dbg !1626

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1629
  call void @llvm.dbg.value(metadata i64 %245, metadata !1419, metadata !DIExpression()), !dbg !1479
  br label %473, !dbg !1630

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1433, metadata !DIExpression()), !dbg !1546
  br label %256, !dbg !1631

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1433, metadata !DIExpression()), !dbg !1546
  br label %256, !dbg !1632

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1433, metadata !DIExpression()), !dbg !1546
  br label %254, !dbg !1633

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1433, metadata !DIExpression()), !dbg !1546
  br label %254, !dbg !1634

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1433, metadata !DIExpression()), !dbg !1546
  br label %256, !dbg !1635

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1433, metadata !DIExpression()), !dbg !1546
  br i1 %110, label %252, label %253, !dbg !1636

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1637

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1640

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %255, metadata !1433, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.label(metadata !1474), !dbg !1643
  br i1 %111, label %256, label %631, !dbg !1644

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1642
  call void @llvm.dbg.value(metadata i8 %257, metadata !1433, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.label(metadata !1475), !dbg !1646
  br i1 %102, label %495, label %473, !dbg !1647

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1648

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1649, !tbaa !866
  %261 = icmp eq i8 %260, 0, !dbg !1651
  br i1 %261, label %262, label %473, !dbg !1652

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1653
  br i1 %263, label %264, label %473, !dbg !1655

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1436, metadata !DIExpression()), !dbg !1546
  br label %265, !dbg !1656

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1546
  call void @llvm.dbg.value(metadata i8 %266, metadata !1436, metadata !DIExpression()), !dbg !1546
  br i1 %111, label %473, label %631, !dbg !1657

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1436, metadata !DIExpression()), !dbg !1546
  br i1 %110, label %268, label %473, !dbg !1659

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1660

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1663
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1665
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1665
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %274, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %273, metadata !1420, metadata !DIExpression()), !dbg !1479
  %275 = icmp ult i64 %123, %274, !dbg !1666
  br i1 %275, label %276, label %278, !dbg !1669

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1666
  store i8 39, i8* %277, align 1, !dbg !1666, !tbaa !866
  br label %278, !dbg !1666

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %279, metadata !1419, metadata !DIExpression()), !dbg !1479
  %280 = icmp ult i64 %279, %274, !dbg !1670
  br i1 %280, label %281, label %283, !dbg !1673

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1670
  store i8 92, i8* %282, align 1, !dbg !1670, !tbaa !866
  br label %283, !dbg !1670

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %284, metadata !1419, metadata !DIExpression()), !dbg !1479
  %285 = icmp ult i64 %284, %274, !dbg !1674
  br i1 %285, label %286, label %288, !dbg !1677

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1674
  store i8 39, i8* %287, align 1, !dbg !1674, !tbaa !866
  br label %288, !dbg !1674

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %289, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %473, !dbg !1678

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1679

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1437, metadata !DIExpression()), !dbg !1680
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1681
  %293 = load i16*, i16** %292, align 8, !dbg !1681, !tbaa !737
  %294 = zext i8 %158 to i64, !dbg !1681
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1681
  %296 = load i16, i16* %295, align 2, !dbg !1681, !tbaa !1013
  %297 = lshr i16 %296, 14, !dbg !1683
  %298 = trunc i16 %297 to i8, !dbg !1683
  %299 = and i8 %298, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i8 %354, metadata !1440, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %355, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %306, metadata !1412, metadata !DIExpression()), !dbg !1479
  %300 = icmp eq i8 %299, 0, !dbg !1684
  call void @llvm.dbg.value(metadata i1 %357, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1546
  br label %359, !dbg !1685

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1686
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1441, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8* %23, metadata !1688, metadata !DIExpression()) #24, !dbg !1695
  call void @llvm.dbg.value(metadata i32 0, metadata !1693, metadata !DIExpression()) #24, !dbg !1695
  call void @llvm.dbg.value(metadata i64 8, metadata !1694, metadata !DIExpression()) #24, !dbg !1695
  store i64 0, i64* %10, align 8, !dbg !1697
  call void @llvm.dbg.value(metadata i64 0, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8 1, metadata !1440, metadata !DIExpression()), !dbg !1680
  %302 = icmp eq i64 %154, -1, !dbg !1698
  br i1 %302, label %303, label %305, !dbg !1700

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %304, metadata !1412, metadata !DIExpression()), !dbg !1479
  br label %305, !dbg !1702

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1546
  call void @llvm.dbg.value(metadata i64 %306, metadata !1412, metadata !DIExpression()), !dbg !1479
  br label %307, !dbg !1703

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1704
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1705
  call void @llvm.dbg.value(metadata i8 %309, metadata !1440, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %308, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1706
  %310 = add i64 %308, %122, !dbg !1707
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1708
  %312 = sub i64 %306, %310, !dbg !1709
  call void @llvm.dbg.value(metadata i32* %12, metadata !1459, metadata !DIExpression(DW_OP_deref)), !dbg !1710
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1711
  call void @llvm.dbg.value(metadata i64 %313, metadata !1462, metadata !DIExpression()), !dbg !1710
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1712

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1437, metadata !DIExpression()), !dbg !1680
  %315 = icmp ugt i64 %306, %310, !dbg !1713
  br i1 %315, label %316, label %341, !dbg !1715

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1716
  br label %318, !dbg !1716

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1437, metadata !DIExpression()), !dbg !1680
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1717
  %322 = load i8, i8* %321, align 1, !dbg !1717, !tbaa !866
  %323 = icmp eq i8 %322, 0, !dbg !1715
  br i1 %323, label %341, label %324, !dbg !1716

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %325, metadata !1437, metadata !DIExpression()), !dbg !1680
  %326 = add i64 %325, %122, !dbg !1719
  %327 = icmp ult i64 %326, %306, !dbg !1713
  br i1 %327, label %318, label %341, !dbg !1715, !llvm.loop !1720

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1721
  call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1722
  br i1 %330, label %331, label %344, !dbg !1721

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1463, metadata !DIExpression()), !dbg !1722
  %333 = add i64 %332, %310, !dbg !1723
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1726
  %335 = load i8, i8* %334, align 1, !dbg !1726, !tbaa !866
  %336 = sext i8 %335 to i32, !dbg !1726
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1727

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %338, metadata !1463, metadata !DIExpression()), !dbg !1722
  %339 = icmp eq i64 %338, %313, !dbg !1729
  br i1 %339, label %344, label %331, !dbg !1730, !llvm.loop !1731

340:                                              ; preds = %307
  br label %341, !dbg !1733

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1440, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 undef, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1733
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1734, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %345, metadata !1459, metadata !DIExpression()), !dbg !1710
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1736
  %347 = icmp eq i32 %346, 0, !dbg !1736
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1737
  call void @llvm.dbg.value(metadata i8 %348, metadata !1440, metadata !DIExpression()), !dbg !1680
  %349 = add i64 %313, %308, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %349, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1733
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1739
  %351 = icmp eq i32 %350, 0, !dbg !1740
  br i1 %351, label %307, label %353, !dbg !1741, !llvm.loop !1742

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1440, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 undef, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1733
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1744
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1744
  call void @llvm.dbg.value(metadata i8 %354, metadata !1440, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %355, metadata !1437, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 %306, metadata !1412, metadata !DIExpression()), !dbg !1479
  %356 = and i8 %354, 1, !dbg !1684
  %357 = icmp eq i8 %356, 0, !dbg !1684
  call void @llvm.dbg.value(metadata i1 %357, metadata !1436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1546
  %358 = icmp ugt i64 %355, 1, !dbg !1745
  br i1 %358, label %367, label %359, !dbg !1685

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1746
  br i1 %364, label %367, label %365, !dbg !1746

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i8 %472, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %441, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %440, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %439, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %438, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %371, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %437, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %375, metadata !1418, metadata !DIExpression()), !dbg !1479
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %372, metadata !1470, metadata !DIExpression()), !dbg !1748
  %373 = and i1 %102, %368
  br label %374, !dbg !1749

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1539
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1479
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1488
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1546
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1546
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1750
  call void @llvm.dbg.value(metadata i8 %380, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %379, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %378, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %377, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %376, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %375, metadata !1418, metadata !DIExpression()), !dbg !1479
  br i1 %373, label %381, label %427, !dbg !1751

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1756

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1435, metadata !DIExpression()), !dbg !1546
  %383 = and i8 %377, 1, !dbg !1759
  %384 = icmp eq i8 %383, 0, !dbg !1759
  %385 = and i1 %110, %384, !dbg !1759
  br i1 %385, label %386, label %402, !dbg !1759

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1761
  br i1 %387, label %388, label %390, !dbg !1765

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1761
  store i8 39, i8* %389, align 1, !dbg !1761, !tbaa !866
  br label %390, !dbg !1761

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %391, metadata !1419, metadata !DIExpression()), !dbg !1479
  %392 = icmp ult i64 %391, %129, !dbg !1766
  br i1 %392, label %393, label %395, !dbg !1769

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1766
  store i8 36, i8* %394, align 1, !dbg !1766, !tbaa !866
  br label %395, !dbg !1766

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %396, metadata !1419, metadata !DIExpression()), !dbg !1479
  %397 = icmp ult i64 %396, %129, !dbg !1770
  br i1 %397, label %398, label %400, !dbg !1773

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1770
  store i8 39, i8* %399, align 1, !dbg !1770, !tbaa !866
  br label %400, !dbg !1770

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %401, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %402, !dbg !1774

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1479
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %404, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %403, metadata !1419, metadata !DIExpression()), !dbg !1479
  %405 = icmp ult i64 %403, %129, !dbg !1775
  br i1 %405, label %406, label %408, !dbg !1778

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1775
  store i8 92, i8* %407, align 1, !dbg !1775, !tbaa !866
  br label %408, !dbg !1775

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %409, metadata !1419, metadata !DIExpression()), !dbg !1479
  %410 = icmp ult i64 %409, %129, !dbg !1779
  br i1 %410, label %411, label %415, !dbg !1782

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1779
  %413 = or i8 %412, 48, !dbg !1779
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1779
  store i8 %413, i8* %414, align 1, !dbg !1779, !tbaa !866
  br label %415, !dbg !1779

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %416, metadata !1419, metadata !DIExpression()), !dbg !1479
  %417 = icmp ult i64 %416, %129, !dbg !1783
  br i1 %417, label %418, label %423, !dbg !1786

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1783
  %420 = and i8 %419, 7, !dbg !1783
  %421 = or i8 %420, 48, !dbg !1783
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1783
  store i8 %421, i8* %422, align 1, !dbg !1783, !tbaa !866
  br label %423, !dbg !1783

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1786
  call void @llvm.dbg.value(metadata i64 %424, metadata !1419, metadata !DIExpression()), !dbg !1479
  %425 = and i8 %378, 7, !dbg !1787
  %426 = or i8 %425, 48, !dbg !1788
  call void @llvm.dbg.value(metadata i8 %426, metadata !1429, metadata !DIExpression()), !dbg !1546
  br label %436, !dbg !1789

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1790
  %429 = icmp eq i8 %428, 0, !dbg !1790
  br i1 %429, label %436, label %430, !dbg !1792

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1793
  br i1 %431, label %432, label %434, !dbg !1797

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1793
  store i8 92, i8* %433, align 1, !dbg !1793, !tbaa !866
  br label %434, !dbg !1793

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %435, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1434, metadata !DIExpression()), !dbg !1546
  br label %436, !dbg !1798

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1479
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1488
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1546
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1546
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1546
  call void @llvm.dbg.value(metadata i8 %441, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %440, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %439, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %438, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %437, metadata !1419, metadata !DIExpression()), !dbg !1479
  %442 = add i64 %375, 1, !dbg !1799
  %443 = icmp ugt i64 %372, %442, !dbg !1801
  br i1 %443, label %444, label %471, !dbg !1802

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1803
  %446 = icmp ne i8 %445, 0, !dbg !1803
  %447 = and i8 %441, 1, !dbg !1803
  %448 = icmp eq i8 %447, 0, !dbg !1803
  %449 = and i1 %446, %448, !dbg !1803
  br i1 %449, label %450, label %461, !dbg !1803

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1806
  br i1 %451, label %452, label %454, !dbg !1810

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1806
  store i8 39, i8* %453, align 1, !dbg !1806, !tbaa !866
  br label %454, !dbg !1806

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %455, metadata !1419, metadata !DIExpression()), !dbg !1479
  %456 = icmp ult i64 %455, %129, !dbg !1811
  br i1 %456, label %457, label %459, !dbg !1814

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1811
  store i8 39, i8* %458, align 1, !dbg !1811, !tbaa !866
  br label %459, !dbg !1811

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %460, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %461, !dbg !1815

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1816
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %463, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %462, metadata !1419, metadata !DIExpression()), !dbg !1479
  %464 = icmp ult i64 %462, %129, !dbg !1817
  br i1 %464, label %465, label %467, !dbg !1820

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1817
  store i8 %439, i8* %466, align 1, !dbg !1817, !tbaa !866
  br label %467, !dbg !1817

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %468, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %442, metadata !1418, metadata !DIExpression()), !dbg !1479
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1821
  %470 = load i8, i8* %469, align 1, !dbg !1821, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %470, metadata !1429, metadata !DIExpression()), !dbg !1546
  br label %374, !dbg !1822, !llvm.loop !1823

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i8 %472, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %441, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %440, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %439, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %438, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %371, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %437, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %375, metadata !1418, metadata !DIExpression()), !dbg !1479
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1539
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1479
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1484
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1826
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1479
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1479
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1546
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1546
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1546
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %482, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %481, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %156, metadata !1434, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %480, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %479, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %478, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %477, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %476, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %475, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %474, metadata !1418, metadata !DIExpression()), !dbg !1479
  br i1 %116, label %494, label %484, !dbg !1827

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1829
  %486 = zext i8 %485 to i64, !dbg !1829
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1830
  %488 = load i32, i32* %487, align 4, !dbg !1830, !tbaa !879
  %489 = and i8 %480, 31, !dbg !1831
  %490 = zext i8 %489 to i32, !dbg !1831
  %491 = shl nuw i32 1, %490, !dbg !1832
  %492 = and i32 %488, %491, !dbg !1832
  %493 = icmp eq i32 %492, 0, !dbg !1832
  br i1 %493, label %494, label %495, !dbg !1833

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1834

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1835
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1479
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1484
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1826
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1488
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1489
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1546
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1546
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %503, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %502, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %501, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %500, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %499, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %498, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %497, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %496, metadata !1418, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1476), !dbg !1836
  br i1 %109, label %505, label %635, !dbg !1837

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1435, metadata !DIExpression()), !dbg !1546
  %506 = and i8 %500, 1, !dbg !1839
  %507 = icmp eq i8 %506, 0, !dbg !1839
  %508 = and i1 %110, %507, !dbg !1839
  br i1 %508, label %509, label %525, !dbg !1839

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1841
  br i1 %510, label %511, label %513, !dbg !1845

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1841
  store i8 39, i8* %512, align 1, !dbg !1841, !tbaa !866
  br label %513, !dbg !1841

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %514, metadata !1419, metadata !DIExpression()), !dbg !1479
  %515 = icmp ult i64 %514, %504, !dbg !1846
  br i1 %515, label %516, label %518, !dbg !1849

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1846
  store i8 36, i8* %517, align 1, !dbg !1846, !tbaa !866
  br label %518, !dbg !1846

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %519, metadata !1419, metadata !DIExpression()), !dbg !1479
  %520 = icmp ult i64 %519, %504, !dbg !1850
  br i1 %520, label %521, label %523, !dbg !1853

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1850
  store i8 39, i8* %522, align 1, !dbg !1850, !tbaa !866
  br label %523, !dbg !1850

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %524, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 1, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %525, !dbg !1854

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1546
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %527, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %526, metadata !1419, metadata !DIExpression()), !dbg !1479
  %528 = icmp ult i64 %526, %504, !dbg !1855
  br i1 %528, label %529, label %531, !dbg !1858

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1855
  store i8 92, i8* %530, align 1, !dbg !1855, !tbaa !866
  br label %531, !dbg !1855

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %543, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %542, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %541, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %540, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %539, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %538, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %537, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %536, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %535, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %534, metadata !1418, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1477), !dbg !1859
  br label %560, !dbg !1860

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1835
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1479
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1484
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1826
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1488
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1489
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1863
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1546
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1546
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %542, metadata !1436, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %541, metadata !1435, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %540, metadata !1429, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8 %539, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %538, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %537, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %536, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %535, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %534, metadata !1418, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1477), !dbg !1859
  %544 = and i8 %538, 1, !dbg !1860
  %545 = icmp ne i8 %544, 0, !dbg !1860
  %546 = and i8 %541, 1, !dbg !1860
  %547 = icmp eq i8 %546, 0, !dbg !1860
  %548 = and i1 %545, %547, !dbg !1860
  br i1 %548, label %549, label %560, !dbg !1860

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1864
  br i1 %550, label %551, label %553, !dbg !1868

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1864
  store i8 39, i8* %552, align 1, !dbg !1864, !tbaa !866
  br label %553, !dbg !1864

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %554, metadata !1419, metadata !DIExpression()), !dbg !1479
  %555 = icmp ult i64 %554, %543, !dbg !1869
  br i1 %555, label %556, label %558, !dbg !1872

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1869
  store i8 39, i8* %557, align 1, !dbg !1869, !tbaa !866
  br label %558, !dbg !1869

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %559, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 0, metadata !1426, metadata !DIExpression()), !dbg !1479
  br label %560, !dbg !1873

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1546
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1479
  call void @llvm.dbg.value(metadata i8 %569, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %568, metadata !1419, metadata !DIExpression()), !dbg !1479
  %570 = icmp ult i64 %568, %561, !dbg !1874
  br i1 %570, label %571, label %573, !dbg !1877

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1874
  store i8 %563, i8* %572, align 1, !dbg !1874, !tbaa !866
  br label %573, !dbg !1874

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %574, metadata !1419, metadata !DIExpression()), !dbg !1479
  %575 = icmp eq i8 %562, 0, !dbg !1878
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %576, metadata !1428, metadata !DIExpression()), !dbg !1479
  br label %577, !dbg !1881

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1835
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1479
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1484
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1826
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1488
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1479
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1490
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %584, metadata !1428, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %583, metadata !1427, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %582, metadata !1426, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %581, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %580, metadata !1420, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %579, metadata !1419, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %578, metadata !1418, metadata !DIExpression()), !dbg !1479
  %586 = add i64 %578, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %586, metadata !1418, metadata !DIExpression()), !dbg !1479
  br label %121, !dbg !1883, !llvm.loop !1884

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1886
  %590 = and i1 %110, %589, !dbg !1888
  %591 = xor i1 %590, true, !dbg !1888
  %592 = or i1 %109, %591, !dbg !1888
  br i1 %592, label %593, label %635, !dbg !1888

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1889
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1889
  br i1 %597, label %598, label %607, !dbg !1889

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1891
  %600 = icmp eq i8 %599, 0, !dbg !1891
  br i1 %600, label %603, label %601, !dbg !1894

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1895
  br label %652, !dbg !1896

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1897
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1899
  br i1 %606, label %26, label %607, !dbg !1899

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1900
  %610 = and i1 %609, %608, !dbg !1902
  br i1 %610, label %611, label %626, !dbg !1902

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %123, metadata !1419, metadata !DIExpression()), !dbg !1479
  %612 = load i8, i8* %97, align 1, !dbg !1903, !tbaa !866
  %613 = icmp eq i8 %612, 0, !dbg !1906
  br i1 %613, label %626, label %614, !dbg !1906

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1421, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %617, metadata !1419, metadata !DIExpression()), !dbg !1479
  %618 = icmp ult i64 %617, %129, !dbg !1907
  br i1 %618, label %619, label %621, !dbg !1910

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1907
  store i8 %615, i8* %620, align 1, !dbg !1907, !tbaa !866
  br label %621, !dbg !1907

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %622, metadata !1419, metadata !DIExpression()), !dbg !1479
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %623, metadata !1421, metadata !DIExpression()), !dbg !1479
  %624 = load i8, i8* %623, align 1, !dbg !1903, !tbaa !866
  %625 = icmp eq i8 %624, 0, !dbg !1906
  br i1 %625, label %626, label %614, !dbg !1906, !llvm.loop !1912

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1521
  call void @llvm.dbg.value(metadata i64 %627, metadata !1419, metadata !DIExpression()), !dbg !1479
  %628 = icmp ult i64 %627, %129, !dbg !1914
  br i1 %628, label %629, label %652, !dbg !1916

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1917
  store i8 0, i8* %630, align 1, !dbg !1918, !tbaa !866
  br label %652, !dbg !1917

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %637, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1478), !dbg !1919
  %633 = icmp eq i8 %101, 0, !dbg !1920
  %634 = select i1 %633, i32 2, i32 4, !dbg !1920
  br label %642, !dbg !1920

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1410, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i64 %637, metadata !1412, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.label(metadata !1478), !dbg !1919
  %639 = icmp eq i32 %93, 2, !dbg !1922
  %640 = icmp eq i8 %636, 0, !dbg !1920
  %641 = select i1 %640, i32 2, i32 4, !dbg !1920
  br i1 %639, label %642, label %646, !dbg !1920

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1920

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1413, metadata !DIExpression()), !dbg !1479
  %650 = and i32 %5, -3, !dbg !1923
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1924
  br label %652, !dbg !1925

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1926
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1931, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i32 %1, metadata !1932, metadata !DIExpression()), !dbg !1935
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1936
  call void @llvm.dbg.value(metadata i8* %3, metadata !1933, metadata !DIExpression()), !dbg !1935
  %4 = icmp eq i8* %3, %0, !dbg !1937
  br i1 %4, label %5, label %72, !dbg !1939

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1940
  call void @llvm.dbg.value(metadata i8* %6, metadata !1934, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i8* %6, metadata !1941, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* undef, metadata !1947, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 85, metadata !1948, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 84, metadata !1949, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 70, metadata !1950, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 45, metadata !1951, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 56, metadata !1952, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1953, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1955, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8 0, metadata !1956, metadata !DIExpression()), !dbg !1957
  %7 = load i8, i8* %6, align 1, !dbg !1960, !tbaa !866
  %8 = and i8 %7, -33, !dbg !1960
  %9 = sext i8 %8 to i32, !dbg !1960
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1960

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1962, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8* undef, metadata !1967, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 84, metadata !1968, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 70, metadata !1969, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 45, metadata !1970, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 56, metadata !1971, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !1976
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1980
  %12 = load i8, i8* %11, align 1, !dbg !1980, !tbaa !866
  %13 = and i8 %12, -33, !dbg !1980
  %14 = icmp eq i8 %13, 84, !dbg !1980
  br i1 %14, label %15, label %69, !dbg !1980

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1982, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* undef, metadata !1987, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 70, metadata !1988, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 45, metadata !1989, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 56, metadata !1990, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1992, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !1995
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1999
  %17 = load i8, i8* %16, align 1, !dbg !1999, !tbaa !866
  %18 = and i8 %17, -33, !dbg !1999
  %19 = icmp eq i8 %18, 70, !dbg !1999
  br i1 %19, label %20, label %69, !dbg !1999

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2001, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8* undef, metadata !2006, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 45, metadata !2007, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 56, metadata !2008, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !2009, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !2010, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2013
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2017
  %22 = load i8, i8* %21, align 1, !dbg !2017, !tbaa !866
  %23 = icmp eq i8 %22, 45, !dbg !2017
  br i1 %23, label %24, label %69, !dbg !2019

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2020, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8* undef, metadata !2025, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 56, metadata !2026, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !2027, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2031
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2035
  %26 = load i8, i8* %25, align 1, !dbg !2035, !tbaa !866
  %27 = icmp eq i8 %26, 56, !dbg !2035
  br i1 %27, label %28, label %69, !dbg !2037

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2038, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8* undef, metadata !2043, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2045, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2048
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2052
  %30 = load i8, i8* %29, align 1, !dbg !2052, !tbaa !866
  %31 = icmp eq i8 %30, 0, !dbg !2052
  br i1 %31, label %32, label %69, !dbg !2054

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2055, !tbaa !866
  %34 = icmp eq i8 %33, 96, !dbg !2056
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2055
  br label %72, !dbg !2057

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1962, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8* undef, metadata !1967, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 66, metadata !1968, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 49, metadata !1969, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 56, metadata !1970, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 48, metadata !1971, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 51, metadata !1972, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 48, metadata !1973, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !1974, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !1975, metadata !DIExpression()), !dbg !2058
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2062
  %38 = load i8, i8* %37, align 1, !dbg !2062, !tbaa !866
  %39 = and i8 %38, -33, !dbg !2062
  %40 = icmp eq i8 %39, 66, !dbg !2062
  br i1 %40, label %41, label %69, !dbg !2062

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1982, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* undef, metadata !1987, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 49, metadata !1988, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 56, metadata !1989, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 48, metadata !1990, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 51, metadata !1991, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 48, metadata !1992, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2063
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2065
  %43 = load i8, i8* %42, align 1, !dbg !2065, !tbaa !866
  %44 = icmp eq i8 %43, 49, !dbg !2065
  br i1 %44, label %45, label %69, !dbg !2066

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2001, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* undef, metadata !2006, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 56, metadata !2007, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 48, metadata !2008, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 51, metadata !2009, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 48, metadata !2010, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2011, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8 0, metadata !2012, metadata !DIExpression()), !dbg !2067
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2069
  %47 = load i8, i8* %46, align 1, !dbg !2069, !tbaa !866
  %48 = icmp eq i8 %47, 56, !dbg !2069
  br i1 %48, label %49, label %69, !dbg !2070

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2020, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* undef, metadata !2025, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 48, metadata !2026, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 51, metadata !2027, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 48, metadata !2028, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2029, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8 0, metadata !2030, metadata !DIExpression()), !dbg !2071
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2073
  %51 = load i8, i8* %50, align 1, !dbg !2073, !tbaa !866
  %52 = icmp eq i8 %51, 48, !dbg !2073
  br i1 %52, label %53, label %69, !dbg !2074

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2038, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* undef, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 51, metadata !2044, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 48, metadata !2045, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2046, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2075
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2077
  %55 = load i8, i8* %54, align 1, !dbg !2077, !tbaa !866
  %56 = icmp eq i8 %55, 51, !dbg !2077
  br i1 %56, label %57, label %69, !dbg !2078

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2079, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8* undef, metadata !2084, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 48, metadata !2085, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2086, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2087, metadata !DIExpression()), !dbg !2088
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2092
  %59 = load i8, i8* %58, align 1, !dbg !2092, !tbaa !866
  %60 = icmp eq i8 %59, 48, !dbg !2092
  br i1 %60, label %61, label %69, !dbg !2094

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2095, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* undef, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2103
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2107
  %63 = load i8, i8* %62, align 1, !dbg !2107, !tbaa !866
  %64 = icmp eq i8 %63, 0, !dbg !2107
  br i1 %64, label %65, label %69, !dbg !2109

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2110, !tbaa !866
  %67 = icmp eq i8 %66, 96, !dbg !2111
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2110
  br label %72, !dbg !2112

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2113
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2114
  br label %72, !dbg !2115

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1935
  ret i8* %73, !dbg !2116
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2117 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2121 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2127 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2131, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %1, metadata !2132, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2133, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()) #24, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %1, metadata !2140, metadata !DIExpression()) #24, !dbg !2148
  call void @llvm.dbg.value(metadata i64* null, metadata !2141, metadata !DIExpression()) #24, !dbg !2148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2142, metadata !DIExpression()) #24, !dbg !2148
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2150
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2150
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression()) #24, !dbg !2148
  %6 = tail call i32* @__errno_location() #28, !dbg !2151
  %7 = load i32, i32* %6, align 4, !dbg !2151, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %7, metadata !2144, metadata !DIExpression()) #24, !dbg !2148
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2152
  %9 = load i32, i32* %8, align 4, !dbg !2152, !tbaa !1353
  %10 = or i32 %9, 1, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %10, metadata !2145, metadata !DIExpression()) #24, !dbg !2148
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2154
  %12 = load i32, i32* %11, align 8, !dbg !2154, !tbaa !1302
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2155
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2156
  %15 = load i8*, i8** %14, align 8, !dbg !2156, !tbaa !1375
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2157
  %17 = load i8*, i8** %16, align 8, !dbg !2157, !tbaa !1378
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !2158
  %19 = add i64 %18, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %19, metadata !2146, metadata !DIExpression()) #24, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %19, metadata !2160, metadata !DIExpression()) #24, !dbg !2165
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !2167
  call void @llvm.dbg.value(metadata i8* %20, metadata !2147, metadata !DIExpression()) #24, !dbg !2148
  %21 = load i32, i32* %11, align 8, !dbg !2168, !tbaa !1302
  %22 = load i8*, i8** %14, align 8, !dbg !2169, !tbaa !1375
  %23 = load i8*, i8** %16, align 8, !dbg !2170, !tbaa !1378
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !2171
  store i32 %7, i32* %6, align 4, !dbg !2172, !tbaa !879
  ret i8* %20, !dbg !2173
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2136 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2140, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64* %2, metadata !2141, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2142, metadata !DIExpression()), !dbg !2174
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2175
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2143, metadata !DIExpression()), !dbg !2174
  %7 = tail call i32* @__errno_location() #28, !dbg !2176
  %8 = load i32, i32* %7, align 4, !dbg !2176, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %8, metadata !2144, metadata !DIExpression()), !dbg !2174
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2177
  %10 = load i32, i32* %9, align 4, !dbg !2177, !tbaa !1353
  %11 = icmp eq i64* %2, null, !dbg !2178
  %12 = zext i1 %11 to i32, !dbg !2178
  %13 = or i32 %10, %12, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %13, metadata !2145, metadata !DIExpression()), !dbg !2174
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2180
  %15 = load i32, i32* %14, align 8, !dbg !2180, !tbaa !1302
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2181
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2182
  %18 = load i8*, i8** %17, align 8, !dbg !2182, !tbaa !1375
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2183
  %20 = load i8*, i8** %19, align 8, !dbg !2183, !tbaa !1378
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2184
  %22 = add i64 %21, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %22, metadata !2146, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %22, metadata !2160, metadata !DIExpression()) #24, !dbg !2186
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !2188
  call void @llvm.dbg.value(metadata i8* %23, metadata !2147, metadata !DIExpression()), !dbg !2174
  %24 = load i32, i32* %14, align 8, !dbg !2189, !tbaa !1302
  %25 = load i8*, i8** %17, align 8, !dbg !2190, !tbaa !1375
  %26 = load i8*, i8** %19, align 8, !dbg !2191, !tbaa !1378
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2192
  store i32 %8, i32* %7, align 4, !dbg !2193, !tbaa !879
  br i1 %11, label %29, label %28, !dbg !2194

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2195, !tbaa !964
  br label %29, !dbg !2197

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2199 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2203, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 1, metadata !2202, metadata !DIExpression()), !dbg !2204
  %2 = load i32, i32* @nslots, align 4, !dbg !2205, !tbaa !879
  %3 = icmp sgt i32 %2, 1, !dbg !2208
  br i1 %3, label %4, label %12, !dbg !2209

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2208
  br label %6, !dbg !2209

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2202, metadata !DIExpression()), !dbg !2204
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2210
  %9 = load i8*, i8** %8, align 8, !dbg !2210, !tbaa !2211
  tail call void @free(i8* %9) #24, !dbg !2213
  %10 = add nuw nsw i64 %7, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %10, metadata !2202, metadata !DIExpression()), !dbg !2204
  %11 = icmp eq i64 %10, %5, !dbg !2208
  br i1 %11, label %12, label %6, !dbg !2209, !llvm.loop !2215

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2217
  %14 = load i8*, i8** %13, align 8, !dbg !2217, !tbaa !2211
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2219
  br i1 %15, label %17, label %16, !dbg !2220

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !2221
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2223, !tbaa !2224
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2225, !tbaa !2211
  br label %17, !dbg !2226

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2227
  br i1 %18, label %21, label %19, !dbg !2229

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2230
  tail call void @free(i8* %20) #24, !dbg !2232
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2233, !tbaa !737
  br label %21, !dbg !2234

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2235, !tbaa !879
  ret void, !dbg !2236
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2239, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %1, metadata !2240, metadata !DIExpression()), !dbg !2241
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2242
  ret i8* %3, !dbg !2243
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2248, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i8* %1, metadata !2249, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %2, metadata !2250, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2251, metadata !DIExpression()), !dbg !2263
  %5 = tail call i32* @__errno_location() #28, !dbg !2264
  %6 = load i32, i32* %5, align 4, !dbg !2264, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %6, metadata !2252, metadata !DIExpression()), !dbg !2263
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2265, !tbaa !737
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2253, metadata !DIExpression()), !dbg !2263
  %8 = icmp slt i32 %0, 0, !dbg !2266
  br i1 %8, label %9, label %10, !dbg !2268

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2269
  unreachable, !dbg !2269

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2270, !tbaa !879
  %12 = icmp sgt i32 %11, %0, !dbg !2271
  br i1 %12, label %34, label %13, !dbg !2272

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2273
  call void @llvm.dbg.value(metadata i1 %14, metadata !2254, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2274
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2257, metadata !DIExpression()), !dbg !2274
  %15 = icmp eq i32 %0, 2147483647, !dbg !2275
  br i1 %15, label %16, label %17, !dbg !2277

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2278
  unreachable, !dbg !2278

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2279
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2279
  %20 = add nuw nsw i32 %0, 1, !dbg !2280
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2281
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !2282
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2282
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2253, metadata !DIExpression()), !dbg !2263
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2283, !tbaa !737
  br i1 %14, label %25, label %26, !dbg !2284

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2285, !tbaa.struct !2287
  br label %26, !dbg !2288

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2289, !tbaa !879
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2290
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2291
  %31 = sub nsw i32 %20, %27, !dbg !2292
  %32 = sext i32 %31 to i64, !dbg !2293
  %33 = shl nsw i64 %32, 4, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %30, metadata !1688, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.dbg.value(metadata i32 0, metadata !1693, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %33, metadata !1694, metadata !DIExpression()) #24, !dbg !2295
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !2297
  store i32 %20, i32* @nslots, align 4, !dbg !2298, !tbaa !879
  br label %34, !dbg !2299

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2263
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2253, metadata !DIExpression()), !dbg !2263
  %36 = zext i32 %0 to i64, !dbg !2300
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2301
  %38 = load i64, i64* %37, align 8, !dbg !2301, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %38, metadata !2258, metadata !DIExpression()), !dbg !2302
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2303
  %40 = load i8*, i8** %39, align 8, !dbg !2303, !tbaa !2211
  call void @llvm.dbg.value(metadata i8* %40, metadata !2260, metadata !DIExpression()), !dbg !2302
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2304
  %42 = load i32, i32* %41, align 4, !dbg !2304, !tbaa !1353
  %43 = or i32 %42, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %43, metadata !2261, metadata !DIExpression()), !dbg !2302
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2306
  %45 = load i32, i32* %44, align 8, !dbg !2306, !tbaa !1302
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2307
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2308
  %48 = load i8*, i8** %47, align 8, !dbg !2308, !tbaa !1375
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2309
  %50 = load i8*, i8** %49, align 8, !dbg !2309, !tbaa !1378
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %51, metadata !2262, metadata !DIExpression()), !dbg !2302
  %52 = icmp ugt i64 %38, %51, !dbg !2311
  br i1 %52, label %63, label %53, !dbg !2313

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %54, metadata !2258, metadata !DIExpression()), !dbg !2302
  store i64 %54, i64* %37, align 8, !dbg !2316, !tbaa !2224
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2317
  br i1 %55, label %57, label %56, !dbg !2319

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2320
  br label %57, !dbg !2320

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2160, metadata !DIExpression()) #24, !dbg !2321
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %58, metadata !2260, metadata !DIExpression()), !dbg !2302
  store i8* %58, i8** %39, align 8, !dbg !2324, !tbaa !2211
  %59 = load i32, i32* %44, align 8, !dbg !2325, !tbaa !1302
  %60 = load i8*, i8** %47, align 8, !dbg !2326, !tbaa !1375
  %61 = load i8*, i8** %49, align 8, !dbg !2327, !tbaa !1378
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2328
  br label %63, !dbg !2329

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2302
  call void @llvm.dbg.value(metadata i8* %64, metadata !2260, metadata !DIExpression()), !dbg !2302
  store i32 %6, i32* %5, align 4, !dbg !2330, !tbaa !879
  ret i8* %64, !dbg !2331
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8* %1, metadata !2337, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %2, metadata !2338, metadata !DIExpression()), !dbg !2339
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2340
  ret i8* %4, !dbg !2341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2344, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 0, metadata !2239, metadata !DIExpression()) #24, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %0, metadata !2240, metadata !DIExpression()) #24, !dbg !2346
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2348
  ret i8* %2, !dbg !2349
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %1, metadata !2355, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2336, metadata !DIExpression()) #24, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %0, metadata !2337, metadata !DIExpression()) #24, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %1, metadata !2338, metadata !DIExpression()) #24, !dbg !2357
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2359
  ret i8* %3, !dbg !2360
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2361 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2365, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %1, metadata !2366, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %2, metadata !2367, metadata !DIExpression()), !dbg !2369
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2370
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2368, metadata !DIExpression()), !dbg !2371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()) #24, !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2381, metadata !DIExpression()) #24, !dbg !2384
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2384, !alias.scope !2372
  %6 = icmp eq i32 %1, 10, !dbg !2385
  br i1 %6, label %7, label %8, !dbg !2387

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2388, !noalias !2372
  unreachable, !dbg !2388

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2389
  store i32 %1, i32* %9, align 8, !dbg !2390, !tbaa !1302, !alias.scope !2372
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2392
  ret i8* %10, !dbg !2393
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2394 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %3, metadata !2401, metadata !DIExpression()), !dbg !2403
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2402, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()) #24, !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2381, metadata !DIExpression()) #24, !dbg !2412
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2412, !alias.scope !2406
  %7 = icmp eq i32 %1, 10, !dbg !2413
  br i1 %7, label %8, label %9, !dbg !2414

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2415, !noalias !2406
  unreachable, !dbg !2415

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2416
  store i32 %1, i32* %10, align 8, !dbg !2417, !tbaa !1302, !alias.scope !2406
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2419
  ret i8* %11, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2421 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 0, metadata !2365, metadata !DIExpression()) #24, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %0, metadata !2366, metadata !DIExpression()) #24, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %1, metadata !2367, metadata !DIExpression()) #24, !dbg !2428
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2430
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2430
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2368, metadata !DIExpression()) #24, !dbg !2431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432) #24, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()) #24, !dbg !2436
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2381, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2438, !alias.scope !2432
  %5 = icmp eq i32 %0, 10, !dbg !2439
  br i1 %5, label %6, label %7, !dbg !2440

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2441, !noalias !2432
  unreachable, !dbg !2441

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2442
  store i32 %0, i32* %8, align 8, !dbg !2443, !tbaa !1302, !alias.scope !2432
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2444
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2445
  ret i8* %9, !dbg !2446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2447 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %1, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %2, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 0, metadata !2398, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !2400, metadata !DIExpression()) #24, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %2, metadata !2401, metadata !DIExpression()) #24, !dbg !2455
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2457
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2402, metadata !DIExpression()) #24, !dbg !2458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459) #24, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()) #24, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2381, metadata !DIExpression()) #24, !dbg !2465
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2465, !alias.scope !2459
  %6 = icmp eq i32 %0, 10, !dbg !2466
  br i1 %6, label %7, label %8, !dbg !2467

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2468, !noalias !2459
  unreachable, !dbg !2468

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2469
  store i32 %0, i32* %9, align 8, !dbg !2470, !tbaa !1302, !alias.scope !2459
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2471
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2472
  ret i8* %10, !dbg !2473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2474 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2478, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %1, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 %2, metadata !2480, metadata !DIExpression()), !dbg !2482
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2483
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2483
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2485, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1320, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %2, metadata !1321, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 %2, metadata !1323, metadata !DIExpression()), !dbg !2487
  %6 = lshr i8 %2, 5, !dbg !2489
  %7 = zext i8 %6 to i64, !dbg !2489
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2490
  call void @llvm.dbg.value(metadata i32* %8, metadata !1324, metadata !DIExpression()), !dbg !2487
  %9 = and i8 %2, 31, !dbg !2491
  %10 = zext i8 %9 to i32, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %10, metadata !1326, metadata !DIExpression()), !dbg !2487
  %11 = load i32, i32* %8, align 4, !dbg !2492, !tbaa !879
  %12 = lshr i32 %11, %10, !dbg !2493
  %13 = and i32 %12, 1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %13, metadata !1327, metadata !DIExpression()), !dbg !2487
  %14 = xor i32 %13, 1, !dbg !2495
  %15 = shl i32 %14, %10, !dbg !2496
  %16 = xor i32 %15, %11, !dbg !2497
  store i32 %16, i32* %8, align 4, !dbg !2497, !tbaa !879
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2499
  ret i8* %17, !dbg !2500
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2501 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %1, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %0, metadata !2478, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i64 -1, metadata !2479, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i8 %1, metadata !2480, metadata !DIExpression()) #24, !dbg !2508
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2481, metadata !DIExpression()) #24, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2512, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1320, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata i8 %1, metadata !1321, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata i8 %1, metadata !1323, metadata !DIExpression()) #24, !dbg !2513
  %5 = lshr i8 %1, 5, !dbg !2515
  %6 = zext i8 %5 to i64, !dbg !2515
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2516
  call void @llvm.dbg.value(metadata i32* %7, metadata !1324, metadata !DIExpression()) #24, !dbg !2513
  %8 = and i8 %1, 31, !dbg !2517
  %9 = zext i8 %8 to i32, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %9, metadata !1326, metadata !DIExpression()) #24, !dbg !2513
  %10 = load i32, i32* %7, align 4, !dbg !2518, !tbaa !879
  %11 = lshr i32 %10, %9, !dbg !2519
  %12 = and i32 %11, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %12, metadata !1327, metadata !DIExpression()) #24, !dbg !2513
  %13 = xor i32 %12, 1, !dbg !2521
  %14 = shl i32 %13, %9, !dbg !2522
  %15 = xor i32 %14, %10, !dbg !2523
  store i32 %15, i32* %7, align 4, !dbg !2523, !tbaa !879
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2525
  ret i8* %16, !dbg !2526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2527 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %0, metadata !2505, metadata !DIExpression()) #24, !dbg !2531
  call void @llvm.dbg.value(metadata i8 58, metadata !2506, metadata !DIExpression()) #24, !dbg !2531
  call void @llvm.dbg.value(metadata i8* %0, metadata !2478, metadata !DIExpression()) #24, !dbg !2533
  call void @llvm.dbg.value(metadata i64 -1, metadata !2479, metadata !DIExpression()) #24, !dbg !2533
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()) #24, !dbg !2533
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2481, metadata !DIExpression()) #24, !dbg !2536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2537, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1320, metadata !DIExpression()) #24, !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()) #24, !dbg !2538
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #24, !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()) #24, !dbg !2538
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2540
  call void @llvm.dbg.value(metadata i32* %4, metadata !1324, metadata !DIExpression()) #24, !dbg !2538
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()) #24, !dbg !2538
  %5 = load i32, i32* %4, align 4, !dbg !2541, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %5, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2538
  %6 = or i32 %5, 67108864, !dbg !2542
  store i32 %6, i32* %4, align 4, !dbg !2542, !tbaa !879
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2543
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2544
  ret i8* %7, !dbg !2545
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2546 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* %0, metadata !2478, metadata !DIExpression()) #24, !dbg !2551
  call void @llvm.dbg.value(metadata i64 %1, metadata !2479, metadata !DIExpression()) #24, !dbg !2551
  call void @llvm.dbg.value(metadata i8 58, metadata !2480, metadata !DIExpression()) #24, !dbg !2551
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2553
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2481, metadata !DIExpression()) #24, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2555, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1320, metadata !DIExpression()) #24, !dbg !2556
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()) #24, !dbg !2556
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()) #24, !dbg !2556
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()) #24, !dbg !2556
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2558
  call void @llvm.dbg.value(metadata i32* %5, metadata !1324, metadata !DIExpression()) #24, !dbg !2556
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()) #24, !dbg !2556
  %6 = load i32, i32* %5, align 4, !dbg !2559, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %6, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2556
  %7 = or i32 %6, 67108864, !dbg !2560
  store i32 %7, i32* %5, align 4, !dbg !2560, !tbaa !879
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2561
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2562
  ret i8* %8, !dbg !2563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2564 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()), !dbg !2572
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2569, metadata !DIExpression()), !dbg !2574
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2576), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()) #24, !dbg !2579
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2579
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2570, !alias.scope !2576
  %8 = icmp eq i32 %1, 10, !dbg !2580
  br i1 %8, label %9, label %10, !dbg !2581

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2582, !noalias !2576
  unreachable, !dbg !2582

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2381, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2579
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2575
  store i32 %1, i32* %11, align 8, !dbg !2575, !tbaa.struct !2486
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2575
  %13 = bitcast i32* %12 to i8*, !dbg !2575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2575, !tbaa.struct !2583
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2575
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1320, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !1321, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 1, metadata !1322, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !1323, metadata !DIExpression()), !dbg !2584
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2586
  call void @llvm.dbg.value(metadata i32* %14, metadata !1324, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 26, metadata !1326, metadata !DIExpression()), !dbg !2584
  %15 = load i32, i32* %14, align 4, !dbg !2587, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %15, metadata !1327, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2584
  %16 = or i32 %15, 67108864, !dbg !2588
  store i32 %16, i32* %14, align 4, !dbg !2588, !tbaa !879
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2590
  ret i8* %17, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2592 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2598, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %3, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %0, metadata !2601, metadata !DIExpression()) #24, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2606, metadata !DIExpression()) #24, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !2607, metadata !DIExpression()) #24, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %3, metadata !2608, metadata !DIExpression()) #24, !dbg !2611
  call void @llvm.dbg.value(metadata i64 -1, metadata !2609, metadata !DIExpression()) #24, !dbg !2611
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2613
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2610, metadata !DIExpression()) #24, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2615, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #24, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()) #24, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()) #24, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #24, !dbg !2616
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2618
  store i32 10, i32* %7, align 8, !dbg !2619, !tbaa !1302
  %8 = icmp ne i8* %1, null, !dbg !2620
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2621
  br i1 %10, label %12, label %11, !dbg !2621

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2622
  unreachable, !dbg !2622

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2623
  store i8* %1, i8** %13, align 8, !dbg !2624, !tbaa !1375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2625
  store i8* %2, i8** %14, align 8, !dbg !2626, !tbaa !1378
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2628
  ret i8* %15, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2602 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2601, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %1, metadata !2606, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %2, metadata !2607, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8* %3, metadata !2608, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %4, metadata !2609, metadata !DIExpression()), !dbg !2630
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2631
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2631
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2610, metadata !DIExpression()), !dbg !2632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2633, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1360, metadata !DIExpression()) #24, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !1361, metadata !DIExpression()) #24, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()) #24, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1360, metadata !DIExpression()) #24, !dbg !2634
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2636
  store i32 10, i32* %8, align 8, !dbg !2637, !tbaa !1302
  %9 = icmp ne i8* %1, null, !dbg !2638
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2639
  br i1 %11, label %13, label %12, !dbg !2639

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2640
  unreachable, !dbg !2640

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2641
  store i8* %1, i8** %14, align 8, !dbg !2642, !tbaa !1375
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2643
  store i8* %2, i8** %15, align 8, !dbg !2644, !tbaa !1378
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2645
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2646
  ret i8* %16, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2648 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %1, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %2, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #24, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #24, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2598, metadata !DIExpression()) #24, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2599, metadata !DIExpression()) #24, !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression()) #24, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !2606, metadata !DIExpression()) #24, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()) #24, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %2, metadata !2608, metadata !DIExpression()) #24, !dbg !2658
  call void @llvm.dbg.value(metadata i64 -1, metadata !2609, metadata !DIExpression()) #24, !dbg !2658
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2660
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2610, metadata !DIExpression()) #24, !dbg !2661
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2662, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1360, metadata !DIExpression()) #24, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()) #24, !dbg !2663
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()) #24, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1360, metadata !DIExpression()) #24, !dbg !2663
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2665
  store i32 10, i32* %6, align 8, !dbg !2666, !tbaa !1302
  %7 = icmp ne i8* %0, null, !dbg !2667
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2668
  br i1 %9, label %11, label %10, !dbg !2668

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2669
  unreachable, !dbg !2669

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2670
  store i8* %0, i8** %12, align 8, !dbg !2671, !tbaa !1375
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2672
  store i8* %1, i8** %13, align 8, !dbg !2673, !tbaa !1378
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2675
  ret i8* %14, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2677 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %1, metadata !2682, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %2, metadata !2683, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 %3, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression()) #24, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !2606, metadata !DIExpression()) #24, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()) #24, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %2, metadata !2608, metadata !DIExpression()) #24, !dbg !2686
  call void @llvm.dbg.value(metadata i64 %3, metadata !2609, metadata !DIExpression()) #24, !dbg !2686
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2610, metadata !DIExpression()) #24, !dbg !2689
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2690, !tbaa.struct !2486
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #24, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()) #24, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()) #24, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1360, metadata !DIExpression()) #24, !dbg !2691
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2693
  store i32 10, i32* %7, align 8, !dbg !2694, !tbaa !1302
  %8 = icmp ne i8* %0, null, !dbg !2695
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2696
  br i1 %10, label %12, label %11, !dbg !2696

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2697
  unreachable, !dbg !2697

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2698
  store i8* %0, i8** %13, align 8, !dbg !2699, !tbaa !1375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2700
  store i8* %1, i8** %14, align 8, !dbg !2701, !tbaa !1378
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2703
  ret i8* %15, !dbg !2704
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2705 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i64 %2, metadata !2711, metadata !DIExpression()), !dbg !2712
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2713
  ret i8* %4, !dbg !2714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2719, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %1, metadata !2720, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()) #24, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #24, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %1, metadata !2711, metadata !DIExpression()) #24, !dbg !2722
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2724
  ret i8* %3, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 %0, metadata !2709, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %1, metadata !2710, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.dbg.value(metadata i64 -1, metadata !2711, metadata !DIExpression()) #24, !dbg !2733
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2735
  ret i8* %3, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2737 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2730, metadata !DIExpression()) #24, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2731, metadata !DIExpression()) #24, !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2709, metadata !DIExpression()) #24, !dbg !2745
  call void @llvm.dbg.value(metadata i8* %0, metadata !2710, metadata !DIExpression()) #24, !dbg !2745
  call void @llvm.dbg.value(metadata i64 -1, metadata !2711, metadata !DIExpression()) #24, !dbg !2745
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2747
  ret i8* %2, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2749 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2788, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2789, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %2, metadata !2790, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %3, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8** %4, metadata !2792, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %5, metadata !2793, metadata !DIExpression()), !dbg !2794
  %7 = icmp eq i8* %1, null, !dbg !2795
  br i1 %7, label %10, label %8, !dbg !2797

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2798
  br label %12, !dbg !2798

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2799
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #24, !dbg !2800
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2800
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2801
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #24, !dbg !2802
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #24, !dbg !2802
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2803
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
  ], !dbg !2804

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #24, !dbg !2805
  %21 = load i8*, i8** %4, align 8, !dbg !2805, !tbaa !737
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2805
  br label %147, !dbg !2807

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #24, !dbg !2808
  %25 = load i8*, i8** %4, align 8, !dbg !2808, !tbaa !737
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2808
  %27 = load i8*, i8** %26, align 8, !dbg !2808, !tbaa !737
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2808
  br label %147, !dbg !2809

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #24, !dbg !2810
  %31 = load i8*, i8** %4, align 8, !dbg !2810, !tbaa !737
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2810
  %33 = load i8*, i8** %32, align 8, !dbg !2810, !tbaa !737
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2810
  %35 = load i8*, i8** %34, align 8, !dbg !2810, !tbaa !737
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2810
  br label %147, !dbg !2811

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #24, !dbg !2812
  %39 = load i8*, i8** %4, align 8, !dbg !2812, !tbaa !737
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2812
  %41 = load i8*, i8** %40, align 8, !dbg !2812, !tbaa !737
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2812
  %43 = load i8*, i8** %42, align 8, !dbg !2812, !tbaa !737
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2812
  %45 = load i8*, i8** %44, align 8, !dbg !2812, !tbaa !737
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2812
  br label %147, !dbg !2813

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #24, !dbg !2814
  %49 = load i8*, i8** %4, align 8, !dbg !2814, !tbaa !737
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2814
  %51 = load i8*, i8** %50, align 8, !dbg !2814, !tbaa !737
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2814
  %53 = load i8*, i8** %52, align 8, !dbg !2814, !tbaa !737
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2814
  %55 = load i8*, i8** %54, align 8, !dbg !2814, !tbaa !737
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2814
  %57 = load i8*, i8** %56, align 8, !dbg !2814, !tbaa !737
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2814
  br label %147, !dbg !2815

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #24, !dbg !2816
  %61 = load i8*, i8** %4, align 8, !dbg !2816, !tbaa !737
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2816
  %63 = load i8*, i8** %62, align 8, !dbg !2816, !tbaa !737
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2816
  %65 = load i8*, i8** %64, align 8, !dbg !2816, !tbaa !737
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2816
  %67 = load i8*, i8** %66, align 8, !dbg !2816, !tbaa !737
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2816
  %69 = load i8*, i8** %68, align 8, !dbg !2816, !tbaa !737
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2816
  %71 = load i8*, i8** %70, align 8, !dbg !2816, !tbaa !737
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2816
  br label %147, !dbg !2817

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #24, !dbg !2818
  %75 = load i8*, i8** %4, align 8, !dbg !2818, !tbaa !737
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2818
  %77 = load i8*, i8** %76, align 8, !dbg !2818, !tbaa !737
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2818
  %79 = load i8*, i8** %78, align 8, !dbg !2818, !tbaa !737
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2818
  %81 = load i8*, i8** %80, align 8, !dbg !2818, !tbaa !737
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2818
  %83 = load i8*, i8** %82, align 8, !dbg !2818, !tbaa !737
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2818
  %85 = load i8*, i8** %84, align 8, !dbg !2818, !tbaa !737
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2818
  %87 = load i8*, i8** %86, align 8, !dbg !2818, !tbaa !737
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2818
  br label %147, !dbg !2819

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #24, !dbg !2820
  %91 = load i8*, i8** %4, align 8, !dbg !2820, !tbaa !737
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2820
  %93 = load i8*, i8** %92, align 8, !dbg !2820, !tbaa !737
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2820
  %95 = load i8*, i8** %94, align 8, !dbg !2820, !tbaa !737
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2820
  %97 = load i8*, i8** %96, align 8, !dbg !2820, !tbaa !737
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2820
  %99 = load i8*, i8** %98, align 8, !dbg !2820, !tbaa !737
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2820
  %101 = load i8*, i8** %100, align 8, !dbg !2820, !tbaa !737
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2820
  %103 = load i8*, i8** %102, align 8, !dbg !2820, !tbaa !737
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2820
  %105 = load i8*, i8** %104, align 8, !dbg !2820, !tbaa !737
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2820
  br label %147, !dbg !2821

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #24, !dbg !2822
  %109 = load i8*, i8** %4, align 8, !dbg !2822, !tbaa !737
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2822
  %111 = load i8*, i8** %110, align 8, !dbg !2822, !tbaa !737
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2822
  %113 = load i8*, i8** %112, align 8, !dbg !2822, !tbaa !737
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2822
  %115 = load i8*, i8** %114, align 8, !dbg !2822, !tbaa !737
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2822
  %117 = load i8*, i8** %116, align 8, !dbg !2822, !tbaa !737
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2822
  %119 = load i8*, i8** %118, align 8, !dbg !2822, !tbaa !737
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2822
  %121 = load i8*, i8** %120, align 8, !dbg !2822, !tbaa !737
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2822
  %123 = load i8*, i8** %122, align 8, !dbg !2822, !tbaa !737
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2822
  %125 = load i8*, i8** %124, align 8, !dbg !2822, !tbaa !737
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2822
  br label %147, !dbg !2823

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #24, !dbg !2824
  %129 = load i8*, i8** %4, align 8, !dbg !2824, !tbaa !737
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2824
  %131 = load i8*, i8** %130, align 8, !dbg !2824, !tbaa !737
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2824
  %133 = load i8*, i8** %132, align 8, !dbg !2824, !tbaa !737
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2824
  %135 = load i8*, i8** %134, align 8, !dbg !2824, !tbaa !737
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2824
  %137 = load i8*, i8** %136, align 8, !dbg !2824, !tbaa !737
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2824
  %139 = load i8*, i8** %138, align 8, !dbg !2824, !tbaa !737
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2824
  %141 = load i8*, i8** %140, align 8, !dbg !2824, !tbaa !737
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2824
  %143 = load i8*, i8** %142, align 8, !dbg !2824, !tbaa !737
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2824
  %145 = load i8*, i8** %144, align 8, !dbg !2824, !tbaa !737
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2824
  br label %147, !dbg !2825

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2826
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2827 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2831, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %1, metadata !2832, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !2833, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %3, metadata !2834, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8** %4, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2837
  br label %6, !dbg !2838

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2840
  call void @llvm.dbg.value(metadata i64 %7, metadata !2836, metadata !DIExpression()), !dbg !2837
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2841
  %9 = load i8*, i8** %8, align 8, !dbg !2841, !tbaa !737
  %10 = icmp eq i8* %9, null, !dbg !2843
  %11 = add i64 %7, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i64 %11, metadata !2836, metadata !DIExpression()), !dbg !2837
  br i1 %10, label %12, label %6, !dbg !2843, !llvm.loop !2845

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2847
  ret void, !dbg !2848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2849 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2860, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %1, metadata !2861, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %2, metadata !2862, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i8* %3, metadata !2863, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2864, metadata !DIExpression()), !dbg !2868
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2869
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2866, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 0, metadata !2865, metadata !DIExpression()), !dbg !2868
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2865, metadata !DIExpression()), !dbg !2868
  %11 = load i32, i32* %8, align 8, !dbg !2871
  %12 = icmp ult i32 %11, 41, !dbg !2871
  br i1 %12, label %13, label %18, !dbg !2871

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2871
  %15 = zext i32 %11 to i64, !dbg !2871
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2871
  %17 = add nuw nsw i32 %11, 8, !dbg !2871
  store i32 %17, i32* %8, align 8, !dbg !2871
  br label %21, !dbg !2871

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2871
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2871
  store i8* %20, i8** %9, align 8, !dbg !2871
  br label %21, !dbg !2871

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2871
  %25 = load i8*, i8** %24, align 8, !dbg !2871
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2874
  store i8* %25, i8** %26, align 16, !dbg !2875, !tbaa !737
  %27 = icmp eq i8* %25, null, !dbg !2876
  br i1 %27, label %30, label %28, !dbg !2877

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 1, metadata !2865, metadata !DIExpression()), !dbg !2868
  %29 = icmp ult i32 %22, 41, !dbg !2871
  br i1 %29, label %35, label %32, !dbg !2871

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2878
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2880
  ret void, !dbg !2880

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2871
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2871
  store i8* %34, i8** %9, align 8, !dbg !2871
  br label %40, !dbg !2871

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2871
  %37 = zext i32 %22 to i64, !dbg !2871
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2871
  %39 = add nuw nsw i32 %22, 8, !dbg !2871
  store i32 %39, i32* %8, align 8, !dbg !2871
  br label %40, !dbg !2871

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2871
  %44 = load i8*, i8** %43, align 8, !dbg !2871
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2874
  store i8* %44, i8** %45, align 8, !dbg !2875, !tbaa !737
  %46 = icmp eq i8* %44, null, !dbg !2876
  br i1 %46, label %30, label %47, !dbg !2877

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 2, metadata !2865, metadata !DIExpression()), !dbg !2868
  %48 = icmp ult i32 %41, 41, !dbg !2871
  br i1 %48, label %52, label %49, !dbg !2871

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2871
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2871
  store i8* %51, i8** %9, align 8, !dbg !2871
  br label %57, !dbg !2871

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2871
  %54 = zext i32 %41 to i64, !dbg !2871
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2871
  %56 = add nuw nsw i32 %41, 8, !dbg !2871
  store i32 %56, i32* %8, align 8, !dbg !2871
  br label %57, !dbg !2871

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2871
  %61 = load i8*, i8** %60, align 8, !dbg !2871
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2874
  store i8* %61, i8** %62, align 16, !dbg !2875, !tbaa !737
  %63 = icmp eq i8* %61, null, !dbg !2876
  br i1 %63, label %30, label %64, !dbg !2877

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 3, metadata !2865, metadata !DIExpression()), !dbg !2868
  %65 = icmp ult i32 %58, 41, !dbg !2871
  br i1 %65, label %69, label %66, !dbg !2871

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2871
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2871
  store i8* %68, i8** %9, align 8, !dbg !2871
  br label %74, !dbg !2871

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2871
  %71 = zext i32 %58 to i64, !dbg !2871
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2871
  %73 = add nuw nsw i32 %58, 8, !dbg !2871
  store i32 %73, i32* %8, align 8, !dbg !2871
  br label %74, !dbg !2871

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2871
  %78 = load i8*, i8** %77, align 8, !dbg !2871
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2874
  store i8* %78, i8** %79, align 8, !dbg !2875, !tbaa !737
  %80 = icmp eq i8* %78, null, !dbg !2876
  br i1 %80, label %30, label %81, !dbg !2877

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 4, metadata !2865, metadata !DIExpression()), !dbg !2868
  %82 = icmp ult i32 %75, 41, !dbg !2871
  br i1 %82, label %86, label %83, !dbg !2871

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2871
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2871
  store i8* %85, i8** %9, align 8, !dbg !2871
  br label %91, !dbg !2871

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2871
  %88 = zext i32 %75 to i64, !dbg !2871
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2871
  %90 = add nuw nsw i32 %75, 8, !dbg !2871
  store i32 %90, i32* %8, align 8, !dbg !2871
  br label %91, !dbg !2871

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2871
  %95 = load i8*, i8** %94, align 8, !dbg !2871
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2874
  store i8* %95, i8** %96, align 16, !dbg !2875, !tbaa !737
  %97 = icmp eq i8* %95, null, !dbg !2876
  br i1 %97, label %30, label %98, !dbg !2877

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 5, metadata !2865, metadata !DIExpression()), !dbg !2868
  %99 = icmp ult i32 %92, 41, !dbg !2871
  br i1 %99, label %103, label %100, !dbg !2871

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2871
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2871
  store i8* %102, i8** %9, align 8, !dbg !2871
  br label %108, !dbg !2871

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2871
  %105 = zext i32 %92 to i64, !dbg !2871
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2871
  %107 = add nuw nsw i32 %92, 8, !dbg !2871
  store i32 %107, i32* %8, align 8, !dbg !2871
  br label %108, !dbg !2871

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2871
  %111 = load i8*, i8** %110, align 8, !dbg !2871
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2874
  store i8* %111, i8** %112, align 8, !dbg !2875, !tbaa !737
  %113 = icmp eq i8* %111, null, !dbg !2876
  br i1 %113, label %30, label %114, !dbg !2877

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2865, metadata !DIExpression()), !dbg !2868
  %115 = load i8*, i8** %9, align 8, !dbg !2871
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2871
  store i8* %116, i8** %9, align 8, !dbg !2871
  %117 = bitcast i8* %115 to i8**, !dbg !2871
  %118 = load i8*, i8** %117, align 8, !dbg !2871
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2874
  store i8* %118, i8** %119, align 16, !dbg !2875, !tbaa !737
  %120 = icmp eq i8* %118, null, !dbg !2876
  br i1 %120, label %30, label %121, !dbg !2877

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2865, metadata !DIExpression()), !dbg !2868
  %122 = load i8*, i8** %9, align 8, !dbg !2871
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2871
  store i8* %123, i8** %9, align 8, !dbg !2871
  %124 = bitcast i8* %122 to i8**, !dbg !2871
  %125 = load i8*, i8** %124, align 8, !dbg !2871
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2874
  store i8* %125, i8** %126, align 8, !dbg !2875, !tbaa !737
  %127 = icmp eq i8* %125, null, !dbg !2876
  br i1 %127, label %30, label %128, !dbg !2877

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2865, metadata !DIExpression()), !dbg !2868
  %129 = load i8*, i8** %9, align 8, !dbg !2871
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2871
  store i8* %130, i8** %9, align 8, !dbg !2871
  %131 = bitcast i8* %129 to i8**, !dbg !2871
  %132 = load i8*, i8** %131, align 8, !dbg !2871
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2874
  store i8* %132, i8** %133, align 16, !dbg !2875, !tbaa !737
  %134 = icmp eq i8* %132, null, !dbg !2876
  br i1 %134, label %30, label %135, !dbg !2877

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2865, metadata !DIExpression()), !dbg !2868
  %136 = load i8*, i8** %9, align 8, !dbg !2871
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2871
  store i8* %137, i8** %9, align 8, !dbg !2871
  %138 = bitcast i8* %136 to i8**, !dbg !2871
  %139 = load i8*, i8** %138, align 8, !dbg !2871
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2874
  store i8* %139, i8** %140, align 8, !dbg !2875, !tbaa !737
  %141 = icmp eq i8* %139, null, !dbg !2876
  %142 = select i1 %141, i64 9, i64 10, !dbg !2877
  br label %30, !dbg !2877
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2881 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2885, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %2, metadata !2887, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i8* %3, metadata !2888, metadata !DIExpression()), !dbg !2895
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2896
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2896
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2889, metadata !DIExpression()), !dbg !2897
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2898
  call void @llvm.va_start(i8* nonnull %6), !dbg !2898
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2899
  call void @llvm.va_end(i8* nonnull %6), !dbg !2900
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2902 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2903, !tbaa !737
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2903
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #24, !dbg !2904
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #24, !dbg !2904
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #24, !dbg !2905
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #24, !dbg !2905
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #24, !dbg !2906
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #24, !dbg !2906
  ret void, !dbg !2907
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2908 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2912, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %1, metadata !2913, metadata !DIExpression()), !dbg !2914
  %3 = udiv i64 9223372036854775807, %1, !dbg !2915
  %4 = icmp ult i64 %3, %0, !dbg !2915
  br i1 %4, label %5, label %6, !dbg !2917

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2918
  unreachable, !dbg !2918

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %7, metadata !2920, metadata !DIExpression()) #24, !dbg !2926
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %8, metadata !2925, metadata !DIExpression()) #24, !dbg !2926
  %9 = icmp eq i8* %8, null, !dbg !2929
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2931
  br i1 %11, label %12, label %13, !dbg !2931

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2932
  unreachable, !dbg !2932

13:                                               ; preds = %6
  ret i8* %8, !dbg !2933
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2921 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2920, metadata !DIExpression()), !dbg !2934
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %2, metadata !2925, metadata !DIExpression()), !dbg !2934
  %3 = icmp eq i8* %2, null, !dbg !2936
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2937
  br i1 %5, label %6, label %7, !dbg !2937

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2938
  unreachable, !dbg !2938

7:                                                ; preds = %1
  ret i8* %2, !dbg !2939
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2940 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %1, metadata !2945, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %2, metadata !2946, metadata !DIExpression()), !dbg !2947
  %4 = udiv i64 9223372036854775807, %2, !dbg !2948
  %5 = icmp ult i64 %4, %1, !dbg !2948
  br i1 %5, label %6, label %7, !dbg !2950

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2951
  unreachable, !dbg !2951

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #24, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %8, metadata !2958, metadata !DIExpression()) #24, !dbg !2959
  %9 = icmp eq i64 %8, 0, !dbg !2961
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2963
  br i1 %11, label %12, label %13, !dbg !2963

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2964
  br label %19, !dbg !2966

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %14, metadata !2953, metadata !DIExpression()) #24, !dbg !2959
  %15 = icmp eq i8* %14, null, !dbg !2968
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2970
  br i1 %17, label %18, label %19, !dbg !2970

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2971
  unreachable, !dbg !2971

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2959
  ret i8* %20, !dbg !2972
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2954 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2973
  %3 = icmp eq i64 %1, 0, !dbg !2974
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2975
  br i1 %5, label %6, label %7, !dbg !2975

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2976
  br label %13, !dbg !2977

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %8, metadata !2953, metadata !DIExpression()), !dbg !2973
  %9 = icmp eq i8* %8, null, !dbg !2979
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2980
  br i1 %11, label %12, label %13, !dbg !2980

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2981
  unreachable, !dbg !2981

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2973
  ret i8* %14, !dbg !2982
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !290, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64* %1, metadata !291, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %2, metadata !292, metadata !DIExpression()), !dbg !2983
  %4 = load i64, i64* %1, align 8, !dbg !2984, !tbaa !964
  call void @llvm.dbg.value(metadata i64 %4, metadata !293, metadata !DIExpression()), !dbg !2983
  %5 = icmp eq i8* %0, null, !dbg !2985
  br i1 %5, label %6, label %20, !dbg !2987

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2988
  br i1 %7, label %8, label %13, !dbg !2991

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %9, metadata !293, metadata !DIExpression()), !dbg !2983
  %10 = icmp ugt i64 %2, 128, !dbg !2994
  %11 = zext i1 %10 to i64, !dbg !2994
  %12 = add nuw nsw i64 %9, %11, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %12, metadata !293, metadata !DIExpression()), !dbg !2983
  br label %13, !dbg !2996

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2983
  call void @llvm.dbg.value(metadata i64 %14, metadata !293, metadata !DIExpression()), !dbg !2983
  %15 = udiv i64 9223372036854775807, %2, !dbg !2997
  %16 = icmp ult i64 %15, %14, !dbg !2997
  br i1 %16, label %19, label %17, !dbg !2999

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !293, metadata !DIExpression()), !dbg !2983
  store i64 %14, i64* %1, align 8, !dbg !3000, !tbaa !964
  %18 = mul i64 %14, %2, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #24, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %28, metadata !2958, metadata !DIExpression()) #24, !dbg !3002
  br label %31, !dbg !3004

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !3005
  unreachable, !dbg !3005

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3006
  %22 = icmp ugt i64 %21, %4, !dbg !3009
  br i1 %22, label %24, label %23, !dbg !3010

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !3011
  unreachable, !dbg !3011

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3012
  %26 = add nuw i64 %4, 1, !dbg !3013
  %27 = add i64 %26, %25, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %27, metadata !293, metadata !DIExpression()), !dbg !2983
  store i64 %27, i64* %1, align 8, !dbg !3000, !tbaa !964
  %28 = mul i64 %27, %2, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #24, !dbg !3002
  call void @llvm.dbg.value(metadata i64 %28, metadata !2958, metadata !DIExpression()) #24, !dbg !3002
  %29 = icmp eq i64 %28, 0, !dbg !3015
  br i1 %29, label %30, label %31, !dbg !3004

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !3016
  br label %38, !dbg !3017

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %33, metadata !2953, metadata !DIExpression()) #24, !dbg !3002
  %34 = icmp eq i8* %33, null, !dbg !3019
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3020
  br i1 %36, label %37, label %38, !dbg !3020

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !3021
  unreachable, !dbg !3021

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3002
  ret i8* %39, !dbg !3022
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3023 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %0, metadata !2920, metadata !DIExpression()) #24, !dbg !3027
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %2, metadata !2925, metadata !DIExpression()) #24, !dbg !3027
  %3 = icmp eq i8* %2, null, !dbg !3030
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3031
  br i1 %5, label %6, label %7, !dbg !3031

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3032
  unreachable, !dbg !3032

7:                                                ; preds = %1
  ret i8* %2, !dbg !3033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64* %1, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %0, metadata !290, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.dbg.value(metadata i64* %1, metadata !291, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.dbg.value(metadata i64 1, metadata !292, metadata !DIExpression()) #24, !dbg !3041
  %3 = load i64, i64* %1, align 8, !dbg !3043, !tbaa !964
  call void @llvm.dbg.value(metadata i64 %3, metadata !293, metadata !DIExpression()) #24, !dbg !3041
  %4 = icmp eq i8* %0, null, !dbg !3044
  br i1 %4, label %5, label %10, !dbg !3045

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3046
  br i1 %6, label %17, label %7, !dbg !3047

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !293, metadata !DIExpression()) #24, !dbg !3041
  %8 = icmp slt i64 %3, 0, !dbg !3048
  br i1 %8, label %9, label %17, !dbg !3049

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !3050
  unreachable, !dbg !3050

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3051
  br i1 %11, label %13, label %12, !dbg !3052

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !3053
  unreachable, !dbg !3053

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3054
  %15 = add nuw nsw i64 %3, 1, !dbg !3055
  %16 = add nuw nsw i64 %15, %14, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %16, metadata !293, metadata !DIExpression()) #24, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #24, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %16, metadata !2958, metadata !DIExpression()) #24, !dbg !3057
  br label %17, !dbg !3059

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3060
  store i64 %18, i64* %1, align 8, !dbg !3060, !tbaa !964
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %19, metadata !2953, metadata !DIExpression()) #24, !dbg !3057
  %20 = icmp eq i8* %19, null, !dbg !3062
  br i1 %20, label %21, label %22, !dbg !3063

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !3064
  unreachable, !dbg !3064

22:                                               ; preds = %17
  ret i8* %19, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3066 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %0, metadata !3070, metadata !DIExpression()) #24, !dbg !3075
  call void @llvm.dbg.value(metadata i64 1, metadata !3073, metadata !DIExpression()) #24, !dbg !3075
  %2 = icmp slt i64 %0, 0, !dbg !3077
  br i1 %2, label %6, label %3, !dbg !3079

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %4, metadata !3074, metadata !DIExpression()) #24, !dbg !3075
  %5 = icmp eq i8* %4, null, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !3083
  unreachable, !dbg !3083

7:                                                ; preds = %3
  ret i8* %4, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3071 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3070, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3085
  %3 = udiv i64 9223372036854775807, %1, !dbg !3086
  %4 = icmp ult i64 %3, %0, !dbg !3086
  br i1 %4, label %8, label %5, !dbg !3087

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %6, metadata !3074, metadata !DIExpression()), !dbg !3085
  %7 = icmp eq i8* %6, null, !dbg !3089
  br i1 %7, label %8, label %9, !dbg !3090

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !3091
  unreachable, !dbg !3091

9:                                                ; preds = %5
  ret i8* %6, !dbg !3092
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()) #24, !dbg !3100
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %3, metadata !2925, metadata !DIExpression()) #24, !dbg !3100
  %4 = icmp eq i8* %3, null, !dbg !3103
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3104
  br i1 %6, label %7, label %8, !dbg !3104

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !3105
  unreachable, !dbg !3105

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3106, metadata !DIExpression()) #24, !dbg !3115
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #24, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()) #24, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !3117
  ret i8* %3, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3121, metadata !DIExpression()), !dbg !3122
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !3123
  %3 = add i64 %2, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %0, metadata !3097, metadata !DIExpression()) #24, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %3, metadata !3098, metadata !DIExpression()) #24, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %3, metadata !2920, metadata !DIExpression()) #24, !dbg !3127
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %4, metadata !2925, metadata !DIExpression()) #24, !dbg !3127
  %5 = icmp eq i8* %4, null, !dbg !3130
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3131
  br i1 %7, label %8, label %9, !dbg !3131

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3132
  unreachable, !dbg !3132

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3106, metadata !DIExpression()) #24, !dbg !3133
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()) #24, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %3, metadata !3114, metadata !DIExpression()) #24, !dbg !3133
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !3135
  ret i8* %4, !dbg !3136
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3137 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3138, !tbaa !879
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.113, i64 0, i64 0), i32 5) #24, !dbg !3139
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i64 0, i64 0), i8* %2) #24, !dbg !3140
  tail call void @abort() #26, !dbg !3141
  unreachable, !dbg !3141
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoumax(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i8* %5, i32 %6) local_unnamed_addr #8 !dbg !3142 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3150, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %1, metadata !3151, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %3, metadata !3153, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %4, metadata !3154, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %5, metadata !3155, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 %6, metadata !3156, metadata !DIExpression()), !dbg !3160
  %9 = bitcast i64* %8 to i8*, !dbg !3161
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #24, !dbg !3161
  call void @llvm.dbg.value(metadata i64* %8, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3160
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #24, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %10, metadata !3157, metadata !DIExpression()), !dbg !3160
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %23
    i32 3, label %25
  ], !dbg !3163

11:                                               ; preds = %7
  %12 = tail call i32* @__errno_location() #28, !dbg !3164
  br label %27, !dbg !3163

13:                                               ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3167, !tbaa !964
  call void @llvm.dbg.value(metadata i64 %14, metadata !3159, metadata !DIExpression()), !dbg !3160
  %15 = icmp ult i64 %14, %2, !dbg !3171
  %16 = icmp ugt i64 %14, %3
  %17 = or i1 %15, %16, !dbg !3172
  br i1 %17, label %18, label %36, !dbg !3172

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3157, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i64 %14, metadata !3159, metadata !DIExpression()), !dbg !3160
  %19 = icmp ugt i64 %14, 1073741823, !dbg !3173
  %20 = tail call i32* @__errno_location() #28, !dbg !3176
  br i1 %19, label %21, label %22, !dbg !3177

21:                                               ; preds = %18
  store i32 75, i32* %20, align 4, !dbg !3178, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !3157, metadata !DIExpression()), !dbg !3160
  br label %27, !dbg !3179

22:                                               ; preds = %18
  store i32 34, i32* %20, align 4, !dbg !3180, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !3157, metadata !DIExpression()), !dbg !3160
  br label %27, !dbg !3179

23:                                               ; preds = %7
  %24 = tail call i32* @__errno_location() #28, !dbg !3181
  store i32 75, i32* %24, align 4, !dbg !3183, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !3157, metadata !DIExpression()), !dbg !3160
  br label %27, !dbg !3179

25:                                               ; preds = %7
  %26 = tail call i32* @__errno_location() #28, !dbg !3184
  store i32 0, i32* %26, align 4, !dbg !3186, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !3157, metadata !DIExpression()), !dbg !3160
  br label %27, !dbg !3179

27:                                               ; preds = %11, %21, %22, %25, %23
  %28 = phi i32* [ %12, %11 ], [ %20, %21 ], [ %20, %22 ], [ %26, %25 ], [ %24, %23 ], !dbg !3164
  %29 = icmp eq i32 %6, 0, !dbg !3187
  %30 = select i1 %29, i32 1, i32 %6, !dbg !3187
  %31 = load i32, i32* %28, align 4, !dbg !3164, !tbaa !879
  %32 = icmp eq i32 %31, 22, !dbg !3188
  %33 = select i1 %32, i32 0, i32 %31, !dbg !3164
  %34 = call i8* @quote(i8* %0) #24, !dbg !3189
  call void (i32, i32, i8*, ...) @error(i32 %30, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0), i8* %5, i8* %34) #24, !dbg !3190
  %35 = load i64, i64* %8, align 8, !dbg !3191, !tbaa !964
  br label %36, !dbg !3192

36:                                               ; preds = %13, %27
  %37 = phi i64 [ %14, %13 ], [ %35, %27 ], !dbg !3191
  call void @llvm.dbg.value(metadata i64 %37, metadata !3159, metadata !DIExpression()), !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #24, !dbg !3193
  ret i64 %37, !dbg !3194
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoumax(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5) local_unnamed_addr #8 !dbg !3195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3199, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3200, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %2, metadata !3201, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %3, metadata !3202, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8* %4, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %5, metadata !3204, metadata !DIExpression()), !dbg !3205
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !3206
  ret i64 %7, !dbg !3207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoumax(i8* %0, i8** %1, i32 %2, i64* nocapture %3, i8* readonly %4) local_unnamed_addr #8 !dbg !3208 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8** %1, metadata !3215, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 %2, metadata !3216, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64* %3, metadata !3217, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i8* %4, metadata !3218, metadata !DIExpression()), !dbg !3232
  %7 = bitcast i8** %6 to i8*, !dbg !3233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #24, !dbg !3233
  call void @llvm.dbg.value(metadata i32 0, metadata !3222, metadata !DIExpression()), !dbg !3232
  %8 = icmp ult i32 %2, 37, !dbg !3234
  br i1 %8, label %10, label %9, !dbg !3234

9:                                                ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.121, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #26, !dbg !3234
  unreachable, !dbg !3234

10:                                               ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3237
  call void @llvm.dbg.value(metadata i8** %25, metadata !3220, metadata !DIExpression()), !dbg !3232
  %12 = tail call i32* @__errno_location() #28, !dbg !3238
  store i32 0, i32* %12, align 4, !dbg !3239, !tbaa !879
  call void @llvm.dbg.value(metadata i8* %0, metadata !3223, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8 undef, metadata !3226, metadata !DIExpression()), !dbg !3240
  %13 = tail call i16** @__ctype_b_loc() #28, !dbg !3232
  %14 = load i16*, i16** %13, align 8, !tbaa !737
  br label %15, !dbg !3241

15:                                               ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !3240
  %17 = load i8, i8* %16, align 1, !dbg !3240, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %17, metadata !3226, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8* %16, metadata !3223, metadata !DIExpression()), !dbg !3240
  %18 = zext i8 %17 to i64, !dbg !3242
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !3242
  %20 = load i16, i16* %19, align 2, !dbg !3242, !tbaa !1013
  %21 = and i16 %20, 8192, !dbg !3242
  %22 = icmp eq i16 %21, 0, !dbg !3241
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %23, metadata !3223, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8 undef, metadata !3226, metadata !DIExpression()), !dbg !3240
  br i1 %22, label %24, label %15, !dbg !3241, !llvm.loop !3244

24:                                               ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !3237
  %26 = icmp eq i8 %17, 45, !dbg !3246
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  %28 = call i64 @strtoumax(i8* %0, i8** %25, i32 %2) #24, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %28, metadata !3221, metadata !DIExpression()), !dbg !3232
  %29 = load i8*, i8** %25, align 8, !dbg !3249, !tbaa !737
  %30 = icmp eq i8* %29, %0, !dbg !3251
  br i1 %30, label %31, label %40, !dbg !3252

31:                                               ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !3253
  br i1 %32, label %285, label %33, !dbg !3256

33:                                               ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !3257, !tbaa !866
  %35 = icmp eq i8 %34, 0, !dbg !3257
  br i1 %35, label %285, label %36, !dbg !3258

36:                                               ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !3257
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #25, !dbg !3259
  %39 = icmp eq i8* %38, null, !dbg !3259
  br i1 %39, label %285, label %47, !dbg !3260

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !3261, !tbaa !879
  switch i32 %41, label %285 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !3263

42:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !3222, metadata !DIExpression()), !dbg !3232
  br label %43, !dbg !3264

43:                                               ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !3232
  call void @llvm.dbg.value(metadata i32 %44, metadata !3222, metadata !DIExpression()), !dbg !3232
  %45 = icmp eq i8* %4, null, !dbg !3266
  br i1 %45, label %46, label %47, !dbg !3268

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !3221, metadata !DIExpression()), !dbg !3232
  store i64 %28, i64* %3, align 8, !dbg !3269, !tbaa !964
  br label %285, !dbg !3271

47:                                               ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !3272, !tbaa !866
  %51 = sext i8 %50 to i32, !dbg !3272
  %52 = icmp eq i8 %50, 0, !dbg !3273
  br i1 %52, label %282, label %53, !dbg !3274

53:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !3227, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 1, metadata !3230, metadata !DIExpression()), !dbg !3275
  %54 = call i8* @strchr(i8* nonnull %4, i32 %51) #25, !dbg !3276
  %55 = icmp eq i8* %54, null, !dbg !3276
  br i1 %55, label %56, label %58, !dbg !3278

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !3221, metadata !DIExpression()), !dbg !3232
  store i64 %49, i64* %3, align 8, !dbg !3279, !tbaa !964
  %57 = or i32 %48, 2, !dbg !3281
  br label %285, !dbg !3282

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
  ], !dbg !3283

59:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #25, !dbg !3284
  %61 = icmp eq i8* %60, null, !dbg !3284
  br i1 %61, label %72, label %62, !dbg !3287

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !3288
  %64 = load i8, i8* %63, align 1, !dbg !3288, !tbaa !866
  %65 = sext i8 %64 to i32, !dbg !3288
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !3289

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !3290
  %68 = load i8, i8* %67, align 1, !dbg !3290, !tbaa !866
  %69 = icmp eq i8 %68, 66, !dbg !3293
  %70 = select i1 %69, i64 3, i64 1, !dbg !3294
  br label %72, !dbg !3294

71:                                               ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !3227, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 2, metadata !3230, metadata !DIExpression()), !dbg !3275
  br label %72, !dbg !3295

72:                                               ; preds = %66, %59, %62, %71, %58
  %73 = phi i64 [ 1024, %58 ], [ 1024, %62 ], [ 1000, %71 ], [ 1024, %59 ], [ 1024, %66 ]
  %74 = phi i64 [ 1, %58 ], [ 1, %62 ], [ 2, %71 ], [ 1, %59 ], [ %70, %66 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3230, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 undef, metadata !3227, metadata !DIExpression()), !dbg !3275
  switch i32 %51, label %265 [
    i32 98, label %205
    i32 66, label %210
    i32 99, label %272
    i32 69, label %175
    i32 71, label %215
    i32 103, label %215
    i32 107, label %267
    i32 75, label %267
    i32 77, label %230
    i32 109, label %230
    i32 80, label %150
    i32 84, label %240
    i32 116, label %240
    i32 119, label %260
    i32 89, label %110
    i32 90, label %75
  ], !dbg !3296

75:                                               ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3316
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !3316
  %78 = mul i64 %49, %73, !dbg !3318
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !3318
  call void @llvm.dbg.value(metadata i1 %77, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %77, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %80 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %79) #24, !dbg !3316
  %81 = extractvalue { i64, i1 } %80, 1, !dbg !3316
  %82 = mul i64 %79, %73, !dbg !3318
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !3318
  %84 = or i1 %77, %81, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %84, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %84, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %85 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %83) #24, !dbg !3316
  %86 = extractvalue { i64, i1 } %85, 1, !dbg !3316
  %87 = mul i64 %83, %73, !dbg !3318
  %88 = select i1 %86, i64 -1, i64 %87, !dbg !3318
  %89 = or i1 %84, %86, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %89, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %89, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %90 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %88) #24, !dbg !3316
  %91 = extractvalue { i64, i1 } %90, 1, !dbg !3316
  %92 = mul i64 %88, %73, !dbg !3318
  %93 = select i1 %91, i64 -1, i64 %92, !dbg !3318
  %94 = or i1 %89, %91, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %94, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %94, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %93) #24, !dbg !3316
  %96 = extractvalue { i64, i1 } %95, 1, !dbg !3316
  %97 = mul i64 %93, %73, !dbg !3318
  %98 = select i1 %96, i64 -1, i64 %97, !dbg !3318
  %99 = or i1 %94, %96, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %99, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %99, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %100 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %98) #24, !dbg !3316
  %101 = extractvalue { i64, i1 } %100, 1, !dbg !3316
  %102 = mul i64 %98, %73, !dbg !3318
  %103 = select i1 %101, i64 -1, i64 %102, !dbg !3318
  %104 = or i1 %99, %101, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %104, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i1 %104, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3314
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3314
  %105 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %103) #24, !dbg !3316
  %106 = extractvalue { i64, i1 } %105, 1, !dbg !3316
  %107 = mul i64 %103, %73, !dbg !3318
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !3318
  %109 = or i1 %104, %106, !dbg !3319
  call void @llvm.dbg.value(metadata i1 %109, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3305
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3305
  br label %272, !dbg !3320

110:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 8, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %111 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3325
  %112 = extractvalue { i64, i1 } %111, 1, !dbg !3325
  %113 = mul i64 %49, %73, !dbg !3326
  %114 = select i1 %112, i64 -1, i64 %113, !dbg !3326
  call void @llvm.dbg.value(metadata i1 %112, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %112, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %115 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %114) #24, !dbg !3325
  %116 = extractvalue { i64, i1 } %115, 1, !dbg !3325
  %117 = mul i64 %114, %73, !dbg !3326
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !3326
  %119 = or i1 %112, %116, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %119, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %119, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %120 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %118) #24, !dbg !3325
  %121 = extractvalue { i64, i1 } %120, 1, !dbg !3325
  %122 = mul i64 %118, %73, !dbg !3326
  %123 = select i1 %121, i64 -1, i64 %122, !dbg !3326
  %124 = or i1 %119, %121, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %124, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %124, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %125 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %123) #24, !dbg !3325
  %126 = extractvalue { i64, i1 } %125, 1, !dbg !3325
  %127 = mul i64 %123, %73, !dbg !3326
  %128 = select i1 %126, i64 -1, i64 %127, !dbg !3326
  %129 = or i1 %124, %126, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %129, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %129, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %130 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %128) #24, !dbg !3325
  %131 = extractvalue { i64, i1 } %130, 1, !dbg !3325
  %132 = mul i64 %128, %73, !dbg !3326
  %133 = select i1 %131, i64 -1, i64 %132, !dbg !3326
  %134 = or i1 %129, %131, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %134, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %134, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %135 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %133) #24, !dbg !3325
  %136 = extractvalue { i64, i1 } %135, 1, !dbg !3325
  %137 = mul i64 %133, %73, !dbg !3326
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !3326
  %139 = or i1 %134, %136, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %139, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %139, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %140 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %138) #24, !dbg !3325
  %141 = extractvalue { i64, i1 } %140, 1, !dbg !3325
  %142 = mul i64 %138, %73, !dbg !3326
  %143 = select i1 %141, i64 -1, i64 %142, !dbg !3326
  %144 = or i1 %139, %141, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %144, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %144, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3323
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3323
  %145 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %143) #24, !dbg !3325
  %146 = extractvalue { i64, i1 } %145, 1, !dbg !3325
  %147 = mul i64 %143, %73, !dbg !3326
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !3326
  %149 = or i1 %144, %146, !dbg !3327
  call void @llvm.dbg.value(metadata i1 %149, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3321
  br label %272, !dbg !3320

150:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3330
  %151 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3332
  %152 = extractvalue { i64, i1 } %151, 1, !dbg !3332
  %153 = mul i64 %49, %73, !dbg !3333
  %154 = select i1 %152, i64 -1, i64 %153, !dbg !3333
  call void @llvm.dbg.value(metadata i1 %152, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i1 %152, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3330
  %155 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %154) #24, !dbg !3332
  %156 = extractvalue { i64, i1 } %155, 1, !dbg !3332
  %157 = mul i64 %154, %73, !dbg !3333
  %158 = select i1 %156, i64 -1, i64 %157, !dbg !3333
  %159 = or i1 %152, %156, !dbg !3334
  call void @llvm.dbg.value(metadata i1 %159, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i1 %159, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3330
  %160 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %158) #24, !dbg !3332
  %161 = extractvalue { i64, i1 } %160, 1, !dbg !3332
  %162 = mul i64 %158, %73, !dbg !3333
  %163 = select i1 %161, i64 -1, i64 %162, !dbg !3333
  %164 = or i1 %159, %161, !dbg !3334
  call void @llvm.dbg.value(metadata i1 %164, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i1 %164, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3330
  %165 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %163) #24, !dbg !3332
  %166 = extractvalue { i64, i1 } %165, 1, !dbg !3332
  %167 = mul i64 %163, %73, !dbg !3333
  %168 = select i1 %166, i64 -1, i64 %167, !dbg !3333
  %169 = or i1 %164, %166, !dbg !3334
  call void @llvm.dbg.value(metadata i1 %169, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i1 %169, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3330
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3330
  %170 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %168) #24, !dbg !3332
  %171 = extractvalue { i64, i1 } %170, 1, !dbg !3332
  %172 = mul i64 %168, %73, !dbg !3333
  %173 = select i1 %171, i64 -1, i64 %172, !dbg !3333
  %174 = or i1 %169, %171, !dbg !3334
  call void @llvm.dbg.value(metadata i1 %174, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3328
  br label %272, !dbg !3320

175:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %176 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3339
  %177 = extractvalue { i64, i1 } %176, 1, !dbg !3339
  %178 = mul i64 %49, %73, !dbg !3340
  %179 = select i1 %177, i64 -1, i64 %178, !dbg !3340
  call void @llvm.dbg.value(metadata i1 %177, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %177, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %180 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %179) #24, !dbg !3339
  %181 = extractvalue { i64, i1 } %180, 1, !dbg !3339
  %182 = mul i64 %179, %73, !dbg !3340
  %183 = select i1 %181, i64 -1, i64 %182, !dbg !3340
  %184 = or i1 %177, %181, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %184, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %184, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %185 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %183) #24, !dbg !3339
  %186 = extractvalue { i64, i1 } %185, 1, !dbg !3339
  %187 = mul i64 %183, %73, !dbg !3340
  %188 = select i1 %186, i64 -1, i64 %187, !dbg !3340
  %189 = or i1 %184, %186, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %189, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %189, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %190 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %188) #24, !dbg !3339
  %191 = extractvalue { i64, i1 } %190, 1, !dbg !3339
  %192 = mul i64 %188, %73, !dbg !3340
  %193 = select i1 %191, i64 -1, i64 %192, !dbg !3340
  %194 = or i1 %189, %191, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %194, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %194, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %193) #24, !dbg !3339
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !3339
  %197 = mul i64 %193, %73, !dbg !3340
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !3340
  %199 = or i1 %194, %196, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %199, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i1 %199, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3337
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3337
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %198) #24, !dbg !3339
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3339
  %202 = mul i64 %198, %73, !dbg !3340
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3340
  %204 = or i1 %199, %201, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %204, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3335
  br label %272, !dbg !3320

205:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3342
  call void @llvm.dbg.value(metadata i32 512, metadata !3313, metadata !DIExpression()) #24, !dbg !3342
  %206 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 512) #24, !dbg !3344
  %207 = extractvalue { i64, i1 } %206, 1, !dbg !3344
  %208 = shl i64 %49, 9, !dbg !3345
  %209 = select i1 %207, i64 -1, i64 %208, !dbg !3345
  call void @llvm.dbg.value(metadata i1 %207, metadata !3231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3275
  br label %272, !dbg !3346

210:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3347
  call void @llvm.dbg.value(metadata i32 1024, metadata !3313, metadata !DIExpression()) #24, !dbg !3347
  %211 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 1024) #24, !dbg !3349
  %212 = extractvalue { i64, i1 } %211, 1, !dbg !3349
  %213 = shl i64 %49, 10, !dbg !3350
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !3350
  call void @llvm.dbg.value(metadata i1 %212, metadata !3231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3275
  br label %272, !dbg !3351

215:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3302, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3354
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3354
  %216 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3356
  %217 = extractvalue { i64, i1 } %216, 1, !dbg !3356
  %218 = mul i64 %49, %73, !dbg !3357
  %219 = select i1 %217, i64 -1, i64 %218, !dbg !3357
  call void @llvm.dbg.value(metadata i1 %217, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i1 %217, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3354
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3354
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %219) #24, !dbg !3356
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3356
  %222 = mul i64 %219, %73, !dbg !3357
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3357
  %224 = or i1 %217, %221, !dbg !3358
  call void @llvm.dbg.value(metadata i1 %224, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i1 %224, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3354
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3354
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %223) #24, !dbg !3356
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3356
  %227 = mul i64 %223, %73, !dbg !3357
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3357
  %229 = or i1 %224, %226, !dbg !3358
  call void @llvm.dbg.value(metadata i1 %229, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3352
  br label %272, !dbg !3320

230:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3302, metadata !DIExpression()) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3361
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3361
  %231 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3363
  %232 = extractvalue { i64, i1 } %231, 1, !dbg !3363
  %233 = mul i64 %49, %73, !dbg !3364
  %234 = select i1 %232, i64 -1, i64 %233, !dbg !3364
  call void @llvm.dbg.value(metadata i1 %232, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3359
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %234) #24, !dbg !3363
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3363
  %237 = mul i64 %234, %73, !dbg !3364
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3364
  %239 = or i1 %232, %236, !dbg !3365
  call void @llvm.dbg.value(metadata i1 %239, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3359
  br label %272, !dbg !3320

240:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3302, metadata !DIExpression()) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3368
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3368
  %241 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3370
  %242 = extractvalue { i64, i1 } %241, 1, !dbg !3370
  %243 = mul i64 %49, %73, !dbg !3371
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !3371
  call void @llvm.dbg.value(metadata i1 %242, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()) #24, !dbg !3366
  %245 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %244) #24, !dbg !3370
  %246 = extractvalue { i64, i1 } %245, 1, !dbg !3370
  %247 = mul i64 %244, %73, !dbg !3371
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !3371
  %249 = or i1 %242, %246, !dbg !3372
  call void @llvm.dbg.value(metadata i1 %249, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()) #24, !dbg !3366
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %248) #24, !dbg !3370
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !3370
  %252 = mul i64 %248, %73, !dbg !3371
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !3371
  %254 = or i1 %249, %251, !dbg !3372
  call void @llvm.dbg.value(metadata i1 %254, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()) #24, !dbg !3366
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %253) #24, !dbg !3370
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !3370
  %257 = mul i64 %253, %73, !dbg !3371
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !3371
  %259 = or i1 %254, %256, !dbg !3372
  call void @llvm.dbg.value(metadata i1 %259, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3366
  br label %272, !dbg !3320

260:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3373
  call void @llvm.dbg.value(metadata i32 2, metadata !3313, metadata !DIExpression()) #24, !dbg !3373
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %49, i64 2) #24, !dbg !3375
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3375
  %263 = shl i64 %49, 1, !dbg !3376
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3376
  call void @llvm.dbg.value(metadata i1 %262, metadata !3231, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3275
  br label %272, !dbg !3377

265:                                              ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !3221, metadata !DIExpression()), !dbg !3232
  store i64 %49, i64* %3, align 8, !dbg !3378, !tbaa !964
  %266 = or i32 %48, 2, !dbg !3379
  br label %285, !dbg !3380

267:                                              ; preds = %72, %72
  call void @llvm.dbg.value(metadata i64* undef, metadata !3302, metadata !DIExpression()) #24, !dbg !3381
  call void @llvm.dbg.value(metadata i32 undef, metadata !3303, metadata !DIExpression()) #24, !dbg !3381
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()) #24, !dbg !3381
  call void @llvm.dbg.value(metadata i32 undef, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3381
  call void @llvm.dbg.value(metadata i64* undef, metadata !3308, metadata !DIExpression()) #24, !dbg !3383
  call void @llvm.dbg.value(metadata i32 undef, metadata !3313, metadata !DIExpression()) #24, !dbg !3383
  %268 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %73, i64 %49) #24, !dbg !3385
  %269 = extractvalue { i64, i1 } %268, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i32 undef, metadata !3304, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #24, !dbg !3381
  call void @llvm.dbg.value(metadata i1 %269, metadata !3297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !3381
  %270 = mul i64 %49, %73, !dbg !3386
  %271 = select i1 %269, i64 -1, i64 %270, !dbg !3386
  br label %272, !dbg !3320

272:                                              ; preds = %75, %110, %240, %150, %230, %267, %215, %175, %205, %210, %260, %72
  %273 = phi i64 [ %264, %260 ], [ %49, %72 ], [ %214, %210 ], [ %209, %205 ], [ %203, %175 ], [ %228, %215 ], [ %271, %267 ], [ %238, %230 ], [ %173, %150 ], [ %258, %240 ], [ %148, %110 ], [ %108, %75 ], !dbg !3232
  %274 = phi i1 [ %262, %260 ], [ false, %72 ], [ %212, %210 ], [ %207, %205 ], [ %204, %175 ], [ %229, %215 ], [ %269, %267 ], [ %239, %230 ], [ %174, %150 ], [ %259, %240 ], [ %149, %110 ], [ %109, %75 ]
  %275 = zext i1 %274 to i32, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %275, metadata !3231, metadata !DIExpression()), !dbg !3275
  %276 = or i32 %48, %275, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %276, metadata !3222, metadata !DIExpression()), !dbg !3232
  %277 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !3388
  store i8* %277, i8** %25, align 8, !dbg !3388, !tbaa !737
  %278 = load i8, i8* %277, align 1, !dbg !3389, !tbaa !866
  %279 = icmp eq i8 %278, 0, !dbg !3389
  %280 = or i32 %276, 2
  %281 = select i1 %279, i32 %276, i32 %280, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %281, metadata !3222, metadata !DIExpression()), !dbg !3232
  br label %282

282:                                              ; preds = %272, %47
  %283 = phi i64 [ %49, %47 ], [ %273, %272 ], !dbg !3392
  %284 = phi i32 [ %48, %47 ], [ %281, %272 ], !dbg !3393
  call void @llvm.dbg.value(metadata i32 %284, metadata !3222, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %283, metadata !3221, metadata !DIExpression()), !dbg !3232
  store i64 %283, i64* %3, align 8, !dbg !3394, !tbaa !964
  br label %285, !dbg !3395

285:                                              ; preds = %56, %265, %40, %31, %33, %36, %24, %282, %46
  %286 = phi i32 [ %284, %282 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %266, %265 ], !dbg !3232
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #24, !dbg !3396
  ret i32 %286, !dbg !3396
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !3397 i64 @strtoumax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3401 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3403, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3409
  %3 = icmp eq i64 %0, 0, !dbg !3410
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3411
  br i1 %5, label %11, label %6, !dbg !3411

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3406, metadata !DIExpression()), !dbg !3412
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3413
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3413
  br i1 %8, label %9, label %11, !dbg !3415

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !3416
  store i32 12, i32* %10, align 4, !dbg !3418, !tbaa !879
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3403, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i64 %12, metadata !3404, metadata !DIExpression()), !dbg !3409
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %14, metadata !3405, metadata !DIExpression()), !dbg !3409
  br label %15, !dbg !3420

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3409
  ret i8* %16, !dbg !3421
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3422 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3460, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3464
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %2, metadata !3462, metadata !DIExpression()), !dbg !3464
  %3 = icmp slt i32 %2, 0, !dbg !3466
  br i1 %3, label %4, label %6, !dbg !3468

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3469
  br label %24, !dbg !3470

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3471
  %8 = icmp eq i32 %7, 0, !dbg !3471
  br i1 %8, label %13, label %9, !dbg !3473

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3474
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3475
  %12 = icmp eq i64 %11, -1, !dbg !3476
  br i1 %12, label %16, label %13, !dbg !3477

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3478
  %15 = icmp eq i32 %14, 0, !dbg !3478
  br i1 %15, label %16, label %18, !dbg !3479

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3461, metadata !DIExpression()), !dbg !3464
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %21, metadata !3463, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3481

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3482
  %20 = load i32, i32* %19, align 4, !dbg !3482, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %20, metadata !3461, metadata !DIExpression()), !dbg !3464
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3480
  call void @llvm.dbg.value(metadata i32 %21, metadata !3463, metadata !DIExpression()), !dbg !3464
  %22 = icmp eq i32 %20, 0, !dbg !3483
  br i1 %22, label %24, label %23, !dbg !3481

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3485, !tbaa !879
  call void @llvm.dbg.value(metadata i32 -1, metadata !3463, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3487

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3464
  ret i32 %25, !dbg !3488
}

; Function Attrs: nofree nounwind
declare !dbg !3489 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3492 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3496 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3534, metadata !DIExpression()), !dbg !3535
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3536
  br i1 %2, label %6, label %3, !dbg !3538

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3539
  %5 = icmp eq i32 %4, 0, !dbg !3539
  br i1 %5, label %6, label %8, !dbg !3540

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3541
  br label %17, !dbg !3542

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3543, metadata !DIExpression()) #24, !dbg !3548
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3550
  %10 = load i32, i32* %9, align 8, !dbg !3550, !tbaa !1089
  %11 = and i32 %10, 256, !dbg !3552
  %12 = icmp eq i32 %11, 0, !dbg !3552
  br i1 %12, label %15, label %13, !dbg !3553

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3554
  br label %15, !dbg !3554

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3555
  br label %17, !dbg !3556

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3535
  ret i32 %18, !dbg !3557
}

; Function Attrs: nofree nounwind
declare !dbg !3558 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3561 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i32 %2, metadata !3601, metadata !DIExpression()), !dbg !3605
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3606
  %5 = load i8*, i8** %4, align 8, !dbg !3606, !tbaa !958
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3607
  %7 = load i8*, i8** %6, align 8, !dbg !3607, !tbaa !954
  %8 = icmp eq i8* %5, %7, !dbg !3608
  br i1 %8, label %9, label %28, !dbg !3609

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3610
  %11 = load i8*, i8** %10, align 8, !dbg !3610, !tbaa !1026
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3611
  %13 = load i8*, i8** %12, align 8, !dbg !3611, !tbaa !3612
  %14 = icmp eq i8* %11, %13, !dbg !3613
  br i1 %14, label %15, label %28, !dbg !3614

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3615
  %17 = load i8*, i8** %16, align 8, !dbg !3615, !tbaa !3616
  %18 = icmp eq i8* %17, null, !dbg !3617
  br i1 %18, label %19, label %28, !dbg !3618

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3619
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %21, metadata !3602, metadata !DIExpression()), !dbg !3621
  %22 = icmp eq i64 %21, -1, !dbg !3622
  br i1 %22, label %30, label %23, !dbg !3624

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3625
  %25 = load i32, i32* %24, align 8, !dbg !3626, !tbaa !1089
  %26 = and i32 %25, -17, !dbg !3626
  store i32 %26, i32* %24, align 8, !dbg !3626, !tbaa !1089
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3627
  store i64 %21, i64* %27, align 8, !dbg !3628, !tbaa !3629
  br label %30, !dbg !3630

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3631
  br label %30, !dbg !3632

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3605
  ret i32 %31, !dbg !3633
}

; Function Attrs: nofree nounwind
declare !dbg !3634 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3637 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3653, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %1, metadata !3654, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %2, metadata !3655, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3656, metadata !DIExpression()), !dbg !3662
  %6 = bitcast i32* %5 to i8*, !dbg !3663
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3663
  %7 = icmp eq i32* %0, null, !dbg !3664
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3666
  call void @llvm.dbg.value(metadata i32* %8, metadata !3653, metadata !DIExpression()), !dbg !3662
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %9, metadata !3657, metadata !DIExpression()), !dbg !3662
  %10 = icmp ugt i64 %9, -3, !dbg !3668
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3669
  br i1 %12, label %13, label %18, !dbg !3669

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !3670
  br i1 %14, label %18, label %15, !dbg !3671

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3672, !tbaa !866
  call void @llvm.dbg.value(metadata i8 %16, metadata !3659, metadata !DIExpression()), !dbg !3673
  %17 = zext i8 %16 to i32, !dbg !3674
  store i32 %17, i32* %8, align 4, !dbg !3675, !tbaa !879
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3662
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3676
  ret i64 %19, !dbg !3676
}

; Function Attrs: nounwind
declare !dbg !3677 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3681 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3719, metadata !DIExpression()), !dbg !3724
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !3725
  call void @llvm.dbg.value(metadata i1 undef, metadata !3720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3724
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3726, metadata !DIExpression()), !dbg !3729
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3731
  %4 = load i32, i32* %3, align 8, !dbg !3731, !tbaa !1089
  %5 = and i32 %4, 32, !dbg !3732
  %6 = icmp eq i32 %5, 0, !dbg !3732
  call void @llvm.dbg.value(metadata i1 %6, metadata !3722, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3724
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !3733
  %8 = icmp eq i32 %7, 0, !dbg !3734
  call void @llvm.dbg.value(metadata i1 %8, metadata !3723, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3724
  br i1 %6, label %9, label %19, !dbg !3735

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3737
  call void @llvm.dbg.value(metadata i1 %10, metadata !3720, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3724
  %11 = or i1 %10, %8, !dbg !3738
  %12 = xor i1 %8, true, !dbg !3738
  %13 = sext i1 %12 to i32, !dbg !3738
  br i1 %11, label %22, label %14, !dbg !3738

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !3739
  %16 = load i32, i32* %15, align 4, !dbg !3739, !tbaa !879
  %17 = icmp ne i32 %16, 9, !dbg !3740
  %18 = sext i1 %17 to i32, !dbg !3741
  br label %22, !dbg !3741

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3742

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !3744
  store i32 0, i32* %21, align 4, !dbg !3746, !tbaa !879
  br label %22, !dbg !3744

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3724
  ret i32 %23, !dbg !3747
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3748 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3757
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3758
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3758
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3753, metadata !DIExpression()), !dbg !3759
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !3760
  %5 = icmp eq i32 %4, 0, !dbg !3760
  br i1 %5, label %6, label %13, !dbg !3762

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3763
  %8 = load i16, i16* %7, align 16, !dbg !3763
  %9 = icmp eq i16 %8, 67, !dbg !3763
  br i1 %9, label %13, label %10, !dbg !3764

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !3765
  %12 = icmp ne i32 %11, 0, !dbg !3766
  br label %13, !dbg !3764

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3757
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3767
  ret i1 %14, !dbg !3767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3768 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %1, metadata !3772, metadata !DIExpression()), !dbg !3774
  %2 = icmp eq i8* %1, null, !dbg !3775
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3777
  call void @llvm.dbg.value(metadata i8* %3, metadata !3772, metadata !DIExpression()), !dbg !3774
  %4 = load i8, i8* %3, align 1, !dbg !3778, !tbaa !866
  %5 = icmp eq i8 %4, 0, !dbg !3782
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !3783
  call void @llvm.dbg.value(metadata i8* %6, metadata !3772, metadata !DIExpression()), !dbg !3774
  ret i8* %6, !dbg !3784
}

; Function Attrs: nounwind
declare !dbg !3785 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8* %1, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %2, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()) #24, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %1, metadata !3799, metadata !DIExpression()) #24, !dbg !3805
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()) #24, !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()) #24, !dbg !3813
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3815
  call void @llvm.dbg.value(metadata i8* %4, metadata !3812, metadata !DIExpression()) #24, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %4, metadata !3801, metadata !DIExpression()) #24, !dbg !3805
  %5 = icmp eq i8* %4, null, !dbg !3816
  br i1 %5, label %6, label %9, !dbg !3817

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3818
  br i1 %7, label %19, label %8, !dbg !3821

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3822, !tbaa !866
  br label %19, !dbg !3823

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3824
  call void @llvm.dbg.value(metadata i64 %10, metadata !3802, metadata !DIExpression()) #24, !dbg !3825
  %11 = icmp ult i64 %10, %2, !dbg !3826
  br i1 %11, label %12, label %14, !dbg !3828

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3829
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #24, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #24, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %13, metadata !3835, metadata !DIExpression()) #24, !dbg !3836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3838
  br label %19, !dbg !3839

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3840
  br i1 %15, label %19, label %16, !dbg !3843

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %1, metadata !3831, metadata !DIExpression()) #24, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %4, metadata !3834, metadata !DIExpression()) #24, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %17, metadata !3835, metadata !DIExpression()) #24, !dbg !3846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3848
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3849
  store i8 0, i8* %18, align 1, !dbg !3850, !tbaa !866
  br label %19, !dbg !3851

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3852
  ret i32 %20, !dbg !3853
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3854 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3856, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()) #24, !dbg !3858
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %2, metadata !3812, metadata !DIExpression()) #24, !dbg !3858
  ret i8* %2, !dbg !3861
}

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!2, !187, !193, !200, !270, !206, !212, !273, !264, !280, !297, !299, !310, !314, !316, !318, !320, !322, !325, !327, !329, !718}
!llvm.ident = !{!720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720, !720}
!llvm.module.flags = !{!721, !722, !723, !724, !725}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 45, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/fold.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!44 = !{!45, !47, !48, !51, !53, !54, !55, !56}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !{!58, !61, !63, !64, !69, !83, !181}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "break_spaces", scope: !2, file: !3, line: 39, type: !60, isLocal: true, isDefinition: true)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "count_bytes", scope: !2, file: !3, line: 42, type: !60, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "shortopts", scope: !2, file: !3, line: 47, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 280, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 35)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 49, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1536, elements: !81)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !74, line: 50, size: 256, elements: !75)
!74 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!75 = !{!76, !77, !78, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 52, baseType: !51, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !73, file: !74, line: 55, baseType: !53, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !73, file: !74, line: 56, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !74, line: 57, baseType: !53, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 6)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "line_out", scope: !85, file: !3, line: 126, type: !45, isLocal: true, isDefinition: true)
!85 = distinct !DISubprogram(name: "fold_file", scope: !3, file: !3, line: 120, type: !86, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!60, !51, !48}
!88 = !{!89, !90, !91, !147, !148, !149, !150, !151, !156, !157, !158, !163, !164, !167, !169, !170, !171, !173, !174, !175, !178, !179, !180}
!89 = !DILocalVariable(name: "filename", arg: 1, scope: !85, file: !3, line: 120, type: !51)
!90 = !DILocalVariable(name: "width", arg: 2, scope: !85, file: !3, line: 120, type: !48)
!91 = !DILocalVariable(name: "istream", scope: !85, file: !3, line: 122, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !95)
!94 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !97)
!96 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !113, !115, !116, !117, !121, !122, !124, !128, !131, !133, !136, !139, !140, !141, !142, !143}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !95, file: !96, line: 51, baseType: !53, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !95, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !95, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !95, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !95, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !95, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !95, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !95, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !95, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !95, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !95, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !95, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !95, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !96, line: 36, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !95, file: !96, line: 70, baseType: !114, size: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !95, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !95, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !95, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !119, line: 152, baseType: !120)
!119 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!120 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !95, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !95, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !95, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 1)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !95, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !96, line: 43, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !95, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !119, line: 153, baseType: !120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !95, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !96, line: 37, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !95, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !96, line: 38, flags: DIFlagFwdDecl)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !95, file: !96, line: 93, baseType: !114, size: 64, offset: 1344)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !95, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !95, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !95, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !95, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !DILocalVariable(name: "c", scope: !85, file: !3, line: 123, type: !53)
!148 = !DILocalVariable(name: "column", scope: !85, file: !3, line: 124, type: !48)
!149 = !DILocalVariable(name: "offset_out", scope: !85, file: !3, line: 125, type: !48)
!150 = !DILocalVariable(name: "saved_errno", scope: !85, file: !3, line: 128, type: !53)
!151 = !DILocalVariable(name: "__ptr", scope: !152, file: !3, line: 154, type: !51)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 154, column: 11)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 152, column: 9)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 151, column: 11)
!155 = distinct !DILexicalBlock(scope: !85, file: !3, line: 147, column: 5)
!156 = !DILocalVariable(name: "__stream", scope: !152, file: !3, line: 154, type: !92)
!157 = !DILocalVariable(name: "__cnt", scope: !152, file: !3, line: 154, type: !48)
!158 = !DILocalVariable(name: "found_blank", scope: !159, file: !3, line: 169, type: !60)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 168, column: 13)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 167, column: 15)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 163, column: 9)
!162 = distinct !DILexicalBlock(scope: !155, file: !3, line: 162, column: 11)
!163 = !DILocalVariable(name: "logical_end", scope: !159, file: !3, line: 170, type: !48)
!164 = !DILocalVariable(name: "i", scope: !165, file: !3, line: 185, type: !48)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 184, column: 17)
!166 = distinct !DILexicalBlock(scope: !159, file: !3, line: 183, column: 19)
!167 = !DILocalVariable(name: "__ptr", scope: !168, file: !3, line: 189, type: !51)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 189, column: 19)
!169 = !DILocalVariable(name: "__stream", scope: !168, file: !3, line: 189, type: !92)
!170 = !DILocalVariable(name: "__cnt", scope: !168, file: !3, line: 189, type: !48)
!171 = !DILocalVariable(name: "__ptr", scope: !172, file: !3, line: 210, type: !51)
!172 = distinct !DILexicalBlock(scope: !161, file: !3, line: 210, column: 11)
!173 = !DILocalVariable(name: "__stream", scope: !172, file: !3, line: 210, type: !92)
!174 = !DILocalVariable(name: "__cnt", scope: !172, file: !3, line: 210, type: !48)
!175 = !DILocalVariable(name: "__ptr", scope: !176, file: !3, line: 221, type: !51)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 221, column: 5)
!177 = distinct !DILexicalBlock(scope: !85, file: !3, line: 220, column: 7)
!178 = !DILocalVariable(name: "__stream", scope: !176, file: !3, line: 221, type: !92)
!179 = !DILocalVariable(name: "__cnt", scope: !176, file: !3, line: 221, type: !48)
!180 = !DILabel(scope: !155, name: "rescan", file: !3, line: 159)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "allocated_out", scope: !85, file: !3, line: 127, type: !48, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!184 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "Version", scope: !187, file: !188, line: 2, type: !51, isLocal: false, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !190, splitDebugInlining: false, nameTableKind: None)
!188 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!189 = !{}
!190 = !{!185}
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "file_name", scope: !193, file: !194, line: 46, type: !51, isLocal: true, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!191, !196}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !193, file: !194, line: 56, type: !60, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "exit_failure", scope: !200, file: !201, line: 24, type: !203, isLocal: false, isDefinition: true)
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !202, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!198}
!203 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "program_name", scope: !206, file: !207, line: 33, type: !51, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !208, globals: !209, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!47, !45}
!209 = !{!204}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !212, file: !213, line: 85, type: !258, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !214, retainedTypes: !220, globals: !221, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!5, !215, !29}
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!220 = !{!53, !54, !48, !45}
!221 = !{!210, !222, !228, !240, !242, !247, !254, !256}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !212, file: !213, line: 101, type: !224, isLocal: false, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 320, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!226 = !{!227}
!227 = !DISubrange(count: 10)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !212, file: !213, line: 1052, type: !230, isLocal: false, isDefinition: true)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !213, line: 65, size: 448, elements: !231)
!231 = !{!232, !233, !234, !238, !239}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !230, file: !213, line: 68, baseType: !5, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !213, line: 71, baseType: !53, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !230, file: !213, line: 75, baseType: !235, size: 256, offset: 64)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !230, file: !213, line: 78, baseType: !51, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !230, file: !213, line: 81, baseType: !51, size: 64, offset: 384)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !212, file: !213, line: 116, type: !230, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "slot0", scope: !212, file: !213, line: 842, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 256)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "slotvec", scope: !212, file: !213, line: 845, type: !249, isLocal: true, isDefinition: true)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !213, line: 834, size: 128, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !213, line: 836, baseType: !48, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !250, file: !213, line: 837, baseType: !45, size: 64, offset: 64)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "nslots", scope: !212, file: !213, line: 843, type: !53, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "slotvec0", scope: !212, file: !213, line: 844, type: !250, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 704, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!260 = !{!261}
!261 = !DISubrange(count: 11)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !264, file: !265, line: 26, type: !267, isLocal: false, isDefinition: true)
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, globals: !266, splitDebugInlining: false, nameTableKind: None)
!265 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!266 = !{!262}
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 47)
!270 = distinct !DICompileUnit(language: DW_LANG_C99, file: !271, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !272, splitDebugInlining: false, nameTableKind: None)
!271 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!272 = !{!20}
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !275, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!274 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!275 = !{!276}
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 40, baseType: !7, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!279 = !{!47}
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282, retainedTypes: !296, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!282 = !{!283}
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !285, file: !284, line: 186, baseType: !7, size: 32, elements: !294)
!284 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!285 = distinct !DISubprogram(name: "x2nrealloc", scope: !284, file: !284, line: 174, type: !286, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !289)
!286 = !DISubroutineType(types: !287)
!287 = !{!47, !47, !288, !48}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!289 = !{!290, !291, !292, !293}
!290 = !DILocalVariable(name: "p", arg: 1, scope: !285, file: !284, line: 174, type: !47)
!291 = !DILocalVariable(name: "pn", arg: 2, scope: !285, file: !284, line: 174, type: !288)
!292 = !DILocalVariable(name: "s", arg: 3, scope: !285, file: !284, line: 174, type: !48)
!293 = !DILocalVariable(name: "n", scope: !285, file: !284, line: 176, type: !48)
!294 = !{!295}
!295 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!296 = !{!48, !45, !47}
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/xdectoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !{!302}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !303, line: 25, baseType: !7, size: 32, elements: !304)
!303 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!304 = !{!305, !306, !307, !308, !309}
!305 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!306 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!307 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!308 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!309 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !312, retainedTypes: !313, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!312 = !{!302, !29}
!313 = !{!53, !54}
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!317 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!319 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !324, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!324 = !{!48}
!325 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!326 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !331, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!330 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!331 = !{!332}
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !333, line: 41, baseType: !7, size: 32, elements: !334)
!333 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!335 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!336 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!337 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!338 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!339 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!340 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!341 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!342 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!343 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!344 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!345 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!346 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!347 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!348 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!349 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!350 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!351 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!352 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!353 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!354 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!355 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!356 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!357 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!358 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!359 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!360 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!361 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!362 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!363 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!364 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!365 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!366 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!367 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!368 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!369 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!370 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!371 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!372 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!373 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!374 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!375 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!376 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!377 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!378 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!379 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!380 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!381 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!382 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!383 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!384 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!443 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!446 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!447 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!448 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!449 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!450 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!451 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!452 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!453 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!454 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!455 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!456 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!457 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!530 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!603 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!604 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!605 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!606 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!607 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!608 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!609 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!610 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!611 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!612 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!613 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!614 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!615 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!616 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!617 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!619 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!620 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!621 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!622 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!623 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!624 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!650 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!651 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!652 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!653 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!654 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!659 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!660 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!661 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!662 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!718 = distinct !DICompileUnit(language: DW_LANG_C99, file: !719, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !189, retainedTypes: !279, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!720 = !{!"clang version 12.0.1"}
!721 = !{i32 7, !"Dwarf Version", i32 4}
!722 = !{i32 2, !"Debug Info Version", i32 3}
!723 = !{i32 1, !"wchar_size", i32 4}
!724 = !{i32 7, !"PIC Level", i32 2}
!725 = !{i32 7, !"PIE Level", i32 2}
!726 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 60, type: !727, scopeLine: 61, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !53}
!729 = !{!730}
!730 = !DILocalVariable(name: "status", arg: 1, scope: !726, file: !3, line: 60, type: !53)
!731 = !DILocation(line: 0, scope: !726)
!732 = !DILocation(line: 62, column: 14, scope: !733)
!733 = distinct !DILexicalBlock(scope: !726, file: !3, line: 62, column: 7)
!734 = !DILocation(line: 62, column: 7, scope: !726)
!735 = !DILocation(line: 63, column: 5, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 63, column: 5)
!737 = !{!738, !738, i64 0}
!738 = !{!"any pointer", !739, i64 0}
!739 = !{!"omnipotent char", !740, i64 0}
!740 = !{!"Simple C/C++ TBAA"}
!741 = !DILocation(line: 66, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !733, file: !3, line: 65, column: 5)
!743 = !DILocation(line: 70, column: 7, scope: !742)
!744 = !DILocation(line: 583, column: 3, scope: !745, inlinedAt: !749)
!745 = distinct !DISubprogram(name: "emit_stdin_note", scope: !746, file: !746, line: 581, type: !747, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!746 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!747 = !DISubroutineType(types: !748)
!748 = !{null}
!749 = distinct !DILocation(line: 74, column: 7, scope: !742)
!750 = !DILocation(line: 590, column: 3, scope: !751, inlinedAt: !752)
!751 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !746, file: !746, line: 588, type: !747, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!752 = distinct !DILocation(line: 75, column: 7, scope: !742)
!753 = !DILocation(line: 77, column: 7, scope: !742)
!754 = !DILocation(line: 82, column: 7, scope: !742)
!755 = !DILocation(line: 83, column: 7, scope: !742)
!756 = !DILocalVariable(name: "program", arg: 1, scope: !757, file: !746, line: 634, type: !51)
!757 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !746, file: !746, line: 634, type: !758, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !51}
!760 = !{!756, !761, !770, !771, !773}
!761 = !DILocalVariable(name: "infomap", scope: !757, file: !746, line: 636, type: !762)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 896, elements: !768)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !757, file: !746, line: 636, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !764, file: !746, line: 636, baseType: !51, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !746, line: 636, baseType: !51, size: 64, offset: 64)
!768 = !{!769}
!769 = !DISubrange(count: 7)
!770 = !DILocalVariable(name: "node", scope: !757, file: !746, line: 646, type: !51)
!771 = !DILocalVariable(name: "map_prog", scope: !757, file: !746, line: 647, type: !772)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!773 = !DILocalVariable(name: "lc_messages", scope: !757, file: !746, line: 659, type: !51)
!774 = !DILocation(line: 0, scope: !757, inlinedAt: !775)
!775 = distinct !DILocation(line: 84, column: 7, scope: !742)
!776 = !DILocation(line: 636, column: 3, scope: !757, inlinedAt: !775)
!777 = !DILocation(line: 636, column: 67, scope: !757, inlinedAt: !775)
!778 = !DILocation(line: 647, column: 36, scope: !757, inlinedAt: !775)
!779 = !DILocation(line: 649, column: 3, scope: !757, inlinedAt: !775)
!780 = !DILocation(line: 649, column: 33, scope: !757, inlinedAt: !775)
!781 = !DILocation(line: 650, column: 13, scope: !757, inlinedAt: !775)
!782 = !DILocation(line: 649, column: 20, scope: !757, inlinedAt: !775)
!783 = !{!784, !738, i64 0}
!784 = !{!"infomap", !738, i64 0, !738, i64 8}
!785 = !DILocation(line: 649, column: 10, scope: !757, inlinedAt: !775)
!786 = !DILocation(line: 649, column: 28, scope: !757, inlinedAt: !775)
!787 = distinct !{!787, !779, !781, !788}
!788 = !{!"llvm.loop.mustprogress"}
!789 = !DILocation(line: 652, column: 17, scope: !790, inlinedAt: !775)
!790 = distinct !DILexicalBlock(scope: !757, file: !746, line: 652, column: 7)
!791 = !{!784, !738, i64 8}
!792 = !DILocation(line: 652, column: 7, scope: !790, inlinedAt: !775)
!793 = !DILocation(line: 652, column: 7, scope: !757, inlinedAt: !775)
!794 = !DILocation(line: 655, column: 3, scope: !757, inlinedAt: !775)
!795 = !DILocation(line: 659, column: 29, scope: !757, inlinedAt: !775)
!796 = !DILocation(line: 660, column: 7, scope: !797, inlinedAt: !775)
!797 = distinct !DILexicalBlock(scope: !757, file: !746, line: 660, column: 7)
!798 = !DILocation(line: 660, column: 19, scope: !797, inlinedAt: !775)
!799 = !DILocation(line: 660, column: 22, scope: !797, inlinedAt: !775)
!800 = !DILocation(line: 660, column: 7, scope: !757, inlinedAt: !775)
!801 = !DILocation(line: 666, column: 7, scope: !802, inlinedAt: !775)
!802 = distinct !DILexicalBlock(scope: !797, file: !746, line: 661, column: 5)
!803 = !DILocation(line: 668, column: 5, scope: !802, inlinedAt: !775)
!804 = !DILocation(line: 669, column: 3, scope: !757, inlinedAt: !775)
!805 = !DILocation(line: 671, column: 3, scope: !757, inlinedAt: !775)
!806 = !DILocation(line: 673, column: 1, scope: !757, inlinedAt: !775)
!807 = !DILocation(line: 86, column: 3, scope: !726)
!808 = !DISubprogram(name: "dcgettext", scope: !809, file: !809, line: 51, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!809 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!810 = !DISubroutineType(types: !811)
!811 = !{!45, !51, !51, !53}
!812 = !DISubprogram(name: "fputs_unlocked", scope: !813, file: !813, line: 667, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!813 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!814 = !DISubroutineType(types: !815)
!815 = !{!53, !51, !114}
!816 = !DISubprogram(name: "setlocale", scope: !817, file: !817, line: 122, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!817 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!818 = !DISubroutineType(types: !819)
!819 = !{!45, !53, !51}
!820 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 240, type: !821, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!821 = !DISubroutineType(types: !822)
!822 = !{!53, !53, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!824 = !{!825, !826, !827, !828, !829, !830, !831}
!825 = !DILocalVariable(name: "argc", arg: 1, scope: !820, file: !3, line: 240, type: !53)
!826 = !DILocalVariable(name: "argv", arg: 2, scope: !820, file: !3, line: 240, type: !823)
!827 = !DILocalVariable(name: "width", scope: !820, file: !3, line: 242, type: !48)
!828 = !DILocalVariable(name: "i", scope: !820, file: !3, line: 243, type: !53)
!829 = !DILocalVariable(name: "optc", scope: !820, file: !3, line: 244, type: !53)
!830 = !DILocalVariable(name: "ok", scope: !820, file: !3, line: 245, type: !60)
!831 = !DILocalVariable(name: "optargbuf", scope: !832, file: !3, line: 259, type: !833)
!832 = distinct !DILexicalBlock(scope: !820, file: !3, line: 258, column: 5)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 16, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 2)
!836 = !DILocation(line: 0, scope: !820)
!837 = !DILocation(line: 248, column: 21, scope: !820)
!838 = !DILocation(line: 248, column: 3, scope: !820)
!839 = !DILocation(line: 249, column: 3, scope: !820)
!840 = !DILocation(line: 250, column: 3, scope: !820)
!841 = !DILocation(line: 251, column: 3, scope: !820)
!842 = !DILocation(line: 253, column: 3, scope: !820)
!843 = !DILocation(line: 255, column: 48, scope: !820)
!844 = !DILocation(line: 255, column: 30, scope: !820)
!845 = !DILocation(line: 255, column: 16, scope: !820)
!846 = !DILocation(line: 257, column: 18, scope: !820)
!847 = !DILocation(line: 257, column: 71, scope: !820)
!848 = !DILocation(line: 257, column: 3, scope: !820)
!849 = !DILocation(line: 259, column: 7, scope: !832)
!850 = !DILocation(line: 259, column: 12, scope: !832)
!851 = !DILocation(line: 261, column: 7, scope: !832)
!852 = !DILocation(line: 283, column: 31, scope: !853)
!853 = distinct !DILexicalBlock(scope: !832, file: !3, line: 262, column: 9)
!854 = !DILocation(line: 264, column: 23, scope: !853)
!855 = !DILocation(line: 265, column: 11, scope: !853)
!856 = !DILocation(line: 268, column: 24, scope: !853)
!857 = !DILocation(line: 269, column: 11, scope: !853)
!858 = !DILocation(line: 273, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !853, file: !3, line: 273, column: 15)
!860 = !DILocation(line: 273, column: 15, scope: !853)
!861 = !DILocation(line: 274, column: 19, scope: !859)
!862 = !DILocation(line: 274, column: 13, scope: !859)
!863 = !DILocation(line: 277, column: 30, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 276, column: 13)
!865 = !DILocation(line: 277, column: 28, scope: !864)
!866 = !{!739, !739, i64 0}
!867 = !DILocation(line: 278, column: 28, scope: !864)
!868 = !DILocation(line: 279, column: 22, scope: !864)
!869 = !DILocation(line: 284, column: 31, scope: !853)
!870 = !DILocation(line: 283, column: 19, scope: !853)
!871 = !DILocation(line: 285, column: 11, scope: !853)
!872 = !DILocation(line: 287, column: 9, scope: !853)
!873 = !DILocation(line: 289, column: 9, scope: !853)
!874 = !DILocation(line: 292, column: 11, scope: !853)
!875 = !DILocation(line: 294, column: 5, scope: !820)
!876 = distinct !{!876, !848, !875, !788}
!877 = !DILocation(line: 296, column: 15, scope: !878)
!878 = distinct !DILexicalBlock(scope: !820, file: !3, line: 296, column: 7)
!879 = !{!880, !880, i64 0}
!880 = !{!"int", !739, i64 0}
!881 = !DILocation(line: 296, column: 12, scope: !878)
!882 = !DILocation(line: 296, column: 7, scope: !820)
!883 = !DILocation(line: 301, column: 26, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 301, column: 7)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 301, column: 7)
!886 = distinct !DILexicalBlock(scope: !878, file: !3, line: 299, column: 5)
!887 = !DILocation(line: 301, column: 7, scope: !885)
!888 = !DILocation(line: 297, column: 10, scope: !878)
!889 = !DILocation(line: 297, column: 8, scope: !878)
!890 = !DILocation(line: 297, column: 5, scope: !878)
!891 = !DILocation(line: 302, column: 26, scope: !884)
!892 = !DILocation(line: 302, column: 15, scope: !884)
!893 = !DILocation(line: 302, column: 12, scope: !884)
!894 = !DILocation(line: 301, column: 35, scope: !884)
!895 = distinct !{!895, !887, !896, !788}
!896 = !DILocation(line: 302, column: 40, scope: !885)
!897 = !DILocation(line: 0, scope: !878)
!898 = !DILocation(line: 305, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !820, file: !3, line: 305, column: 7)
!900 = !DILocation(line: 305, column: 23, scope: !899)
!901 = !DILocation(line: 305, column: 34, scope: !899)
!902 = !DILocation(line: 305, column: 26, scope: !899)
!903 = !DILocation(line: 305, column: 41, scope: !899)
!904 = !DILocation(line: 305, column: 7, scope: !820)
!905 = !DILocation(line: 306, column: 5, scope: !899)
!906 = !DILocation(line: 308, column: 10, scope: !820)
!907 = !DILocation(line: 308, column: 3, scope: !820)
!908 = !DISubprogram(name: "bindtextdomain", scope: !809, file: !809, line: 86, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!909 = !DISubroutineType(types: !910)
!910 = !{!45, !51, !51}
!911 = !DISubprogram(name: "textdomain", scope: !809, file: !809, line: 82, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!912 = !DISubroutineType(types: !913)
!913 = !{!45, !51}
!914 = !DISubprogram(name: "atexit", scope: !915, file: !915, line: 595, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!915 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!916 = !DISubroutineType(types: !917)
!917 = !{!53, !918}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!919 = !DISubprogram(name: "getopt_long", scope: !74, file: !74, line: 66, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!920 = !DISubroutineType(types: !921)
!921 = !{!53, !53, !922, !51, !924, !79}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!925 = !DILocation(line: 0, scope: !85)
!926 = !DILocation(line: 130, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !85, file: !3, line: 130, column: 7)
!928 = !DILocation(line: 130, column: 7, scope: !85)
!929 = !DILocation(line: 132, column: 17, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 131, column: 5)
!931 = !DILocation(line: 133, column: 23, scope: !930)
!932 = !DILocation(line: 134, column: 5, scope: !930)
!933 = !DILocation(line: 136, column: 15, scope: !927)
!934 = !DILocation(line: 0, scope: !927)
!935 = !DILocation(line: 138, column: 15, scope: !936)
!936 = distinct !DILexicalBlock(scope: !85, file: !3, line: 138, column: 7)
!937 = !DILocation(line: 138, column: 7, scope: !85)
!938 = !DILocation(line: 140, column: 17, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !3, line: 139, column: 5)
!940 = !DILocation(line: 140, column: 30, scope: !939)
!941 = !DILocation(line: 140, column: 7, scope: !939)
!942 = !DILocation(line: 141, column: 7, scope: !939)
!943 = !DILocation(line: 144, column: 3, scope: !85)
!944 = !DILocation(line: 146, column: 3, scope: !85)
!945 = !DILocalVariable(name: "__fp", arg: 1, scope: !946, file: !947, line: 66, type: !92)
!946 = distinct !DISubprogram(name: "getc_unlocked", scope: !947, file: !947, line: 66, type: !948, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!947 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!948 = !DISubroutineType(types: !949)
!949 = !{!53, !92}
!950 = !{!945}
!951 = !DILocation(line: 0, scope: !946, inlinedAt: !952)
!952 = distinct !DILocation(line: 146, column: 15, scope: !85)
!953 = !DILocation(line: 68, column: 10, scope: !946, inlinedAt: !952)
!954 = !{!955, !738, i64 8}
!955 = !{!"_IO_FILE", !880, i64 0, !738, i64 8, !738, i64 16, !738, i64 24, !738, i64 32, !738, i64 40, !738, i64 48, !738, i64 56, !738, i64 64, !738, i64 72, !738, i64 80, !738, i64 88, !738, i64 96, !738, i64 104, !880, i64 112, !880, i64 116, !956, i64 120, !957, i64 128, !739, i64 130, !739, i64 131, !738, i64 136, !956, i64 144, !738, i64 152, !738, i64 160, !738, i64 168, !738, i64 176, !956, i64 184, !880, i64 192, !739, i64 196}
!956 = !{!"long", !739, i64 0}
!957 = !{!"short", !739, i64 0}
!958 = !{!955, !738, i64 16}
!959 = !{!"branch_weights", i32 2000, i32 1}
!960 = !DILocation(line: 146, column: 31, scope: !85)
!961 = !DILocation(line: 148, column: 22, scope: !962)
!962 = distinct !DILexicalBlock(scope: !155, file: !3, line: 148, column: 11)
!963 = !DILocation(line: 148, column: 29, scope: !962)
!964 = !{!956, !956, i64 0}
!965 = !DILocation(line: 148, column: 26, scope: !962)
!966 = !DILocation(line: 148, column: 11, scope: !155)
!967 = !DILocation(line: 149, column: 20, scope: !962)
!968 = !DILocation(line: 149, column: 18, scope: !962)
!969 = !DILocation(line: 149, column: 9, scope: !962)
!970 = !DILocation(line: 151, column: 13, scope: !154)
!971 = !DILocation(line: 151, column: 11, scope: !155)
!972 = !DILocation(line: 96, column: 7, scope: !973, inlinedAt: !979)
!973 = distinct !DISubprogram(name: "adjust_column", scope: !3, file: !3, line: 94, type: !974, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!48, !48, !46}
!976 = !{!977, !978}
!977 = !DILocalVariable(name: "column", arg: 1, scope: !973, file: !3, line: 94, type: !48)
!978 = !DILocalVariable(name: "c", arg: 2, scope: !973, file: !3, line: 94, type: !46)
!979 = distinct !DILocation(line: 160, column: 16, scope: !155)
!980 = !DILocation(line: 153, column: 11, scope: !153)
!981 = !DILocation(line: 153, column: 34, scope: !153)
!982 = !DILocation(line: 154, column: 11, scope: !153)
!983 = distinct !{!983, !944, !984, !788}
!984 = !DILocation(line: 216, column: 5, scope: !85)
!985 = !DILocation(line: 159, column: 5, scope: !155)
!986 = !DILocation(line: 0, scope: !973, inlinedAt: !979)
!987 = !DILocation(line: 96, column: 8, scope: !988, inlinedAt: !979)
!988 = distinct !DILexicalBlock(scope: !973, file: !3, line: 96, column: 7)
!989 = !DILocation(line: 98, column: 11, scope: !990, inlinedAt: !979)
!990 = distinct !DILexicalBlock(scope: !988, file: !3, line: 97, column: 5)
!991 = !DILocation(line: 100, column: 22, scope: !992, inlinedAt: !979)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 100, column: 15)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 99, column: 9)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 98, column: 11)
!995 = !DILocation(line: 100, column: 15, scope: !993, inlinedAt: !979)
!996 = !DILocation(line: 106, column: 29, scope: !997, inlinedAt: !979)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 105, column: 16)
!998 = distinct !DILexicalBlock(scope: !994, file: !3, line: 103, column: 16)
!999 = !DILocation(line: 106, column: 16, scope: !997, inlinedAt: !979)
!1000 = !DILocation(line: 106, column: 9, scope: !997, inlinedAt: !979)
!1001 = !DILocation(line: 108, column: 15, scope: !997, inlinedAt: !979)
!1002 = !DILocation(line: 111, column: 11, scope: !988, inlinedAt: !979)
!1003 = !DILocation(line: 162, column: 18, scope: !162)
!1004 = !DILocation(line: 162, column: 11, scope: !155)
!1005 = !DILocation(line: 167, column: 15, scope: !160)
!1006 = !DILocation(line: 167, column: 15, scope: !161)
!1007 = !DILocation(line: 173, column: 15, scope: !159)
!1008 = !DILocation(line: 0, scope: !159)
!1009 = !DILocation(line: 175, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !159, file: !3, line: 174, column: 17)
!1011 = !DILocation(line: 176, column: 23, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 176, column: 23)
!1013 = !{!957, !957, i64 0}
!1014 = !DILocation(line: 176, column: 23, scope: !1010)
!1015 = distinct !{!1015, !1007, !1016, !788}
!1016 = !DILocation(line: 181, column: 17, scope: !159)
!1017 = !DILocation(line: 189, column: 19, scope: !165)
!1018 = !DILocalVariable(name: "__c", arg: 1, scope: !1019, file: !947, line: 108, type: !53)
!1019 = distinct !DISubprogram(name: "putchar_unlocked", scope: !947, file: !947, line: 108, type: !1020, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!53, !53}
!1022 = !{!1018}
!1023 = !DILocation(line: 0, scope: !1019, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 191, column: 19, scope: !165)
!1025 = !DILocation(line: 110, column: 10, scope: !1019, inlinedAt: !1024)
!1026 = !{!955, !738, i64 40}
!1027 = !{!955, !738, i64 48}
!1028 = !DILocation(line: 194, column: 28, scope: !165)
!1029 = !DILocation(line: 194, column: 47, scope: !165)
!1030 = !DILocation(line: 195, column: 39, scope: !165)
!1031 = !DILocalVariable(name: "__dest", arg: 1, scope: !1032, file: !1033, line: 34, type: !47)
!1032 = distinct !DISubprogram(name: "memmove", scope: !1033, file: !1033, line: 34, type: !1034, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1033 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!47, !47, !1036, !48}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1038 = !{!1031, !1039, !1040}
!1039 = !DILocalVariable(name: "__src", arg: 2, scope: !1032, file: !1033, line: 34, type: !1036)
!1040 = !DILocalVariable(name: "__len", arg: 3, scope: !1032, file: !1033, line: 34, type: !48)
!1041 = !DILocation(line: 0, scope: !1032, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 194, column: 19, scope: !165)
!1043 = !DILocation(line: 36, column: 10, scope: !1032, inlinedAt: !1042)
!1044 = !DILocation(line: 0, scope: !165)
!1045 = !DILocation(line: 197, column: 42, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 197, column: 19)
!1047 = distinct !DILexicalBlock(scope: !165, file: !3, line: 197, column: 19)
!1048 = !DILocation(line: 197, column: 19, scope: !1047)
!1049 = !DILocation(line: 0, scope: !973, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 198, column: 30, scope: !1046)
!1051 = !DILocation(line: 96, column: 7, scope: !973, inlinedAt: !1050)
!1052 = !DILocation(line: 198, column: 53, scope: !1046)
!1053 = !DILocation(line: 98, column: 11, scope: !990, inlinedAt: !1050)
!1054 = !DILocation(line: 100, column: 22, scope: !992, inlinedAt: !1050)
!1055 = !DILocation(line: 100, column: 15, scope: !993, inlinedAt: !1050)
!1056 = !DILocation(line: 106, column: 29, scope: !997, inlinedAt: !1050)
!1057 = !DILocation(line: 106, column: 16, scope: !997, inlinedAt: !1050)
!1058 = !DILocation(line: 106, column: 9, scope: !997, inlinedAt: !1050)
!1059 = !DILocation(line: 108, column: 15, scope: !997, inlinedAt: !1050)
!1060 = !DILocation(line: 111, column: 11, scope: !988, inlinedAt: !1050)
!1061 = !DILocation(line: 197, column: 57, scope: !1046)
!1062 = distinct !{!1062, !1048, !1063, !788}
!1063 = !DILocation(line: 198, column: 64, scope: !1047)
!1064 = !DILocation(line: 203, column: 26, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !161, file: !3, line: 203, column: 15)
!1066 = !DILocation(line: 0, scope: !161)
!1067 = !DILocation(line: 203, column: 15, scope: !161)
!1068 = !DILocation(line: 205, column: 38, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 204, column: 13)
!1070 = !DILocation(line: 206, column: 15, scope: !1069)
!1071 = !DILocation(line: 209, column: 30, scope: !161)
!1072 = !DILocation(line: 209, column: 11, scope: !161)
!1073 = !DILocation(line: 209, column: 34, scope: !161)
!1074 = !DILocation(line: 210, column: 11, scope: !161)
!1075 = !DILocation(line: 215, column: 7, scope: !155)
!1076 = !DILocation(line: 215, column: 26, scope: !155)
!1077 = !DILocation(line: 215, column: 30, scope: !155)
!1078 = !DILocation(line: 218, column: 17, scope: !85)
!1079 = !DILocation(line: 220, column: 7, scope: !177)
!1080 = !DILocation(line: 220, column: 7, scope: !85)
!1081 = !DILocation(line: 221, column: 5, scope: !177)
!1082 = !DILocalVariable(name: "__stream", arg: 1, scope: !1083, file: !947, line: 135, type: !92)
!1083 = distinct !DISubprogram(name: "ferror_unlocked", scope: !947, file: !947, line: 135, type: !948, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1084 = !{!1082}
!1085 = !DILocation(line: 0, scope: !1083, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 223, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !85, file: !3, line: 223, column: 7)
!1088 = !DILocation(line: 137, column: 10, scope: !1083, inlinedAt: !1086)
!1089 = !{!955, !880, i64 0}
!1090 = !DILocation(line: 223, column: 7, scope: !1087)
!1091 = !DILocation(line: 223, column: 7, scope: !85)
!1092 = !DILocation(line: 225, column: 36, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 224, column: 5)
!1094 = !DILocation(line: 225, column: 7, scope: !1093)
!1095 = !DILocation(line: 226, column: 12, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 226, column: 11)
!1097 = !DILocation(line: 226, column: 11, scope: !1093)
!1098 = !DILocation(line: 227, column: 9, scope: !1096)
!1099 = !DILocation(line: 230, column: 8, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !85, file: !3, line: 230, column: 7)
!1101 = !DILocation(line: 230, column: 30, scope: !1100)
!1102 = !DILocation(line: 230, column: 33, scope: !1100)
!1103 = !DILocation(line: 230, column: 50, scope: !1100)
!1104 = !DILocation(line: 230, column: 7, scope: !85)
!1105 = !DILocation(line: 232, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 231, column: 5)
!1107 = !DILocation(line: 232, column: 30, scope: !1106)
!1108 = !DILocation(line: 232, column: 7, scope: !1106)
!1109 = !DILocation(line: 233, column: 7, scope: !1106)
!1110 = !DILocation(line: 237, column: 1, scope: !85)
!1111 = !DISubprogram(name: "error", scope: !1112, file: !1112, line: 52, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1112 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !53, !53, !51, null}
!1115 = !DISubprogram(name: "fwrite_unlocked", scope: !813, file: !813, line: 680, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!50, !1036, !50, !50, !114}
!1118 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !194, file: !194, line: 51, type: !758, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1119)
!1119 = !{!1120}
!1120 = !DILocalVariable(name: "file", arg: 1, scope: !1118, file: !194, line: 51, type: !51)
!1121 = !DILocation(line: 0, scope: !1118)
!1122 = !DILocation(line: 53, column: 13, scope: !1118)
!1123 = !DILocation(line: 54, column: 1, scope: !1118)
!1124 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !194, file: !194, line: 88, type: !1125, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !60}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "ignore", arg: 1, scope: !1124, file: !194, line: 88, type: !60)
!1129 = !DILocation(line: 0, scope: !1124)
!1130 = !DILocation(line: 90, column: 16, scope: !1124)
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"_Bool", !739, i64 0}
!1133 = !DILocation(line: 91, column: 1, scope: !1124)
!1134 = distinct !DISubprogram(name: "close_stdout", scope: !194, file: !194, line: 117, type: !747, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1135)
!1135 = !{!1136}
!1136 = !DILocalVariable(name: "write_error", scope: !1137, file: !194, line: 122, type: !51)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !194, line: 121, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !194, line: 119, column: 7)
!1139 = !DILocation(line: 119, column: 21, scope: !1138)
!1140 = !DILocation(line: 119, column: 7, scope: !1138)
!1141 = !DILocation(line: 119, column: 29, scope: !1138)
!1142 = !DILocation(line: 120, column: 7, scope: !1138)
!1143 = !DILocation(line: 120, column: 12, scope: !1138)
!1144 = !{i8 0, i8 2}
!1145 = !DILocation(line: 120, column: 25, scope: !1138)
!1146 = !DILocation(line: 120, column: 28, scope: !1138)
!1147 = !DILocation(line: 120, column: 34, scope: !1138)
!1148 = !DILocation(line: 119, column: 7, scope: !1134)
!1149 = !DILocation(line: 122, column: 33, scope: !1137)
!1150 = !DILocation(line: 0, scope: !1137)
!1151 = !DILocation(line: 123, column: 11, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !194, line: 123, column: 11)
!1153 = !DILocation(line: 0, scope: !1152)
!1154 = !DILocation(line: 123, column: 11, scope: !1137)
!1155 = !DILocation(line: 124, column: 36, scope: !1152)
!1156 = !DILocation(line: 124, column: 9, scope: !1152)
!1157 = !DILocation(line: 127, column: 9, scope: !1152)
!1158 = !DILocation(line: 129, column: 14, scope: !1137)
!1159 = !DILocation(line: 129, column: 7, scope: !1137)
!1160 = !DILocation(line: 134, column: 42, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1134, file: !194, line: 134, column: 7)
!1162 = !DILocation(line: 134, column: 28, scope: !1161)
!1163 = !DILocation(line: 134, column: 50, scope: !1161)
!1164 = !DILocation(line: 134, column: 7, scope: !1134)
!1165 = !DILocation(line: 135, column: 12, scope: !1161)
!1166 = !DILocation(line: 135, column: 5, scope: !1161)
!1167 = !DILocation(line: 136, column: 1, scope: !1134)
!1168 = distinct !DISubprogram(name: "fdadvise", scope: !271, file: !271, line: 31, type: !1169, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !1173)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !53, !1171, !1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !813, line: 63, baseType: !118)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1173 = !{!1174, !1175, !1176, !1177, !1178}
!1174 = !DILocalVariable(name: "fd", arg: 1, scope: !1168, file: !271, line: 31, type: !53)
!1175 = !DILocalVariable(name: "offset", arg: 2, scope: !1168, file: !271, line: 31, type: !1171)
!1176 = !DILocalVariable(name: "len", arg: 3, scope: !1168, file: !271, line: 31, type: !1171)
!1177 = !DILocalVariable(name: "advice", arg: 4, scope: !1168, file: !271, line: 31, type: !1172)
!1178 = !DILocalVariable(name: "__x", scope: !1179, file: !271, line: 34, type: !53)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !271, line: 34, column: 3)
!1180 = !DILocation(line: 0, scope: !1168)
!1181 = !DILocation(line: 34, column: 3, scope: !1179)
!1182 = !DILocation(line: 0, scope: !1179)
!1183 = !DILocation(line: 36, column: 1, scope: !1168)
!1184 = !DISubprogram(name: "posix_fadvise", scope: !1185, file: !1185, line: 288, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1185 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!53, !53, !120, !120, !53}
!1188 = distinct !DISubprogram(name: "fadvise", scope: !271, file: !271, line: 39, type: !1189, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !270, retainedNodes: !1225)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1191, !1172}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1193, file: !96, line: 51, baseType: !53, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1193, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1193, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1193, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1193, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1193, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1193, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1193, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1193, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1193, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1193, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1193, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1193, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1193, file: !96, line: 70, baseType: !1209, size: 64, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1193, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1193, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1193, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1193, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1193, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1193, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1193, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1193, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1193, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1193, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1193, file: !96, line: 93, baseType: !1209, size: 64, offset: 1344)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1193, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1193, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1193, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1193, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "fp", arg: 1, scope: !1188, file: !271, line: 39, type: !1191)
!1227 = !DILocalVariable(name: "advice", arg: 2, scope: !1188, file: !271, line: 39, type: !1172)
!1228 = !DILocation(line: 0, scope: !1188)
!1229 = !DILocation(line: 41, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1188, file: !271, line: 41, column: 7)
!1231 = !DILocation(line: 41, column: 7, scope: !1188)
!1232 = !DILocation(line: 42, column: 15, scope: !1230)
!1233 = !DILocation(line: 0, scope: !1168, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 42, column: 5, scope: !1230)
!1235 = !DILocation(line: 34, column: 3, scope: !1179, inlinedAt: !1234)
!1236 = !DILocation(line: 0, scope: !1179, inlinedAt: !1234)
!1237 = !DILocation(line: 42, column: 5, scope: !1230)
!1238 = !DILocation(line: 43, column: 1, scope: !1188)
!1239 = !DISubprogram(name: "fileno", scope: !813, file: !813, line: 785, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!53, !1209}
!1242 = distinct !DISubprogram(name: "set_program_name", scope: !207, file: !207, line: 39, type: !758, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DILocalVariable(name: "argv0", arg: 1, scope: !1242, file: !207, line: 39, type: !51)
!1245 = !DILocalVariable(name: "slash", scope: !1242, file: !207, line: 46, type: !51)
!1246 = !DILocalVariable(name: "base", scope: !1242, file: !207, line: 47, type: !51)
!1247 = !DILocation(line: 0, scope: !1242)
!1248 = !DILocation(line: 51, column: 13, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !207, line: 51, column: 7)
!1250 = !DILocation(line: 51, column: 7, scope: !1242)
!1251 = !DILocation(line: 55, column: 14, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !207, line: 52, column: 5)
!1253 = !DILocation(line: 54, column: 7, scope: !1252)
!1254 = !DILocation(line: 56, column: 7, scope: !1252)
!1255 = !DILocation(line: 59, column: 11, scope: !1242)
!1256 = !DILocation(line: 60, column: 17, scope: !1242)
!1257 = !DILocation(line: 60, column: 11, scope: !1242)
!1258 = !DILocation(line: 61, column: 12, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1242, file: !207, line: 61, column: 7)
!1260 = !DILocation(line: 61, column: 20, scope: !1259)
!1261 = !DILocation(line: 61, column: 25, scope: !1259)
!1262 = !DILocation(line: 61, column: 42, scope: !1259)
!1263 = !DILocation(line: 61, column: 28, scope: !1259)
!1264 = !DILocation(line: 61, column: 61, scope: !1259)
!1265 = !DILocation(line: 61, column: 7, scope: !1242)
!1266 = !DILocation(line: 64, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !207, line: 64, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !207, line: 62, column: 5)
!1269 = !DILocation(line: 64, column: 36, scope: !1267)
!1270 = !DILocation(line: 64, column: 11, scope: !1268)
!1271 = !DILocation(line: 66, column: 24, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !207, line: 65, column: 9)
!1273 = !DILocation(line: 70, column: 41, scope: !1272)
!1274 = !DILocation(line: 72, column: 9, scope: !1272)
!1275 = !DILocation(line: 84, column: 16, scope: !1242)
!1276 = !DILocation(line: 90, column: 27, scope: !1242)
!1277 = !DILocation(line: 92, column: 1, scope: !1242)
!1278 = distinct !DISubprogram(name: "clone_quoting_options", scope: !213, file: !213, line: 122, type: !1279, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!1281, !1281}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1282 = !{!1283, !1284, !1285}
!1283 = !DILocalVariable(name: "o", arg: 1, scope: !1278, file: !213, line: 122, type: !1281)
!1284 = !DILocalVariable(name: "e", scope: !1278, file: !213, line: 124, type: !53)
!1285 = !DILocalVariable(name: "p", scope: !1278, file: !213, line: 125, type: !1281)
!1286 = !DILocation(line: 0, scope: !1278)
!1287 = !DILocation(line: 124, column: 11, scope: !1278)
!1288 = !DILocation(line: 125, column: 40, scope: !1278)
!1289 = !DILocation(line: 125, column: 31, scope: !1278)
!1290 = !DILocation(line: 127, column: 9, scope: !1278)
!1291 = !DILocation(line: 128, column: 3, scope: !1278)
!1292 = distinct !DISubprogram(name: "get_quoting_style", scope: !213, file: !213, line: 133, type: !1293, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1297)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!5, !1295}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "o", arg: 1, scope: !1292, file: !213, line: 133, type: !1295)
!1299 = !DILocation(line: 0, scope: !1292)
!1300 = !DILocation(line: 135, column: 11, scope: !1292)
!1301 = !DILocation(line: 135, column: 46, scope: !1292)
!1302 = !{!1303, !739, i64 0}
!1303 = !{!"quoting_options", !739, i64 0, !880, i64 4, !739, i64 8, !738, i64 40, !738, i64 48}
!1304 = !DILocation(line: 135, column: 3, scope: !1292)
!1305 = distinct !DISubprogram(name: "set_quoting_style", scope: !213, file: !213, line: 141, type: !1306, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1308)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1281, !5}
!1308 = !{!1309, !1310}
!1309 = !DILocalVariable(name: "o", arg: 1, scope: !1305, file: !213, line: 141, type: !1281)
!1310 = !DILocalVariable(name: "s", arg: 2, scope: !1305, file: !213, line: 141, type: !5)
!1311 = !DILocation(line: 0, scope: !1305)
!1312 = !DILocation(line: 143, column: 4, scope: !1305)
!1313 = !DILocation(line: 143, column: 39, scope: !1305)
!1314 = !DILocation(line: 143, column: 45, scope: !1305)
!1315 = !DILocation(line: 144, column: 1, scope: !1305)
!1316 = distinct !DISubprogram(name: "set_char_quoting", scope: !213, file: !213, line: 152, type: !1317, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!53, !1281, !46, !53}
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1326, !1327}
!1320 = !DILocalVariable(name: "o", arg: 1, scope: !1316, file: !213, line: 152, type: !1281)
!1321 = !DILocalVariable(name: "c", arg: 2, scope: !1316, file: !213, line: 152, type: !46)
!1322 = !DILocalVariable(name: "i", arg: 3, scope: !1316, file: !213, line: 152, type: !53)
!1323 = !DILocalVariable(name: "uc", scope: !1316, file: !213, line: 154, type: !56)
!1324 = !DILocalVariable(name: "p", scope: !1316, file: !213, line: 155, type: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1326 = !DILocalVariable(name: "shift", scope: !1316, file: !213, line: 157, type: !53)
!1327 = !DILocalVariable(name: "r", scope: !1316, file: !213, line: 158, type: !53)
!1328 = !DILocation(line: 0, scope: !1316)
!1329 = !DILocation(line: 156, column: 6, scope: !1316)
!1330 = !DILocation(line: 156, column: 62, scope: !1316)
!1331 = !DILocation(line: 156, column: 57, scope: !1316)
!1332 = !DILocation(line: 157, column: 15, scope: !1316)
!1333 = !DILocation(line: 158, column: 12, scope: !1316)
!1334 = !DILocation(line: 158, column: 15, scope: !1316)
!1335 = !DILocation(line: 158, column: 25, scope: !1316)
!1336 = !DILocation(line: 159, column: 13, scope: !1316)
!1337 = !DILocation(line: 159, column: 18, scope: !1316)
!1338 = !DILocation(line: 159, column: 23, scope: !1316)
!1339 = !DILocation(line: 159, column: 6, scope: !1316)
!1340 = !DILocation(line: 160, column: 3, scope: !1316)
!1341 = distinct !DISubprogram(name: "set_quoting_flags", scope: !213, file: !213, line: 168, type: !1342, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1344)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!53, !1281, !53}
!1344 = !{!1345, !1346, !1347}
!1345 = !DILocalVariable(name: "o", arg: 1, scope: !1341, file: !213, line: 168, type: !1281)
!1346 = !DILocalVariable(name: "i", arg: 2, scope: !1341, file: !213, line: 168, type: !53)
!1347 = !DILocalVariable(name: "r", scope: !1341, file: !213, line: 170, type: !53)
!1348 = !DILocation(line: 0, scope: !1341)
!1349 = !DILocation(line: 171, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1341, file: !213, line: 171, column: 7)
!1351 = !DILocation(line: 171, column: 7, scope: !1341)
!1352 = !DILocation(line: 173, column: 10, scope: !1341)
!1353 = !{!1303, !880, i64 4}
!1354 = !DILocation(line: 174, column: 12, scope: !1341)
!1355 = !DILocation(line: 175, column: 3, scope: !1341)
!1356 = distinct !DISubprogram(name: "set_custom_quoting", scope: !213, file: !213, line: 179, type: !1357, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1281, !51, !51}
!1359 = !{!1360, !1361, !1362}
!1360 = !DILocalVariable(name: "o", arg: 1, scope: !1356, file: !213, line: 179, type: !1281)
!1361 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1356, file: !213, line: 180, type: !51)
!1362 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1356, file: !213, line: 180, type: !51)
!1363 = !DILocation(line: 0, scope: !1356)
!1364 = !DILocation(line: 182, column: 8, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !213, line: 182, column: 7)
!1366 = !DILocation(line: 182, column: 7, scope: !1356)
!1367 = !DILocation(line: 184, column: 6, scope: !1356)
!1368 = !DILocation(line: 184, column: 12, scope: !1356)
!1369 = !DILocation(line: 185, column: 8, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1356, file: !213, line: 185, column: 7)
!1371 = !DILocation(line: 185, column: 19, scope: !1370)
!1372 = !DILocation(line: 186, column: 5, scope: !1370)
!1373 = !DILocation(line: 187, column: 6, scope: !1356)
!1374 = !DILocation(line: 187, column: 17, scope: !1356)
!1375 = !{!1303, !738, i64 40}
!1376 = !DILocation(line: 188, column: 6, scope: !1356)
!1377 = !DILocation(line: 188, column: 18, scope: !1356)
!1378 = !{!1303, !738, i64 48}
!1379 = !DILocation(line: 189, column: 1, scope: !1356)
!1380 = distinct !DISubprogram(name: "quotearg_buffer", scope: !213, file: !213, line: 784, type: !1381, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!48, !45, !48, !51, !48, !1295}
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1384 = !DILocalVariable(name: "buffer", arg: 1, scope: !1380, file: !213, line: 784, type: !45)
!1385 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1380, file: !213, line: 784, type: !48)
!1386 = !DILocalVariable(name: "arg", arg: 3, scope: !1380, file: !213, line: 785, type: !51)
!1387 = !DILocalVariable(name: "argsize", arg: 4, scope: !1380, file: !213, line: 785, type: !48)
!1388 = !DILocalVariable(name: "o", arg: 5, scope: !1380, file: !213, line: 786, type: !1295)
!1389 = !DILocalVariable(name: "p", scope: !1380, file: !213, line: 788, type: !1295)
!1390 = !DILocalVariable(name: "e", scope: !1380, file: !213, line: 789, type: !53)
!1391 = !DILocalVariable(name: "r", scope: !1380, file: !213, line: 790, type: !48)
!1392 = !DILocation(line: 0, scope: !1380)
!1393 = !DILocation(line: 788, column: 37, scope: !1380)
!1394 = !DILocation(line: 789, column: 11, scope: !1380)
!1395 = !DILocation(line: 791, column: 43, scope: !1380)
!1396 = !DILocation(line: 791, column: 53, scope: !1380)
!1397 = !DILocation(line: 791, column: 60, scope: !1380)
!1398 = !DILocation(line: 792, column: 43, scope: !1380)
!1399 = !DILocation(line: 792, column: 58, scope: !1380)
!1400 = !DILocation(line: 790, column: 14, scope: !1380)
!1401 = !DILocation(line: 793, column: 9, scope: !1380)
!1402 = !DILocation(line: 794, column: 3, scope: !1380)
!1403 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !213, file: !213, line: 256, type: !1404, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1408)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!48, !45, !48, !51, !48, !5, !53, !1406, !51, !51}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1433, !1434, !1435, !1436, !1437, !1440, !1441, !1459, !1462, !1463, !1470, !1473, !1474, !1475, !1476, !1477, !1478}
!1409 = !DILocalVariable(name: "buffer", arg: 1, scope: !1403, file: !213, line: 256, type: !45)
!1410 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1403, file: !213, line: 256, type: !48)
!1411 = !DILocalVariable(name: "arg", arg: 3, scope: !1403, file: !213, line: 257, type: !51)
!1412 = !DILocalVariable(name: "argsize", arg: 4, scope: !1403, file: !213, line: 257, type: !48)
!1413 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1403, file: !213, line: 258, type: !5)
!1414 = !DILocalVariable(name: "flags", arg: 6, scope: !1403, file: !213, line: 258, type: !53)
!1415 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1403, file: !213, line: 259, type: !1406)
!1416 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1403, file: !213, line: 260, type: !51)
!1417 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1403, file: !213, line: 261, type: !51)
!1418 = !DILocalVariable(name: "i", scope: !1403, file: !213, line: 263, type: !48)
!1419 = !DILocalVariable(name: "len", scope: !1403, file: !213, line: 264, type: !48)
!1420 = !DILocalVariable(name: "orig_buffersize", scope: !1403, file: !213, line: 265, type: !48)
!1421 = !DILocalVariable(name: "quote_string", scope: !1403, file: !213, line: 266, type: !51)
!1422 = !DILocalVariable(name: "quote_string_len", scope: !1403, file: !213, line: 267, type: !48)
!1423 = !DILocalVariable(name: "backslash_escapes", scope: !1403, file: !213, line: 268, type: !60)
!1424 = !DILocalVariable(name: "unibyte_locale", scope: !1403, file: !213, line: 269, type: !60)
!1425 = !DILocalVariable(name: "elide_outer_quotes", scope: !1403, file: !213, line: 270, type: !60)
!1426 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1403, file: !213, line: 271, type: !60)
!1427 = !DILocalVariable(name: "encountered_single_quote", scope: !1403, file: !213, line: 272, type: !60)
!1428 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1403, file: !213, line: 273, type: !60)
!1429 = !DILocalVariable(name: "c", scope: !1430, file: !213, line: 402, type: !56)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !213, line: 401, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !213, line: 400, column: 3)
!1432 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 400, column: 3)
!1433 = !DILocalVariable(name: "esc", scope: !1430, file: !213, line: 403, type: !56)
!1434 = !DILocalVariable(name: "is_right_quote", scope: !1430, file: !213, line: 404, type: !60)
!1435 = !DILocalVariable(name: "escaping", scope: !1430, file: !213, line: 405, type: !60)
!1436 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1430, file: !213, line: 406, type: !60)
!1437 = !DILocalVariable(name: "m", scope: !1438, file: !213, line: 610, type: !48)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 608, column: 11)
!1439 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 426, column: 9)
!1440 = !DILocalVariable(name: "printable", scope: !1438, file: !213, line: 612, type: !60)
!1441 = !DILocalVariable(name: "mbstate", scope: !1442, file: !213, line: 621, type: !1444)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !213, line: 620, column: 15)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !213, line: 614, column: 17)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1445, line: 6, baseType: !1446)
!1445 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1447, line: 21, baseType: !1448)
!1447 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1447, line: 13, size: 64, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1448, file: !1447, line: 15, baseType: !53, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1448, file: !1447, line: 20, baseType: !1452, size: 32, offset: 32)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1448, file: !1447, line: 16, size: 32, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1452, file: !1447, line: 18, baseType: !7, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1452, file: !1447, line: 19, baseType: !1456, size: 32)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 4)
!1459 = !DILocalVariable(name: "w", scope: !1460, file: !213, line: 631, type: !1461)
!1460 = distinct !DILexicalBlock(scope: !1442, file: !213, line: 630, column: 19)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !49, line: 74, baseType: !53)
!1462 = !DILocalVariable(name: "bytes", scope: !1460, file: !213, line: 632, type: !48)
!1463 = !DILocalVariable(name: "j", scope: !1464, file: !213, line: 657, type: !48)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !213, line: 656, column: 27)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !213, line: 654, column: 29)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !213, line: 649, column: 23)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !213, line: 641, column: 30)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !213, line: 636, column: 30)
!1469 = distinct !DILexicalBlock(scope: !1460, file: !213, line: 634, column: 25)
!1470 = !DILocalVariable(name: "ilim", scope: !1471, file: !213, line: 684, type: !48)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !213, line: 681, column: 15)
!1472 = distinct !DILexicalBlock(scope: !1438, file: !213, line: 680, column: 17)
!1473 = !DILabel(scope: !1403, name: "process_input", file: !213, line: 314)
!1474 = !DILabel(scope: !1439, name: "c_and_shell_escape", file: !213, line: 512)
!1475 = !DILabel(scope: !1439, name: "c_escape", file: !213, line: 517)
!1476 = !DILabel(scope: !1430, name: "store_escape", file: !213, line: 719)
!1477 = !DILabel(scope: !1430, name: "store_c", file: !213, line: 722)
!1478 = !DILabel(scope: !1403, name: "force_outer_quoting_style", file: !213, line: 763)
!1479 = !DILocation(line: 0, scope: !1403)
!1480 = !DILocation(line: 269, column: 25, scope: !1403)
!1481 = !DILocation(line: 269, column: 36, scope: !1403)
!1482 = !DILocation(line: 270, column: 8, scope: !1403)
!1483 = !DILocation(line: 273, column: 3, scope: !1403)
!1484 = !DILocation(line: 265, column: 10, scope: !1403)
!1485 = !DILocation(line: 266, column: 15, scope: !1403)
!1486 = !DILocation(line: 267, column: 10, scope: !1403)
!1487 = !DILocation(line: 268, column: 8, scope: !1403)
!1488 = !DILocation(line: 271, column: 8, scope: !1403)
!1489 = !DILocation(line: 272, column: 8, scope: !1403)
!1490 = !DILocation(line: 273, column: 8, scope: !1403)
!1491 = !DILocation(line: 314, column: 2, scope: !1403)
!1492 = !DILocation(line: 316, column: 3, scope: !1403)
!1493 = !DILocation(line: 323, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 317, column: 5)
!1495 = !DILocation(line: 323, column: 12, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !213, line: 323, column: 11)
!1497 = !DILocation(line: 324, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !213, line: 324, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !213, line: 324, column: 9)
!1500 = !DILocation(line: 324, column: 9, scope: !1499)
!1501 = !DILocation(line: 362, column: 26, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !213, line: 340, column: 11)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !213, line: 339, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1494, file: !213, line: 338, column: 7)
!1505 = !DILocation(line: 363, column: 27, scope: !1502)
!1506 = !DILocation(line: 364, column: 11, scope: !1502)
!1507 = !DILocation(line: 365, column: 14, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !213, line: 365, column: 13)
!1509 = !DILocation(line: 365, column: 13, scope: !1504)
!1510 = !DILocation(line: 366, column: 43, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !213, line: 366, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !213, line: 366, column: 11)
!1513 = !DILocation(line: 366, column: 11, scope: !1512)
!1514 = !DILocation(line: 367, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !213, line: 367, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !213, line: 367, column: 13)
!1517 = !DILocation(line: 367, column: 13, scope: !1516)
!1518 = !DILocation(line: 366, column: 70, scope: !1511)
!1519 = distinct !{!1519, !1513, !1520, !788}
!1520 = !DILocation(line: 367, column: 13, scope: !1512)
!1521 = !DILocation(line: 264, column: 10, scope: !1403)
!1522 = !DILocation(line: 370, column: 28, scope: !1504)
!1523 = !DILocation(line: 372, column: 7, scope: !1494)
!1524 = !DILocation(line: 376, column: 7, scope: !1494)
!1525 = !DILocation(line: 379, column: 7, scope: !1494)
!1526 = !DILocation(line: 381, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1494, file: !213, line: 381, column: 11)
!1528 = !DILocation(line: 381, column: 11, scope: !1494)
!1529 = !DILocation(line: 386, column: 12, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1494, file: !213, line: 386, column: 11)
!1531 = !DILocation(line: 386, column: 11, scope: !1494)
!1532 = !DILocation(line: 387, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !213, line: 387, column: 9)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !213, line: 387, column: 9)
!1535 = !DILocation(line: 387, column: 9, scope: !1534)
!1536 = !DILocation(line: 394, column: 7, scope: !1494)
!1537 = !DILocation(line: 397, column: 7, scope: !1494)
!1538 = !DILocation(line: 400, column: 8, scope: !1432)
!1539 = !DILocation(line: 0, scope: !1432)
!1540 = !DILocation(line: 400, column: 27, scope: !1431)
!1541 = !DILocation(line: 400, column: 19, scope: !1431)
!1542 = !DILocation(line: 400, column: 41, scope: !1431)
!1543 = !DILocation(line: 400, column: 48, scope: !1431)
!1544 = !DILocation(line: 400, column: 3, scope: !1432)
!1545 = !DILocation(line: 400, column: 60, scope: !1431)
!1546 = !DILocation(line: 0, scope: !1430)
!1547 = !DILocation(line: 409, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 408, column: 11)
!1549 = !DILocation(line: 411, column: 17, scope: !1548)
!1550 = !DILocation(line: 412, column: 39, scope: !1548)
!1551 = !DILocation(line: 416, column: 32, scope: !1548)
!1552 = !DILocation(line: 412, column: 19, scope: !1548)
!1553 = !DILocation(line: 412, column: 15, scope: !1548)
!1554 = !DILocation(line: 417, column: 11, scope: !1548)
!1555 = !DILocation(line: 417, column: 26, scope: !1548)
!1556 = !DILocation(line: 417, column: 14, scope: !1548)
!1557 = !DILocation(line: 417, column: 63, scope: !1548)
!1558 = !DILocation(line: 408, column: 11, scope: !1430)
!1559 = !DILocation(line: 424, column: 11, scope: !1430)
!1560 = !DILocation(line: 425, column: 7, scope: !1430)
!1561 = !DILocation(line: 428, column: 15, scope: !1439)
!1562 = !DILocation(line: 430, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !213, line: 430, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !213, line: 429, column: 13)
!1565 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 428, column: 15)
!1566 = !DILocation(line: 430, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !213, line: 430, column: 15)
!1568 = !DILocation(line: 430, column: 15, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !213, line: 430, column: 15)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !213, line: 430, column: 15)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !213, line: 430, column: 15)
!1572 = !DILocation(line: 430, column: 15, scope: !1570)
!1573 = !DILocation(line: 430, column: 15, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !213, line: 430, column: 15)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !213, line: 430, column: 15)
!1576 = !DILocation(line: 430, column: 15, scope: !1575)
!1577 = !DILocation(line: 430, column: 15, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !213, line: 430, column: 15)
!1579 = distinct !DILexicalBlock(scope: !1571, file: !213, line: 430, column: 15)
!1580 = !DILocation(line: 430, column: 15, scope: !1579)
!1581 = !DILocation(line: 430, column: 15, scope: !1571)
!1582 = !DILocation(line: 430, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !213, line: 430, column: 15)
!1584 = distinct !DILexicalBlock(scope: !1563, file: !213, line: 430, column: 15)
!1585 = !DILocation(line: 430, column: 15, scope: !1584)
!1586 = !DILocation(line: 438, column: 19, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1564, file: !213, line: 437, column: 19)
!1588 = !DILocation(line: 438, column: 48, scope: !1587)
!1589 = !DILocation(line: 438, column: 59, scope: !1587)
!1590 = !DILocation(line: 440, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !213, line: 440, column: 19)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !213, line: 440, column: 19)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !213, line: 439, column: 17)
!1594 = !DILocation(line: 440, column: 19, scope: !1592)
!1595 = !DILocation(line: 441, column: 19, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !213, line: 441, column: 19)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !213, line: 441, column: 19)
!1598 = !DILocation(line: 441, column: 19, scope: !1597)
!1599 = !DILocation(line: 442, column: 17, scope: !1593)
!1600 = !DILocation(line: 449, column: 20, scope: !1565)
!1601 = !DILocation(line: 454, column: 11, scope: !1439)
!1602 = !DILocation(line: 457, column: 19, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 455, column: 13)
!1604 = !DILocation(line: 463, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !213, line: 462, column: 19)
!1606 = !DILocation(line: 463, column: 47, scope: !1605)
!1607 = !DILocation(line: 463, column: 41, scope: !1605)
!1608 = !DILocation(line: 463, column: 52, scope: !1605)
!1609 = !DILocation(line: 462, column: 19, scope: !1603)
!1610 = !DILocation(line: 464, column: 25, scope: !1605)
!1611 = !DILocation(line: 464, column: 17, scope: !1605)
!1612 = !DILocation(line: 471, column: 25, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1605, file: !213, line: 465, column: 19)
!1614 = !DILocation(line: 475, column: 21, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !213, line: 475, column: 21)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !213, line: 475, column: 21)
!1617 = !DILocation(line: 475, column: 21, scope: !1616)
!1618 = !DILocation(line: 476, column: 21, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !213, line: 476, column: 21)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !213, line: 476, column: 21)
!1621 = !DILocation(line: 476, column: 21, scope: !1620)
!1622 = !DILocation(line: 477, column: 21, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !213, line: 477, column: 21)
!1624 = distinct !DILexicalBlock(scope: !1613, file: !213, line: 477, column: 21)
!1625 = !DILocation(line: 477, column: 21, scope: !1624)
!1626 = !DILocation(line: 478, column: 21, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !213, line: 478, column: 21)
!1628 = distinct !DILexicalBlock(scope: !1613, file: !213, line: 478, column: 21)
!1629 = !DILocation(line: 478, column: 21, scope: !1628)
!1630 = !DILocation(line: 479, column: 21, scope: !1613)
!1631 = !DILocation(line: 492, column: 31, scope: !1439)
!1632 = !DILocation(line: 493, column: 31, scope: !1439)
!1633 = !DILocation(line: 495, column: 31, scope: !1439)
!1634 = !DILocation(line: 496, column: 31, scope: !1439)
!1635 = !DILocation(line: 497, column: 31, scope: !1439)
!1636 = !DILocation(line: 500, column: 15, scope: !1439)
!1637 = !DILocation(line: 502, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !213, line: 501, column: 13)
!1639 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 500, column: 15)
!1640 = !DILocation(line: 509, column: 33, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 509, column: 15)
!1642 = !DILocation(line: 0, scope: !1439)
!1643 = !DILocation(line: 512, column: 9, scope: !1439)
!1644 = !DILocation(line: 514, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 513, column: 15)
!1646 = !DILocation(line: 517, column: 9, scope: !1439)
!1647 = !DILocation(line: 518, column: 15, scope: !1439)
!1648 = !DILocation(line: 526, column: 15, scope: !1439)
!1649 = !DILocation(line: 526, column: 40, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 526, column: 15)
!1651 = !DILocation(line: 526, column: 47, scope: !1650)
!1652 = !DILocation(line: 526, column: 18, scope: !1650)
!1653 = !DILocation(line: 530, column: 17, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 530, column: 15)
!1655 = !DILocation(line: 530, column: 15, scope: !1439)
!1656 = !DILocation(line: 535, column: 11, scope: !1439)
!1657 = !DILocation(line: 549, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 548, column: 15)
!1659 = !DILocation(line: 556, column: 15, scope: !1439)
!1660 = !DILocation(line: 558, column: 19, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !213, line: 557, column: 13)
!1662 = distinct !DILexicalBlock(scope: !1439, file: !213, line: 556, column: 15)
!1663 = !DILocation(line: 561, column: 19, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !213, line: 561, column: 19)
!1665 = !DILocation(line: 561, column: 30, scope: !1664)
!1666 = !DILocation(line: 570, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !213, line: 570, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1661, file: !213, line: 570, column: 15)
!1669 = !DILocation(line: 570, column: 15, scope: !1668)
!1670 = !DILocation(line: 571, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !213, line: 571, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1661, file: !213, line: 571, column: 15)
!1673 = !DILocation(line: 571, column: 15, scope: !1672)
!1674 = !DILocation(line: 572, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !213, line: 572, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1661, file: !213, line: 572, column: 15)
!1677 = !DILocation(line: 572, column: 15, scope: !1676)
!1678 = !DILocation(line: 574, column: 13, scope: !1661)
!1679 = !DILocation(line: 614, column: 17, scope: !1438)
!1680 = !DILocation(line: 0, scope: !1438)
!1681 = !DILocation(line: 617, column: 29, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1443, file: !213, line: 615, column: 15)
!1683 = !DILocation(line: 617, column: 27, scope: !1682)
!1684 = !DILocation(line: 678, column: 40, scope: !1438)
!1685 = !DILocation(line: 680, column: 23, scope: !1472)
!1686 = !DILocation(line: 621, column: 17, scope: !1442)
!1687 = !DILocation(line: 621, column: 27, scope: !1442)
!1688 = !DILocalVariable(name: "__dest", arg: 1, scope: !1689, file: !1033, line: 57, type: !47)
!1689 = distinct !DISubprogram(name: "memset", scope: !1033, file: !1033, line: 57, type: !1690, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!47, !47, !53, !48}
!1692 = !{!1688, !1693, !1694}
!1693 = !DILocalVariable(name: "__ch", arg: 2, scope: !1689, file: !1033, line: 57, type: !53)
!1694 = !DILocalVariable(name: "__len", arg: 3, scope: !1689, file: !1033, line: 57, type: !48)
!1695 = !DILocation(line: 0, scope: !1689, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 622, column: 17, scope: !1442)
!1697 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !1696)
!1698 = !DILocation(line: 626, column: 29, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1442, file: !213, line: 626, column: 21)
!1700 = !DILocation(line: 626, column: 21, scope: !1442)
!1701 = !DILocation(line: 627, column: 29, scope: !1699)
!1702 = !DILocation(line: 627, column: 19, scope: !1699)
!1703 = !DILocation(line: 629, column: 17, scope: !1442)
!1704 = !DILocation(line: 624, column: 19, scope: !1442)
!1705 = !DILocation(line: 625, column: 27, scope: !1442)
!1706 = !DILocation(line: 631, column: 21, scope: !1460)
!1707 = !DILocation(line: 632, column: 56, scope: !1460)
!1708 = !DILocation(line: 632, column: 50, scope: !1460)
!1709 = !DILocation(line: 633, column: 53, scope: !1460)
!1710 = !DILocation(line: 0, scope: !1460)
!1711 = !DILocation(line: 632, column: 36, scope: !1460)
!1712 = !DILocation(line: 634, column: 25, scope: !1460)
!1713 = !DILocation(line: 644, column: 38, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1467, file: !213, line: 642, column: 23)
!1715 = !DILocation(line: 644, column: 48, scope: !1714)
!1716 = !DILocation(line: 644, column: 25, scope: !1714)
!1717 = !DILocation(line: 644, column: 51, scope: !1714)
!1718 = !DILocation(line: 645, column: 28, scope: !1714)
!1719 = !DILocation(line: 644, column: 34, scope: !1714)
!1720 = distinct !{!1720, !1716, !1718, !788}
!1721 = !DILocation(line: 655, column: 29, scope: !1465)
!1722 = !DILocation(line: 0, scope: !1464)
!1723 = !DILocation(line: 659, column: 49, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !213, line: 658, column: 29)
!1725 = distinct !DILexicalBlock(scope: !1464, file: !213, line: 658, column: 29)
!1726 = !DILocation(line: 659, column: 39, scope: !1724)
!1727 = !DILocation(line: 659, column: 31, scope: !1724)
!1728 = !DILocation(line: 658, column: 53, scope: !1724)
!1729 = !DILocation(line: 658, column: 43, scope: !1724)
!1730 = !DILocation(line: 658, column: 29, scope: !1725)
!1731 = distinct !{!1731, !1730, !1732, !788}
!1732 = !DILocation(line: 667, column: 33, scope: !1725)
!1733 = !DILocation(line: 674, column: 19, scope: !1442)
!1734 = !DILocation(line: 670, column: 41, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1466, file: !213, line: 670, column: 29)
!1736 = !DILocation(line: 670, column: 31, scope: !1735)
!1737 = !DILocation(line: 670, column: 29, scope: !1466)
!1738 = !DILocation(line: 672, column: 27, scope: !1466)
!1739 = !DILocation(line: 675, column: 26, scope: !1442)
!1740 = !DILocation(line: 675, column: 24, scope: !1442)
!1741 = !DILocation(line: 674, column: 19, scope: !1460)
!1742 = distinct !{!1742, !1703, !1743, !788}
!1743 = !DILocation(line: 675, column: 44, scope: !1442)
!1744 = !DILocation(line: 676, column: 15, scope: !1443)
!1745 = !DILocation(line: 680, column: 19, scope: !1472)
!1746 = !DILocation(line: 680, column: 45, scope: !1472)
!1747 = !DILocation(line: 684, column: 33, scope: !1471)
!1748 = !DILocation(line: 0, scope: !1471)
!1749 = !DILocation(line: 686, column: 17, scope: !1471)
!1750 = !DILocation(line: 405, column: 12, scope: !1430)
!1751 = !DILocation(line: 688, column: 43, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !213, line: 688, column: 25)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !213, line: 687, column: 19)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !213, line: 686, column: 17)
!1755 = distinct !DILexicalBlock(scope: !1471, file: !213, line: 686, column: 17)
!1756 = !DILocation(line: 690, column: 25, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !213, line: 690, column: 25)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !213, line: 689, column: 23)
!1759 = !DILocation(line: 690, column: 25, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !213, line: 690, column: 25)
!1761 = !DILocation(line: 690, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !213, line: 690, column: 25)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !213, line: 690, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !213, line: 690, column: 25)
!1765 = !DILocation(line: 690, column: 25, scope: !1763)
!1766 = !DILocation(line: 690, column: 25, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !213, line: 690, column: 25)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !213, line: 690, column: 25)
!1769 = !DILocation(line: 690, column: 25, scope: !1768)
!1770 = !DILocation(line: 690, column: 25, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !213, line: 690, column: 25)
!1772 = distinct !DILexicalBlock(scope: !1764, file: !213, line: 690, column: 25)
!1773 = !DILocation(line: 690, column: 25, scope: !1772)
!1774 = !DILocation(line: 690, column: 25, scope: !1764)
!1775 = !DILocation(line: 690, column: 25, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !213, line: 690, column: 25)
!1777 = distinct !DILexicalBlock(scope: !1757, file: !213, line: 690, column: 25)
!1778 = !DILocation(line: 690, column: 25, scope: !1777)
!1779 = !DILocation(line: 691, column: 25, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !213, line: 691, column: 25)
!1781 = distinct !DILexicalBlock(scope: !1758, file: !213, line: 691, column: 25)
!1782 = !DILocation(line: 691, column: 25, scope: !1781)
!1783 = !DILocation(line: 692, column: 25, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !213, line: 692, column: 25)
!1785 = distinct !DILexicalBlock(scope: !1758, file: !213, line: 692, column: 25)
!1786 = !DILocation(line: 692, column: 25, scope: !1785)
!1787 = !DILocation(line: 693, column: 38, scope: !1758)
!1788 = !DILocation(line: 693, column: 33, scope: !1758)
!1789 = !DILocation(line: 694, column: 23, scope: !1758)
!1790 = !DILocation(line: 695, column: 30, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1752, file: !213, line: 695, column: 30)
!1792 = !DILocation(line: 695, column: 30, scope: !1752)
!1793 = !DILocation(line: 697, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !213, line: 697, column: 25)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !213, line: 697, column: 25)
!1796 = distinct !DILexicalBlock(scope: !1791, file: !213, line: 696, column: 23)
!1797 = !DILocation(line: 697, column: 25, scope: !1795)
!1798 = !DILocation(line: 699, column: 23, scope: !1796)
!1799 = !DILocation(line: 700, column: 35, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1753, file: !213, line: 700, column: 25)
!1801 = !DILocation(line: 700, column: 30, scope: !1800)
!1802 = !DILocation(line: 700, column: 25, scope: !1753)
!1803 = !DILocation(line: 702, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !213, line: 702, column: 21)
!1805 = distinct !DILexicalBlock(scope: !1753, file: !213, line: 702, column: 21)
!1806 = !DILocation(line: 702, column: 21, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !213, line: 702, column: 21)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !213, line: 702, column: 21)
!1809 = distinct !DILexicalBlock(scope: !1804, file: !213, line: 702, column: 21)
!1810 = !DILocation(line: 702, column: 21, scope: !1808)
!1811 = !DILocation(line: 702, column: 21, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !213, line: 702, column: 21)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !213, line: 702, column: 21)
!1814 = !DILocation(line: 702, column: 21, scope: !1813)
!1815 = !DILocation(line: 702, column: 21, scope: !1809)
!1816 = !DILocation(line: 0, scope: !1753)
!1817 = !DILocation(line: 703, column: 21, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !213, line: 703, column: 21)
!1819 = distinct !DILexicalBlock(scope: !1753, file: !213, line: 703, column: 21)
!1820 = !DILocation(line: 703, column: 21, scope: !1819)
!1821 = !DILocation(line: 704, column: 25, scope: !1753)
!1822 = !DILocation(line: 686, column: 17, scope: !1754)
!1823 = distinct !{!1823, !1824, !1825}
!1824 = !DILocation(line: 686, column: 17, scope: !1755)
!1825 = !DILocation(line: 705, column: 19, scope: !1755)
!1826 = !DILocation(line: 416, column: 30, scope: !1548)
!1827 = !DILocation(line: 712, column: 34, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 712, column: 11)
!1829 = !DILocation(line: 715, column: 35, scope: !1828)
!1830 = !DILocation(line: 715, column: 17, scope: !1828)
!1831 = !DILocation(line: 715, column: 47, scope: !1828)
!1832 = !DILocation(line: 715, column: 65, scope: !1828)
!1833 = !DILocation(line: 716, column: 11, scope: !1828)
!1834 = !DILocation(line: 712, column: 11, scope: !1430)
!1835 = !DILocation(line: 400, column: 10, scope: !1432)
!1836 = !DILocation(line: 719, column: 5, scope: !1430)
!1837 = !DILocation(line: 720, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 720, column: 7)
!1839 = !DILocation(line: 720, column: 7, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1838, file: !213, line: 720, column: 7)
!1841 = !DILocation(line: 720, column: 7, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !213, line: 720, column: 7)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !213, line: 720, column: 7)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !213, line: 720, column: 7)
!1845 = !DILocation(line: 720, column: 7, scope: !1843)
!1846 = !DILocation(line: 720, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !213, line: 720, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1844, file: !213, line: 720, column: 7)
!1849 = !DILocation(line: 720, column: 7, scope: !1848)
!1850 = !DILocation(line: 720, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !213, line: 720, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1844, file: !213, line: 720, column: 7)
!1853 = !DILocation(line: 720, column: 7, scope: !1852)
!1854 = !DILocation(line: 720, column: 7, scope: !1844)
!1855 = !DILocation(line: 720, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !213, line: 720, column: 7)
!1857 = distinct !DILexicalBlock(scope: !1838, file: !213, line: 720, column: 7)
!1858 = !DILocation(line: 720, column: 7, scope: !1857)
!1859 = !DILocation(line: 722, column: 5, scope: !1430)
!1860 = !DILocation(line: 723, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !213, line: 723, column: 7)
!1862 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 723, column: 7)
!1863 = !DILocation(line: 424, column: 9, scope: !1430)
!1864 = !DILocation(line: 723, column: 7, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !213, line: 723, column: 7)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !213, line: 723, column: 7)
!1867 = distinct !DILexicalBlock(scope: !1861, file: !213, line: 723, column: 7)
!1868 = !DILocation(line: 723, column: 7, scope: !1866)
!1869 = !DILocation(line: 723, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !213, line: 723, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1867, file: !213, line: 723, column: 7)
!1872 = !DILocation(line: 723, column: 7, scope: !1871)
!1873 = !DILocation(line: 723, column: 7, scope: !1867)
!1874 = !DILocation(line: 724, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !213, line: 724, column: 7)
!1876 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 724, column: 7)
!1877 = !DILocation(line: 724, column: 7, scope: !1876)
!1878 = !DILocation(line: 726, column: 13, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1430, file: !213, line: 726, column: 11)
!1880 = !DILocation(line: 726, column: 11, scope: !1430)
!1881 = !DILocation(line: 728, column: 5, scope: !1431)
!1882 = !DILocation(line: 400, column: 75, scope: !1431)
!1883 = !DILocation(line: 400, column: 3, scope: !1431)
!1884 = distinct !{!1884, !1544, !1885, !788}
!1885 = !DILocation(line: 728, column: 5, scope: !1432)
!1886 = !DILocation(line: 730, column: 11, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 730, column: 7)
!1888 = !DILocation(line: 730, column: 16, scope: !1887)
!1889 = !DILocation(line: 738, column: 51, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 738, column: 7)
!1891 = !DILocation(line: 741, column: 11, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !213, line: 741, column: 11)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !213, line: 740, column: 5)
!1894 = !DILocation(line: 741, column: 11, scope: !1893)
!1895 = !DILocation(line: 742, column: 16, scope: !1892)
!1896 = !DILocation(line: 742, column: 9, scope: !1892)
!1897 = !DILocation(line: 746, column: 18, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !213, line: 746, column: 16)
!1899 = !DILocation(line: 746, column: 29, scope: !1898)
!1900 = !DILocation(line: 755, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 755, column: 7)
!1902 = !DILocation(line: 755, column: 20, scope: !1901)
!1903 = !DILocation(line: 756, column: 12, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !213, line: 756, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !213, line: 756, column: 5)
!1906 = !DILocation(line: 756, column: 5, scope: !1905)
!1907 = !DILocation(line: 757, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !213, line: 757, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !213, line: 757, column: 7)
!1910 = !DILocation(line: 757, column: 7, scope: !1909)
!1911 = !DILocation(line: 756, column: 39, scope: !1904)
!1912 = distinct !{!1912, !1906, !1913, !788}
!1913 = !DILocation(line: 757, column: 7, scope: !1905)
!1914 = !DILocation(line: 759, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 759, column: 7)
!1916 = !DILocation(line: 759, column: 7, scope: !1403)
!1917 = !DILocation(line: 760, column: 5, scope: !1915)
!1918 = !DILocation(line: 760, column: 17, scope: !1915)
!1919 = !DILocation(line: 763, column: 2, scope: !1403)
!1920 = !DILocation(line: 766, column: 51, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1403, file: !213, line: 766, column: 7)
!1922 = !DILocation(line: 766, column: 21, scope: !1921)
!1923 = !DILocation(line: 770, column: 42, scope: !1403)
!1924 = !DILocation(line: 768, column: 10, scope: !1403)
!1925 = !DILocation(line: 768, column: 3, scope: !1403)
!1926 = !DILocation(line: 772, column: 1, scope: !1403)
!1927 = distinct !DISubprogram(name: "gettext_quote", scope: !213, file: !213, line: 207, type: !1928, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!51, !51, !5}
!1930 = !{!1931, !1932, !1933, !1934}
!1931 = !DILocalVariable(name: "msgid", arg: 1, scope: !1927, file: !213, line: 207, type: !51)
!1932 = !DILocalVariable(name: "s", arg: 2, scope: !1927, file: !213, line: 207, type: !5)
!1933 = !DILocalVariable(name: "translation", scope: !1927, file: !213, line: 209, type: !51)
!1934 = !DILocalVariable(name: "locale_code", scope: !1927, file: !213, line: 210, type: !51)
!1935 = !DILocation(line: 0, scope: !1927)
!1936 = !DILocation(line: 209, column: 29, scope: !1927)
!1937 = !DILocation(line: 212, column: 19, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1927, file: !213, line: 212, column: 7)
!1939 = !DILocation(line: 212, column: 7, scope: !1927)
!1940 = !DILocation(line: 233, column: 17, scope: !1927)
!1941 = !DILocalVariable(name: "s1", arg: 1, scope: !1942, file: !1943, line: 160, type: !51)
!1942 = distinct !DISubprogram(name: "strcaseeq0", scope: !1943, file: !1943, line: 160, type: !1944, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1946)
!1943 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!53, !51, !51, !46, !46, !46, !46, !46, !46, !46, !46, !46}
!1946 = !{!1941, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1947 = !DILocalVariable(name: "s2", arg: 2, scope: !1942, file: !1943, line: 160, type: !51)
!1948 = !DILocalVariable(name: "s20", arg: 3, scope: !1942, file: !1943, line: 160, type: !46)
!1949 = !DILocalVariable(name: "s21", arg: 4, scope: !1942, file: !1943, line: 160, type: !46)
!1950 = !DILocalVariable(name: "s22", arg: 5, scope: !1942, file: !1943, line: 160, type: !46)
!1951 = !DILocalVariable(name: "s23", arg: 6, scope: !1942, file: !1943, line: 160, type: !46)
!1952 = !DILocalVariable(name: "s24", arg: 7, scope: !1942, file: !1943, line: 160, type: !46)
!1953 = !DILocalVariable(name: "s25", arg: 8, scope: !1942, file: !1943, line: 160, type: !46)
!1954 = !DILocalVariable(name: "s26", arg: 9, scope: !1942, file: !1943, line: 160, type: !46)
!1955 = !DILocalVariable(name: "s27", arg: 10, scope: !1942, file: !1943, line: 160, type: !46)
!1956 = !DILocalVariable(name: "s28", arg: 11, scope: !1942, file: !1943, line: 160, type: !46)
!1957 = !DILocation(line: 0, scope: !1942, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 234, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1927, file: !213, line: 234, column: 7)
!1960 = !DILocation(line: 162, column: 7, scope: !1961, inlinedAt: !1958)
!1961 = distinct !DILexicalBlock(scope: !1942, file: !1943, line: 162, column: 7)
!1962 = !DILocalVariable(name: "s1", arg: 1, scope: !1963, file: !1943, line: 146, type: !51)
!1963 = distinct !DISubprogram(name: "strcaseeq1", scope: !1943, file: !1943, line: 146, type: !1964, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!53, !51, !51, !46, !46, !46, !46, !46, !46, !46, !46}
!1966 = !{!1962, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1967 = !DILocalVariable(name: "s2", arg: 2, scope: !1963, file: !1943, line: 146, type: !51)
!1968 = !DILocalVariable(name: "s21", arg: 3, scope: !1963, file: !1943, line: 146, type: !46)
!1969 = !DILocalVariable(name: "s22", arg: 4, scope: !1963, file: !1943, line: 146, type: !46)
!1970 = !DILocalVariable(name: "s23", arg: 5, scope: !1963, file: !1943, line: 146, type: !46)
!1971 = !DILocalVariable(name: "s24", arg: 6, scope: !1963, file: !1943, line: 146, type: !46)
!1972 = !DILocalVariable(name: "s25", arg: 7, scope: !1963, file: !1943, line: 146, type: !46)
!1973 = !DILocalVariable(name: "s26", arg: 8, scope: !1963, file: !1943, line: 146, type: !46)
!1974 = !DILocalVariable(name: "s27", arg: 9, scope: !1963, file: !1943, line: 146, type: !46)
!1975 = !DILocalVariable(name: "s28", arg: 10, scope: !1963, file: !1943, line: 146, type: !46)
!1976 = !DILocation(line: 0, scope: !1963, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 167, column: 16, scope: !1978, inlinedAt: !1958)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !1943, line: 164, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1961, file: !1943, line: 163, column: 5)
!1980 = !DILocation(line: 148, column: 7, scope: !1981, inlinedAt: !1977)
!1981 = distinct !DILexicalBlock(scope: !1963, file: !1943, line: 148, column: 7)
!1982 = !DILocalVariable(name: "s1", arg: 1, scope: !1983, file: !1943, line: 132, type: !51)
!1983 = distinct !DISubprogram(name: "strcaseeq2", scope: !1943, file: !1943, line: 132, type: !1984, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!53, !51, !51, !46, !46, !46, !46, !46, !46, !46}
!1986 = !{!1982, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1987 = !DILocalVariable(name: "s2", arg: 2, scope: !1983, file: !1943, line: 132, type: !51)
!1988 = !DILocalVariable(name: "s22", arg: 3, scope: !1983, file: !1943, line: 132, type: !46)
!1989 = !DILocalVariable(name: "s23", arg: 4, scope: !1983, file: !1943, line: 132, type: !46)
!1990 = !DILocalVariable(name: "s24", arg: 5, scope: !1983, file: !1943, line: 132, type: !46)
!1991 = !DILocalVariable(name: "s25", arg: 6, scope: !1983, file: !1943, line: 132, type: !46)
!1992 = !DILocalVariable(name: "s26", arg: 7, scope: !1983, file: !1943, line: 132, type: !46)
!1993 = !DILocalVariable(name: "s27", arg: 8, scope: !1983, file: !1943, line: 132, type: !46)
!1994 = !DILocalVariable(name: "s28", arg: 9, scope: !1983, file: !1943, line: 132, type: !46)
!1995 = !DILocation(line: 0, scope: !1983, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 153, column: 16, scope: !1997, inlinedAt: !1977)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !1943, line: 150, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1981, file: !1943, line: 149, column: 5)
!1999 = !DILocation(line: 134, column: 7, scope: !2000, inlinedAt: !1996)
!2000 = distinct !DILexicalBlock(scope: !1983, file: !1943, line: 134, column: 7)
!2001 = !DILocalVariable(name: "s1", arg: 1, scope: !2002, file: !1943, line: 118, type: !51)
!2002 = distinct !DISubprogram(name: "strcaseeq3", scope: !1943, file: !1943, line: 118, type: !2003, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!53, !51, !51, !46, !46, !46, !46, !46, !46}
!2005 = !{!2001, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2006 = !DILocalVariable(name: "s2", arg: 2, scope: !2002, file: !1943, line: 118, type: !51)
!2007 = !DILocalVariable(name: "s23", arg: 3, scope: !2002, file: !1943, line: 118, type: !46)
!2008 = !DILocalVariable(name: "s24", arg: 4, scope: !2002, file: !1943, line: 118, type: !46)
!2009 = !DILocalVariable(name: "s25", arg: 5, scope: !2002, file: !1943, line: 118, type: !46)
!2010 = !DILocalVariable(name: "s26", arg: 6, scope: !2002, file: !1943, line: 118, type: !46)
!2011 = !DILocalVariable(name: "s27", arg: 7, scope: !2002, file: !1943, line: 118, type: !46)
!2012 = !DILocalVariable(name: "s28", arg: 8, scope: !2002, file: !1943, line: 118, type: !46)
!2013 = !DILocation(line: 0, scope: !2002, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 139, column: 16, scope: !2015, inlinedAt: !1996)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !1943, line: 136, column: 11)
!2016 = distinct !DILexicalBlock(scope: !2000, file: !1943, line: 135, column: 5)
!2017 = !DILocation(line: 120, column: 7, scope: !2018, inlinedAt: !2014)
!2018 = distinct !DILexicalBlock(scope: !2002, file: !1943, line: 120, column: 7)
!2019 = !DILocation(line: 120, column: 7, scope: !2002, inlinedAt: !2014)
!2020 = !DILocalVariable(name: "s1", arg: 1, scope: !2021, file: !1943, line: 104, type: !51)
!2021 = distinct !DISubprogram(name: "strcaseeq4", scope: !1943, file: !1943, line: 104, type: !2022, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!53, !51, !51, !46, !46, !46, !46, !46}
!2024 = !{!2020, !2025, !2026, !2027, !2028, !2029, !2030}
!2025 = !DILocalVariable(name: "s2", arg: 2, scope: !2021, file: !1943, line: 104, type: !51)
!2026 = !DILocalVariable(name: "s24", arg: 3, scope: !2021, file: !1943, line: 104, type: !46)
!2027 = !DILocalVariable(name: "s25", arg: 4, scope: !2021, file: !1943, line: 104, type: !46)
!2028 = !DILocalVariable(name: "s26", arg: 5, scope: !2021, file: !1943, line: 104, type: !46)
!2029 = !DILocalVariable(name: "s27", arg: 6, scope: !2021, file: !1943, line: 104, type: !46)
!2030 = !DILocalVariable(name: "s28", arg: 7, scope: !2021, file: !1943, line: 104, type: !46)
!2031 = !DILocation(line: 0, scope: !2021, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 125, column: 16, scope: !2033, inlinedAt: !2014)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !1943, line: 122, column: 11)
!2034 = distinct !DILexicalBlock(scope: !2018, file: !1943, line: 121, column: 5)
!2035 = !DILocation(line: 106, column: 7, scope: !2036, inlinedAt: !2032)
!2036 = distinct !DILexicalBlock(scope: !2021, file: !1943, line: 106, column: 7)
!2037 = !DILocation(line: 106, column: 7, scope: !2021, inlinedAt: !2032)
!2038 = !DILocalVariable(name: "s1", arg: 1, scope: !2039, file: !1943, line: 90, type: !51)
!2039 = distinct !DISubprogram(name: "strcaseeq5", scope: !1943, file: !1943, line: 90, type: !2040, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!53, !51, !51, !46, !46, !46, !46}
!2042 = !{!2038, !2043, !2044, !2045, !2046, !2047}
!2043 = !DILocalVariable(name: "s2", arg: 2, scope: !2039, file: !1943, line: 90, type: !51)
!2044 = !DILocalVariable(name: "s25", arg: 3, scope: !2039, file: !1943, line: 90, type: !46)
!2045 = !DILocalVariable(name: "s26", arg: 4, scope: !2039, file: !1943, line: 90, type: !46)
!2046 = !DILocalVariable(name: "s27", arg: 5, scope: !2039, file: !1943, line: 90, type: !46)
!2047 = !DILocalVariable(name: "s28", arg: 6, scope: !2039, file: !1943, line: 90, type: !46)
!2048 = !DILocation(line: 0, scope: !2039, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 111, column: 16, scope: !2050, inlinedAt: !2032)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1943, line: 108, column: 11)
!2051 = distinct !DILexicalBlock(scope: !2036, file: !1943, line: 107, column: 5)
!2052 = !DILocation(line: 92, column: 7, scope: !2053, inlinedAt: !2049)
!2053 = distinct !DILexicalBlock(scope: !2039, file: !1943, line: 92, column: 7)
!2054 = !DILocation(line: 92, column: 7, scope: !2039, inlinedAt: !2049)
!2055 = !DILocation(line: 235, column: 12, scope: !1959)
!2056 = !DILocation(line: 235, column: 21, scope: !1959)
!2057 = !DILocation(line: 235, column: 5, scope: !1959)
!2058 = !DILocation(line: 0, scope: !1963, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 167, column: 16, scope: !1978, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 236, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1927, file: !213, line: 236, column: 7)
!2062 = !DILocation(line: 148, column: 7, scope: !1981, inlinedAt: !2059)
!2063 = !DILocation(line: 0, scope: !1983, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 153, column: 16, scope: !1997, inlinedAt: !2059)
!2065 = !DILocation(line: 134, column: 7, scope: !2000, inlinedAt: !2064)
!2066 = !DILocation(line: 134, column: 7, scope: !1983, inlinedAt: !2064)
!2067 = !DILocation(line: 0, scope: !2002, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 139, column: 16, scope: !2015, inlinedAt: !2064)
!2069 = !DILocation(line: 120, column: 7, scope: !2018, inlinedAt: !2068)
!2070 = !DILocation(line: 120, column: 7, scope: !2002, inlinedAt: !2068)
!2071 = !DILocation(line: 0, scope: !2021, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 125, column: 16, scope: !2033, inlinedAt: !2068)
!2073 = !DILocation(line: 106, column: 7, scope: !2036, inlinedAt: !2072)
!2074 = !DILocation(line: 106, column: 7, scope: !2021, inlinedAt: !2072)
!2075 = !DILocation(line: 0, scope: !2039, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 111, column: 16, scope: !2050, inlinedAt: !2072)
!2077 = !DILocation(line: 92, column: 7, scope: !2053, inlinedAt: !2076)
!2078 = !DILocation(line: 92, column: 7, scope: !2039, inlinedAt: !2076)
!2079 = !DILocalVariable(name: "s1", arg: 1, scope: !2080, file: !1943, line: 76, type: !51)
!2080 = distinct !DISubprogram(name: "strcaseeq6", scope: !1943, file: !1943, line: 76, type: !2081, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2083)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!53, !51, !51, !46, !46, !46}
!2083 = !{!2079, !2084, !2085, !2086, !2087}
!2084 = !DILocalVariable(name: "s2", arg: 2, scope: !2080, file: !1943, line: 76, type: !51)
!2085 = !DILocalVariable(name: "s26", arg: 3, scope: !2080, file: !1943, line: 76, type: !46)
!2086 = !DILocalVariable(name: "s27", arg: 4, scope: !2080, file: !1943, line: 76, type: !46)
!2087 = !DILocalVariable(name: "s28", arg: 5, scope: !2080, file: !1943, line: 76, type: !46)
!2088 = !DILocation(line: 0, scope: !2080, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 97, column: 16, scope: !2090, inlinedAt: !2076)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !1943, line: 94, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2053, file: !1943, line: 93, column: 5)
!2092 = !DILocation(line: 78, column: 7, scope: !2093, inlinedAt: !2089)
!2093 = distinct !DILexicalBlock(scope: !2080, file: !1943, line: 78, column: 7)
!2094 = !DILocation(line: 78, column: 7, scope: !2080, inlinedAt: !2089)
!2095 = !DILocalVariable(name: "s1", arg: 1, scope: !2096, file: !1943, line: 62, type: !51)
!2096 = distinct !DISubprogram(name: "strcaseeq7", scope: !1943, file: !1943, line: 62, type: !2097, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!53, !51, !51, !46, !46}
!2099 = !{!2095, !2100, !2101, !2102}
!2100 = !DILocalVariable(name: "s2", arg: 2, scope: !2096, file: !1943, line: 62, type: !51)
!2101 = !DILocalVariable(name: "s27", arg: 3, scope: !2096, file: !1943, line: 62, type: !46)
!2102 = !DILocalVariable(name: "s28", arg: 4, scope: !2096, file: !1943, line: 62, type: !46)
!2103 = !DILocation(line: 0, scope: !2096, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 83, column: 16, scope: !2105, inlinedAt: !2089)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !1943, line: 80, column: 11)
!2106 = distinct !DILexicalBlock(scope: !2093, file: !1943, line: 79, column: 5)
!2107 = !DILocation(line: 64, column: 7, scope: !2108, inlinedAt: !2104)
!2108 = distinct !DILexicalBlock(scope: !2096, file: !1943, line: 64, column: 7)
!2109 = !DILocation(line: 236, column: 7, scope: !1927)
!2110 = !DILocation(line: 237, column: 12, scope: !2061)
!2111 = !DILocation(line: 237, column: 21, scope: !2061)
!2112 = !DILocation(line: 237, column: 5, scope: !2061)
!2113 = !DILocation(line: 239, column: 13, scope: !1927)
!2114 = !DILocation(line: 239, column: 11, scope: !1927)
!2115 = !DILocation(line: 239, column: 3, scope: !1927)
!2116 = !DILocation(line: 240, column: 1, scope: !1927)
!2117 = !DISubprogram(name: "iswprint", scope: !2118, file: !2118, line: 120, type: !2119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2118 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!53, !7}
!2121 = !DISubprogram(name: "mbsinit", scope: !2122, file: !2122, line: 292, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!2122 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!53, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1448)
!2127 = distinct !DISubprogram(name: "quotearg_alloc", scope: !213, file: !213, line: 799, type: !2128, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!45, !51, !48, !1295}
!2130 = !{!2131, !2132, !2133}
!2131 = !DILocalVariable(name: "arg", arg: 1, scope: !2127, file: !213, line: 799, type: !51)
!2132 = !DILocalVariable(name: "argsize", arg: 2, scope: !2127, file: !213, line: 799, type: !48)
!2133 = !DILocalVariable(name: "o", arg: 3, scope: !2127, file: !213, line: 800, type: !1295)
!2134 = !DILocation(line: 0, scope: !2127)
!2135 = !DILocalVariable(name: "arg", arg: 1, scope: !2136, file: !213, line: 812, type: !51)
!2136 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !213, file: !213, line: 812, type: !2137, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!45, !51, !48, !288, !1295}
!2139 = !{!2135, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2140 = !DILocalVariable(name: "argsize", arg: 2, scope: !2136, file: !213, line: 812, type: !48)
!2141 = !DILocalVariable(name: "size", arg: 3, scope: !2136, file: !213, line: 812, type: !288)
!2142 = !DILocalVariable(name: "o", arg: 4, scope: !2136, file: !213, line: 813, type: !1295)
!2143 = !DILocalVariable(name: "p", scope: !2136, file: !213, line: 815, type: !1295)
!2144 = !DILocalVariable(name: "e", scope: !2136, file: !213, line: 816, type: !53)
!2145 = !DILocalVariable(name: "flags", scope: !2136, file: !213, line: 818, type: !53)
!2146 = !DILocalVariable(name: "bufsize", scope: !2136, file: !213, line: 819, type: !48)
!2147 = !DILocalVariable(name: "buf", scope: !2136, file: !213, line: 823, type: !45)
!2148 = !DILocation(line: 0, scope: !2136, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 802, column: 10, scope: !2127)
!2150 = !DILocation(line: 815, column: 37, scope: !2136, inlinedAt: !2149)
!2151 = !DILocation(line: 816, column: 11, scope: !2136, inlinedAt: !2149)
!2152 = !DILocation(line: 818, column: 18, scope: !2136, inlinedAt: !2149)
!2153 = !DILocation(line: 818, column: 24, scope: !2136, inlinedAt: !2149)
!2154 = !DILocation(line: 819, column: 69, scope: !2136, inlinedAt: !2149)
!2155 = !DILocation(line: 820, column: 53, scope: !2136, inlinedAt: !2149)
!2156 = !DILocation(line: 821, column: 49, scope: !2136, inlinedAt: !2149)
!2157 = !DILocation(line: 822, column: 49, scope: !2136, inlinedAt: !2149)
!2158 = !DILocation(line: 819, column: 20, scope: !2136, inlinedAt: !2149)
!2159 = !DILocation(line: 822, column: 62, scope: !2136, inlinedAt: !2149)
!2160 = !DILocalVariable(name: "n", arg: 1, scope: !2161, file: !284, line: 216, type: !48)
!2161 = distinct !DISubprogram(name: "xcharalloc", scope: !284, file: !284, line: 216, type: !2162, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!45, !48}
!2164 = !{!2160}
!2165 = !DILocation(line: 0, scope: !2161, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 823, column: 15, scope: !2136, inlinedAt: !2149)
!2167 = !DILocation(line: 218, column: 10, scope: !2161, inlinedAt: !2166)
!2168 = !DILocation(line: 824, column: 60, scope: !2136, inlinedAt: !2149)
!2169 = !DILocation(line: 826, column: 32, scope: !2136, inlinedAt: !2149)
!2170 = !DILocation(line: 826, column: 47, scope: !2136, inlinedAt: !2149)
!2171 = !DILocation(line: 824, column: 3, scope: !2136, inlinedAt: !2149)
!2172 = !DILocation(line: 827, column: 9, scope: !2136, inlinedAt: !2149)
!2173 = !DILocation(line: 802, column: 3, scope: !2127)
!2174 = !DILocation(line: 0, scope: !2136)
!2175 = !DILocation(line: 815, column: 37, scope: !2136)
!2176 = !DILocation(line: 816, column: 11, scope: !2136)
!2177 = !DILocation(line: 818, column: 18, scope: !2136)
!2178 = !DILocation(line: 818, column: 27, scope: !2136)
!2179 = !DILocation(line: 818, column: 24, scope: !2136)
!2180 = !DILocation(line: 819, column: 69, scope: !2136)
!2181 = !DILocation(line: 820, column: 53, scope: !2136)
!2182 = !DILocation(line: 821, column: 49, scope: !2136)
!2183 = !DILocation(line: 822, column: 49, scope: !2136)
!2184 = !DILocation(line: 819, column: 20, scope: !2136)
!2185 = !DILocation(line: 822, column: 62, scope: !2136)
!2186 = !DILocation(line: 0, scope: !2161, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 823, column: 15, scope: !2136)
!2188 = !DILocation(line: 218, column: 10, scope: !2161, inlinedAt: !2187)
!2189 = !DILocation(line: 824, column: 60, scope: !2136)
!2190 = !DILocation(line: 826, column: 32, scope: !2136)
!2191 = !DILocation(line: 826, column: 47, scope: !2136)
!2192 = !DILocation(line: 824, column: 3, scope: !2136)
!2193 = !DILocation(line: 827, column: 9, scope: !2136)
!2194 = !DILocation(line: 828, column: 7, scope: !2136)
!2195 = !DILocation(line: 829, column: 11, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2136, file: !213, line: 828, column: 7)
!2197 = !DILocation(line: 829, column: 5, scope: !2196)
!2198 = !DILocation(line: 830, column: 3, scope: !2136)
!2199 = distinct !DISubprogram(name: "quotearg_free", scope: !213, file: !213, line: 848, type: !747, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2200)
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "sv", scope: !2199, file: !213, line: 850, type: !249)
!2202 = !DILocalVariable(name: "i", scope: !2199, file: !213, line: 851, type: !53)
!2203 = !DILocation(line: 850, column: 24, scope: !2199)
!2204 = !DILocation(line: 0, scope: !2199)
!2205 = !DILocation(line: 852, column: 19, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !213, line: 852, column: 3)
!2207 = distinct !DILexicalBlock(scope: !2199, file: !213, line: 852, column: 3)
!2208 = !DILocation(line: 852, column: 17, scope: !2206)
!2209 = !DILocation(line: 852, column: 3, scope: !2207)
!2210 = !DILocation(line: 853, column: 17, scope: !2206)
!2211 = !{!2212, !738, i64 8}
!2212 = !{!"slotvec", !956, i64 0, !738, i64 8}
!2213 = !DILocation(line: 853, column: 5, scope: !2206)
!2214 = !DILocation(line: 852, column: 28, scope: !2206)
!2215 = distinct !{!2215, !2209, !2216, !788}
!2216 = !DILocation(line: 853, column: 20, scope: !2207)
!2217 = !DILocation(line: 854, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2199, file: !213, line: 854, column: 7)
!2219 = !DILocation(line: 854, column: 17, scope: !2218)
!2220 = !DILocation(line: 854, column: 7, scope: !2199)
!2221 = !DILocation(line: 856, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !213, line: 855, column: 5)
!2223 = !DILocation(line: 857, column: 21, scope: !2222)
!2224 = !{!2212, !956, i64 0}
!2225 = !DILocation(line: 858, column: 20, scope: !2222)
!2226 = !DILocation(line: 859, column: 5, scope: !2222)
!2227 = !DILocation(line: 860, column: 10, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2199, file: !213, line: 860, column: 7)
!2229 = !DILocation(line: 860, column: 7, scope: !2199)
!2230 = !DILocation(line: 862, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !213, line: 861, column: 5)
!2232 = !DILocation(line: 862, column: 7, scope: !2231)
!2233 = !DILocation(line: 863, column: 15, scope: !2231)
!2234 = !DILocation(line: 864, column: 5, scope: !2231)
!2235 = !DILocation(line: 865, column: 10, scope: !2199)
!2236 = !DILocation(line: 866, column: 1, scope: !2199)
!2237 = distinct !DISubprogram(name: "quotearg_n", scope: !213, file: !213, line: 931, type: !818, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2238)
!2238 = !{!2239, !2240}
!2239 = !DILocalVariable(name: "n", arg: 1, scope: !2237, file: !213, line: 931, type: !53)
!2240 = !DILocalVariable(name: "arg", arg: 2, scope: !2237, file: !213, line: 931, type: !51)
!2241 = !DILocation(line: 0, scope: !2237)
!2242 = !DILocation(line: 933, column: 10, scope: !2237)
!2243 = !DILocation(line: 933, column: 3, scope: !2237)
!2244 = distinct !DISubprogram(name: "quotearg_n_options", scope: !213, file: !213, line: 877, type: !2245, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!45, !53, !51, !48, !1295}
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2257, !2258, !2260, !2261, !2262}
!2248 = !DILocalVariable(name: "n", arg: 1, scope: !2244, file: !213, line: 877, type: !53)
!2249 = !DILocalVariable(name: "arg", arg: 2, scope: !2244, file: !213, line: 877, type: !51)
!2250 = !DILocalVariable(name: "argsize", arg: 3, scope: !2244, file: !213, line: 877, type: !48)
!2251 = !DILocalVariable(name: "options", arg: 4, scope: !2244, file: !213, line: 878, type: !1295)
!2252 = !DILocalVariable(name: "e", scope: !2244, file: !213, line: 880, type: !53)
!2253 = !DILocalVariable(name: "sv", scope: !2244, file: !213, line: 882, type: !249)
!2254 = !DILocalVariable(name: "preallocated", scope: !2255, file: !213, line: 889, type: !60)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !213, line: 888, column: 5)
!2256 = distinct !DILexicalBlock(scope: !2244, file: !213, line: 887, column: 7)
!2257 = !DILocalVariable(name: "nmax", scope: !2255, file: !213, line: 890, type: !53)
!2258 = !DILocalVariable(name: "size", scope: !2259, file: !213, line: 903, type: !48)
!2259 = distinct !DILexicalBlock(scope: !2244, file: !213, line: 902, column: 3)
!2260 = !DILocalVariable(name: "val", scope: !2259, file: !213, line: 904, type: !45)
!2261 = !DILocalVariable(name: "flags", scope: !2259, file: !213, line: 906, type: !53)
!2262 = !DILocalVariable(name: "qsize", scope: !2259, file: !213, line: 907, type: !48)
!2263 = !DILocation(line: 0, scope: !2244)
!2264 = !DILocation(line: 880, column: 11, scope: !2244)
!2265 = !DILocation(line: 882, column: 24, scope: !2244)
!2266 = !DILocation(line: 884, column: 9, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2244, file: !213, line: 884, column: 7)
!2268 = !DILocation(line: 884, column: 7, scope: !2244)
!2269 = !DILocation(line: 885, column: 5, scope: !2267)
!2270 = !DILocation(line: 887, column: 7, scope: !2256)
!2271 = !DILocation(line: 887, column: 14, scope: !2256)
!2272 = !DILocation(line: 887, column: 7, scope: !2244)
!2273 = !DILocation(line: 889, column: 31, scope: !2255)
!2274 = !DILocation(line: 0, scope: !2255)
!2275 = !DILocation(line: 892, column: 16, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2255, file: !213, line: 892, column: 11)
!2277 = !DILocation(line: 892, column: 11, scope: !2255)
!2278 = !DILocation(line: 893, column: 9, scope: !2276)
!2279 = !DILocation(line: 895, column: 32, scope: !2255)
!2280 = !DILocation(line: 895, column: 61, scope: !2255)
!2281 = !DILocation(line: 895, column: 66, scope: !2255)
!2282 = !DILocation(line: 895, column: 22, scope: !2255)
!2283 = !DILocation(line: 895, column: 15, scope: !2255)
!2284 = !DILocation(line: 896, column: 11, scope: !2255)
!2285 = !DILocation(line: 897, column: 15, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2255, file: !213, line: 896, column: 11)
!2287 = !{i64 0, i64 8, !964, i64 8, i64 8, !737}
!2288 = !DILocation(line: 897, column: 9, scope: !2286)
!2289 = !DILocation(line: 898, column: 20, scope: !2255)
!2290 = !DILocation(line: 898, column: 18, scope: !2255)
!2291 = !DILocation(line: 898, column: 15, scope: !2255)
!2292 = !DILocation(line: 898, column: 38, scope: !2255)
!2293 = !DILocation(line: 898, column: 31, scope: !2255)
!2294 = !DILocation(line: 898, column: 48, scope: !2255)
!2295 = !DILocation(line: 0, scope: !1689, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 898, column: 7, scope: !2255)
!2297 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !2296)
!2298 = !DILocation(line: 899, column: 14, scope: !2255)
!2299 = !DILocation(line: 900, column: 5, scope: !2255)
!2300 = !DILocation(line: 903, column: 19, scope: !2259)
!2301 = !DILocation(line: 903, column: 25, scope: !2259)
!2302 = !DILocation(line: 0, scope: !2259)
!2303 = !DILocation(line: 904, column: 23, scope: !2259)
!2304 = !DILocation(line: 906, column: 26, scope: !2259)
!2305 = !DILocation(line: 906, column: 32, scope: !2259)
!2306 = !DILocation(line: 908, column: 55, scope: !2259)
!2307 = !DILocation(line: 909, column: 46, scope: !2259)
!2308 = !DILocation(line: 910, column: 55, scope: !2259)
!2309 = !DILocation(line: 911, column: 55, scope: !2259)
!2310 = !DILocation(line: 907, column: 20, scope: !2259)
!2311 = !DILocation(line: 913, column: 14, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2259, file: !213, line: 913, column: 9)
!2313 = !DILocation(line: 913, column: 9, scope: !2259)
!2314 = !DILocation(line: 915, column: 35, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !213, line: 914, column: 7)
!2316 = !DILocation(line: 915, column: 20, scope: !2315)
!2317 = !DILocation(line: 916, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !213, line: 916, column: 13)
!2319 = !DILocation(line: 916, column: 13, scope: !2315)
!2320 = !DILocation(line: 917, column: 11, scope: !2318)
!2321 = !DILocation(line: 0, scope: !2161, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 918, column: 27, scope: !2315)
!2323 = !DILocation(line: 218, column: 10, scope: !2161, inlinedAt: !2322)
!2324 = !DILocation(line: 918, column: 19, scope: !2315)
!2325 = !DILocation(line: 919, column: 69, scope: !2315)
!2326 = !DILocation(line: 921, column: 44, scope: !2315)
!2327 = !DILocation(line: 922, column: 44, scope: !2315)
!2328 = !DILocation(line: 919, column: 9, scope: !2315)
!2329 = !DILocation(line: 923, column: 7, scope: !2315)
!2330 = !DILocation(line: 925, column: 11, scope: !2259)
!2331 = !DILocation(line: 926, column: 5, scope: !2259)
!2332 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !213, file: !213, line: 937, type: !2333, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!45, !53, !51, !48}
!2335 = !{!2336, !2337, !2338}
!2336 = !DILocalVariable(name: "n", arg: 1, scope: !2332, file: !213, line: 937, type: !53)
!2337 = !DILocalVariable(name: "arg", arg: 2, scope: !2332, file: !213, line: 937, type: !51)
!2338 = !DILocalVariable(name: "argsize", arg: 3, scope: !2332, file: !213, line: 937, type: !48)
!2339 = !DILocation(line: 0, scope: !2332)
!2340 = !DILocation(line: 939, column: 10, scope: !2332)
!2341 = !DILocation(line: 939, column: 3, scope: !2332)
!2342 = distinct !DISubprogram(name: "quotearg", scope: !213, file: !213, line: 943, type: !912, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2343)
!2343 = !{!2344}
!2344 = !DILocalVariable(name: "arg", arg: 1, scope: !2342, file: !213, line: 943, type: !51)
!2345 = !DILocation(line: 0, scope: !2342)
!2346 = !DILocation(line: 0, scope: !2237, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 945, column: 10, scope: !2342)
!2348 = !DILocation(line: 933, column: 10, scope: !2237, inlinedAt: !2347)
!2349 = !DILocation(line: 945, column: 3, scope: !2342)
!2350 = distinct !DISubprogram(name: "quotearg_mem", scope: !213, file: !213, line: 949, type: !2351, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!45, !51, !48}
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "arg", arg: 1, scope: !2350, file: !213, line: 949, type: !51)
!2355 = !DILocalVariable(name: "argsize", arg: 2, scope: !2350, file: !213, line: 949, type: !48)
!2356 = !DILocation(line: 0, scope: !2350)
!2357 = !DILocation(line: 0, scope: !2332, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 951, column: 10, scope: !2350)
!2359 = !DILocation(line: 939, column: 10, scope: !2332, inlinedAt: !2358)
!2360 = !DILocation(line: 951, column: 3, scope: !2350)
!2361 = distinct !DISubprogram(name: "quotearg_n_style", scope: !213, file: !213, line: 955, type: !2362, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!45, !53, !5, !51}
!2364 = !{!2365, !2366, !2367, !2368}
!2365 = !DILocalVariable(name: "n", arg: 1, scope: !2361, file: !213, line: 955, type: !53)
!2366 = !DILocalVariable(name: "s", arg: 2, scope: !2361, file: !213, line: 955, type: !5)
!2367 = !DILocalVariable(name: "arg", arg: 3, scope: !2361, file: !213, line: 955, type: !51)
!2368 = !DILocalVariable(name: "o", scope: !2361, file: !213, line: 957, type: !1296)
!2369 = !DILocation(line: 0, scope: !2361)
!2370 = !DILocation(line: 957, column: 3, scope: !2361)
!2371 = !DILocation(line: 957, column: 32, scope: !2361)
!2372 = !{!2373}
!2373 = distinct !{!2373, !2374, !"quoting_options_from_style: argument 0"}
!2374 = distinct !{!2374, !"quoting_options_from_style"}
!2375 = !DILocation(line: 957, column: 36, scope: !2361)
!2376 = !DILocalVariable(name: "style", arg: 1, scope: !2377, file: !213, line: 193, type: !5)
!2377 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !213, file: !213, line: 193, type: !2378, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!230, !5}
!2380 = !{!2376, !2381}
!2381 = !DILocalVariable(name: "o", scope: !2377, file: !213, line: 195, type: !230)
!2382 = !DILocation(line: 0, scope: !2377, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 957, column: 36, scope: !2361)
!2384 = !DILocation(line: 195, column: 26, scope: !2377, inlinedAt: !2383)
!2385 = !DILocation(line: 196, column: 13, scope: !2386, inlinedAt: !2383)
!2386 = distinct !DILexicalBlock(scope: !2377, file: !213, line: 196, column: 7)
!2387 = !DILocation(line: 196, column: 7, scope: !2377, inlinedAt: !2383)
!2388 = !DILocation(line: 197, column: 5, scope: !2386, inlinedAt: !2383)
!2389 = !DILocation(line: 198, column: 5, scope: !2377, inlinedAt: !2383)
!2390 = !DILocation(line: 198, column: 11, scope: !2377, inlinedAt: !2383)
!2391 = !DILocation(line: 958, column: 10, scope: !2361)
!2392 = !DILocation(line: 959, column: 1, scope: !2361)
!2393 = !DILocation(line: 958, column: 3, scope: !2361)
!2394 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !213, file: !213, line: 962, type: !2395, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!45, !53, !5, !51, !48}
!2397 = !{!2398, !2399, !2400, !2401, !2402}
!2398 = !DILocalVariable(name: "n", arg: 1, scope: !2394, file: !213, line: 962, type: !53)
!2399 = !DILocalVariable(name: "s", arg: 2, scope: !2394, file: !213, line: 962, type: !5)
!2400 = !DILocalVariable(name: "arg", arg: 3, scope: !2394, file: !213, line: 963, type: !51)
!2401 = !DILocalVariable(name: "argsize", arg: 4, scope: !2394, file: !213, line: 963, type: !48)
!2402 = !DILocalVariable(name: "o", scope: !2394, file: !213, line: 965, type: !1296)
!2403 = !DILocation(line: 0, scope: !2394)
!2404 = !DILocation(line: 965, column: 3, scope: !2394)
!2405 = !DILocation(line: 965, column: 32, scope: !2394)
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"quoting_options_from_style: argument 0"}
!2408 = distinct !{!2408, !"quoting_options_from_style"}
!2409 = !DILocation(line: 965, column: 36, scope: !2394)
!2410 = !DILocation(line: 0, scope: !2377, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 965, column: 36, scope: !2394)
!2412 = !DILocation(line: 195, column: 26, scope: !2377, inlinedAt: !2411)
!2413 = !DILocation(line: 196, column: 13, scope: !2386, inlinedAt: !2411)
!2414 = !DILocation(line: 196, column: 7, scope: !2377, inlinedAt: !2411)
!2415 = !DILocation(line: 197, column: 5, scope: !2386, inlinedAt: !2411)
!2416 = !DILocation(line: 198, column: 5, scope: !2377, inlinedAt: !2411)
!2417 = !DILocation(line: 198, column: 11, scope: !2377, inlinedAt: !2411)
!2418 = !DILocation(line: 966, column: 10, scope: !2394)
!2419 = !DILocation(line: 967, column: 1, scope: !2394)
!2420 = !DILocation(line: 966, column: 3, scope: !2394)
!2421 = distinct !DISubprogram(name: "quotearg_style", scope: !213, file: !213, line: 970, type: !2422, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!45, !5, !51}
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "s", arg: 1, scope: !2421, file: !213, line: 970, type: !5)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !213, line: 970, type: !51)
!2427 = !DILocation(line: 0, scope: !2421)
!2428 = !DILocation(line: 0, scope: !2361, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 972, column: 10, scope: !2421)
!2430 = !DILocation(line: 957, column: 3, scope: !2361, inlinedAt: !2429)
!2431 = !DILocation(line: 957, column: 32, scope: !2361, inlinedAt: !2429)
!2432 = !{!2433}
!2433 = distinct !{!2433, !2434, !"quoting_options_from_style: argument 0"}
!2434 = distinct !{!2434, !"quoting_options_from_style"}
!2435 = !DILocation(line: 957, column: 36, scope: !2361, inlinedAt: !2429)
!2436 = !DILocation(line: 0, scope: !2377, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 957, column: 36, scope: !2361, inlinedAt: !2429)
!2438 = !DILocation(line: 195, column: 26, scope: !2377, inlinedAt: !2437)
!2439 = !DILocation(line: 196, column: 13, scope: !2386, inlinedAt: !2437)
!2440 = !DILocation(line: 196, column: 7, scope: !2377, inlinedAt: !2437)
!2441 = !DILocation(line: 197, column: 5, scope: !2386, inlinedAt: !2437)
!2442 = !DILocation(line: 198, column: 5, scope: !2377, inlinedAt: !2437)
!2443 = !DILocation(line: 198, column: 11, scope: !2377, inlinedAt: !2437)
!2444 = !DILocation(line: 958, column: 10, scope: !2361, inlinedAt: !2429)
!2445 = !DILocation(line: 959, column: 1, scope: !2361, inlinedAt: !2429)
!2446 = !DILocation(line: 972, column: 3, scope: !2421)
!2447 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !213, file: !213, line: 976, type: !2448, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!45, !5, !51, !48}
!2450 = !{!2451, !2452, !2453}
!2451 = !DILocalVariable(name: "s", arg: 1, scope: !2447, file: !213, line: 976, type: !5)
!2452 = !DILocalVariable(name: "arg", arg: 2, scope: !2447, file: !213, line: 976, type: !51)
!2453 = !DILocalVariable(name: "argsize", arg: 3, scope: !2447, file: !213, line: 976, type: !48)
!2454 = !DILocation(line: 0, scope: !2447)
!2455 = !DILocation(line: 0, scope: !2394, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 978, column: 10, scope: !2447)
!2457 = !DILocation(line: 965, column: 3, scope: !2394, inlinedAt: !2456)
!2458 = !DILocation(line: 965, column: 32, scope: !2394, inlinedAt: !2456)
!2459 = !{!2460}
!2460 = distinct !{!2460, !2461, !"quoting_options_from_style: argument 0"}
!2461 = distinct !{!2461, !"quoting_options_from_style"}
!2462 = !DILocation(line: 965, column: 36, scope: !2394, inlinedAt: !2456)
!2463 = !DILocation(line: 0, scope: !2377, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 965, column: 36, scope: !2394, inlinedAt: !2456)
!2465 = !DILocation(line: 195, column: 26, scope: !2377, inlinedAt: !2464)
!2466 = !DILocation(line: 196, column: 13, scope: !2386, inlinedAt: !2464)
!2467 = !DILocation(line: 196, column: 7, scope: !2377, inlinedAt: !2464)
!2468 = !DILocation(line: 197, column: 5, scope: !2386, inlinedAt: !2464)
!2469 = !DILocation(line: 198, column: 5, scope: !2377, inlinedAt: !2464)
!2470 = !DILocation(line: 198, column: 11, scope: !2377, inlinedAt: !2464)
!2471 = !DILocation(line: 966, column: 10, scope: !2394, inlinedAt: !2456)
!2472 = !DILocation(line: 967, column: 1, scope: !2394, inlinedAt: !2456)
!2473 = !DILocation(line: 978, column: 3, scope: !2447)
!2474 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !213, file: !213, line: 982, type: !2475, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!45, !51, !48, !46}
!2477 = !{!2478, !2479, !2480, !2481}
!2478 = !DILocalVariable(name: "arg", arg: 1, scope: !2474, file: !213, line: 982, type: !51)
!2479 = !DILocalVariable(name: "argsize", arg: 2, scope: !2474, file: !213, line: 982, type: !48)
!2480 = !DILocalVariable(name: "ch", arg: 3, scope: !2474, file: !213, line: 982, type: !46)
!2481 = !DILocalVariable(name: "options", scope: !2474, file: !213, line: 984, type: !230)
!2482 = !DILocation(line: 0, scope: !2474)
!2483 = !DILocation(line: 984, column: 3, scope: !2474)
!2484 = !DILocation(line: 984, column: 26, scope: !2474)
!2485 = !DILocation(line: 985, column: 13, scope: !2474)
!2486 = !{i64 0, i64 4, !866, i64 4, i64 4, !879, i64 8, i64 32, !866, i64 40, i64 8, !737, i64 48, i64 8, !737}
!2487 = !DILocation(line: 0, scope: !1316, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 986, column: 3, scope: !2474)
!2489 = !DILocation(line: 156, column: 62, scope: !1316, inlinedAt: !2488)
!2490 = !DILocation(line: 156, column: 57, scope: !1316, inlinedAt: !2488)
!2491 = !DILocation(line: 157, column: 15, scope: !1316, inlinedAt: !2488)
!2492 = !DILocation(line: 158, column: 12, scope: !1316, inlinedAt: !2488)
!2493 = !DILocation(line: 158, column: 15, scope: !1316, inlinedAt: !2488)
!2494 = !DILocation(line: 158, column: 25, scope: !1316, inlinedAt: !2488)
!2495 = !DILocation(line: 159, column: 18, scope: !1316, inlinedAt: !2488)
!2496 = !DILocation(line: 159, column: 23, scope: !1316, inlinedAt: !2488)
!2497 = !DILocation(line: 159, column: 6, scope: !1316, inlinedAt: !2488)
!2498 = !DILocation(line: 987, column: 10, scope: !2474)
!2499 = !DILocation(line: 988, column: 1, scope: !2474)
!2500 = !DILocation(line: 987, column: 3, scope: !2474)
!2501 = distinct !DISubprogram(name: "quotearg_char", scope: !213, file: !213, line: 991, type: !2502, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!45, !51, !46}
!2504 = !{!2505, !2506}
!2505 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !213, line: 991, type: !51)
!2506 = !DILocalVariable(name: "ch", arg: 2, scope: !2501, file: !213, line: 991, type: !46)
!2507 = !DILocation(line: 0, scope: !2501)
!2508 = !DILocation(line: 0, scope: !2474, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 993, column: 10, scope: !2501)
!2510 = !DILocation(line: 984, column: 3, scope: !2474, inlinedAt: !2509)
!2511 = !DILocation(line: 984, column: 26, scope: !2474, inlinedAt: !2509)
!2512 = !DILocation(line: 985, column: 13, scope: !2474, inlinedAt: !2509)
!2513 = !DILocation(line: 0, scope: !1316, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 986, column: 3, scope: !2474, inlinedAt: !2509)
!2515 = !DILocation(line: 156, column: 62, scope: !1316, inlinedAt: !2514)
!2516 = !DILocation(line: 156, column: 57, scope: !1316, inlinedAt: !2514)
!2517 = !DILocation(line: 157, column: 15, scope: !1316, inlinedAt: !2514)
!2518 = !DILocation(line: 158, column: 12, scope: !1316, inlinedAt: !2514)
!2519 = !DILocation(line: 158, column: 15, scope: !1316, inlinedAt: !2514)
!2520 = !DILocation(line: 158, column: 25, scope: !1316, inlinedAt: !2514)
!2521 = !DILocation(line: 159, column: 18, scope: !1316, inlinedAt: !2514)
!2522 = !DILocation(line: 159, column: 23, scope: !1316, inlinedAt: !2514)
!2523 = !DILocation(line: 159, column: 6, scope: !1316, inlinedAt: !2514)
!2524 = !DILocation(line: 987, column: 10, scope: !2474, inlinedAt: !2509)
!2525 = !DILocation(line: 988, column: 1, scope: !2474, inlinedAt: !2509)
!2526 = !DILocation(line: 993, column: 3, scope: !2501)
!2527 = distinct !DISubprogram(name: "quotearg_colon", scope: !213, file: !213, line: 997, type: !912, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2528)
!2528 = !{!2529}
!2529 = !DILocalVariable(name: "arg", arg: 1, scope: !2527, file: !213, line: 997, type: !51)
!2530 = !DILocation(line: 0, scope: !2527)
!2531 = !DILocation(line: 0, scope: !2501, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 999, column: 10, scope: !2527)
!2533 = !DILocation(line: 0, scope: !2474, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 993, column: 10, scope: !2501, inlinedAt: !2532)
!2535 = !DILocation(line: 984, column: 3, scope: !2474, inlinedAt: !2534)
!2536 = !DILocation(line: 984, column: 26, scope: !2474, inlinedAt: !2534)
!2537 = !DILocation(line: 985, column: 13, scope: !2474, inlinedAt: !2534)
!2538 = !DILocation(line: 0, scope: !1316, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 986, column: 3, scope: !2474, inlinedAt: !2534)
!2540 = !DILocation(line: 156, column: 57, scope: !1316, inlinedAt: !2539)
!2541 = !DILocation(line: 158, column: 12, scope: !1316, inlinedAt: !2539)
!2542 = !DILocation(line: 159, column: 6, scope: !1316, inlinedAt: !2539)
!2543 = !DILocation(line: 987, column: 10, scope: !2474, inlinedAt: !2534)
!2544 = !DILocation(line: 988, column: 1, scope: !2474, inlinedAt: !2534)
!2545 = !DILocation(line: 999, column: 3, scope: !2527)
!2546 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !213, file: !213, line: 1003, type: !2351, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2547)
!2547 = !{!2548, !2549}
!2548 = !DILocalVariable(name: "arg", arg: 1, scope: !2546, file: !213, line: 1003, type: !51)
!2549 = !DILocalVariable(name: "argsize", arg: 2, scope: !2546, file: !213, line: 1003, type: !48)
!2550 = !DILocation(line: 0, scope: !2546)
!2551 = !DILocation(line: 0, scope: !2474, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1005, column: 10, scope: !2546)
!2553 = !DILocation(line: 984, column: 3, scope: !2474, inlinedAt: !2552)
!2554 = !DILocation(line: 984, column: 26, scope: !2474, inlinedAt: !2552)
!2555 = !DILocation(line: 985, column: 13, scope: !2474, inlinedAt: !2552)
!2556 = !DILocation(line: 0, scope: !1316, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 986, column: 3, scope: !2474, inlinedAt: !2552)
!2558 = !DILocation(line: 156, column: 57, scope: !1316, inlinedAt: !2557)
!2559 = !DILocation(line: 158, column: 12, scope: !1316, inlinedAt: !2557)
!2560 = !DILocation(line: 159, column: 6, scope: !1316, inlinedAt: !2557)
!2561 = !DILocation(line: 987, column: 10, scope: !2474, inlinedAt: !2552)
!2562 = !DILocation(line: 988, column: 1, scope: !2474, inlinedAt: !2552)
!2563 = !DILocation(line: 1005, column: 3, scope: !2546)
!2564 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !213, file: !213, line: 1009, type: !2362, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2565)
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2564, file: !213, line: 1009, type: !53)
!2567 = !DILocalVariable(name: "s", arg: 2, scope: !2564, file: !213, line: 1009, type: !5)
!2568 = !DILocalVariable(name: "arg", arg: 3, scope: !2564, file: !213, line: 1009, type: !51)
!2569 = !DILocalVariable(name: "options", scope: !2564, file: !213, line: 1011, type: !230)
!2570 = !DILocation(line: 195, column: 26, scope: !2377, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1012, column: 13, scope: !2564)
!2572 = !DILocation(line: 0, scope: !2564)
!2573 = !DILocation(line: 1011, column: 3, scope: !2564)
!2574 = !DILocation(line: 1011, column: 26, scope: !2564)
!2575 = !DILocation(line: 1012, column: 13, scope: !2564)
!2576 = !{!2577}
!2577 = distinct !{!2577, !2578, !"quoting_options_from_style: argument 0"}
!2578 = distinct !{!2578, !"quoting_options_from_style"}
!2579 = !DILocation(line: 0, scope: !2377, inlinedAt: !2571)
!2580 = !DILocation(line: 196, column: 13, scope: !2386, inlinedAt: !2571)
!2581 = !DILocation(line: 196, column: 7, scope: !2377, inlinedAt: !2571)
!2582 = !DILocation(line: 197, column: 5, scope: !2386, inlinedAt: !2571)
!2583 = !{i64 0, i64 4, !879, i64 4, i64 32, !866, i64 36, i64 8, !737, i64 44, i64 8, !737}
!2584 = !DILocation(line: 0, scope: !1316, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 1013, column: 3, scope: !2564)
!2586 = !DILocation(line: 156, column: 57, scope: !1316, inlinedAt: !2585)
!2587 = !DILocation(line: 158, column: 12, scope: !1316, inlinedAt: !2585)
!2588 = !DILocation(line: 159, column: 6, scope: !1316, inlinedAt: !2585)
!2589 = !DILocation(line: 1014, column: 10, scope: !2564)
!2590 = !DILocation(line: 1015, column: 1, scope: !2564)
!2591 = !DILocation(line: 1014, column: 3, scope: !2564)
!2592 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !213, file: !213, line: 1018, type: !2593, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!45, !53, !51, !51, !51}
!2595 = !{!2596, !2597, !2598, !2599}
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2592, file: !213, line: 1018, type: !53)
!2597 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2592, file: !213, line: 1018, type: !51)
!2598 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2592, file: !213, line: 1019, type: !51)
!2599 = !DILocalVariable(name: "arg", arg: 4, scope: !2592, file: !213, line: 1019, type: !51)
!2600 = !DILocation(line: 0, scope: !2592)
!2601 = !DILocalVariable(name: "n", arg: 1, scope: !2602, file: !213, line: 1026, type: !53)
!2602 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !213, file: !213, line: 1026, type: !2603, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!45, !53, !51, !51, !51, !48}
!2605 = !{!2601, !2606, !2607, !2608, !2609, !2610}
!2606 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2602, file: !213, line: 1026, type: !51)
!2607 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2602, file: !213, line: 1027, type: !51)
!2608 = !DILocalVariable(name: "arg", arg: 4, scope: !2602, file: !213, line: 1028, type: !51)
!2609 = !DILocalVariable(name: "argsize", arg: 5, scope: !2602, file: !213, line: 1028, type: !48)
!2610 = !DILocalVariable(name: "o", scope: !2602, file: !213, line: 1030, type: !230)
!2611 = !DILocation(line: 0, scope: !2602, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1021, column: 10, scope: !2592)
!2613 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2612)
!2614 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2612)
!2615 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2612)
!2616 = !DILocation(line: 0, scope: !1356, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2612)
!2618 = !DILocation(line: 184, column: 6, scope: !1356, inlinedAt: !2617)
!2619 = !DILocation(line: 184, column: 12, scope: !1356, inlinedAt: !2617)
!2620 = !DILocation(line: 185, column: 8, scope: !1370, inlinedAt: !2617)
!2621 = !DILocation(line: 185, column: 19, scope: !1370, inlinedAt: !2617)
!2622 = !DILocation(line: 186, column: 5, scope: !1370, inlinedAt: !2617)
!2623 = !DILocation(line: 187, column: 6, scope: !1356, inlinedAt: !2617)
!2624 = !DILocation(line: 187, column: 17, scope: !1356, inlinedAt: !2617)
!2625 = !DILocation(line: 188, column: 6, scope: !1356, inlinedAt: !2617)
!2626 = !DILocation(line: 188, column: 18, scope: !1356, inlinedAt: !2617)
!2627 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2612)
!2628 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2612)
!2629 = !DILocation(line: 1021, column: 3, scope: !2592)
!2630 = !DILocation(line: 0, scope: !2602)
!2631 = !DILocation(line: 1030, column: 3, scope: !2602)
!2632 = !DILocation(line: 1030, column: 26, scope: !2602)
!2633 = !DILocation(line: 1030, column: 30, scope: !2602)
!2634 = !DILocation(line: 0, scope: !1356, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1031, column: 3, scope: !2602)
!2636 = !DILocation(line: 184, column: 6, scope: !1356, inlinedAt: !2635)
!2637 = !DILocation(line: 184, column: 12, scope: !1356, inlinedAt: !2635)
!2638 = !DILocation(line: 185, column: 8, scope: !1370, inlinedAt: !2635)
!2639 = !DILocation(line: 185, column: 19, scope: !1370, inlinedAt: !2635)
!2640 = !DILocation(line: 186, column: 5, scope: !1370, inlinedAt: !2635)
!2641 = !DILocation(line: 187, column: 6, scope: !1356, inlinedAt: !2635)
!2642 = !DILocation(line: 187, column: 17, scope: !1356, inlinedAt: !2635)
!2643 = !DILocation(line: 188, column: 6, scope: !1356, inlinedAt: !2635)
!2644 = !DILocation(line: 188, column: 18, scope: !1356, inlinedAt: !2635)
!2645 = !DILocation(line: 1032, column: 10, scope: !2602)
!2646 = !DILocation(line: 1033, column: 1, scope: !2602)
!2647 = !DILocation(line: 1032, column: 3, scope: !2602)
!2648 = distinct !DISubprogram(name: "quotearg_custom", scope: !213, file: !213, line: 1036, type: !2649, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!45, !51, !51, !51}
!2651 = !{!2652, !2653, !2654}
!2652 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2648, file: !213, line: 1036, type: !51)
!2653 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2648, file: !213, line: 1036, type: !51)
!2654 = !DILocalVariable(name: "arg", arg: 3, scope: !2648, file: !213, line: 1037, type: !51)
!2655 = !DILocation(line: 0, scope: !2648)
!2656 = !DILocation(line: 0, scope: !2592, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1039, column: 10, scope: !2648)
!2658 = !DILocation(line: 0, scope: !2602, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1021, column: 10, scope: !2592, inlinedAt: !2657)
!2660 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2659)
!2661 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2659)
!2662 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2659)
!2663 = !DILocation(line: 0, scope: !1356, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2659)
!2665 = !DILocation(line: 184, column: 6, scope: !1356, inlinedAt: !2664)
!2666 = !DILocation(line: 184, column: 12, scope: !1356, inlinedAt: !2664)
!2667 = !DILocation(line: 185, column: 8, scope: !1370, inlinedAt: !2664)
!2668 = !DILocation(line: 185, column: 19, scope: !1370, inlinedAt: !2664)
!2669 = !DILocation(line: 186, column: 5, scope: !1370, inlinedAt: !2664)
!2670 = !DILocation(line: 187, column: 6, scope: !1356, inlinedAt: !2664)
!2671 = !DILocation(line: 187, column: 17, scope: !1356, inlinedAt: !2664)
!2672 = !DILocation(line: 188, column: 6, scope: !1356, inlinedAt: !2664)
!2673 = !DILocation(line: 188, column: 18, scope: !1356, inlinedAt: !2664)
!2674 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2659)
!2675 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2659)
!2676 = !DILocation(line: 1039, column: 3, scope: !2648)
!2677 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !213, file: !213, line: 1043, type: !2678, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!45, !51, !51, !51, !48}
!2680 = !{!2681, !2682, !2683, !2684}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !213, line: 1043, type: !51)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !213, line: 1043, type: !51)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !213, line: 1044, type: !51)
!2684 = !DILocalVariable(name: "argsize", arg: 4, scope: !2677, file: !213, line: 1044, type: !48)
!2685 = !DILocation(line: 0, scope: !2677)
!2686 = !DILocation(line: 0, scope: !2602, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1046, column: 10, scope: !2677)
!2688 = !DILocation(line: 1030, column: 3, scope: !2602, inlinedAt: !2687)
!2689 = !DILocation(line: 1030, column: 26, scope: !2602, inlinedAt: !2687)
!2690 = !DILocation(line: 1030, column: 30, scope: !2602, inlinedAt: !2687)
!2691 = !DILocation(line: 0, scope: !1356, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1031, column: 3, scope: !2602, inlinedAt: !2687)
!2693 = !DILocation(line: 184, column: 6, scope: !1356, inlinedAt: !2692)
!2694 = !DILocation(line: 184, column: 12, scope: !1356, inlinedAt: !2692)
!2695 = !DILocation(line: 185, column: 8, scope: !1370, inlinedAt: !2692)
!2696 = !DILocation(line: 185, column: 19, scope: !1370, inlinedAt: !2692)
!2697 = !DILocation(line: 186, column: 5, scope: !1370, inlinedAt: !2692)
!2698 = !DILocation(line: 187, column: 6, scope: !1356, inlinedAt: !2692)
!2699 = !DILocation(line: 187, column: 17, scope: !1356, inlinedAt: !2692)
!2700 = !DILocation(line: 188, column: 6, scope: !1356, inlinedAt: !2692)
!2701 = !DILocation(line: 188, column: 18, scope: !1356, inlinedAt: !2692)
!2702 = !DILocation(line: 1032, column: 10, scope: !2602, inlinedAt: !2687)
!2703 = !DILocation(line: 1033, column: 1, scope: !2602, inlinedAt: !2687)
!2704 = !DILocation(line: 1046, column: 3, scope: !2677)
!2705 = distinct !DISubprogram(name: "quote_n_mem", scope: !213, file: !213, line: 1061, type: !2706, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!51, !53, !51, !48}
!2708 = !{!2709, !2710, !2711}
!2709 = !DILocalVariable(name: "n", arg: 1, scope: !2705, file: !213, line: 1061, type: !53)
!2710 = !DILocalVariable(name: "arg", arg: 2, scope: !2705, file: !213, line: 1061, type: !51)
!2711 = !DILocalVariable(name: "argsize", arg: 3, scope: !2705, file: !213, line: 1061, type: !48)
!2712 = !DILocation(line: 0, scope: !2705)
!2713 = !DILocation(line: 1063, column: 10, scope: !2705)
!2714 = !DILocation(line: 1063, column: 3, scope: !2705)
!2715 = distinct !DISubprogram(name: "quote_mem", scope: !213, file: !213, line: 1067, type: !2716, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!51, !51, !48}
!2718 = !{!2719, !2720}
!2719 = !DILocalVariable(name: "arg", arg: 1, scope: !2715, file: !213, line: 1067, type: !51)
!2720 = !DILocalVariable(name: "argsize", arg: 2, scope: !2715, file: !213, line: 1067, type: !48)
!2721 = !DILocation(line: 0, scope: !2715)
!2722 = !DILocation(line: 0, scope: !2705, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1069, column: 10, scope: !2715)
!2724 = !DILocation(line: 1063, column: 10, scope: !2705, inlinedAt: !2723)
!2725 = !DILocation(line: 1069, column: 3, scope: !2715)
!2726 = distinct !DISubprogram(name: "quote_n", scope: !213, file: !213, line: 1073, type: !2727, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!51, !53, !51}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "n", arg: 1, scope: !2726, file: !213, line: 1073, type: !53)
!2731 = !DILocalVariable(name: "arg", arg: 2, scope: !2726, file: !213, line: 1073, type: !51)
!2732 = !DILocation(line: 0, scope: !2726)
!2733 = !DILocation(line: 0, scope: !2705, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1075, column: 10, scope: !2726)
!2735 = !DILocation(line: 1063, column: 10, scope: !2705, inlinedAt: !2734)
!2736 = !DILocation(line: 1075, column: 3, scope: !2726)
!2737 = distinct !DISubprogram(name: "quote", scope: !213, file: !213, line: 1079, type: !2738, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!51, !51}
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2737, file: !213, line: 1079, type: !51)
!2742 = !DILocation(line: 0, scope: !2737)
!2743 = !DILocation(line: 0, scope: !2726, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1081, column: 10, scope: !2737)
!2745 = !DILocation(line: 0, scope: !2705, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1075, column: 10, scope: !2726, inlinedAt: !2744)
!2747 = !DILocation(line: 1063, column: 10, scope: !2705, inlinedAt: !2746)
!2748 = !DILocation(line: 1081, column: 3, scope: !2737)
!2749 = distinct !DISubprogram(name: "version_etc_arn", scope: !274, file: !274, line: 61, type: !2750, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2787)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !2752, !51, !51, !51, !2786, !48}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2754, file: !96, line: 51, baseType: !53, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2754, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2754, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2754, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2754, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2754, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2754, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2754, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2754, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2754, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2754, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2754, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2754, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2754, file: !96, line: 70, baseType: !2770, size: 64, offset: 832)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2754, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2754, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2754, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2754, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2754, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2754, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2754, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2754, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2754, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2754, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2754, file: !96, line: 93, baseType: !2770, size: 64, offset: 1344)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2754, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2754, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2754, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2754, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793}
!2788 = !DILocalVariable(name: "stream", arg: 1, scope: !2749, file: !274, line: 61, type: !2752)
!2789 = !DILocalVariable(name: "command_name", arg: 2, scope: !2749, file: !274, line: 62, type: !51)
!2790 = !DILocalVariable(name: "package", arg: 3, scope: !2749, file: !274, line: 62, type: !51)
!2791 = !DILocalVariable(name: "version", arg: 4, scope: !2749, file: !274, line: 63, type: !51)
!2792 = !DILocalVariable(name: "authors", arg: 5, scope: !2749, file: !274, line: 64, type: !2786)
!2793 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2749, file: !274, line: 64, type: !48)
!2794 = !DILocation(line: 0, scope: !2749)
!2795 = !DILocation(line: 66, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2749, file: !274, line: 66, column: 7)
!2797 = !DILocation(line: 66, column: 7, scope: !2749)
!2798 = !DILocation(line: 67, column: 5, scope: !2796)
!2799 = !DILocation(line: 69, column: 5, scope: !2796)
!2800 = !DILocation(line: 83, column: 3, scope: !2749)
!2801 = !DILocation(line: 85, column: 3, scope: !2749)
!2802 = !DILocation(line: 88, column: 3, scope: !2749)
!2803 = !DILocation(line: 95, column: 3, scope: !2749)
!2804 = !DILocation(line: 97, column: 3, scope: !2749)
!2805 = !DILocation(line: 105, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2749, file: !274, line: 98, column: 5)
!2807 = !DILocation(line: 106, column: 7, scope: !2806)
!2808 = !DILocation(line: 109, column: 7, scope: !2806)
!2809 = !DILocation(line: 110, column: 7, scope: !2806)
!2810 = !DILocation(line: 113, column: 7, scope: !2806)
!2811 = !DILocation(line: 115, column: 7, scope: !2806)
!2812 = !DILocation(line: 120, column: 7, scope: !2806)
!2813 = !DILocation(line: 122, column: 7, scope: !2806)
!2814 = !DILocation(line: 127, column: 7, scope: !2806)
!2815 = !DILocation(line: 129, column: 7, scope: !2806)
!2816 = !DILocation(line: 134, column: 7, scope: !2806)
!2817 = !DILocation(line: 137, column: 7, scope: !2806)
!2818 = !DILocation(line: 142, column: 7, scope: !2806)
!2819 = !DILocation(line: 145, column: 7, scope: !2806)
!2820 = !DILocation(line: 150, column: 7, scope: !2806)
!2821 = !DILocation(line: 154, column: 7, scope: !2806)
!2822 = !DILocation(line: 159, column: 7, scope: !2806)
!2823 = !DILocation(line: 163, column: 7, scope: !2806)
!2824 = !DILocation(line: 170, column: 7, scope: !2806)
!2825 = !DILocation(line: 174, column: 7, scope: !2806)
!2826 = !DILocation(line: 176, column: 1, scope: !2749)
!2827 = distinct !DISubprogram(name: "version_etc_ar", scope: !274, file: !274, line: 183, type: !2828, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2830)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !2752, !51, !51, !51, !2786}
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836}
!2831 = !DILocalVariable(name: "stream", arg: 1, scope: !2827, file: !274, line: 183, type: !2752)
!2832 = !DILocalVariable(name: "command_name", arg: 2, scope: !2827, file: !274, line: 184, type: !51)
!2833 = !DILocalVariable(name: "package", arg: 3, scope: !2827, file: !274, line: 184, type: !51)
!2834 = !DILocalVariable(name: "version", arg: 4, scope: !2827, file: !274, line: 185, type: !51)
!2835 = !DILocalVariable(name: "authors", arg: 5, scope: !2827, file: !274, line: 185, type: !2786)
!2836 = !DILocalVariable(name: "n_authors", scope: !2827, file: !274, line: 187, type: !48)
!2837 = !DILocation(line: 0, scope: !2827)
!2838 = !DILocation(line: 189, column: 8, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2827, file: !274, line: 189, column: 3)
!2840 = !DILocation(line: 0, scope: !2839)
!2841 = !DILocation(line: 189, column: 23, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2839, file: !274, line: 189, column: 3)
!2843 = !DILocation(line: 189, column: 3, scope: !2839)
!2844 = !DILocation(line: 189, column: 52, scope: !2842)
!2845 = distinct !{!2845, !2843, !2846, !788}
!2846 = !DILocation(line: 190, column: 5, scope: !2839)
!2847 = !DILocation(line: 191, column: 3, scope: !2827)
!2848 = !DILocation(line: 192, column: 1, scope: !2827)
!2849 = distinct !DISubprogram(name: "version_etc_va", scope: !274, file: !274, line: 199, type: !2850, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2859)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2752, !51, !51, !51, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2853, file: !274, line: 192, baseType: !7, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2853, file: !274, line: 192, baseType: !7, size: 32, offset: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2853, file: !274, line: 192, baseType: !47, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2853, file: !274, line: 192, baseType: !47, size: 64, offset: 128)
!2859 = !{!2860, !2861, !2862, !2863, !2864, !2865, !2866}
!2860 = !DILocalVariable(name: "stream", arg: 1, scope: !2849, file: !274, line: 199, type: !2752)
!2861 = !DILocalVariable(name: "command_name", arg: 2, scope: !2849, file: !274, line: 200, type: !51)
!2862 = !DILocalVariable(name: "package", arg: 3, scope: !2849, file: !274, line: 200, type: !51)
!2863 = !DILocalVariable(name: "version", arg: 4, scope: !2849, file: !274, line: 201, type: !51)
!2864 = !DILocalVariable(name: "authors", arg: 5, scope: !2849, file: !274, line: 201, type: !2852)
!2865 = !DILocalVariable(name: "n_authors", scope: !2849, file: !274, line: 203, type: !48)
!2866 = !DILocalVariable(name: "authtab", scope: !2849, file: !274, line: 204, type: !2867)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !226)
!2868 = !DILocation(line: 0, scope: !2849)
!2869 = !DILocation(line: 204, column: 3, scope: !2849)
!2870 = !DILocation(line: 204, column: 15, scope: !2849)
!2871 = !DILocation(line: 208, column: 35, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !274, line: 206, column: 3)
!2873 = distinct !DILexicalBlock(scope: !2849, file: !274, line: 206, column: 3)
!2874 = !DILocation(line: 208, column: 14, scope: !2872)
!2875 = !DILocation(line: 208, column: 33, scope: !2872)
!2876 = !DILocation(line: 208, column: 67, scope: !2872)
!2877 = !DILocation(line: 206, column: 3, scope: !2873)
!2878 = !DILocation(line: 0, scope: !2873)
!2879 = !DILocation(line: 211, column: 3, scope: !2849)
!2880 = !DILocation(line: 213, column: 1, scope: !2849)
!2881 = distinct !DISubprogram(name: "version_etc", scope: !274, file: !274, line: 230, type: !2882, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2752, !51, !51, !51, null}
!2884 = !{!2885, !2886, !2887, !2888, !2889}
!2885 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !274, line: 230, type: !2752)
!2886 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !274, line: 231, type: !51)
!2887 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !274, line: 231, type: !51)
!2888 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !274, line: 232, type: !51)
!2889 = !DILocalVariable(name: "authors", scope: !2881, file: !274, line: 234, type: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !813, line: 52, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2892, line: 32, baseType: !2893)
!2892 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !274, baseType: !2894)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2853, size: 192, elements: !126)
!2895 = !DILocation(line: 0, scope: !2881)
!2896 = !DILocation(line: 234, column: 3, scope: !2881)
!2897 = !DILocation(line: 234, column: 11, scope: !2881)
!2898 = !DILocation(line: 236, column: 3, scope: !2881)
!2899 = !DILocation(line: 237, column: 3, scope: !2881)
!2900 = !DILocation(line: 238, column: 3, scope: !2881)
!2901 = !DILocation(line: 239, column: 1, scope: !2881)
!2902 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !274, file: !274, line: 242, type: !747, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !273, retainedNodes: !189)
!2903 = !DILocation(line: 244, column: 3, scope: !2902)
!2904 = !DILocation(line: 249, column: 3, scope: !2902)
!2905 = !DILocation(line: 255, column: 3, scope: !2902)
!2906 = !DILocation(line: 260, column: 3, scope: !2902)
!2907 = !DILocation(line: 262, column: 1, scope: !2902)
!2908 = distinct !DISubprogram(name: "xnmalloc", scope: !284, file: !284, line: 99, type: !2909, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!47, !48, !48}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "n", arg: 1, scope: !2908, file: !284, line: 99, type: !48)
!2913 = !DILocalVariable(name: "s", arg: 2, scope: !2908, file: !284, line: 99, type: !48)
!2914 = !DILocation(line: 0, scope: !2908)
!2915 = !DILocation(line: 101, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2908, file: !284, line: 101, column: 7)
!2917 = !DILocation(line: 101, column: 7, scope: !2908)
!2918 = !DILocation(line: 102, column: 5, scope: !2916)
!2919 = !DILocation(line: 103, column: 21, scope: !2908)
!2920 = !DILocalVariable(name: "n", arg: 1, scope: !2921, file: !281, line: 39, type: !48)
!2921 = distinct !DISubprogram(name: "xmalloc", scope: !281, file: !281, line: 39, type: !2922, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!47, !48}
!2924 = !{!2920, !2925}
!2925 = !DILocalVariable(name: "p", scope: !2921, file: !281, line: 41, type: !47)
!2926 = !DILocation(line: 0, scope: !2921, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 103, column: 10, scope: !2908)
!2928 = !DILocation(line: 41, column: 13, scope: !2921, inlinedAt: !2927)
!2929 = !DILocation(line: 42, column: 8, scope: !2930, inlinedAt: !2927)
!2930 = distinct !DILexicalBlock(scope: !2921, file: !281, line: 42, column: 7)
!2931 = !DILocation(line: 42, column: 10, scope: !2930, inlinedAt: !2927)
!2932 = !DILocation(line: 43, column: 5, scope: !2930, inlinedAt: !2927)
!2933 = !DILocation(line: 103, column: 3, scope: !2908)
!2934 = !DILocation(line: 0, scope: !2921)
!2935 = !DILocation(line: 41, column: 13, scope: !2921)
!2936 = !DILocation(line: 42, column: 8, scope: !2930)
!2937 = !DILocation(line: 42, column: 10, scope: !2930)
!2938 = !DILocation(line: 43, column: 5, scope: !2930)
!2939 = !DILocation(line: 44, column: 3, scope: !2921)
!2940 = distinct !DISubprogram(name: "xnrealloc", scope: !284, file: !284, line: 112, type: !2941, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!47, !47, !48, !48}
!2943 = !{!2944, !2945, !2946}
!2944 = !DILocalVariable(name: "p", arg: 1, scope: !2940, file: !284, line: 112, type: !47)
!2945 = !DILocalVariable(name: "n", arg: 2, scope: !2940, file: !284, line: 112, type: !48)
!2946 = !DILocalVariable(name: "s", arg: 3, scope: !2940, file: !284, line: 112, type: !48)
!2947 = !DILocation(line: 0, scope: !2940)
!2948 = !DILocation(line: 114, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2940, file: !284, line: 114, column: 7)
!2950 = !DILocation(line: 114, column: 7, scope: !2940)
!2951 = !DILocation(line: 115, column: 5, scope: !2949)
!2952 = !DILocation(line: 116, column: 25, scope: !2940)
!2953 = !DILocalVariable(name: "p", arg: 1, scope: !2954, file: !281, line: 51, type: !47)
!2954 = distinct !DISubprogram(name: "xrealloc", scope: !281, file: !281, line: 51, type: !2955, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!47, !47, !48}
!2957 = !{!2953, !2958}
!2958 = !DILocalVariable(name: "n", arg: 2, scope: !2954, file: !281, line: 51, type: !48)
!2959 = !DILocation(line: 0, scope: !2954, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 116, column: 10, scope: !2940)
!2961 = !DILocation(line: 53, column: 8, scope: !2962, inlinedAt: !2960)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !281, line: 53, column: 7)
!2963 = !DILocation(line: 53, column: 10, scope: !2962, inlinedAt: !2960)
!2964 = !DILocation(line: 57, column: 7, scope: !2965, inlinedAt: !2960)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !281, line: 54, column: 5)
!2966 = !DILocation(line: 58, column: 7, scope: !2965, inlinedAt: !2960)
!2967 = !DILocation(line: 61, column: 7, scope: !2954, inlinedAt: !2960)
!2968 = !DILocation(line: 62, column: 8, scope: !2969, inlinedAt: !2960)
!2969 = distinct !DILexicalBlock(scope: !2954, file: !281, line: 62, column: 7)
!2970 = !DILocation(line: 62, column: 10, scope: !2969, inlinedAt: !2960)
!2971 = !DILocation(line: 63, column: 5, scope: !2969, inlinedAt: !2960)
!2972 = !DILocation(line: 116, column: 3, scope: !2940)
!2973 = !DILocation(line: 0, scope: !2954)
!2974 = !DILocation(line: 53, column: 8, scope: !2962)
!2975 = !DILocation(line: 53, column: 10, scope: !2962)
!2976 = !DILocation(line: 57, column: 7, scope: !2965)
!2977 = !DILocation(line: 58, column: 7, scope: !2965)
!2978 = !DILocation(line: 61, column: 7, scope: !2954)
!2979 = !DILocation(line: 62, column: 8, scope: !2969)
!2980 = !DILocation(line: 62, column: 10, scope: !2969)
!2981 = !DILocation(line: 63, column: 5, scope: !2969)
!2982 = !DILocation(line: 65, column: 1, scope: !2954)
!2983 = !DILocation(line: 0, scope: !285)
!2984 = !DILocation(line: 176, column: 14, scope: !285)
!2985 = !DILocation(line: 178, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !285, file: !284, line: 178, column: 7)
!2987 = !DILocation(line: 178, column: 7, scope: !285)
!2988 = !DILocation(line: 180, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !284, line: 180, column: 11)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !284, line: 179, column: 5)
!2991 = !DILocation(line: 180, column: 11, scope: !2990)
!2992 = !DILocation(line: 188, column: 30, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !284, line: 181, column: 9)
!2994 = !DILocation(line: 189, column: 16, scope: !2993)
!2995 = !DILocation(line: 189, column: 13, scope: !2993)
!2996 = !DILocation(line: 190, column: 9, scope: !2993)
!2997 = !DILocation(line: 191, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2990, file: !284, line: 191, column: 11)
!2999 = !DILocation(line: 191, column: 11, scope: !2990)
!3000 = !DILocation(line: 206, column: 7, scope: !285)
!3001 = !DILocation(line: 207, column: 25, scope: !285)
!3002 = !DILocation(line: 0, scope: !2954, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 207, column: 10, scope: !285)
!3004 = !DILocation(line: 53, column: 10, scope: !2962, inlinedAt: !3003)
!3005 = !DILocation(line: 192, column: 9, scope: !2998)
!3006 = !DILocation(line: 200, column: 69, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !284, line: 200, column: 11)
!3008 = distinct !DILexicalBlock(scope: !2986, file: !284, line: 195, column: 5)
!3009 = !DILocation(line: 201, column: 11, scope: !3007)
!3010 = !DILocation(line: 200, column: 11, scope: !3008)
!3011 = !DILocation(line: 202, column: 9, scope: !3007)
!3012 = !DILocation(line: 203, column: 14, scope: !3008)
!3013 = !DILocation(line: 203, column: 18, scope: !3008)
!3014 = !DILocation(line: 203, column: 9, scope: !3008)
!3015 = !DILocation(line: 53, column: 8, scope: !2962, inlinedAt: !3003)
!3016 = !DILocation(line: 57, column: 7, scope: !2965, inlinedAt: !3003)
!3017 = !DILocation(line: 58, column: 7, scope: !2965, inlinedAt: !3003)
!3018 = !DILocation(line: 61, column: 7, scope: !2954, inlinedAt: !3003)
!3019 = !DILocation(line: 62, column: 8, scope: !2969, inlinedAt: !3003)
!3020 = !DILocation(line: 62, column: 10, scope: !2969, inlinedAt: !3003)
!3021 = !DILocation(line: 63, column: 5, scope: !2969, inlinedAt: !3003)
!3022 = !DILocation(line: 207, column: 3, scope: !285)
!3023 = distinct !DISubprogram(name: "xcharalloc", scope: !284, file: !284, line: 216, type: !2162, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3024)
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "n", arg: 1, scope: !3023, file: !284, line: 216, type: !48)
!3026 = !DILocation(line: 0, scope: !3023)
!3027 = !DILocation(line: 0, scope: !2921, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 218, column: 10, scope: !3023)
!3029 = !DILocation(line: 41, column: 13, scope: !2921, inlinedAt: !3028)
!3030 = !DILocation(line: 42, column: 8, scope: !2930, inlinedAt: !3028)
!3031 = !DILocation(line: 42, column: 10, scope: !2930, inlinedAt: !3028)
!3032 = !DILocation(line: 43, column: 5, scope: !2930, inlinedAt: !3028)
!3033 = !DILocation(line: 218, column: 3, scope: !3023)
!3034 = distinct !DISubprogram(name: "x2realloc", scope: !281, file: !281, line: 74, type: !3035, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!47, !47, !288}
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "p", arg: 1, scope: !3034, file: !281, line: 74, type: !47)
!3039 = !DILocalVariable(name: "pn", arg: 2, scope: !3034, file: !281, line: 74, type: !288)
!3040 = !DILocation(line: 0, scope: !3034)
!3041 = !DILocation(line: 0, scope: !285, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 76, column: 10, scope: !3034)
!3043 = !DILocation(line: 176, column: 14, scope: !285, inlinedAt: !3042)
!3044 = !DILocation(line: 178, column: 9, scope: !2986, inlinedAt: !3042)
!3045 = !DILocation(line: 178, column: 7, scope: !285, inlinedAt: !3042)
!3046 = !DILocation(line: 180, column: 13, scope: !2989, inlinedAt: !3042)
!3047 = !DILocation(line: 180, column: 11, scope: !2990, inlinedAt: !3042)
!3048 = !DILocation(line: 191, column: 11, scope: !2998, inlinedAt: !3042)
!3049 = !DILocation(line: 191, column: 11, scope: !2990, inlinedAt: !3042)
!3050 = !DILocation(line: 192, column: 9, scope: !2998, inlinedAt: !3042)
!3051 = !DILocation(line: 201, column: 11, scope: !3007, inlinedAt: !3042)
!3052 = !DILocation(line: 200, column: 11, scope: !3008, inlinedAt: !3042)
!3053 = !DILocation(line: 202, column: 9, scope: !3007, inlinedAt: !3042)
!3054 = !DILocation(line: 203, column: 14, scope: !3008, inlinedAt: !3042)
!3055 = !DILocation(line: 203, column: 18, scope: !3008, inlinedAt: !3042)
!3056 = !DILocation(line: 203, column: 9, scope: !3008, inlinedAt: !3042)
!3057 = !DILocation(line: 0, scope: !2954, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 207, column: 10, scope: !285, inlinedAt: !3042)
!3059 = !DILocation(line: 53, column: 10, scope: !2962, inlinedAt: !3058)
!3060 = !DILocation(line: 206, column: 7, scope: !285, inlinedAt: !3042)
!3061 = !DILocation(line: 61, column: 7, scope: !2954, inlinedAt: !3058)
!3062 = !DILocation(line: 62, column: 8, scope: !2969, inlinedAt: !3058)
!3063 = !DILocation(line: 62, column: 10, scope: !2969, inlinedAt: !3058)
!3064 = !DILocation(line: 63, column: 5, scope: !2969, inlinedAt: !3058)
!3065 = !DILocation(line: 76, column: 3, scope: !3034)
!3066 = distinct !DISubprogram(name: "xzalloc", scope: !281, file: !281, line: 84, type: !2922, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3067)
!3067 = !{!3068}
!3068 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !281, line: 84, type: !48)
!3069 = !DILocation(line: 0, scope: !3066)
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3071, file: !281, line: 93, type: !48)
!3071 = distinct !DISubprogram(name: "xcalloc", scope: !281, file: !281, line: 93, type: !2909, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3072)
!3072 = !{!3070, !3073, !3074}
!3073 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !281, line: 93, type: !48)
!3074 = !DILocalVariable(name: "p", scope: !3071, file: !281, line: 95, type: !47)
!3075 = !DILocation(line: 0, scope: !3071, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 86, column: 10, scope: !3066)
!3077 = !DILocation(line: 100, column: 7, scope: !3078, inlinedAt: !3076)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !281, line: 100, column: 7)
!3079 = !DILocation(line: 101, column: 7, scope: !3078, inlinedAt: !3076)
!3080 = !DILocation(line: 101, column: 18, scope: !3078, inlinedAt: !3076)
!3081 = !DILocation(line: 101, column: 16, scope: !3078, inlinedAt: !3076)
!3082 = !DILocation(line: 100, column: 7, scope: !3071, inlinedAt: !3076)
!3083 = !DILocation(line: 102, column: 5, scope: !3078, inlinedAt: !3076)
!3084 = !DILocation(line: 86, column: 3, scope: !3066)
!3085 = !DILocation(line: 0, scope: !3071)
!3086 = !DILocation(line: 100, column: 7, scope: !3078)
!3087 = !DILocation(line: 101, column: 7, scope: !3078)
!3088 = !DILocation(line: 101, column: 18, scope: !3078)
!3089 = !DILocation(line: 101, column: 16, scope: !3078)
!3090 = !DILocation(line: 100, column: 7, scope: !3071)
!3091 = !DILocation(line: 102, column: 5, scope: !3078)
!3092 = !DILocation(line: 103, column: 3, scope: !3071)
!3093 = distinct !DISubprogram(name: "xmemdup", scope: !281, file: !281, line: 111, type: !3094, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!47, !1036, !48}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "p", arg: 1, scope: !3093, file: !281, line: 111, type: !1036)
!3098 = !DILocalVariable(name: "s", arg: 2, scope: !3093, file: !281, line: 111, type: !48)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !2921, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 113, column: 18, scope: !3093)
!3102 = !DILocation(line: 41, column: 13, scope: !2921, inlinedAt: !3101)
!3103 = !DILocation(line: 42, column: 8, scope: !2930, inlinedAt: !3101)
!3104 = !DILocation(line: 42, column: 10, scope: !2930, inlinedAt: !3101)
!3105 = !DILocation(line: 43, column: 5, scope: !2930, inlinedAt: !3101)
!3106 = !DILocalVariable(name: "__dest", arg: 1, scope: !3107, file: !1033, line: 26, type: !3110)
!3107 = distinct !DISubprogram(name: "memcpy", scope: !1033, file: !1033, line: 26, type: !3108, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3112)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!47, !3110, !3111, !48}
!3110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!3111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1036)
!3112 = !{!3106, !3113, !3114}
!3113 = !DILocalVariable(name: "__src", arg: 2, scope: !3107, file: !1033, line: 26, type: !3111)
!3114 = !DILocalVariable(name: "__len", arg: 3, scope: !3107, file: !1033, line: 26, type: !48)
!3115 = !DILocation(line: 0, scope: !3107, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 113, column: 10, scope: !3093)
!3117 = !DILocation(line: 29, column: 10, scope: !3107, inlinedAt: !3116)
!3118 = !DILocation(line: 113, column: 3, scope: !3093)
!3119 = distinct !DISubprogram(name: "xstrdup", scope: !281, file: !281, line: 119, type: !912, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3120)
!3120 = !{!3121}
!3121 = !DILocalVariable(name: "string", arg: 1, scope: !3119, file: !281, line: 119, type: !51)
!3122 = !DILocation(line: 0, scope: !3119)
!3123 = !DILocation(line: 121, column: 27, scope: !3119)
!3124 = !DILocation(line: 121, column: 43, scope: !3119)
!3125 = !DILocation(line: 0, scope: !3093, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 121, column: 10, scope: !3119)
!3127 = !DILocation(line: 0, scope: !2921, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 113, column: 18, scope: !3093, inlinedAt: !3126)
!3129 = !DILocation(line: 41, column: 13, scope: !2921, inlinedAt: !3128)
!3130 = !DILocation(line: 42, column: 8, scope: !2930, inlinedAt: !3128)
!3131 = !DILocation(line: 42, column: 10, scope: !2930, inlinedAt: !3128)
!3132 = !DILocation(line: 43, column: 5, scope: !2930, inlinedAt: !3128)
!3133 = !DILocation(line: 0, scope: !3107, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 113, column: 10, scope: !3093, inlinedAt: !3126)
!3135 = !DILocation(line: 29, column: 10, scope: !3107, inlinedAt: !3134)
!3136 = !DILocation(line: 121, column: 3, scope: !3119)
!3137 = distinct !DISubprogram(name: "xalloc_die", scope: !298, file: !298, line: 32, type: !747, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !189)
!3138 = !DILocation(line: 34, column: 10, scope: !3137)
!3139 = !DILocation(line: 34, column: 33, scope: !3137)
!3140 = !DILocation(line: 34, column: 3, scope: !3137)
!3141 = !DILocation(line: 40, column: 3, scope: !3137)
!3142 = distinct !DISubprogram(name: "xnumtoumax", scope: !3143, file: !3143, line: 36, type: !3144, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3149)
!3143 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3146, !51, !53, !3146, !3146, !51, !51, !53}
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !3147, line: 102, baseType: !3148)
!3147 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !119, line: 73, baseType: !50)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3159}
!3150 = !DILocalVariable(name: "n_str", arg: 1, scope: !3142, file: !3143, line: 36, type: !51)
!3151 = !DILocalVariable(name: "base", arg: 2, scope: !3142, file: !3143, line: 36, type: !53)
!3152 = !DILocalVariable(name: "min", arg: 3, scope: !3142, file: !3143, line: 36, type: !3146)
!3153 = !DILocalVariable(name: "max", arg: 4, scope: !3142, file: !3143, line: 36, type: !3146)
!3154 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3142, file: !3143, line: 37, type: !51)
!3155 = !DILocalVariable(name: "err", arg: 6, scope: !3142, file: !3143, line: 37, type: !51)
!3156 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3142, file: !3143, line: 37, type: !53)
!3157 = !DILocalVariable(name: "s_err", scope: !3142, file: !3143, line: 39, type: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !303, line: 38, baseType: !302)
!3159 = !DILocalVariable(name: "tnum", scope: !3142, file: !3143, line: 41, type: !3146)
!3160 = !DILocation(line: 0, scope: !3142)
!3161 = !DILocation(line: 41, column: 3, scope: !3142)
!3162 = !DILocation(line: 42, column: 11, scope: !3142)
!3163 = !DILocation(line: 44, column: 7, scope: !3142)
!3164 = !DILocation(line: 69, column: 50, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3143, line: 67, column: 5)
!3166 = distinct !DILexicalBlock(scope: !3142, file: !3143, line: 66, column: 7)
!3167 = !DILocation(line: 46, column: 11, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3143, line: 46, column: 11)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3143, line: 45, column: 5)
!3170 = distinct !DILexicalBlock(scope: !3142, file: !3143, line: 44, column: 7)
!3171 = !DILocation(line: 46, column: 16, scope: !3168)
!3172 = !DILocation(line: 46, column: 22, scope: !3168)
!3173 = !DILocation(line: 51, column: 20, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !3143, line: 51, column: 15)
!3175 = distinct !DILexicalBlock(scope: !3168, file: !3143, line: 47, column: 9)
!3176 = !DILocation(line: 0, scope: !3174)
!3177 = !DILocation(line: 51, column: 15, scope: !3175)
!3178 = !DILocation(line: 52, column: 19, scope: !3174)
!3179 = !DILocation(line: 66, column: 7, scope: !3142)
!3180 = !DILocation(line: 58, column: 19, scope: !3174)
!3181 = !DILocation(line: 62, column: 5, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3170, file: !3143, line: 61, column: 12)
!3183 = !DILocation(line: 62, column: 11, scope: !3182)
!3184 = !DILocation(line: 64, column: 5, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !3143, line: 63, column: 12)
!3186 = !DILocation(line: 64, column: 11, scope: !3185)
!3187 = !DILocation(line: 69, column: 14, scope: !3165)
!3188 = !DILocation(line: 69, column: 56, scope: !3165)
!3189 = !DILocation(line: 70, column: 29, scope: !3165)
!3190 = !DILocation(line: 69, column: 7, scope: !3165)
!3191 = !DILocation(line: 73, column: 10, scope: !3142)
!3192 = !DILocation(line: 71, column: 5, scope: !3165)
!3193 = !DILocation(line: 74, column: 1, scope: !3142)
!3194 = !DILocation(line: 73, column: 3, scope: !3142)
!3195 = distinct !DISubprogram(name: "xdectoumax", scope: !3143, file: !3143, line: 82, type: !3196, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!3146, !51, !3146, !3146, !51, !51, !53}
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204}
!3199 = !DILocalVariable(name: "n_str", arg: 1, scope: !3195, file: !3143, line: 82, type: !51)
!3200 = !DILocalVariable(name: "min", arg: 2, scope: !3195, file: !3143, line: 82, type: !3146)
!3201 = !DILocalVariable(name: "max", arg: 3, scope: !3195, file: !3143, line: 82, type: !3146)
!3202 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3195, file: !3143, line: 83, type: !51)
!3203 = !DILocalVariable(name: "err", arg: 5, scope: !3195, file: !3143, line: 83, type: !51)
!3204 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3195, file: !3143, line: 83, type: !53)
!3205 = !DILocation(line: 0, scope: !3195)
!3206 = !DILocation(line: 85, column: 10, scope: !3195)
!3207 = !DILocation(line: 85, column: 3, scope: !3195)
!3208 = distinct !DISubprogram(name: "xstrtoumax", scope: !3209, file: !3209, line: 76, type: !3210, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !3213)
!3209 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!3158, !51, !823, !53, !3212, !51}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3226, !3227, !3230, !3231}
!3214 = !DILocalVariable(name: "s", arg: 1, scope: !3208, file: !3209, line: 76, type: !51)
!3215 = !DILocalVariable(name: "ptr", arg: 2, scope: !3208, file: !3209, line: 76, type: !823)
!3216 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3208, file: !3209, line: 76, type: !53)
!3217 = !DILocalVariable(name: "val", arg: 4, scope: !3208, file: !3209, line: 77, type: !3212)
!3218 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3208, file: !3209, line: 77, type: !51)
!3219 = !DILocalVariable(name: "t_ptr", scope: !3208, file: !3209, line: 79, type: !45)
!3220 = !DILocalVariable(name: "p", scope: !3208, file: !3209, line: 80, type: !823)
!3221 = !DILocalVariable(name: "tmp", scope: !3208, file: !3209, line: 81, type: !3146)
!3222 = !DILocalVariable(name: "err", scope: !3208, file: !3209, line: 82, type: !3158)
!3223 = !DILocalVariable(name: "q", scope: !3224, file: !3209, line: 92, type: !51)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3209, line: 91, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 90, column: 7)
!3226 = !DILocalVariable(name: "ch", scope: !3224, file: !3209, line: 93, type: !56)
!3227 = !DILocalVariable(name: "base", scope: !3228, file: !3209, line: 129, type: !53)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3209, line: 128, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 127, column: 7)
!3230 = !DILocalVariable(name: "suffixes", scope: !3228, file: !3209, line: 130, type: !53)
!3231 = !DILocalVariable(name: "overflow", scope: !3228, file: !3209, line: 131, type: !3158)
!3232 = !DILocation(line: 0, scope: !3208)
!3233 = !DILocation(line: 79, column: 3, scope: !3208)
!3234 = !DILocation(line: 84, column: 3, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3209, line: 84, column: 3)
!3236 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 84, column: 3)
!3237 = !DILocation(line: 86, column: 8, scope: !3208)
!3238 = !DILocation(line: 88, column: 3, scope: !3208)
!3239 = !DILocation(line: 88, column: 9, scope: !3208)
!3240 = !DILocation(line: 0, scope: !3224)
!3241 = !DILocation(line: 94, column: 7, scope: !3224)
!3242 = !DILocation(line: 94, column: 14, scope: !3224)
!3243 = !DILocation(line: 95, column: 15, scope: !3224)
!3244 = distinct !{!3244, !3241, !3245, !788}
!3245 = !DILocation(line: 95, column: 17, scope: !3224)
!3246 = !DILocation(line: 96, column: 14, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3224, file: !3209, line: 96, column: 11)
!3248 = !DILocation(line: 100, column: 9, scope: !3208)
!3249 = !DILocation(line: 102, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 102, column: 7)
!3251 = !DILocation(line: 102, column: 10, scope: !3250)
!3252 = !DILocation(line: 102, column: 7, scope: !3208)
!3253 = !DILocation(line: 106, column: 11, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3209, line: 106, column: 11)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !3209, line: 103, column: 5)
!3256 = !DILocation(line: 106, column: 26, scope: !3254)
!3257 = !DILocation(line: 106, column: 29, scope: !3254)
!3258 = !DILocation(line: 106, column: 33, scope: !3254)
!3259 = !DILocation(line: 106, column: 36, scope: !3254)
!3260 = !DILocation(line: 106, column: 11, scope: !3255)
!3261 = !DILocation(line: 111, column: 12, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3250, file: !3209, line: 111, column: 12)
!3263 = !DILocation(line: 111, column: 12, scope: !3250)
!3264 = !DILocation(line: 116, column: 5, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3262, file: !3209, line: 112, column: 5)
!3266 = !DILocation(line: 121, column: 8, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3208, file: !3209, line: 121, column: 7)
!3268 = !DILocation(line: 121, column: 7, scope: !3208)
!3269 = !DILocation(line: 123, column: 12, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3267, file: !3209, line: 122, column: 5)
!3271 = !DILocation(line: 124, column: 7, scope: !3270)
!3272 = !DILocation(line: 127, column: 7, scope: !3229)
!3273 = !DILocation(line: 127, column: 11, scope: !3229)
!3274 = !DILocation(line: 127, column: 7, scope: !3208)
!3275 = !DILocation(line: 0, scope: !3228)
!3276 = !DILocation(line: 133, column: 12, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3228, file: !3209, line: 133, column: 11)
!3278 = !DILocation(line: 133, column: 11, scope: !3228)
!3279 = !DILocation(line: 135, column: 16, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3277, file: !3209, line: 134, column: 9)
!3281 = !DILocation(line: 136, column: 22, scope: !3280)
!3282 = !DILocation(line: 136, column: 11, scope: !3280)
!3283 = !DILocation(line: 139, column: 7, scope: !3228)
!3284 = !DILocation(line: 151, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !3209, line: 151, column: 15)
!3286 = distinct !DILexicalBlock(scope: !3228, file: !3209, line: 140, column: 9)
!3287 = !DILocation(line: 151, column: 15, scope: !3286)
!3288 = !DILocation(line: 152, column: 21, scope: !3285)
!3289 = !DILocation(line: 152, column: 13, scope: !3285)
!3290 = !DILocation(line: 155, column: 21, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3209, line: 155, column: 21)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !3209, line: 153, column: 15)
!3293 = !DILocation(line: 155, column: 29, scope: !3291)
!3294 = !DILocation(line: 155, column: 21, scope: !3292)
!3295 = !DILocation(line: 163, column: 17, scope: !3292)
!3296 = !DILocation(line: 167, column: 7, scope: !3228)
!3297 = !DILocalVariable(name: "err", scope: !3298, file: !3209, line: 67, type: !3158)
!3298 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3209, file: !3209, line: 65, type: !3299, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!3158, !3212, !53, !53}
!3301 = !{!3302, !3303, !3304, !3297}
!3302 = !DILocalVariable(name: "x", arg: 1, scope: !3298, file: !3209, line: 65, type: !3212)
!3303 = !DILocalVariable(name: "base", arg: 2, scope: !3298, file: !3209, line: 65, type: !53)
!3304 = !DILocalVariable(name: "power", arg: 3, scope: !3298, file: !3209, line: 65, type: !53)
!3305 = !DILocation(line: 0, scope: !3298, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 221, column: 22, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3228, file: !3209, line: 168, column: 9)
!3308 = !DILocalVariable(name: "x", arg: 1, scope: !3309, file: !3209, line: 48, type: !3212)
!3309 = distinct !DISubprogram(name: "bkm_scale", scope: !3209, file: !3209, line: 48, type: !3310, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!3158, !3212, !53}
!3312 = !{!3308, !3313}
!3313 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3309, file: !3209, line: 48, type: !53)
!3314 = !DILocation(line: 0, scope: !3309, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3306)
!3316 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3315)
!3317 = distinct !DILexicalBlock(scope: !3309, file: !3209, line: 55, column: 7)
!3318 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3315)
!3319 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3306)
!3320 = !DILocation(line: 229, column: 11, scope: !3228)
!3321 = !DILocation(line: 0, scope: !3298, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 217, column: 22, scope: !3307)
!3323 = !DILocation(line: 0, scope: !3309, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3322)
!3325 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3324)
!3326 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3324)
!3327 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3322)
!3328 = !DILocation(line: 0, scope: !3298, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 204, column: 22, scope: !3307)
!3330 = !DILocation(line: 0, scope: !3309, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3329)
!3332 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3331)
!3333 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3331)
!3334 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3329)
!3335 = !DILocation(line: 0, scope: !3298, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 185, column: 22, scope: !3307)
!3337 = !DILocation(line: 0, scope: !3309, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3336)
!3339 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3338)
!3340 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3338)
!3341 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3336)
!3342 = !DILocation(line: 0, scope: !3309, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 170, column: 22, scope: !3307)
!3344 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3343)
!3345 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3343)
!3346 = !DILocation(line: 171, column: 11, scope: !3307)
!3347 = !DILocation(line: 0, scope: !3309, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 177, column: 22, scope: !3307)
!3349 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3348)
!3350 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3348)
!3351 = !DILocation(line: 178, column: 11, scope: !3307)
!3352 = !DILocation(line: 0, scope: !3298, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 190, column: 22, scope: !3307)
!3354 = !DILocation(line: 0, scope: !3309, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3353)
!3356 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3355)
!3357 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3355)
!3358 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3353)
!3359 = !DILocation(line: 0, scope: !3298, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 200, column: 22, scope: !3307)
!3361 = !DILocation(line: 0, scope: !3309, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3360)
!3363 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3362)
!3364 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3362)
!3365 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3360)
!3366 = !DILocation(line: 0, scope: !3298, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 209, column: 22, scope: !3307)
!3368 = !DILocation(line: 0, scope: !3309, inlinedAt: !3369)
!3369 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3367)
!3370 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3369)
!3371 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3369)
!3372 = !DILocation(line: 69, column: 9, scope: !3298, inlinedAt: !3367)
!3373 = !DILocation(line: 0, scope: !3309, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 213, column: 22, scope: !3307)
!3375 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3374)
!3376 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3374)
!3377 = !DILocation(line: 214, column: 11, scope: !3307)
!3378 = !DILocation(line: 225, column: 16, scope: !3307)
!3379 = !DILocation(line: 226, column: 22, scope: !3307)
!3380 = !DILocation(line: 226, column: 11, scope: !3307)
!3381 = !DILocation(line: 0, scope: !3298, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 195, column: 22, scope: !3307)
!3383 = !DILocation(line: 0, scope: !3309, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 69, column: 12, scope: !3298, inlinedAt: !3382)
!3385 = !DILocation(line: 55, column: 39, scope: !3317, inlinedAt: !3384)
!3386 = !DILocation(line: 55, column: 7, scope: !3309, inlinedAt: !3384)
!3387 = !DILocation(line: 0, scope: !3307)
!3388 = !DILocation(line: 230, column: 10, scope: !3228)
!3389 = !DILocation(line: 231, column: 11, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3228, file: !3209, line: 231, column: 11)
!3391 = !DILocation(line: 231, column: 11, scope: !3228)
!3392 = !DILocation(line: 107, column: 13, scope: !3254)
!3393 = !DILocation(line: 82, column: 16, scope: !3208)
!3394 = !DILocation(line: 235, column: 8, scope: !3208)
!3395 = !DILocation(line: 236, column: 3, scope: !3208)
!3396 = !DILocation(line: 237, column: 1, scope: !3208)
!3397 = !DISubprogram(name: "strtoumax", scope: !3398, file: !3398, line: 301, type: !3399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3398 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!50, !51, !823, !53}
!3401 = distinct !DISubprogram(name: "rpl_calloc", scope: !315, file: !315, line: 42, type: !2909, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !3402)
!3402 = !{!3403, !3404, !3405, !3406}
!3403 = !DILocalVariable(name: "n", arg: 1, scope: !3401, file: !315, line: 42, type: !48)
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3401, file: !315, line: 42, type: !48)
!3405 = !DILocalVariable(name: "result", scope: !3401, file: !315, line: 44, type: !47)
!3406 = !DILocalVariable(name: "bytes", scope: !3407, file: !315, line: 56, type: !48)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !315, line: 53, column: 5)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !315, line: 47, column: 7)
!3409 = !DILocation(line: 0, scope: !3401)
!3410 = !DILocation(line: 47, column: 9, scope: !3408)
!3411 = !DILocation(line: 47, column: 14, scope: !3408)
!3412 = !DILocation(line: 0, scope: !3407)
!3413 = !DILocation(line: 57, column: 21, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3407, file: !315, line: 57, column: 11)
!3415 = !DILocation(line: 57, column: 11, scope: !3407)
!3416 = !DILocation(line: 59, column: 11, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !315, line: 58, column: 9)
!3418 = !DILocation(line: 59, column: 17, scope: !3417)
!3419 = !DILocation(line: 65, column: 12, scope: !3401)
!3420 = !DILocation(line: 72, column: 3, scope: !3401)
!3421 = !DILocation(line: 73, column: 1, scope: !3401)
!3422 = distinct !DISubprogram(name: "rpl_fclose", scope: !317, file: !317, line: 58, type: !3423, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !316, retainedNodes: !3459)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!53, !3425}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3427, file: !96, line: 51, baseType: !53, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3427, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3427, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3427, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3427, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3427, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3427, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3427, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3427, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3427, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3427, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3427, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3427, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3427, file: !96, line: 70, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3427, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3427, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3427, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3427, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3427, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3427, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3427, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3427, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3427, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3427, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3427, file: !96, line: 93, baseType: !3443, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3427, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3427, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3427, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3427, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3459 = !{!3460, !3461, !3462, !3463}
!3460 = !DILocalVariable(name: "fp", arg: 1, scope: !3422, file: !317, line: 58, type: !3425)
!3461 = !DILocalVariable(name: "saved_errno", scope: !3422, file: !317, line: 60, type: !53)
!3462 = !DILocalVariable(name: "fd", scope: !3422, file: !317, line: 61, type: !53)
!3463 = !DILocalVariable(name: "result", scope: !3422, file: !317, line: 62, type: !53)
!3464 = !DILocation(line: 0, scope: !3422)
!3465 = !DILocation(line: 65, column: 8, scope: !3422)
!3466 = !DILocation(line: 66, column: 10, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3422, file: !317, line: 66, column: 7)
!3468 = !DILocation(line: 66, column: 7, scope: !3422)
!3469 = !DILocation(line: 67, column: 12, scope: !3467)
!3470 = !DILocation(line: 67, column: 5, scope: !3467)
!3471 = !DILocation(line: 72, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3422, file: !317, line: 72, column: 7)
!3473 = !DILocation(line: 72, column: 23, scope: !3472)
!3474 = !DILocation(line: 72, column: 33, scope: !3472)
!3475 = !DILocation(line: 72, column: 26, scope: !3472)
!3476 = !DILocation(line: 72, column: 59, scope: !3472)
!3477 = !DILocation(line: 73, column: 7, scope: !3472)
!3478 = !DILocation(line: 73, column: 10, scope: !3472)
!3479 = !DILocation(line: 72, column: 7, scope: !3422)
!3480 = !DILocation(line: 100, column: 12, scope: !3422)
!3481 = !DILocation(line: 105, column: 7, scope: !3422)
!3482 = !DILocation(line: 74, column: 19, scope: !3472)
!3483 = !DILocation(line: 105, column: 19, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3422, file: !317, line: 105, column: 7)
!3485 = !DILocation(line: 107, column: 13, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3484, file: !317, line: 106, column: 5)
!3487 = !DILocation(line: 109, column: 5, scope: !3486)
!3488 = !DILocation(line: 112, column: 1, scope: !3422)
!3489 = !DISubprogram(name: "fclose", scope: !813, file: !813, line: 213, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!53, !3443}
!3492 = !DISubprogram(name: "lseek", scope: !3493, file: !3493, line: 334, type: !3494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3493 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!120, !53, !120, !53}
!3496 = distinct !DISubprogram(name: "rpl_fflush", scope: !319, file: !319, line: 129, type: !3497, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3533)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!53, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3501, file: !96, line: 51, baseType: !53, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3501, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3501, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3501, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3501, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3501, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3501, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3501, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3501, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3501, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3501, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3501, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3501, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3501, file: !96, line: 70, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3501, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3501, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3501, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3501, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3501, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3501, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3501, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3501, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3501, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3501, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3501, file: !96, line: 93, baseType: !3517, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3501, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3501, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3501, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3501, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3533 = !{!3534}
!3534 = !DILocalVariable(name: "stream", arg: 1, scope: !3496, file: !319, line: 129, type: !3499)
!3535 = !DILocation(line: 0, scope: !3496)
!3536 = !DILocation(line: 150, column: 14, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3496, file: !319, line: 150, column: 7)
!3538 = !DILocation(line: 150, column: 22, scope: !3537)
!3539 = !DILocation(line: 150, column: 27, scope: !3537)
!3540 = !DILocation(line: 150, column: 7, scope: !3496)
!3541 = !DILocation(line: 151, column: 12, scope: !3537)
!3542 = !DILocation(line: 151, column: 5, scope: !3537)
!3543 = !DILocalVariable(name: "fp", arg: 1, scope: !3544, file: !319, line: 41, type: !3499)
!3544 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !319, file: !319, line: 41, type: !3545, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !318, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3499}
!3547 = !{!3543}
!3548 = !DILocation(line: 0, scope: !3544, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 156, column: 3, scope: !3496)
!3550 = !DILocation(line: 43, column: 11, scope: !3551, inlinedAt: !3549)
!3551 = distinct !DILexicalBlock(scope: !3544, file: !319, line: 43, column: 7)
!3552 = !DILocation(line: 43, column: 18, scope: !3551, inlinedAt: !3549)
!3553 = !DILocation(line: 43, column: 7, scope: !3544, inlinedAt: !3549)
!3554 = !DILocation(line: 45, column: 5, scope: !3551, inlinedAt: !3549)
!3555 = !DILocation(line: 158, column: 10, scope: !3496)
!3556 = !DILocation(line: 158, column: 3, scope: !3496)
!3557 = !DILocation(line: 235, column: 1, scope: !3496)
!3558 = !DISubprogram(name: "fflush", scope: !813, file: !813, line: 218, type: !3559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!53, !3517}
!3561 = distinct !DISubprogram(name: "rpl_fseeko", scope: !321, file: !321, line: 28, type: !3562, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !3598)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!53, !3564, !1171, !53}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3566)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3566, file: !96, line: 51, baseType: !53, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3566, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3566, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3566, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3566, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3566, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3566, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3566, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3566, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3566, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3566, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3566, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3566, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3566, file: !96, line: 70, baseType: !3582, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3566, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3566, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3566, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3566, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3566, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3566, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3566, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3566, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3566, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3566, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3566, file: !96, line: 93, baseType: !3582, size: 64, offset: 1344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3566, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3566, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3566, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3566, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "fp", arg: 1, scope: !3561, file: !321, line: 28, type: !3564)
!3600 = !DILocalVariable(name: "offset", arg: 2, scope: !3561, file: !321, line: 28, type: !1171)
!3601 = !DILocalVariable(name: "whence", arg: 3, scope: !3561, file: !321, line: 28, type: !53)
!3602 = !DILocalVariable(name: "pos", scope: !3603, file: !321, line: 117, type: !1171)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !321, line: 113, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3561, file: !321, line: 52, column: 7)
!3605 = !DILocation(line: 0, scope: !3561)
!3606 = !DILocation(line: 52, column: 11, scope: !3604)
!3607 = !DILocation(line: 52, column: 31, scope: !3604)
!3608 = !DILocation(line: 52, column: 24, scope: !3604)
!3609 = !DILocation(line: 53, column: 7, scope: !3604)
!3610 = !DILocation(line: 53, column: 14, scope: !3604)
!3611 = !DILocation(line: 53, column: 35, scope: !3604)
!3612 = !{!955, !738, i64 32}
!3613 = !DILocation(line: 53, column: 28, scope: !3604)
!3614 = !DILocation(line: 54, column: 7, scope: !3604)
!3615 = !DILocation(line: 54, column: 14, scope: !3604)
!3616 = !{!955, !738, i64 72}
!3617 = !DILocation(line: 54, column: 28, scope: !3604)
!3618 = !DILocation(line: 52, column: 7, scope: !3561)
!3619 = !DILocation(line: 117, column: 26, scope: !3603)
!3620 = !DILocation(line: 117, column: 19, scope: !3603)
!3621 = !DILocation(line: 0, scope: !3603)
!3622 = !DILocation(line: 118, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3603, file: !321, line: 118, column: 11)
!3624 = !DILocation(line: 118, column: 11, scope: !3603)
!3625 = !DILocation(line: 129, column: 11, scope: !3603)
!3626 = !DILocation(line: 129, column: 18, scope: !3603)
!3627 = !DILocation(line: 130, column: 11, scope: !3603)
!3628 = !DILocation(line: 130, column: 19, scope: !3603)
!3629 = !{!955, !956, i64 144}
!3630 = !DILocation(line: 161, column: 7, scope: !3603)
!3631 = !DILocation(line: 163, column: 10, scope: !3561)
!3632 = !DILocation(line: 163, column: 3, scope: !3561)
!3633 = !DILocation(line: 164, column: 1, scope: !3561)
!3634 = !DISubprogram(name: "fseeko", scope: !813, file: !813, line: 712, type: !3635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!53, !3582, !120, !53}
!3637 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !323, file: !323, line: 86, type: !3638, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !322, retainedNodes: !3652)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!48, !3640, !51, !48, !3641}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1445, line: 6, baseType: !3643)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1447, line: 21, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1447, line: 13, size: 64, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3644, file: !1447, line: 15, baseType: !53, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3644, file: !1447, line: 20, baseType: !3648, size: 32, offset: 32)
!3648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3644, file: !1447, line: 16, size: 32, elements: !3649)
!3649 = !{!3650, !3651}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3648, file: !1447, line: 18, baseType: !7, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3648, file: !1447, line: 19, baseType: !1456, size: 32)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659}
!3653 = !DILocalVariable(name: "pwc", arg: 1, scope: !3637, file: !323, line: 86, type: !3640)
!3654 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !323, line: 86, type: !51)
!3655 = !DILocalVariable(name: "n", arg: 3, scope: !3637, file: !323, line: 86, type: !48)
!3656 = !DILocalVariable(name: "ps", arg: 4, scope: !3637, file: !323, line: 86, type: !3641)
!3657 = !DILocalVariable(name: "ret", scope: !3637, file: !323, line: 88, type: !48)
!3658 = !DILocalVariable(name: "wc", scope: !3637, file: !323, line: 89, type: !1461)
!3659 = !DILocalVariable(name: "uc", scope: !3660, file: !323, line: 156, type: !56)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !323, line: 155, column: 5)
!3661 = distinct !DILexicalBlock(scope: !3637, file: !323, line: 154, column: 7)
!3662 = !DILocation(line: 0, scope: !3637)
!3663 = !DILocation(line: 89, column: 3, scope: !3637)
!3664 = !DILocation(line: 105, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3637, file: !323, line: 105, column: 7)
!3666 = !DILocation(line: 105, column: 7, scope: !3637)
!3667 = !DILocation(line: 145, column: 9, scope: !3637)
!3668 = !DILocation(line: 154, column: 19, scope: !3661)
!3669 = !DILocation(line: 154, column: 26, scope: !3661)
!3670 = !DILocation(line: 154, column: 41, scope: !3661)
!3671 = !DILocation(line: 154, column: 7, scope: !3637)
!3672 = !DILocation(line: 156, column: 26, scope: !3660)
!3673 = !DILocation(line: 0, scope: !3660)
!3674 = !DILocation(line: 157, column: 14, scope: !3660)
!3675 = !DILocation(line: 157, column: 12, scope: !3660)
!3676 = !DILocation(line: 163, column: 1, scope: !3637)
!3677 = !DISubprogram(name: "mbrtowc", scope: !2122, file: !2122, line: 296, type: !3678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!50, !79, !51, !50, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3681 = distinct !DISubprogram(name: "close_stream", scope: !326, file: !326, line: 56, type: !3682, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3718)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!53, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !94, line: 7, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !96, line: 49, size: 1728, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3686, file: !96, line: 51, baseType: !53, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3686, file: !96, line: 54, baseType: !45, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3686, file: !96, line: 55, baseType: !45, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3686, file: !96, line: 56, baseType: !45, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3686, file: !96, line: 57, baseType: !45, size: 64, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3686, file: !96, line: 58, baseType: !45, size: 64, offset: 320)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3686, file: !96, line: 59, baseType: !45, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3686, file: !96, line: 60, baseType: !45, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3686, file: !96, line: 61, baseType: !45, size: 64, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3686, file: !96, line: 64, baseType: !45, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3686, file: !96, line: 65, baseType: !45, size: 64, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3686, file: !96, line: 66, baseType: !45, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3686, file: !96, line: 68, baseType: !111, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3686, file: !96, line: 70, baseType: !3702, size: 64, offset: 832)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3686, file: !96, line: 72, baseType: !53, size: 32, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3686, file: !96, line: 73, baseType: !53, size: 32, offset: 928)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3686, file: !96, line: 74, baseType: !118, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3686, file: !96, line: 77, baseType: !54, size: 16, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3686, file: !96, line: 78, baseType: !123, size: 8, offset: 1040)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3686, file: !96, line: 79, baseType: !125, size: 8, offset: 1048)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3686, file: !96, line: 81, baseType: !129, size: 64, offset: 1088)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3686, file: !96, line: 89, baseType: !132, size: 64, offset: 1152)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3686, file: !96, line: 91, baseType: !134, size: 64, offset: 1216)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3686, file: !96, line: 92, baseType: !137, size: 64, offset: 1280)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3686, file: !96, line: 93, baseType: !3702, size: 64, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3686, file: !96, line: 94, baseType: !47, size: 64, offset: 1408)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3686, file: !96, line: 95, baseType: !48, size: 64, offset: 1472)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3686, file: !96, line: 96, baseType: !53, size: 32, offset: 1536)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3686, file: !96, line: 98, baseType: !144, size: 160, offset: 1568)
!3718 = !{!3719, !3720, !3722, !3723}
!3719 = !DILocalVariable(name: "stream", arg: 1, scope: !3681, file: !326, line: 56, type: !3684)
!3720 = !DILocalVariable(name: "some_pending", scope: !3681, file: !326, line: 58, type: !3721)
!3721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3722 = !DILocalVariable(name: "prev_fail", scope: !3681, file: !326, line: 59, type: !3721)
!3723 = !DILocalVariable(name: "fclose_fail", scope: !3681, file: !326, line: 60, type: !3721)
!3724 = !DILocation(line: 0, scope: !3681)
!3725 = !DILocation(line: 58, column: 30, scope: !3681)
!3726 = !DILocalVariable(name: "__stream", arg: 1, scope: !3727, file: !947, line: 135, type: !3684)
!3727 = distinct !DISubprogram(name: "ferror_unlocked", scope: !947, file: !947, line: 135, type: !3682, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3728)
!3728 = !{!3726}
!3729 = !DILocation(line: 0, scope: !3727, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 59, column: 27, scope: !3681)
!3731 = !DILocation(line: 137, column: 10, scope: !3727, inlinedAt: !3730)
!3732 = !DILocation(line: 59, column: 43, scope: !3681)
!3733 = !DILocation(line: 60, column: 29, scope: !3681)
!3734 = !DILocation(line: 60, column: 45, scope: !3681)
!3735 = !DILocation(line: 70, column: 17, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3681, file: !326, line: 70, column: 7)
!3737 = !DILocation(line: 58, column: 50, scope: !3681)
!3738 = !DILocation(line: 70, column: 33, scope: !3736)
!3739 = !DILocation(line: 70, column: 53, scope: !3736)
!3740 = !DILocation(line: 70, column: 59, scope: !3736)
!3741 = !DILocation(line: 70, column: 7, scope: !3681)
!3742 = !DILocation(line: 72, column: 11, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3736, file: !326, line: 71, column: 5)
!3744 = !DILocation(line: 73, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3743, file: !326, line: 72, column: 11)
!3746 = !DILocation(line: 73, column: 15, scope: !3745)
!3747 = !DILocation(line: 78, column: 1, scope: !3681)
!3748 = distinct !DISubprogram(name: "hard_locale", scope: !328, file: !328, line: 27, type: !3749, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !327, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!60, !53}
!3751 = !{!3752, !3753}
!3752 = !DILocalVariable(name: "category", arg: 1, scope: !3748, file: !328, line: 27, type: !53)
!3753 = !DILocalVariable(name: "locale", scope: !3748, file: !328, line: 29, type: !3754)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2056, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 257)
!3757 = !DILocation(line: 0, scope: !3748)
!3758 = !DILocation(line: 29, column: 3, scope: !3748)
!3759 = !DILocation(line: 29, column: 8, scope: !3748)
!3760 = !DILocation(line: 31, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3748, file: !328, line: 31, column: 7)
!3762 = !DILocation(line: 31, column: 7, scope: !3748)
!3763 = !DILocation(line: 34, column: 12, scope: !3748)
!3764 = !DILocation(line: 34, column: 38, scope: !3748)
!3765 = !DILocation(line: 34, column: 41, scope: !3748)
!3766 = !DILocation(line: 34, column: 66, scope: !3748)
!3767 = !DILocation(line: 35, column: 1, scope: !3748)
!3768 = distinct !DISubprogram(name: "locale_charset", scope: !330, file: !330, line: 831, type: !3769, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!51}
!3771 = !{!3772}
!3772 = !DILocalVariable(name: "codeset", scope: !3768, file: !330, line: 833, type: !51)
!3773 = !DILocation(line: 847, column: 13, scope: !3768)
!3774 = !DILocation(line: 0, scope: !3768)
!3775 = !DILocation(line: 911, column: 15, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3768, file: !330, line: 911, column: 7)
!3777 = !DILocation(line: 911, column: 7, scope: !3768)
!3778 = !DILocation(line: 1070, column: 13, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !330, line: 1070, column: 13)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !330, line: 1060, column: 7)
!3781 = distinct !DILexicalBlock(scope: !3768, file: !330, line: 1019, column: 3)
!3782 = !DILocation(line: 1070, column: 24, scope: !3779)
!3783 = !DILocation(line: 1070, column: 13, scope: !3780)
!3784 = !DILocation(line: 1158, column: 3, scope: !3768)
!3785 = !DISubprogram(name: "nl_langinfo", scope: !333, file: !333, line: 661, type: !3786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !189)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!45, !53}
!3788 = distinct !DISubprogram(name: "setlocale_null_r", scope: !719, file: !719, line: 269, type: !3789, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!53, !53, !45, !48}
!3791 = !{!3792, !3793, !3794}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !719, line: 269, type: !53)
!3793 = !DILocalVariable(name: "buf", arg: 2, scope: !3788, file: !719, line: 269, type: !45)
!3794 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3788, file: !719, line: 269, type: !48)
!3795 = !DILocation(line: 0, scope: !3788)
!3796 = !DILocalVariable(name: "category", arg: 1, scope: !3797, file: !719, line: 91, type: !53)
!3797 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !719, file: !719, line: 91, type: !3789, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3798)
!3798 = !{!3796, !3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "buf", arg: 2, scope: !3797, file: !719, line: 91, type: !45)
!3800 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3797, file: !719, line: 91, type: !48)
!3801 = !DILocalVariable(name: "result", scope: !3797, file: !719, line: 140, type: !51)
!3802 = !DILocalVariable(name: "length", scope: !3803, file: !719, line: 154, type: !48)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !719, line: 153, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3797, file: !719, line: 142, column: 7)
!3805 = !DILocation(line: 0, scope: !3797, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 274, column: 10, scope: !3788)
!3807 = !DILocalVariable(name: "category", arg: 1, scope: !3808, file: !719, line: 60, type: !53)
!3808 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !719, file: !719, line: 60, type: !3809, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!51, !53}
!3811 = !{!3807, !3812}
!3812 = !DILocalVariable(name: "result", scope: !3808, file: !719, line: 62, type: !51)
!3813 = !DILocation(line: 0, scope: !3808, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 140, column: 24, scope: !3797, inlinedAt: !3806)
!3815 = !DILocation(line: 62, column: 24, scope: !3808, inlinedAt: !3814)
!3816 = !DILocation(line: 142, column: 14, scope: !3804, inlinedAt: !3806)
!3817 = !DILocation(line: 142, column: 7, scope: !3797, inlinedAt: !3806)
!3818 = !DILocation(line: 145, column: 19, scope: !3819, inlinedAt: !3806)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !719, line: 145, column: 11)
!3820 = distinct !DILexicalBlock(scope: !3804, file: !719, line: 143, column: 5)
!3821 = !DILocation(line: 145, column: 11, scope: !3820, inlinedAt: !3806)
!3822 = !DILocation(line: 149, column: 16, scope: !3819, inlinedAt: !3806)
!3823 = !DILocation(line: 149, column: 9, scope: !3819, inlinedAt: !3806)
!3824 = !DILocation(line: 154, column: 23, scope: !3803, inlinedAt: !3806)
!3825 = !DILocation(line: 0, scope: !3803, inlinedAt: !3806)
!3826 = !DILocation(line: 155, column: 18, scope: !3827, inlinedAt: !3806)
!3827 = distinct !DILexicalBlock(scope: !3803, file: !719, line: 155, column: 11)
!3828 = !DILocation(line: 155, column: 11, scope: !3803, inlinedAt: !3806)
!3829 = !DILocation(line: 157, column: 39, scope: !3830, inlinedAt: !3806)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !719, line: 156, column: 9)
!3831 = !DILocalVariable(name: "__dest", arg: 1, scope: !3832, file: !1033, line: 26, type: !3110)
!3832 = distinct !DISubprogram(name: "memcpy", scope: !1033, file: !1033, line: 26, type: !3108, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3833)
!3833 = !{!3831, !3834, !3835}
!3834 = !DILocalVariable(name: "__src", arg: 2, scope: !3832, file: !1033, line: 26, type: !3111)
!3835 = !DILocalVariable(name: "__len", arg: 3, scope: !3832, file: !1033, line: 26, type: !48)
!3836 = !DILocation(line: 0, scope: !3832, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 157, column: 11, scope: !3830, inlinedAt: !3806)
!3838 = !DILocation(line: 29, column: 10, scope: !3832, inlinedAt: !3837)
!3839 = !DILocation(line: 158, column: 11, scope: !3830, inlinedAt: !3806)
!3840 = !DILocation(line: 162, column: 23, scope: !3841, inlinedAt: !3806)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !719, line: 162, column: 15)
!3842 = distinct !DILexicalBlock(scope: !3827, file: !719, line: 161, column: 9)
!3843 = !DILocation(line: 162, column: 15, scope: !3842, inlinedAt: !3806)
!3844 = !DILocation(line: 167, column: 44, scope: !3845, inlinedAt: !3806)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !719, line: 163, column: 13)
!3846 = !DILocation(line: 0, scope: !3832, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 167, column: 15, scope: !3845, inlinedAt: !3806)
!3848 = !DILocation(line: 29, column: 10, scope: !3832, inlinedAt: !3847)
!3849 = !DILocation(line: 168, column: 15, scope: !3845, inlinedAt: !3806)
!3850 = !DILocation(line: 168, column: 32, scope: !3845, inlinedAt: !3806)
!3851 = !DILocation(line: 169, column: 13, scope: !3845, inlinedAt: !3806)
!3852 = !DILocation(line: 0, scope: !3804, inlinedAt: !3806)
!3853 = !DILocation(line: 274, column: 3, scope: !3788)
!3854 = distinct !DISubprogram(name: "setlocale_null", scope: !719, file: !719, line: 301, type: !3809, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3855)
!3855 = !{!3856}
!3856 = !DILocalVariable(name: "category", arg: 1, scope: !3854, file: !719, line: 301, type: !53)
!3857 = !DILocation(line: 0, scope: !3854)
!3858 = !DILocation(line: 0, scope: !3808, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 304, column: 10, scope: !3854)
!3860 = !DILocation(line: 62, column: 24, scope: !3808, inlinedAt: !3859)
!3861 = !DILocation(line: 304, column: 3, scope: !3854)
